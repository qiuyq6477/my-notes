# Entity

An entity is just a bag of components. We can add a component to an entity, we can get a component from an entity and we can remove a component from an entity. In Entitas-CSharp there is an internal/general way of doing those operations:

>实体只是一包组件。 我们可以向实体添加组件，可以从实体中获取组件，也可以从实体中删除组件。 在 Entitas-CSharp 中，有一种内部/通用的方式来执行这些操作：

```csharp
entity.AddComponent(index, component);
entity.GetComponent(index);
entity.RemoveComponent(index);
```

We have to use an index, becuase the _bag_ is implemented as an array of `IComponent`s. In Entitas-CSharp we chose to use an array for performance reasons. However there are different implementations which chose to use a hash map, making component type the key of the map and component instance the value.
Before you get too upset about the inconvenient API, let me show you how we add, get and remove components in Entitas-CSharp in practice.

>我们必须使用一个索引，因为 _bag_ 被实现为一个 `IComponent` 的数组。 在 Entitas-CSharp 中，出于性能原因，我们选择使用数组。 然而，有不同的实现选择使用哈希映射，使组件类型成为映射的键，组件实例成为值。在您对不方便的 API 感到不安之前，让我向您展示我们如何在实践中添加、获取和删除 Entitas-CSharp 中的组件。

Say we have a `PositionComponent`. 
```csharp
public sealed class PositionComponent : IComponent {
    public IntVector2 value;
}
```

Then the API looks as following:

```csharp
entity.AddPosition(new IntVector2(x, y));
entity.position;
entity.RemovePosition();
```

We get this nice API thanks to the code generation tools we implemented for Entitas-CSharp. You can find more on this topic in Code Generation chapter in Appliances section.

>得益于我们为 Entitas-CSharp 实施的代码生成工具，我们获得了这个不错的 API。 

## Entity creation

An entity should always be a part of a context. This is why we are not able to instantiate an entity directly, but have to call `context.CreateEntity()`. Context is a managing data structure which monitors entities life cycle. You can find more details about context in Context chapter.

>实体应该始终是上下文的一部分。 这就是为什么我们不能直接实例化实体，而是必须调用 context.CreateEntity() 的原因。 上下文是监视实体生命周期的管理数据结构。 您可以在上下文章节中找到有关上下文的更多详细信息。

While an entity can be created and destroyed, it is important to know that in Entitas-CSharp destroyed entities are not really destroyed, but object pooled in the context. This is a performance optimisation to avoid garbage collection. The side effect of this fact is that users have to be careful if they keep a reference to an entity in there own code.

>虽然可以创建和销毁一个实体，但重要的是要知道在 Entitas-CSharp 中销毁的实体并没有真正被销毁，而是在上下文中池化的对象。 这是避免垃圾收集的性能优化。 这一事实的副作用是，如果用户在自己的代码中保留对实体的引用，则必须小心。

When an entity is destroyed it will be put into a temporary pool and reused if it's reference count is back at `0`. 

>当一个实体被销毁时，如果它的引用计数回到“0”，它将被放入一个临时池并被重新使用。

### What is a reference count?

Reference count is an internal mechanism which makes sure that an entity is not reused before it is not referenced any more. In order to track references an entity has two methods:

>引用计数是一种内部机制，可确保实体在不再被引用之前不会被重用。 为了跟踪引用，实体有两种方法：

```csharp
public void Retain(object owner)

public void Release(object owner)
```

When you keep a reference to an entity, you have to call `entity.Retain(this);` and when it's time to drop the reference it is important to call `entity.Release(this);`. Those calls increase and decrease the reference count. All internal classes of Entitas-CSharp are respecting this mechanism and so should your code. If you don't call `Retain` while keeping a reference to an entity, you might end up holding a reference to an entity which was destroyed and reborn as something else. If you forget to call `Release` on an entity which you retained, it will stay in the object pool forever, making your memory consumption grow over time.

>当您保留对实体的引用时，您必须调用“entity.Retain(this);”，而当需要删除引用时，调用“entity.Release(this);”很重要。 这些调用会增加和减少引用计数。 Entitas-CSharp 的所有内部类都遵循这种机制，您的代码也应该如此。 如果您在保留对实体的引用的同时不调用“保留”，您最终可能会保留对实体的引用，该实体已被销毁并重生为其他东西。 如果您忘记在您保留的实体上调用“Release”，它将永远留在对象池中，使您的内存消耗随着时间的推移而增加。

## Entity observation

An entity has multiple events which users can subscribe to, in order to have introspection into entity life cycle.
Here is a list of all the events entity has in the current imlplementation of Entitas-CSharp:

>一个实体有多个事件，用户可以订阅这些事件，以便对实体的生命周期进行检查。
以下是实体在 Entitas-CSharp 的当前实现中具有的所有事件的列表：

- OnComponentAdded
- OnComponentRemoved
- OnComponentReplaced
- OnEntityReleased
- OnDestroyEntity

Those events are the same events context uses to monitor entity. They are exposed for the external use as well, however I would not recommend to use them directly. In a typical use case you rather want to have a group, collector or a reactive system (described in the respective chapters). However it is good to know that those facilities are present and it could be important to use specifically if you are implementing some tooling.

>这些事件与用于监视实体的事件上下文相同。 它们也可供外部使用，但我不建议直接使用它们。 在一个典型的用例中，你宁愿有一个组、收集器或一个反应系统（在相应的章节中描述）。 但是，很高兴知道这些设施已经存在，如果您正在实施某些工具，那么专门使用这些设施可能很重要。
