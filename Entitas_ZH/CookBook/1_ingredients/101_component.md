# Component
Component is the simplest ingredient in ECS. It is an atomic representation of data. It can be empty, have one or many properties, or even be marked as unique. In following I will explain the differences with regards to Entitas-CSharp.

>Component 是 ECS 中最简单的组件。 它是数据的原子表示。 它可以为空，具有一个或多个属性，甚至可以标记为唯一。 下面我将解释关于 Entitas-CSharp 的差异。

## The simplest Component - Flag Component
I will take as examples, components defined in [Match-One](https://github.com/sschmid/Match-One) example project.

```csharp
using Entitas;

public sealed class MovableComponent : IComponent {
}
```

As you can see a component is a class which implements an `IComponent` interface. It does not have any properties so it is a _flag component_. Flag components are defined to flag entities. In this case we say that something is movable. So if we have an entity we can ask `entity.isMovable` and get `true` or `false` back. We also can ask for all entities which have `MovableComponent`, but this topic I would rather discuss later.

>如您所见，组件是一个实现“IComponent”接口的类。 它没有任何属性，因此它是一个_标志组件_。 标记组件被定义为标记实体。 在这种情况下，我们说某物是可移动的。 因此，如果我们有一个实体，我们可以询问“entity.isMovable”并得到“true”或“false”。 我们也可以请求所有具有“MovableComponent”的实体，但这个话题我稍后再讨论。

## Data Component
Data component can have multiple properties which can store pure data:

>数据组件可以有多个可以存储纯数据的属性：

```csharp
using Entitas;

public sealed class PositionComponent : IComponent {
    public int x;
    public int y;
}
```

In Entitas-CSharp we can add a position to an entity with the following statement:
```csharp
entity.AddPosition(1, 2);
```

There is a method to check if an entity has a component(`hasPosition`). We can also get(`position`), replace(`ReplacePosition`) and remove(`RemovePosition`) components. Every entity can have only one type of a component set. This is why we have `Replace` methods. But we can combine all the different types of components in a single entity. This is why it is better to slice your components as thin as possible. This gives you big benefits in terms of feature _improvisation_.

>有一种方法可以检查实体是否具有组件（`hasPosition`）。 我们还可以获取（`position`）、替换（`ReplacePosition`）和移除（`RemovePosition`）组件。 每个实体只能有一种类型的组件集。 这就是为什么我们有 `Replace` 方法。 但是我们可以将所有不同类型的组件组合在一个实体中。 这就是为什么最好将组件切得越薄越好。

## Reference Component
A reference component is technically equal to the _data component_, the difference is rather logical.

>引用组件在技术上等同于_数据组件
>
```csharp
using Entitas;
using UnityEngine;

public sealed class ViewComponent : IComponent {
    public GameObject gameObject;
}
```

Technically speaking a reference component is also just a component with multiple properties, but those properties do not represent data, they reference to a complex object. This has a rather profound implication. Those components are harder to serialise. They point to some objects created at runtime, therefore it is not useful to persist the pointer as is. We will have a deep dive into _reference components_ in the recipes section.

>从技术上讲，引用组件也只是具有多个属性的组件，但这些属性并不代表数据，它们引用的是一个复杂的对象。 这具有相当深远的意义。 这些组件更难序列化。 它们指向一些在运行时创建的对象，因此按原样保留指针是没有用的。 

## Action Component
This is again just a derivate of a data component. But in this case the property is a function/action.

>这又只是数据组件的衍生物。 但在这种情况下，该属性是一个函数/动作。

```csharp
using Entitas;
using System;

public sealed class DelegateComponent : IComponent {
    public Action action;
}
```

In this case we can store a function/delegate/action inside of a component and therefore attach it to an entity. This is a valid use of components, but it does more harm than good as we will discuss in the recipes section.

>在这种情况下，我们可以将函数/委托/操作存储在组件内部，因此将其附加到实体。 这是对组件的有效使用，但弊大于利

# Unique Component
In every application there are many cases where you would like to have only one instance of something. This idea manifested itself in the well known and often hated _singleton pattern_. In Entitas we have something similar but, better.

>在每个应用程序中，很多情况下您只想拥有某事物的一个实例。 这个想法体现在众所周知且经常令人讨厌的_singleton pattern_中。 在 Entitas 中，我们有类似但更好的东西。

Every type of component we discussed previously can be defined as a unique component.

>我们之前讨论的每种类型的组件都可以定义为唯一组件。

```csharp
using Entitas;
using Entitas.CodeGeneration.Attributes;

[Unique]
public sealed class GameBoardComponent : IComponent {
    public int columns;
    public int rows;
}
```

For this we just have to annotate the class as unique.

>为此，我们只需将类标注为unique即可。

The framework will make sure that only one instance of a unique component can be present in your context (see context chapter). This is why in Entitas-CSharp we can get an instance of a unique component with the following expression - `context.gameBoard`.

>该框架将确保在您的上下文中只能出现唯一组件的一个实例（请参阅上下文章节）。 这就是为什么在 Entitas-CSharp 中我们可以使用以下表达式获得唯一组件的实例 - `context.gameBoard`。

Now how is it better than _singleton pattern_? It is better due to the fact that we separate state from behaviour. The component can also be replaced and removed. So it breaks the idiom of the _singleton pattern_ where an object is unique and persistent throughout the application life cycle. A unique component is more of a global variable than a singleton.

>现在它比_singleton pattern_好在哪里？ 由于我们将状态与行为分开，因此更好。 该组件也可以更换和移除。 因此它打破了 _singleton pattern_ 的习语，其中对象在整个应用程序生命周期中是唯一且持久的。 唯一组件比单例更像是一个全局变量。

# How many components does an application need?
This question comes up all the time specifically with people new to ECS. And as always the right answer is - _it depends_. However from my experience 150 is quite a good number for mid core mobile games. As a matter of fact, I compared two different mobile games I worked on and both had around 150 components. That said, an iOS App I build with EntitasKit (Swift implementation) has around 50 components. Which is also not that surprising, as games tend to be much more complex than Apps.

>这个问题经常出现在刚接触 ECS 的人身上。 和往常一样，正确的答案是 - _it depends_。 但是根据我的经验，150 对于中核手游来说是一个相当不错的数字。 事实上，我比较了我开发的两款不同的手机游戏，它们都有大约 150 个组件。 也就是说，我使用 EntitasKit（Swift 实现）构建的 iOS 应用程序有大约 50 个组件。 这也不足为奇，因为游戏往往比应用程序复杂得多。
