# Collector

A collector is a class which observers a group. Here is an example from MatchOne how you can create a collector:

>收集器是观察者组的类。 以下是 MatchOne 中的示例，您可以如何创建收集器：

```csharp
context.CreateCollector(GameMatcher.GameBoardElement.Removed());
```

In this example we define that we want to collect all entities which got `GameBoardElement` component removed. Internally a collector will ask for a group of entities which contain `GameBoardElement` components. It will subscribe it self to group events and keep a list of references to entities which will leave the group, as we were interested in `Removed` event. There are follwoing three events that we can be interested in:

>在这个例子中，我们定义我们想要收集所有移除了“GameBoardElement”组件的实体。 在内部，收集器将请求一组包含“GameBoardElement”组件的实体。 它会自行订阅组事件，并保留对将离开组的实体的引用列表，因为我们对“Removed”事件感兴趣。 我们可能会对以下三个事件感兴趣：

- Added
- Removed
- AddedOrRemoved

Also important to notice, when an entity got collected as removed from a group. It will still stay collected even if we add a `GameBoardElement` component to it again and there for it will be added to the group again. This is why reactive systems has to implement `Filter` method (more on it in reactive systems chapter).

>同样重要的是要注意，当一个实体被收集为从一个组中移除时。 即使我们再次向其添加 `GameBoardElement` 组件，它仍将保持收集状态，因此它将再次添加到组中。 这就是反应式系统必须实现“Filter”方法的原因（更多信息请参阅反应式系统章节）。

A collector can also be created with an array of groups and events. Meaning that we can observe multiple groups and keep a joined list of changed entites.

>还可以使用一组组和事件创建收集器。 这意味着我们可以观察多个组并保留一个已更改实体的连接列表。

A collector can be activated and deactivated, so that we can stop and resume the observing of the group. We can iterate over collected entities and clear them out.

>可以激活和停用收集器，以便我们可以停止和恢复对组的观察。 我们可以遍历收集到的实体并将它们清除。

Collector is what powers reactive systems. You probably will not use it stand alone, but it is still a very important ingredient for Entitas.

>收集器为反应式系统提供动力。 您可能不会单独使用它，但它仍然是 Entitas 的一个非常重要的成分。

