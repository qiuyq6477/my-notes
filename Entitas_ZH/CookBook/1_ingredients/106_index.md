# Index

When we want to get all entities that have a position component, we create a group and iterate over it. However, what about cases, where we want to get entities on a certain position. We could iterate over all entites which have a position and collect only those which have desired position. Or we could use an Index.

>当我们想要获取所有具有位置组件的实体时，我们创建一个组并对其进行迭代。 但是，对于我们想要在特定位置获得实体的情况呢？ 我们可以遍历所有具有位置的实体，并仅收集那些具有所需位置的实体。 或者我们可以使用索引。

In order to create an index we have to annotate component value as following:

>为了创建索引，我们必须按如下方式注释组件值：

```csharp
using Entitas;
using Entitas.CodeGeneration.Attributes;

[Game]
public sealed class PositionComponent : IComponent {

    [EntityIndex]
    public IntVector2 value;
}
```

The `EntityIndex` annotation will tell the code generator to create API on context so that user will be able to get entities by given `IntVector2` value.

>`EntityIndex` 注释将告诉代码生成器在上下文中创建 API，以便用户能够通过给定的 `IntVector2` 值获取实体。

Here is a snippet from `ProcessInputSystem` in MatchOne:

```csharp
foreach (var e in _contexts.game.GetEntitiesWithPosition(
                    new IntVector2(input.x, input.y)
                  ).Where(e => e.isInteractive)) {
    e.isDestroyed = true;
}
```

In this snippet we ask context to give us all entities on position, where the "input" was effected and we filter out entites which are not interactive.

>在这个片段中，我们要求上下文为我们提供所有实体的位置，其中“输入”受到影响，我们过滤掉不交互的实体。

Internally an index is a group observer. It is created on context initialisation, subscribing to group events from the beginning. When we start to create entities and add components to them, they will start entering groups and the index will be notified that an entity was added with following component. We can use the value of the component as a key in a HashMap, where the value is the entity itself. This way we are building up an index. When we replace or remove component. The index is notified by the group as well. It gets the previous component so it can remove the entry from the HashMap and if we replaced it with another component, it will receive the added event again with the new value.

>在内部，索引是一个组观察器。 它是在上下文初始化时创建的，从一开始就订阅组事件。 当我们开始创建实体并向其添加组件时，它们将开始进入组，并且索引将被通知添加了具有以下组件的实体。 我们可以使用组件的值作为 HashMap 中的键，其中值是实体本身。 这样我们就建立了一个索引。 当我们更换或移除组件时。 该指数也由该组通知。 它获取先前的组件，因此它可以从 HashMap 中删除条目，如果我们用另一个组件替换它，它将再次接收带有新值的添加事件。

In Entitas-CSharp we have two types of built in indexes. `EntityIndex` and `PrimaryEntityIndex`. An `EntityIndex` is backed by a HashMap which stores a set of entities as value. Meaning - you could have multiple entities on the same position. `PrimaryEntityIndex` makes sure that every key is associated with only one entity. This is very good if you have an `Id` component and you want to look up entities by this `Id`. This is also what we recommend, when you need to store a reference from one entity to another (more on it in ingredience chapter).

>在 Entitas-CSharp 中，我们有两种类型的内置索引。 `EntityIndex` 和 `PrimaryEntityIndex`。 `EntityIndex` 由将一组实体存储为值的 HashMap 支持。 意思是 - 你可以在同一个位置上有多个实体。 `PrimaryEntityIndex` 确保每个键只与一个实体相关联。 如果你有一个 Id 组件并且你想通过这个 Id 查找实体，这是非常好的。 这也是我们推荐的，当你需要存储从一个实体到另一个实体的引用时（更多内容在成分章节中）。

As mentioned in previous paragraph, Entitas-CSharp implements only two simple entity indexing strategies. You might need a more complex one, where you would like to get entities in a range, or have a more complex index key. In this case please have a look at `AbstractEntityIndex` class. Armed with the knowledge provided in this book, it should be fairly easy to understand the implementation and write your own custom index.

>如前一段所述，Entitas-CSharp 仅实现两个简单的实体索引策略。 您可能需要一个更复杂的，您希望在其中获取某个范围内的实体，或者拥有更复杂的索引键。 在这种情况下，请查看 `AbstractEntityIndex` 类。 有了本书提供的知识，理解实现和编写自己的自定义索引应该会相当容易。
