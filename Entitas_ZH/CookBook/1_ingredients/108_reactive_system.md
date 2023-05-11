# Reactive System
Reactive system is a system which will be called only when there are entities we need to process. Internally a reactive system uses a `Collector` instance (see collector chapter for more info). As a user you need to extend an abstract class `ReactiveSystem`. Here is an example of a reactive system from MatchOne:

>反应式系统是一个系统，只有当有我们需要处理的实体时才会被调用。 在内部，反应式系统使用一个“Collector”实例（有关更多信息，请参阅收集器章节）。 作为用户，您需要扩展一个抽象类“ReactiveSystem”。 以下是 MatchOne 的反应系统示例

```csharp
using System.Collections.Generic;
using Entitas;

public sealed class DestroySystem : ReactiveSystem<GameEntity> {

    public DestroySystem(Contexts contexts) : base(contexts.game) {
    }

    protected override ICollector<GameEntity> GetTrigger(IContext<GameEntity> context) {
        return context.CreateCollector(GameMatcher.Destroyed);
    }

    protected override bool Filter(GameEntity entity) {
        return entity.isDestroyed;
    }

    protected override void Execute(List<GameEntity> entities) {
        foreach (var e in entities) {
            e.Destroy();
        }
    }
}
```

The purpose of this system is to destroy entities which are marked with `Destroyed` component. As you can see in the `GetTrigger` method, we return a Collector which monitors a group of `Destroyed` entities. In `context.CreateCollector(GameMatcher.Destroyed)` we did not specify the event on which an entity will be collected, because the default event is `Added`. So when we add a `Destroyed` component to an entity, the entity will be `Added` to `Destroyed` group and there for collected by the collector by the given reactive system.

>该系统的目的是销毁标有“已销毁”组件的实体。 正如您在 `GetTrigger` 方法中看到的，我们返回一个 Collector，它监视一组 `Destroyed` 实体。 在 context.CreateCollector(GameMatcher.Destroyed) 中，我们没有指定收集实体的事件，因为默认事件是 Added 。 因此，当我们将“Destroyed”组件添加到实体时，该实体将被“添加”到“Destroyed”组，并由给定的反应系统收集器收集

A reactive system is triggered periodically / on every `Update` same as the execute systems, however the `Execute(List<GameEntity> entities)` method will be executed only if the collector could collect entities between this an previous `Execute` call.

>与执行系统相同，反应式系统会定期/在每次“Update”时触发，但是仅当收集器可以在此之前的“执行”调用之间收集实体时，才会执行“执行 `Execute(List<GameEntity> entities)` ”方法。

You might wonder what the `Filter` method is all about. As mentioned in Collector chapter when an entity gets collected, it stays collected, even if there were events which logically might feel like reversion of the first event. In our particular example, we say that we collect all entities which were destroyed. So even if something removed the `Destroyed` component from the entity and by this action revived it - the entity still stays collected and will be passed to the `Execute` method. Except we filter it out. In the `Filter` method we can decide if a collected entity should be passed to the `Execute` method. If you don't have any special criteria, you can just return `true`. Otherwise as in this particular example, we can check if the collected entity still has the `Destroyed` component on it.

>您可能想知道 `Filter` 方法是什么。 正如收集器章节中提到的，当一个实体被收集时，它会保持收集状态，即使有些事件在逻辑上可能感觉像是第一个事件的倒退。 在我们的特定示例中，我们说我们收集了所有被销毁的实体。 因此，即使某些东西从实体中删除了“Destroyed”组件并通过此操作将其恢复 - 实体仍然保持收集状态并将传递给“Execute”方法。 除了我们过滤掉它。 在“Filter”方法中，我们可以决定是否应将收集到的实体传递给“Execute”方法。 如果你没有任何特殊条件，你可以只返回 true 。 否则，就像在这个特定的例子中一样，我们可以检查收集到的实体是否仍然有 `Destroyed` 组件。

# Careful with AnyOf based collector
When you create a collector which whatches a group based on `AnyOf` matcher, you probably will get an unexpected result, as when you have components `A` and `B` and you have an `AnyOf(A, B)` group. An entity will enter a group only when one of the components is added, when we add the second component, the entity is still in the group so it is not `Added` and therefore it is not collected. This is however probably not what you want to have. Normally people want to see entities collected when any of the two components are added. In this case what you should do is to setup a collector with two distinct groups and not one `AnyOf` group. Here is an example from MatchOne:

>当您创建一个基于“AnyOf”匹配器的组的收集器时，您可能会得到意想不到的结果，因为当您有组件“A”和“B”并且您有一个“AnyOf(A, B)”组时。 实体只有在添加其中一个组件时才会进入组，当我们添加第二个组件时，实体仍在组中，因此它不是 Added ，因此不会被收集。 然而，这可能不是您想要的。 通常人们希望看到添加两个组件中的任何一个时收集的实体。 在这种情况下，您应该做的是设置一个具有两个不同组而不是一个“AnyOf”组的收集器。 这是来自 MatchOne 的示例：

```csharp
using System.Collections.Generic;
using DG.Tweening;
using Entitas;
using Entitas.Unity;
using UnityEngine;

public sealed class RemoveViewSystem : ReactiveSystem<GameEntity> {

    public RemoveViewSystem(Contexts contexts) : base(contexts.game) {
    }

    protected override ICollector<GameEntity> GetTrigger(IContext<GameEntity> context) {
        return context.CreateCollector(
            GameMatcher.Asset.Removed(),
            GameMatcher.Destroyed.Added()
        );
    }

    protected override bool Filter(GameEntity entity) {
        return entity.hasView;
    }

    protected override void Execute(List<GameEntity> entities) {
        foreach (var e in entities) {
            destroyView(e.view);
            e.RemoveView();
        }
    }

    void destroyView(ViewComponent viewComponent) {
        var gameObject = viewComponent.gameObject;
        var spriteRenderer = gameObject.GetComponent<SpriteRenderer>();
        var color = spriteRenderer.color;
        color.a = 0f;
        spriteRenderer.material.DOColor(color, 0.2f);
        gameObject.transform
                  .DOScale(Vector3.one * 1.5f, 0.2f)
                  .OnComplete(() => {
                      gameObject.Unlink();
                      Object.Destroy(gameObject);
                  });
    }
}
```

In this reactive system, we say that we will remove a view, when `Asset` component is removed from an entity, or if `Destroyed` component is added to an entity.

>在这个反应式系统中，我们说我们将删除一个视图，当从实体中删除“资产”组件时，或者如果将“销毁”组件添加到实体中。

There is however one caveat with this solution. Even though a collector can be setup with multiple groups, all of those groups have to be based on components from the same context. In case you need to have a reactive system which can collect entities from different context types, you need to extend the abstract `MultiReactiveSystem` class. In this class `GetTrigger` method return an array of collectors.

>但是，此解决方案有一个警告。 尽管可以为一个收集器设置多个组，但所有这些组都必须基于来自同一上下文的组件。 如果您需要一个可以从不同上下文类型收集实体的反应式系统，则需要扩展抽象的 MultiReactiveSystem 类。 在此类“GetTrigger”方法中返回一个收集器数组。
