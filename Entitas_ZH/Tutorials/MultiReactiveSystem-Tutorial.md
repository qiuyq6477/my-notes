# Introduction
Entitas version 0.42 introduced a much-requested new feature - the ability to have a single reactive system that operated on entities from several contexts simultaneously. This is extremely useful for boiler-plate systems that are needed for every part of your game. A system for destroying entities for example, is useful in every context. View systems are also often very generic, and useful in mutliple contexts. This tutorial will guide you through the process of implementing your first MultiReactiveSystem.

# First Steps
Create a new unity project and add the entitas library to your assets folder. Use entitas preferences to set up a folder for generated code, and define three contexts (Game, Input, Ui). Hit generate to create the base `Contexts` and `Feature` classes and the individual context files for Game, Input and Ui. If you are unsure about initial Entitas setup, please refer to the earlier [Hello World! Tutorial](https://github.com/sschmid/Entitas-CSharp/wiki/Unity-Tutorial-Hello-World).

This tutorial assumes you know how to create a GameController to actually run the systems you create. If you are unfamiliar with this take another look at the [Hello World!](https://github.com/sschmid/Entitas-CSharp/wiki/Unity-Tutorial-Hello-World) or [Simple View and Movement](https://github.com/sschmid/Entitas-CSharp/wiki/Unity-Tutorial---Simple-Entity-View-and-Movement) tutorials

# Simple MultiDestroySystem
The first example we will cover will be a DestroySystem that operates over all three of our contexts. First we need a component defined in each of the contexts. This is a simple flag component. If the UiAttribute is missing, you can add the Ui context through the Entitas preferences.

*Components.cs*
```csharp
using Entitas;
using UnityEngine;

[Game, Input, Ui]
public class DestroyedComponent : IComponent 
{
}
```
The first step when creating the multi-reactive system is to define an interface that allows us to call the generated methods without knowing which context the entity has come from. The Entitas code generator will find all components with multiple context tags and generate an interface for each. From our component above, the generator will create an `IDestroyedEntity` interface. Classes which implement `IDestroyedEntity` must have the `.isDestroyed` property. 

From here we can define an interface that says "I'm an Entity, I can have a DestroyedComponent". The multi-reactive system operates on this interface rather than on the GameEntity, UiEntity or InputEntity directly.

Once this interface is defined we need to tell the compiler that all of our different, context-specific entities will implement this interface. They can then be safely fed into the system.

*MultiDestroySystem.cs*
```csharp
using System.Collections.Generic;
using Entitas;
using Entitas.Unity;
using UnityEngine;

// IDestroyed: "I'm an Entity, I can have a DestroyedComponent"
public interface IDestroyableEntity : IEntity, IDestroyedEntity { }

// tell the compiler that our context-specific entities implement IDestroyed
public partial class GameEntity : IDestroyableEntity { }
public partial class InputEntity : IDestroyableEntity { }
public partial class UiEntity : IDestroyableEntity { }

// inherit from MultiReactiveSystem using the IDestroyed interface defined above
public class MultiDestroySystem : MultiReactiveSystem<IDestroyableEntity, Contexts>
{
    // base class takes in all contexts, not just one as in normal ReactiveSystems
    public MultiDestroySystem(Contexts contexts) : base(contexts)
    {
    }

    // return an ICollector[] with a collector from each context
    protected override ICollector[] GetTrigger(Contexts contexts)
    {
        return new ICollector[] {
            contexts.game.CreateCollector(GameMatcher.Destroyed),
            contexts.input.CreateCollector(InputMatcher.Destroyed),
            contexts.ui.CreateCollector(UiMatcher.Destroyed)
        };
    }

    protected override bool Filter(IDestroyableEntity entity)
    {
        return entity.isDestroyed;
    }

    protected override void Execute(List<IDestroyableEntity> entities)
    {
        foreach (var e in entities)
        {
            Debug.Log("Destroyed Entity from " + e.contextInfo.name + " context");
            e.Destroy();
        }
    }
}
```
Now run your game and find the context observers in your unity hierarchy (under DontDestroyOnLoad). Find a context, create an entity, then add the Destroyed component to it. Observe the message in the console. Try this with each of your contexts. Now you have one Destroy System to rule them all! 

# MultiDestroySystem with View

It is common for entity destruction to require destruction of a View GameObject in unity. To show this use case, we will also define a simple 'ViewComponent'. For more information on views in entitas, see the [Simple View and Movement Tutorial](https://github.com/sschmid/Entitas-CSharp/wiki/Unity-Tutorial---Simple-Entity-View-and-Movement). Once *components.cs* is saved, return to Unity, compile and generate (ctrl-shift-G).

*Components.cs (contd.)*
```csharp
[Game, Input, Ui]
public class ViewComponent : IComponent 
{
    public GameObject gameObject;
}
```

To perform operations on the Views we need our `IDestroyableEntity` interface to implement `IViewEntity` as well as `IDestroyedEntity`. `IView` entities implement the properties `hasView` and `view`, and the "Add", "Remove" and "Replace" methods we use to manipulate it. We will add this to the interface definition. 

*MultiDestroySystem.cs*
```csharp
using System.Collections.Generic;
using Entitas;
using Entitas.Unity;
using UnityEngine;

// IDestroyed: "I'm an Entity, I can have a DestroyedComponent AND I can have a ViewComponent"
public interface IDestroyableEntity : IEntity, IDestroyedEntity, IViewEntity { }

// tell the compiler that our context-specific entities implement IDestroyed
public partial class GameEntity : IDestroyableEntity { }
public partial class InputEntity : IDestroyableEntity { }
public partial class UiEntity : IDestroyableEntity { }

// inherit from MultiReactiveSystem using the IDestroyed interface defined above
public class MultiDestroySystem : MultiReactiveSystem<IDestroyableEntity , Contexts>
{
    public MultiDestroySystem(Contexts contexts) : base(contexts)
    {
    }

    protected override ICollector[] GetTrigger(Contexts contexts)
    {
        return new ICollector[] {
            contexts.game.CreateCollector(GameMatcher.Destroyed),
            contexts.input.CreateCollector(InputMatcher.Destroyed),
            contexts.ui.CreateCollector(UiMatcher.Destroyed)
        };
    }

    protected override bool Filter(IDestroyableEntity entity)
    {
        return entity.isDestroyed;
    }

    protected override void Execute(List<IDestroyableEntity> entities)
    {
        foreach (var e in entities)
        {
            // now we can access the ViewComponent and the DestroyedComponent
            if (e.hasView)
            {
                GameObject go = e.view.gameObject;
                go.Unlink();
                Object.Destroy(go);
            }
            Debug.Log("Destroyed Entity from " + e.contextInfo.name + " context");
            e.Destroy();
        }
    }
}
```
This example shows you how to write interfaces to allow you to access multiple components from within multi-reactive systems. Please note that these components must be defined on the same contexts for you to use them in multi-systems. If we only defined the View component in [Game] and [Ui] for example, `InputEntity` would not be able to implement `IViewEntity` because it would not implement the generated methods associated with the view component.

# Performing context-specific actions in multi-reactive systems

Sometimes we must use a specific context in a system - if we need to access a method from it, or to pass a reference of it to another object. When adding a ViewComponent to an entity in Unity for example, it is common to use the EntityLink functionality by calling `gameObject.Link(entity, context)`. In our above examples we do not have a handy reference to the specific context for each entity that enters the system, so we cannot pass it to the link method. Entities do however, carry a `contextInfo` field that we can use to find the context it belongs to.

Through the use of extention methods, it is possible to write functionality to retrieve the context reference using its name. We can use this extention in the multi-reactive systems to get references to the `IContext` for each entity. Note that `IContext` does not implement all the methods that each individual context does, but it is sufficient to pass to the link method which we will need to call in the system below.

Here is a static class that stores a map from the string name of a context to its `IContext` reference. The dictionary is filled in lazily (i.e. when it is first required). The extention method for the `Contexts` class returns the `IContext` associated with the passed name.

*ContextExtentions.cs*
```csharp
using System.Collections.Generic;
using Entitas;

public static class ContextExtentions
{
    private static readonly Dictionary<string, IContext> _contextsLookup = new Dictionary<string, IContext>();

    public static IContext GetContextByName(this Contexts contexts, string name)
    {
        if (_contextsLookup.Count == 0) SetContextsDictionary(contexts);
        return _contextsLookup[name];
    }

    private static void SetContextsDictionary(Contexts contexts)
    {
        foreach (var context in contexts.allContexts)
        {
            _contextsLookup.Add(context.contextInfo.name, context);
        }
    }
}
```

For this example we will use need one more Component. A simple flag that indicates we want to add a view to an entity. 

*Components.cs (contd.)*
```csharp
[Game, Input, Ui]
public class AssignViewComponent : IComponent
{
}
```
Now we can write a MultiReactiveSystem for adding views to entities across any context. As in the [Simple View and Movement](https://github.com/sschmid/Entitas-CSharp/wiki/Unity-Tutorial---Simple-Entity-View-and-Movement) tutorial, we will create parent GameObjects to store the views for organisation within the unity hierarchy. We can use a dictionary to find the appropriate parent for each view.

*MultiAddViewSystem.cs*
```csharp
using System.Collections.Generic;
using Entitas;
using Entitas.Unity;
using UnityEngine;

// IViewEntity: "I am an Entity, I can have an AssignViewComponent and a ViewComponent"
public interface IViewableEntity : IAssignViewEntity, IViewEntity, IEntity {}
public partial class GameEntity : IViewableEntity {}
public partial class InputEntity : IViewableEntity {}
public partial class UiEntity : IViewableEntity {}

public class MultiAddViewSystem: MultiReactiveSystem<IViewableEntity, Contexts>
{
    private readonly Transform _topViewContainer = new GameObject("Views").transform;
    private readonly Dictionary<string, Transform> _viewContainers = new Dictionary<string, Transform>();
    private readonly Contexts _contexts;

    public MultiAddViewSystem(Contexts contexts) : base(contexts)
    {
        _contexts = contexts;
        // create a view container for each context name
        foreach (var context in contexts.allContexts)
        {
            string contextName = context.contextInfo.name;
            Transform contextViewContainer = new GameObject(contextName + " Views").transform;
            contextViewContainer.SetParent(_topViewContainer);
            _viewContainers.Add(contextName, contextViewContainer);
        }
    }

    protected override ICollector[] GetTrigger(Contexts contexts)
    {
        return new ICollector[] {
            contexts.game.CreateCollector(GameMatcher.AssignView),
            contexts.input.CreateCollector(InputMatcher.AssignView),
            contexts.ui.CreateCollector(UiMatcher.AssignView)
        };
    }

    protected override bool Filter(IViewableEntityentity)
    {
        return entity.isAssignView && !entity.hasView;
    }

    protected override void Execute(List<IViewableEntity> entities)
    {
        foreach (var e in entities)
        {
            string contextName = e.contextInfo.name;
            GameObject go = new GameObject(contextName  + " View");
            go.transform.SetParent(_viewContainers[contextName]);
            e.AddView(go);
            go.Link(e, _contexts.GetContextByName(contextName));
            e.isAssignView = false;
        }
    }
}
```
Here we are using the context name to access two dictionaries, one to provide a reference to `IContext` that we can pass to the entity link method, the other to find the correct view container to set as the parent of our new view GameObject.

# Conclusion
Multi-reactive systems help eliminate the need for many separate systems with exactly the same code in each. Without them we would need a GameDestroySystem, a UiDestroySystem and an InputDestroySystem - each of which would run exactly the same code inside, but with different context-specific types (GameMatcher, GameContext, GameEntity etc). Thus MultiReactiveSystems help you to [DRY](https://en.wikipedia.org/wiki/Don%27t_repeat_yourself) out your Entitas code base.