# System
The main goal of ECS or data oriented design is to separate state form behaviour. System is a place were we define the behaviour. In a system we can write code which creates new state, changes given state or destroys state.

>ECS 或面向数据设计的主要目标是分离状态和行为。 系统是我们定义行为的地方。 在系统中，我们可以编写代码来创建新状态、更改给定状态或销毁状态。

In Entitas-CSharp we have multiple interfaces which we have to implement in order to mark a class as a system. `ISystem` interface is a base interface, which we don't have to implement ourselves. It is just a marked (so called ghost protocol) which is used internally.

>在 Entitas-CSharp 中，我们有多个接口，我们必须实现这些接口才能将类标记为系统。 `ISystem` 接口是一个基本接口，我们不必自己实现。 它只是一个内部使用的标记（所谓的幽灵协议）。

If we want to have a system which should be executed periodically, we need to implement `IExecuteSystem`. This interface has only one method `void Execute();`. This is the method where we put the code which should be executed on every tick.

>如果我们想要一个应该定期执行的系统，我们需要实现“IExecuteSystem”。 这个接口只有一个方法`void Execute();`。 这是我们放置应在每次tick时执行的代码的方法。

Another type of systems which are executed periodically is `ICleanupSystem`. This one is meant for logic which should be executed after all `IExecuteSystem`s run. As the name suggests, you should put clean up code in its `void Cleanup();` method. As those are just interfaces, we can have one class which implements both those protocols. Some times it totally makes sense from game logic stand point.

>另一种定期执行的系统是“ICleanupSystem”。 这一个用于应在所有“IExecuteSystem”运行后执行的逻辑。 顾名思义，您应该将清理代码放在其 void Cleanup(); 方法中。 由于这些只是接口，我们可以有一个类来实现这两个协议。 有时，从游戏逻辑的角度来看，这完全是有道理的。

### Setup and Teardown

Normally when we start a game we need to create the initial state first. This is why in Entitas-CShapr we have `IInitializeSystem` interface. It has a `void Initialize();` method which should contain your games initialisation logic - basically creating all the entities and other state you need to start playing.

>通常当我们开始游戏时，我们需要先创建初始状态。 这就是为什么在 Entitas-CShapr 中我们有 `IInitializeSystem` 接口。 它有一个 `void Initialize();` 方法，它应该包含你的游戏初始化逻辑——基本上创建你开始玩游戏所需的所有实体和其他状态。

The counterpart of `IInitializeSystem` is `ITearDownSystem`. This one has `void TearDown();` method, where we put code which will be executed before we close the game/Level/Scene (what ever fits your use case).

>`IInitializeSystem` 的对应物是 `ITearDownSystem`。 这个有 `void TearDown();` 方法，我们在其中放置将在关闭游戏/关卡/场景（适合您的用例）之前执行的代码。

