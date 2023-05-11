# "Hello world"

"Hello world" is a typical example, which is used to illustrate the key benefits of _technology at hand_. For programming languages, people use a small programm which outputs __Hello World__ to the console. In case of an ECS most implementations I saw, start with a `MoveSystem`.

>“Hello world”是一个典型示例，用于说明_手头技术_的主要好处。 对于编程语言，人们使用一个小程序将 __Hello World__ 输出到控制台。 对于 ECS，我看到的大多数实现都是从“MoveSystem”开始的。

## Move System

Move system is a system which moves entities. In order to move something, this something needs to have a position and a velocity:

>移动系统是移动实体的系统。 为了移动某个东西，这个东西需要有一个位置和一个速度：

```csharp
using Entitas;

[Game]
public sealed class PositionComponent : IComponent {
    public int x;
    public int y;
}

[Game]
public sealed class VelocityComponent : IComponent {
    public int x;
    public int y;
}
```

If something has a position and a velocity, we can find it through movable group. Than we can iterate over all movables and replace position of a movable with it's previous position plus the velocity.

>如果某物有位置和速度，我们可以通过可移动组找到它。 比我们可以遍历所有可移动物并用它以前的位置加上速度替换可移动物的位置。

```csharp
using Entitas;

public sealed class MoveSystem : IExecuteSystem {

    Group movableGroup;

    public MoveSystem(Contexts contexts) {
        var matcher = Matcher.AllOf(GameMatcher.Velocity, GameMatcher.Position);
        movableGroup = contexts.game.GetGroup(matcher);
    }

    public void Execute() {
        foreach(var e in movableGroup) {
            e.ReplacePosition(e.postion.x + e.velocity.x, e.postion.y + e.velocity.y);
        }
    }
}
```

This is how we can move things with Entitas. It is a very simple example, but it illustrates the strength of an ECS. This one system can find every relevant entity and move it. We don't care what kind of other component are attached to this entity, it can be a car a human a dog a house, we don't care. We just defined that if something have a position and a velocity, it will be moved.

>这就是我们如何使用 Entitas 移动东西。 这是一个非常简单的示例，但它说明了 ECS 的优势。 这个系统可以找到每个相关实体并移动它。 我们不关心这个实体附加了什么样的其他组件，它可以是汽车、人、狗、房子，我们不关心。 我们刚刚定义了如果某个东西有位置和速度，它就会被移动。

## Decelerate System

With the given move system we will keep moving things at a constant speed until we stop the game / application. However in most cases we would like to decelerate things. Let's do it in a separate system.

>使用给定的移动系统，我们将保持以恒定速度移动物体，直到我们停止游戏/应用程序。 然而，在大多数情况下，我们希望减速。 让我们在一个单独的系统中进行。

```csharp
using Entitas;

public sealed class DecelerateSystem : IExecuteSystem {

    Group velocityGroup;

    public DecelerateSystem(Contexts contexts) {
        velocityGroup = contexts.game.GetGroup(GameMatcher.Velocity);
    }

    public void Execute() {
        foreach(var e in velocityGroup) {
            var velocityX = e.velocity.x / 2;
            var velocityY = e.velocity.y / 2;
            if (velocityX == 0 && velocityY == 0) {
                e.RemoveVelocity();
            } else {
                e.ReplaceVelocity(velocityX, velocityY);
            }
        }
    }
}
```

The implementation above is very naive, it just devides the velocity in half, so the velocity will become zero vector quite rapidly and when it does, we remove it all together. I don't expect you to write something like this in real code, but it is good enough to show one key concept of ECS. It is a good idea to make systems follow [single responsibility principle](https://en.wikipedia.org/wiki/Single_responsibility_principle). Move system is only concerned with _movable_ entites. Deceleration system is concerned with reducing the velocity. We could even say that current implementation of deceleration system has two resposibilities. It reduces velocity and also removes it. We could even go so far to introduce a third - stop system. Which can be a reactive system, removing the velocity when it changes to be a zero vector.

>上面的实现非常简单，它只是将速度减半，所以速度会很快变成零矢量，当它变成零矢量时，我们将它一起移除。 我不希望您在实际代码中编写这样的内容，但它足以展示 ECS 的一个关键概念。 让系统遵循[单一职责原则](https://en.wikipedia.org/wiki/Single_responsibility_principle) 是个好主意。 移动系统只关心_movable_实体。 减速系统与降低速度有关。 我们甚至可以说，目前减速系统的实施有两个责任。 它降低了速度并将其移除。 到目前为止，我们甚至可以引入第三个系统。 这可以是一个反应系统，当它变为零矢量时移除速度。

```csharp
using Entitas;

public sealed class StopSystem : ReactiveSystem<GameEntity> {

    protected override ICollector<GameEntity> GetTrigger(IContext<GameEntity> context) {
        return context.CreateCollector(GameMatcher.Velocity);
    }

    protected override bool Filter(GameEntity entity) {
        return entity.hasVelocity;
    }

    protected override void Execute(List<GameEntity> entities) {
        foreach (var e in entities) {
            if (e.velocity.x == 0 && e.velocity.y == 0) {
                e.RemoveVelocity();
            }
        }
    }
}
```

Now it is possible for us to simplify the decelerate system, by removing the velocity check and just replacing current velocity with reduced velocity.

>现在我们可以通过删除速度检查并仅用降低的速度替换当前速度来简化减速系统。

```csharp
using Entitas;

public sealed class DecelerateSystem : IExecuteSystem {

    Group velocityGroup;

    public DecelerateSystem(Contexts contexts) {
        velocityGroup = contexts.game.GetGroup(GameMatcher.Velocity);
    }

    public void Execute() {
        foreach(var e in velocityGroup) {
            var velocityX = e.velocity.x / 2;
            var velocityY = e.velocity.y / 2;
            e.ReplaceVelocity(velocityX, velocityY);
        }
    }
}
```

## Epiphany

This is all interesting, but I still did not explain my main point. My __main point__ is that systems don't communicate to each other directly. In object oriented programming, functional programming and even procedural programming - objects, functions, or procedures _talk_ to each other directly and syncronously. In ECS systems only query state and change state. They are decoupled from each other. Or atleast they are unaware of each others existence. You might argue that things are coupled through component types, but component types are data driven. We define them in order to reflect the _"world"_ we want to simulate, so __data__ becomes our [API](https://en.wikipedia.org/wiki/Application_programming_interface).

>这一切都很有趣，但我仍然没有解释我的主要观点。 我的 __main point__ 是系统不直接相互通信。 在面向对象的编程、函数式编程甚至过程式编程中——对象、函数或过程直接且同步地相互“交谈”。 在 ECS 系统中仅查询状态和更改状态。 它们彼此解耦。 或者至少他们不知道彼此的存在。 您可能会争辩说事物是通过组件类型耦合的，但组件类型是数据驱动的。 我们定义它们是为了反映我们想要模拟的_“世界”_，因此 __data__ 成为我们的 [API](https://en.wikipedia.org/wiki/Application_programming_interface)。

It is a very unique approach in handling things resulting from what I call the first rule of ECS - __Separate state from behaviour__. This is why I think it is worthy of being _Hello World_.

>这是一种非常独特的方法来处理由我称之为 ECS 的第一条规则 - __Separate state from behaviour__ 产生的事情。 这也是我认为它不愧为_Hello World_的原因。
