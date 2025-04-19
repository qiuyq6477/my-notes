[[Pasted image 20240818223124.png|Open: Pasted image 20240818223124.png]]
![[Pasted image 20240818223124.png]]
- Use the Task class for tasks that do not return a result. The Wait method blocks until the task has completed. 
- 对于不返回结果的任务，使用 `Task` 类。`Wait` 方法会阻塞，直到任务完成。
- Use the TaskT, class for tasks that do return a result. The Result property blocks until the task has completed. 
- 对于返回结果的任务，使用 `Task<T>` 类。`Result` 属性会阻塞，直到任务完成。
- Tasks execute on the NET runtime thread pool. For long-running and 1/0 bound tasks you can provide the LongRunning option to execute them on a non-pool thread 
- 任务在.NET 运行时线程池中执行。对于长时间运行和 I/O 受限的任务，您可以提供 `LongRunning` 选项，以便在非线程池线程上执行它们。线程池适合运行时间短，计算量高的任务
- Any exceptions thrown by a task propagate to the calling code and are automatically re-thrown in the Wait method and Result property
- 任务抛出的任何异常都会传播到调用代码，并在 `Wait` 方法和 `Result` 属性中自动重新抛出。



```c#
Task taskA = new Task( () => Console.WriteLine("Hello from taskA.")); 
// 开始任务
taskA.Start(); 
// 等待任务完成
taskA.Wait();
```

不需要对任务进行更多的控制时，首选
```c#
Task taskA = Task.Run( () => Console.WriteLine("Hello from taskA."));
taskA.Wait();
```


无需将创建与计划分开，且需要额外的任务创建选项或需要使用特定的计划程序。
需要将其他状态传递给可通过其 [Task.AsyncState](https://learn.microsoft.com/zh-cn/dotnet/api/system.threading.tasks.task.asyncstate) 属性检索的任务。
```c#
class CustomData
{
    public long CreationTime;
    public int Name;
    public int ThreadNum;
}

Task[] taskArray = new Task[10];
for (int i = 0; i < taskArray.Length; i++)
{
	taskArray[i] = Task.Factory.StartNew((Object obj) =>
	{
		CustomData data = obj as CustomData;
		if (data == null) return;

		data.ThreadNum = Thread.CurrentThread.ManagedThreadId;
	},
	// thread初始化的值
	new CustomData() { Name = i, CreationTime = DateTime.Now.Ticks });
}
Task.WaitAll(taskArray);
foreach (var task in taskArray)
{
	// 可以拿到传递给thread的值
	var data = task.AsyncState as CustomData;
	if (data != null)
		Console.WriteLine("Task #{0} created at {1}, ran on thread #{2}.",
						  data.Name, data.CreationTime, data.ThreadNum);
}

// The example displays output like the following:
//     Task #0 created at 635116412924597583, ran on thread #3.
//     Task #1 created at 635116412924607584, ran on thread #4.
//     Task #2 created at 635116412924607584, ran on thread #4.
//     Task #3 created at 635116412924607584, ran on thread #4.
//     Task #4 created at 635116412924607584, ran on thread #3.
//     Task #5 created at 635116412924607584, ran on thread #3.
//     Task #6 created at 635116412924607584, ran on thread #4.
//     Task #7 created at 635116412924607584, ran on thread #4.
//     Task #8 created at 635116412924607584, ran on thread #3.
//     Task #9 created at 635116412924607584, ran on thread #4.
```




### 任务取消
```c#
var cts = new CancellationTokenSource();//可以向使用令牌的任何人广播取消
CancellationToken token = tokenSource2.Token;// 创建一个新令牌

var task = Task.Run(() =>
{
	// Were we already canceled?
	token.ThrowIfCancellationRequested();

	bool moreToDo = true;
	while (moreToDo)
	{
		// Poll on this property if you have to do
		// other cleanup before throwing.
		if (token.IsCancellationRequested)
		{
			// Clean up here, then...
			token.ThrowIfCancellationRequested();
		}
	}
}, token); // Pass same token to Task.Run.

cts.Cancel();// 立即取消
//tokenSource2.CancelAfter(1000); // 等待1s取消

// Just continue on this thread, or await with try-catch:
try
{
	await task;
}
catch (OperationCanceledException e)
{
	Console.WriteLine($"{nameof(OperationCanceledException)} thrown with message: {e.Message}");
}
finally
{
	cts.Dispose();
}

Console.ReadKey();
    

```



### 子任务
https://learn.microsoft.com/zh-cn/dotnet/standard/parallel-programming/attached-and-detached-child-tasks
通过TaskCreationOptions.AttachedToParent创建子任务
只有当子任务全部完成时，父任务才会完成
当子任务中出现了异常，该异常会自动传播到父任务，如果有多个子任务发生异常，异常会被打包到一起传递给父任务

```c#
var parent = Task.Factory.StartNew(() => {
	Console.WriteLine("Parent task executing.");
	var child = Task.Factory.StartNew(() => {
		  Console.WriteLine("Attached child starting.");
		  Thread.SpinWait(5000000);
		  Console.WriteLine("Attached child completing.");
	}, TaskCreationOptions.AttachedToParent);
});
parent.Wait();
Console.WriteLine("Parent has completed.");
   

// The example displays the following output:
//       Parent task executing.
//       Attached child starting.
//       Attached child completing.
//       Parent has completed.
```

### 任务序列
https://learn.microsoft.com/zh-cn/dotnet/standard/parallel-programming/chaining-tasks-by-using-continuation-tasks
通过调用 Task.ContinueWith 方法创建在其前面的任务完成时执行的延续


1. ﻿﻿﻿Split a problem into many units of work that can execute in parallel
2. ﻿﻿﻿Execute the units of work
3. ﻿﻿﻿Assemble the finished work into a result
The common name for this process is MapReduce
map是指把问题分解成多个task，reduce是指将task完成的结果聚合成一个