# Composing systems
Everything I described in this chapter till now, were only interfaces which reflect conventions we use to break apart behaviour code. I saw projects where people used Entitas without systems. They implemented there own Command Pattern. But if you want to follow along with the systems aproach you might want to compose systems together in a certain hierarchy. In order to do this we provide a `Systems` class, which implements the `IInitializeSystem, IExecuteSystem, ICleanupSystem, ITearDownSystem` interfaces. We can `Add` a system to an instance of the `Systems` class. So that when we call an `Execute(), Cleanup(), Initialize(), TearDown()` method on this instance it will call those methods on the added systems. `Systems` class is a typical parent node in sense of [Composite pattern](https://en.wikipedia.org/wiki/Composite_pattern). 

>到目前为止，我在本章中描述的所有内容都只是反映我们用来分解行为代码的约定的接口。 我看到人们在没有系统的情况下使用 Entitas 的项目。 他们在那里实现了自己的命令模式。 但是，如果您想遵循系统方法，您可能希望将系统组合在某个层次结构中。 为此，我们提供了一个“Systems”类，它实现了“IInitializeSystem、IExecuteSystem、ICleanupSystem、ITearDownSystem”接口。 我们可以将系统“添加”到“Systems”类的实例中。 因此，当我们在此实例上调用“Execute()、Cleanup()、Initialize()、TearDown()”方法时，它将在添加的系统上调用这些方法。 `Systems` 类是 [复合模式](https://en.wikipedia.org/wiki/Composite_pattern) 意义上的典型父节点。

When we look at the MatchOne example we can see that we don't use `Systems` class directly:

```csharp
public class MatchOneSystems : Feature {

    public MatchOneSystems(Contexts contexts) {

        // Input
        Add(new InputSystems(contexts));

        // Update
        Add(new GameBoardSystems(contexts));
        Add(new GameStateSystems(contexts));

        // Render
        Add(new ViewSystems(contexts));

        // Destroy
        Add(new DestroySystem(contexts));
    }
}
```

Here we extend `Feature` class. Feature class is a generated class which extends either `Systems` class or `DebugSystems` class, dependent on if we want to run with visual debugging enabled. Visual debugging consumes lots of resources and should not be enabled when you do a production build, or run your game mobile device. This is why `Feature` class is generated to make our real code simpler.

>在这里，我们扩展了 Feature 类。 Feature类是一个生成的类，它扩展了“Systems”类或“DebugSystems”类，具体取决于我们是否要在启用可视化调试的情况下运行。 可视化调试会消耗大量资源，在进行生产构建或运行游戏移动设备时不应启用。 这就是为什么生成 Feature 类是为了让我们真正的代码更简单。

Another thing that you might noticed from the snippet above, is that we pass in a `Contexts` class. `Contexts` class is another convinience class generated in Entitas-CSharp were we can reference different context instances. The generated code contains getters for an instance of every context type (read more about code generator in appliances chapters).

>您可能从上面的代码片段中注意到的另一件事是，我们传入了一个 `Contexts` 类。 `Contexts` 类是 Entitas-CSharp 中生成的另一个方便的类，我们可以引用不同的上下文实例。 生成的代码包含每个上下文类型的实例的 getter（在应用章节中阅读更多关于代码生成器的信息）。

# How do we execute the systems
After we implemented the systems and combined them into hierarchies, we need to call the `Execute(), Cleanup(), Initialize(), TearDown()` method somewhere. For this purposes we normally create a `MonoBehaviour` which does it. If you are not using Unity3D you would need to see for yourself where you would like to trigger those methods. I would like to use MatchOne again to show how such `MonoBehaviour` class might look like:

>在我们实现系统并将它们组合成层次结构之后，我们需要在某处调用 Execute()、Cleanup()、Initialize()、TearDown() 方法。 为此，我们通常会创建一个执行此操作的“MonoBehaviour”。 如果你不使用 Unity3D，你需要自己看看你想在哪里触发这些方法。 我想再次使用 MatchOne 来展示这样的 `MonoBehaviour` 类可能是什么样子：

```csharp
using Entitas;
using UnityEngine;

public class GameController : MonoBehaviour {

    Systems _systems;

    void Start() {
        Random.InitState(42);

        var contexts = Contexts.sharedInstance;

        _systems = new MatchOneSystems(contexts);

        _systems.Initialize();
    }

    void Update() {
        _systems.Execute();
        _systems.Cleanup();
    }

    void OnDestroy() {
        _systems.TearDown();
    }
}
```

A question which comes up quite frequently is, if the periodical systems should be executed on `FixedUpdate` rather than `Update`. This is generally your personal desicion to make. I schedule the systems normally on `Update`, if in your case it is important to schedule on `FixedUpdate` or even `LateUpdate` it is your decision to make. You could even go bananas and have multiple system hierarchies, where one is executed on `Update` and another on `FixedUpdate`, not sure it is a good idea though.

>一个经常出现的问题是，fixupdate系统是否应该在“FixedUpdate”而不是“Update”上执行。 这通常是您的个人决定。 我通常将系统安排在 `Update` 上，如果在您的情况下重要的是安排在 `FixedUpdate` 甚至 `LateUpdate` 上，这是您的决定。 你甚至可以疯狂地拥有多个系统层次结构，其中一个在 `Update` 上执行，另一个在 `FixedUpdate` 上执行，但不确定这是一个好主意。

# How do I implement a typical execute system?
An execute system is run periodically, so what we normaly do is, we set one or multiple groups in system constructor and then in `Execute` we iterate over entities in those groups and change them or create new entities.

>执行系统定期运行，所以我们通常做的是，我们在系统构造函数中设置一个或多个组，然后在“执行”中我们迭代这些组中的实体并更改它们或创建新实体。

Generally speaking, we are pulling data from the context and doing something with it. In Entitas-CSharp there is also another way of dealing with data, you will learn all about it in the next chapter.

>一般来说，我们是从上下文中提取数据并用它做一些事情。 在 Entitas-CSharp 中还有另一种处理数据的方法，您将在下一章中了解所有相关内容。
