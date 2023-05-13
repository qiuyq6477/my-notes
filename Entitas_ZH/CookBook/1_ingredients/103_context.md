# Context
Context is a managing data structure for entities. An entity can not be created stand alone, it has to be created through `context.CreateEntity()`. This way a context can manage the life cycle of all entities we create. It also is the first observer which get notified when we manipulate an entity (see Entity observation section in Entity chapter).

>上下文是实体的管理数据结构。 实体不能单独创建，必须通过 context.CreateEntity() 来创建。 这样上下文就可以管理我们创建的所有实体的生命周期。 它也是我们操作实体时第一个收到通知的观察者（请参阅实体章节中的实体观察部分）。

## Entity object pool
In order to avoid garbage collection, a context in Entitas-CSharp has an internal object pool. It contains destroyed entities, which will be used when a user creates a new entity. This way memory on the heap gets recycled. An entity can only be recycled, when we can be sure that no one holds a reference to this entity any more. This is why Entitas-CSharp has an internal reference count mechanism. If you use only stock Entitas and do not hold any references to entites your self, you don't have to think about it. The internal classes already taking care of all reference counting for you. If however you want to create a component like:

>为了避免垃圾收集，Entitas-CSharp 中的上下文有一个内部对象池。 它包含已销毁的实体，将在用户创建新实体时使用。 这样堆上的内存就会被回收。 只有当我们可以确定没有人再持有对该实体的引用时，一个实体才能被回收。 这就是 Entitas-CSharp 有内部引用计数机制的原因。 如果您只（临时使用？）Entitas 并且不持有任何对您自己的实体的引用，那么您不必考虑它。 内部类已经为您处理了所有引用计数。 但是，如果您想创建一个组件，例如：

```csharp
class Neighbour: IComponent {
    public IEntity reference;
}
```

Or have a _MonoBehaviour_ which references an Entity:

```csharp
class EntityLink : MonoBehaviour {
    IEntity _entity;
}
```
Than you would need to call `_entity.Retain(this);` when you store the reference. And you should not forget to call `_entity.Release(this);` when you are not interested in the entity any more, or the object storing the reference gets destroyed. If you forget to call `Release` a destroyed entity will be kept around and never reused. Effectively it leads to a memory leak, which will be easy to observe in Entitas Visual Debugger. In case you forget to call `Retain`, you might end up with a reincarnated version of an entity. This will lead to very strange behaviour which is very hard to debug.

>比起存储引用时需要调用 _entity.Retain(this); 。 当您对实体不再感兴趣，或者存储引用的对象被销毁时，您不应该忘记调用 _entity.Release(this); 。 如果您忘记调用“Release”，一个被破坏的实体将被保留并且永远不会被重复使用。 它实际上会导致内存泄漏，这在 Entitas Visual Debugger 中很容易观察到。 如果您忘记调用“Retain”，您可能会得到一个实体的转世版本。 这将导致非常难以调试的非常奇怪的行为。

BTW we discourage components which have references to another entity in favour of an entity index (see Index chapter). And `EntityLink` is now part of `Entitas.Unity` addons, so no need to worry, if you just need to reference an entity on a _GameObject_. We got your back.

>顺便说一句，我们不鼓励用索引的方式引用另一个实体的组件（参见索引章节）。 `EntityLink` 现在是 `Entitas.Unity` 插件的一部分，所以如果您只需要引用 _GameObject_ 上的实体，则无需担心。 我们支持你。

## Multiple context types
If we would compare a typical relational (table based) database with Entitas, we could draw following association. A component is a column, an entity is a row and context is a table itself. Now in relational databases a table is defined by a schema. In Entitas it is based on classes which implement `IComponent`. This implies that when we define more component classes, our table becomes broader. Dependent on implementation detail, it can have an implication on memory consumption. In case of Entitas-CSharp it actually does have an implication on memory consumption, as an entity is backed by an array of `IComponent`s.

