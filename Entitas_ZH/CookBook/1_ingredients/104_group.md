# Group
The typical _"Hello World"_ of ECS is the so called "move system". A move system is a system which takes all entites which have position and velocity components and exchanging the position component on this entity, effectivly moving it toward the velocity vector. The __AHA__ moment comes when we realise that it does not matter what kind of other components are on this entity. It can be a person, dog, car, helicopter or a house. If it has a position component and a velocity component, it has to be moved.

>ECS 的典型_“Hello World”_ 就是所谓的“移动系统”。 移动系统是一个系统，它采用所有具有位置和速度分量的实体，并在该实体上交换位置分量，有效地将其移向速度矢量。 当我们意识到这个实体上有什么样的其他组件并不重要时，__AHA__ 时刻就来了。 它可以是人、狗、汽车、直升机或房子。 如果它有位置分量和速度分量，则必须移动它。

### How do we get those entities though?
As described in context chapter, a context manages all the entites so we could ask context for all entities and iterate through all of them, collecting those who has position and velocity components. This would be a very naive implementation. What we have in Entitas for this case is a so called __Group__.

>如上下文章节所述，上下文管理所有实体，因此我们可以询问所有实体的上下文并遍历所有实体，收集具有位置和速度分量的实体。 这将是一个非常天真的实现。 对于这种情况，我们在 Entitas 中拥有的是所谓的 __Group__

```csharp
context.GetGroup(GameMatcher.AllOf(GameMatcher.Position, GameMatcher.Velocity));
```

In the statement above we ask a context to provide us with a group holding entites which have `Position` and `Velocity` components. A group is a collection of entites which is always up to date. Meaning if you remove a position from an entity it will immediately leave this group. And if you add a position and velocity components to an entity it will directly enter the group.

>在上面的语句中，我们要求上下文为我们提供一组持有实体，这些实体具有“位置”和“速度”组件。 组是始终保持最新状态的实体集合。 这意味着如果您从一个实体中删除一个职位，它将立即离开该组。 如果你给一个实体添加位置和速度分量，它会直接进入组。

You can ask for groups without any hesitation, because they are internally reused. A context keeps an internal list of all groups you asked, so if you ask again for a group with same matcher it will just give you a reference to already existing one. Speaking of matchers...

>你可以毫不犹豫地要求组，因为它们在内部被重用。 上下文保留了您询问的所有组的内部列表，因此如果您再次询问具有相同匹配器的组，它只会给您一个已经存在的组的引用。 说到匹配器...

## Matcher 
A matcher is a way how we can describe what kind of entites we are interested in. It is our small query language if you will. `GameMatcher` means that we have a `Game` context (see Multiple context types section in Context chapter) and we can access all component types associated to this context. If we would write `context.GetGroup(GameMatcher.Position);` We would get a group of entites which have `Position` component. In order to define more complex groups, we can use `AllOf`, `AnyOf` and `NoneOf` methods. `AllOf` means that all the listed components has to be present on the entity in order for this entity to become part of the group. `AnyOf` means that one of the listed component has to be present. And in case of `NoneOf` we don't want the listed components to be present. `NoneOf` is not a stand alone description, meaning that you will not be able to write `context.GetGroup(GameMatcher.NoneOf(GameMatcher.Position));` It is prohibited because it creates a very large set. `NoneOf` can be used only in combination with `AllOf` or `AnyOf`.

>匹配器是我们描述我们感兴趣的实体类型的一种方式。如果你愿意的话，它是我们的小型查询语言。 `GameMatcher` 意味着我们有一个 `Game` 上下文（请参阅上下文章节中的多个上下文类型部分）并且我们可以访问与此上下文关联的所有组件类型。 如果我们写 `context.GetGroup(GameMatcher.Position);` 我们会得到一组具有 `Position` 组件的实体。 为了定义更复杂的组，我们可以使用 `AllOf`、`AnyOf` 和 `NoneOf` 方法。 `AllOf` 意味着所有列出的组件都必须出现在实体上才能使该实体成为组的一部分。 `AnyOf` 意味着列出的组件之一必须存在。 在 NoneOf 的情况下，我们不希望列出的组件存在。 `NoneOf` 不是一个独立的描述，这意味着您将无法编写 `context.GetGroup(GameMatcher.NoneOf(GameMatcher.Position));` 它是被禁止的，因为它会创建一个非常大的集合。 `NoneOf` 只能与 `AllOf` 或 `AnyOf` 结合使用。

```csharp
context.GetGroup(GameMatcher.AllOf(GameMatcher.Position, GameMatcher.Velocity).NoneOf(GameMatcher.NotMovable));
```

This way we can say that we need a group of entities which have `Postion` and `Velocity` components but does not have `NotMovable` component.

>这样我们就可以说我们需要一组具有“Position”和“Velocity”组件但没有“Not Movable”组件的实体。

`AllOf` and `AnyOf` can also be combined: `context.GetGroup(Matcher.AllOf(Matcher.A, Matcher.B).AnyOf(Matcher.C, Matcher.D).NoneOf(Matcher.E))`

>`AllOf` 和 `AnyOf` 也可以组合：`context.GetGroup(Matcher.AllOf(Matcher.A, Matcher.B).AnyOf(Matcher.C, Matcher.D).NoneOf(Matcher.E))`

A matcher definiton can also start with `AnyOf`: `context.GetGroup(Matcher.AnyOf(Matcher.C, Matcher.D).NoneOf(Matcher.E))`

>匹配器定义也可以以`AnyOf`开头：`context.GetGroup(Matcher.AnyOf(Matcher.C, Matcher.D).NoneOf(Matcher.E))`

# Group observation
As I mentioned before a group is always up to date, so it provides a great benefit if we can observe a group and get notified when an entity was added or removed from it. Even more importantly is to understand than, when we replace a component on an entity, old component will be removed and new component will be added. This means that the entity will leave a group and than reenter it with a new value. This is what provides us with foundation for reactive programming.

>正如我之前提到的，一个组总是最新的，所以如果我们可以观察一个组并在实体添加或从中删除时得到通知，它会提供很大的好处。 更重要的是要理解，当我们替换实体上的组件时，将删除旧组件并添加新组件。 这意味着该实体将离开一个组，然后以新值重新进入该组。 这就是为我们提供响应式编程的基础

Internally in Entitas-CSharp we don't really remove and add components. The generated code asks user for new values, fires the events as if we would remove the component with old values, sets new values in the component and fires and event as if a new component was added. This way we avoid memory allocation and simulate a feeling of working with immutable components.

>在 Entitas-CSharp 内部，我们并没有真正删除和添加组件。 生成的代码向用户询问新值，触发事件，就好像我们要删除具有旧值的组件一样，在组件中设置新值并触发事件，就好像添加了新组件一样。 这样我们就避免了内存分配并模拟了使用不可变组件的感觉。

A group has follwoing events you can subscribe to:
- OnEntityAdded
- OnEntityRemoved
- OnEntityUpdated

Other ingredients like Collector, Index and Reactive system are using the same events. So, for day to day work, you probably can use those. But if you want to build something custom, you might want to have a look at implementation details.

>Collector、Index 和 Reactive 系统等其他组件使用相同的事件。 因此，对于日常工作，您可能可以使用它们。 但是如果你想构建自定义的东西，你可能想看看实现细节。
