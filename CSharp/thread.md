### create thread
通过调用thread的构造函数并且指定一个函数来创建一个thread
也可以指定一个lambda表达式

可以指定thread的名字，方便调试

tread分为foreground 和 background，应用只有在所有的foreground thread 结束时才会结束，并且终止所有的background thread

每个thread 都有自己的私有堆栈，所有的局部变量都是分开的

### race condition
当有多个thread访问？或者修改共享变量时，都要使用lock，确保中途不会被打断，
```
i++
修改为
lock(handle)
{
	i++
}

if(i > 0)
{
	CostManyTimeToExecute();
    i++;
}
修改为
lock(handle)
{
	if( i > 0 )
	{
		i++;
	}
}
CostManyTimeToExecute();
```
确保每个变量的访问和赋值都在一个临界区中
比较和赋值操作也要一起放到一个临界区中
保证临界区中的操作尽可能的短，把耗时的操作放到临界区外面
### lock
https://learn.microsoft.com/zh-cn/dotnet/csharp/language-reference/statements/lock
- The lock statement is syntactic sugar for a Monitor. Enter Monitor.Exit pair and sets up a critical section. 
lock 语句是 Monitor 的语法糖。输入 Monitor.Enter/ Monitor.Exit 设置临界区。

- The Monitor class also has a TryEnter method that supports a lock timeout value. 
Monitor 类还有一个 TryEnter 方法，支持设置锁定超时值。

- Lock requires a reference type synchronisation object. You can use any object you like, but a unique private object field is recommended. 
Lock需要一个引用类型的同步对象。您可以使用任何您喜欢的对象，但建议使用唯一的私有对象字段。
```
priavte statci object syncObject = new object();
```
请避免将以下实例用作 lock 对象：
1, `this`，因为调用方也可能锁定 `this`。
2, [Type](https://learn.microsoft.com/zh-cn/dotnet/api/system.type) 实例（可以通过 [typeof](https://learn.microsoft.com/zh-cn/dotnet/csharp/language-reference/operators/type-testing-and-cast#typeof-operator) 运算符或反射获取）。
3, 字符串实例，包括字符串字面量，（这些可能是[暂存的](https://learn.microsoft.com/zh-cn/dotnet/api/system.string.intern#remarks)）。
从 .NET 9 和 C# 13 开始，锁定 [System.Threading.Lock](https://learn.microsoft.com/zh-cn/dotnet/api/system.threading.lock) 类型的专用对象实例以获取最佳性能。

- You can nest lock statements. The critical section is unlocked when you exit the outermost lock.
您可以嵌套锁定语句。当退出最外面的锁时，临界区被解锁。

### thread synchronization
线程同步是 挂起一个线程，直到另一个线程满足某个条件的行为
如果要在两个线程之间安全的同步数据，则需要同步线程 

https://learn.microsoft.com/zh-cn/dotnet/api/system.threading.autoresetevent?view=net-8.0
synchronization can be created using AutoResetEvent A call to WaitOne suspends a thread, and a call to set resumes the thread For a robust communication channel you need two AutoResetEvents with calls to WaitOne and set at both ends
可以使用 AutoResetEvent 创建同步 调用 WaitOne 会挂起线程，调用 set 会恢复线程 对于稳健的通信通道，您需要两个 AutoResetEvent调用 WaitOne 并在两端设置