>如果我们将典型的关系（基于表）数据库与 Entitas 进行比较，我们可以得出以下关联。 组件是列，实体是行，上下文是表本身。 现在在关系数据库中，表由模式定义。 在 Entitas 中，它基于实现“IComponent”的类。 这意味着当我们定义更多的组件类时，我们的表会变得更宽。 根据实现细节，它可能会对内存消耗产生影响。 在 Entitas-CSharp 的情况下，它实际上确实对内存消耗有影响，因为一个实体由一组“IComponent”支持。

In order to tackle the growing table size, we can just introduce another table.
Here is a snippet from Entitas-Csharp Wiki:

>为了应对不断增长的表大小，我们可以引入另一个表。这是 Entitas-Csharp Wiki 中的一个片段：
```csharp
using Entitas;
using Entitas.CodeGenerator;

[Game, UI]
public class SceneComponent : IComponent
{
    public Scene Value;
}

[Game]
public class Bullet
{
    // Since it doesn't derive from 'IComponent'
    // it will be generated as 'BulletComponent'
}

[Meta]
public struct EditorOnlyVisual
{
    public bool ShowInMode;

    public EditorOnlyVisual(bool show) {
        this.ShowInMode = show;
    }
}
```

The annotations above component class declarations tell the code generator which context types we want to have. In this particular example we have a `Game`, `Meta` and `UI` context. As you can see with `SceneComponent`, one component can be part of multiple contexts. Meaning - a table `Game` and table `UI` can both have column `Scene`, if we want to project it again onto realtional database mental model.

>组件类声明上方的注解告诉代码生成器我们想要哪些上下文类型。 在这个特定的示例中，我们有一个 `Game`、`Meta` 和 `UI` 上下文。 正如您在“SceneComponent”中看到的那样，一个组件可以是多个上下文的一部分。 含义 - 如果我们想将其再次投影到真实数据库心智模型上，表“Game”和表“UI”都可以有列“Scene”

### How many context types should I have?
This really depends on your use case. If you have a fairly small/simple game, you can go with just one context. It is much simpler this way. You just have to keep in mind than an entity is backed by an array of `Icomponent`s meaning that it is an array of pointers and a pointer is 8bytes big on an 64bit architecture. So if you have 50 components, every entity will be atleast 400bytes big. If you have 100 entites in your game, they take up 40KB. Now it is up to you to decide if 40KB is alot or not. In case you have hundreds of components and thausends of entites, it would be better to start slicing.

>这实际上取决于您的用例。 如果你有一个相当小/简单的游戏，你可以只使用一个上下文。 这样就简单多了。 您只需要记住，一个实体是由一个“Icomponent”数组支持的，这意味着它是一个指针数组，在 64 位架构上，一个指针有 8 个字节大。 所以如果你有 50 个组件，每个实体将至少有 400 字节大。 如果您的游戏中有 100 个实体，它们将占用 40KB。 现在由您决定 40KB 是否很多。 如果您有数百个组件和大量实体，最好开始切片。

Sometimes it is also benefitial to slice components into different contexts just for organisational purposes. You probably have components which are needed only in core game context and some which are only relevant for meta game. If there is definetly no overlap, meaning there will be no entity which will need to store component `A` and component `Z` than it is better to puth them in different _"tables"_.

>有时，出于组织目的将组件分成不同的上下文也是有益的。 您可能拥有仅在核心游戏环境中需要的组件，以及一些仅与元游戏相关的组件。 如果绝对没有重叠，这意味着将没有实体需要存储组件“A”和组件“Z”，而不是将它们放在不同的“表”中。

## Context observation
Same as with entity a context can be observed for changes. And this is also what we use internally for groups (described in its own chapter) and visual debugger.
If you want to write some tooling for Entitas e.g. custom Logging or profiling you can use follwoing events:

>与实体一样，可以观察到上下文的变化。 这也是我们在内部使用的组（在其自己的章节中描述）和可视化调试器。如果您想为 Entitas 编写一些工具，例如 自定义日志记录或分析您可以使用以下事件：

- OnEntityCreated
- OnEntityWillBeDestroyed
- OnEntityDestroyed
- OnGroupCreated