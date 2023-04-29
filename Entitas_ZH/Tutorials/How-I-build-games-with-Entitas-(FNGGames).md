This post is an explainer for how I structure my projects using Entitas. It assumes a decent understanding of how entitas works, it is *not* intended as a tutorial for any particular feature of Entitas. Instead it's meant to explain how one can structure code using Entitas to maximise clarity, stability and flexibility, especially in larger projects. I certainly do not claim this to be authoritative, it just the way I have learned to do things over my first few projects with Entitas. As always, YMMV.

I'm going to try to cover the following topics. I will use Unity to illustrate the concept of views and view controllers, but this way of thinking should apply regardless of the engine you're using.

* Defining Data, Logic and View layers
* Maintaining separation between them
* Abstraction via Interfaces
* Inversion of Control
* View layer abstraction (views and view controllers)

## Definitions

**Data**: The game *state*. Data such as health, inventory, experience, enemy type, ai state, movement speed etc. In Entitas these data live in *Components*.

**Logic**: The rules for how the data can be transformed. PlaceInInventory(), BuildItem(), FireWeapon() etc. In Entitas these are *Systems*.

**View**: The code responsible for displaying the game state to the player, rendering, animation, audio, ui widget etc. In my examples these will be *MonoBehaviours* living on *GameObjects*.

**Services**: Outside sources and sinks for information e.g. Pathfinding, Leaderboards, Anti-Cheat, Social, Physics, even the game engine itself. 
 
**Input**: Outside input to the simulation, usually via limited access to parts of the game logic e.g. controller / keyboard / mouse input, network input.

## Architecture

The core of any game is just a numerical simulation happening in a CPU. Every game is just a collection of data (the game's *state*) undergoing periodic numerical transformations (the game's *logic*). Game *state* includes things like score, health, xp, NPC dialog, inventories etc etc etc. The game's *logic* dictates the rules of the transformations that these data can undergo (calling `PlaceItemInInventory()` alters the game state in a defined manner). The entire simulation can exist without any additional layers.

In general, the difference between a game and a pure simulation is that there is an external user in the loop, with the ability to use the simulation logic to change the game state manually from the outside. With the addition of user, there also comes the requirement of communicating the state of the simulation to her. This is the "View Layer". The part of the code base that is responsible for communicationg the game state by rendering actors to the screen, playing audio, updating UI widgets etc. Without this layer there is no way the user can understand or meaninfully interact with the simulation. 

Most game architectures aim to actively maintain a distinction between the *logic and data* layers and the *view* layer. The idea is that the simulation layers shouldn't care or even know that they are being drawn on a screen. The method that determines how a player's health should change when they take damage should not contain code for rendering a blood effect on the screen or playing a pain sound effect. 

The way I maintain this separation is by structuring my project following the diagram below. I'll try to describe each part of the diagram and broadly how concepts like abstraction, through the use of interfaces, helps to acheive this.

![Architecture Diagram](https://i.imgur.com/RDWkaPX.png)

## Abstraction in action

Abstraction (in this specific case) is the process of removing strong coupling between *what* you want to do and *how* you want to do it. As a very simple example, let's imagine a function for writing out debug text somewhere the user can see it. 

**Naive approach**

The most naive approach, which I'm sure most readers will know to avoid already, would be to place a call to `Debug.Log` inside every system that needs to write a log message. This immediately introduces strong coupling all over our code base and makes it a nightmare to maintain.

**Problems with the naive approach**

What happens when you want to stop using `Debug.Log` in favour of a proper log-to-file solution? What about when you get around to adding an in-game debug console and I want to print messages to that as well? With the naive approach you have to go around your entire code base and start adding or replacing these method calls. This is a truly nightmarish problem in even a medium sized project.

You also have unreadable, confusing code. There is no separation of responsibilities. If you've ever completed one of Unity's example projects you'll probably have seen this and thought it's ok because Unity do it. I'm here to tell you *it's not ok*. Your character controller shouldn't be parsing raw user input, tracking inventory, playing footstep sounds and posting messages on Facebook as well as making your character move. It should just be making your character move. *Separate your concerns*. 

**Decoupled code - the Entitas approach**

You probably came to Entitas in the first place because you're all too familiar with these sorts of problems. So let's do it the Entitas way now to show how much better it is:

In Entitas we would probably acheive this by creating a `LogMessageComponent (string message)` and designing a `ReactiveSystem` that collects these messages and does the actual work. With this setup we can easily create an entity, hang the component on it and have it print the message to the console.

```csharp
using UnityEngine;
using Entitias; 
using System.Collections.Generic;

// debug message component
[Debug] 
public sealed class DebugLogComponent : IComponent {
    public string message;
}

// reactive system to handle messages
public class HandleDebugLogMessageSystem : ReactiveSystem<DebugEntity> {

    // collector: Debug.Matcher.DebugLog

    // filter: entity.hasDebugLog

    public void Execute (List<DebugEntity> entities) {
        foreach (var e in entities) {
            Debug.Log(e.debugLog.message);
            e.isDestroyed = true;
        }
    }
}
```

Now whenever something wants to create a log message it just creates an entity and the system takes care of it. We are free to change our implementation as many times as we like and we will only ever have to change the code in one place (inside that system).

**Problems with (pure) Entitas approach**

This approach will be sufficient for some users, especially in smaller projects like MatchOne. But it is not without problems of its own. We have added a strong dependency on UnityEngine because we are using its API inside our system. We have also written our implementation directly into our system. 

While this is no problem in the case of `Debug.Log()`, which is one line of code, what if part of your logging involved parsing a json file or sending the message over a network? Now you have lots of implementation-specific boiler-plate code in your systems. You also have a ton of dependencies and `using` statements all over the place (UnityEngine / JSON library / Networking Library etc). The code is more difficult to read and more resistant and error prone with respect to changes to your toolset. God forbid you ever have to change engine, that's a complete re-write of your game code.

## Interfaces by example

The way to solve these dependency and clarity problems in C# is through the use of interfaces. An interface is a like a contract. By telling the compiler you class implements an interface, you are saying "this class has the same public API as this interface". 

When I write interfaces I am thinking "what information or functionality does my game need from this thing?", then I try to come up with a descriptive, simple API for it. For a logging service we might only want one method, a simple `LogMessage(string message)`. Expressed as an interface that looks like this:

```csharp
// the interface 
public interface ILogService {
    void LogMessage(string message);
}

// a class that implements the interface
using UnityEngine;
public class UnityDebugLogService : ILogService {
    public void LogMessage(string message) {
        Debug.Log(message);
    }
}

// another class that does things differently but still implements the interface
using SomeJsonLib;
public class JsonLogService : ILogService {
    string filepath;
    string filename;
    bool prettyPrint;
    // etc...
    public void LogMessage(string message) {
        // open file
        // parse contents
        // write new contents
        // close file
    }
}
```

By saying your class implements `ILogService` you are guaranteeing to the compiler that it has the method `void LogMessage(string message)`. This means you can use it in the reactive system as before. This system only sees the interface `ILogService`. If we pass in a `JsonLogService` to the system, we will get a json file with our log messages in it, but we won't be able to access the public string fields of the `JsonLogService` class since they're not included in the interface. Note that now we have pass in an instance of `ILogService` to the system's constructor. I'll return to this later.

```csharp
// the previous reactive system becomes 
public class HandleDebugLogMessageSystem : ReactiveSystem<DebugEntity> {

    ILogService _logService;
    
    // contructor needs a new argument to get a reference to the log service
    public HandleDebugLogMessageSystem(Contexts contexts, ILogService logService) {
         // could be a UnityDebugLogService or a JsonLogService
        _logService = logService; 
    }
    
    // collector: Debug.Matcher.DebugLog
    // filter: entity.hasDebugLog

    public void Execute (List<DebugEntity> entities) {
        foreach (var e in entities) {
            _logService.LogMessage(e.DebugLog.message); // using the interface to call the method
            e.isDestroyed = true;
        }
    }
}
```

A more complex example from my projects is `IInputService`. Again, I am thinking, what do I need to know about the user input? Can i define a simple set of properties and methods that would get me what I need? Here is part of my interface:

```csharp
// interface
public interface IInputService {
    Vector2D leftStick {get;}
    Vector2D rightStick {get;}
    bool action1WasPressed {get;}
    bool action1IsPressed {get;}
    bool action1WasReleased {get;}
    float action1PressedTime {get;}
    // ... and a bunch more
}

// (partial) unity implementation
using UnityEngine;
public class UnityInputService : IInputService {
   // thank god we can hide this ugly unity api in here
   Vector2D leftStick {get {return new Vector2D(Input.GetAxis('horizontal'), Input.GetAxis('Vertical'));} }
   // you must implement ALL properties from the interface
   // ... 
}
```

I can now write an `EmitInputSystem` to pull the input data into Entitas. Now it is game data that can be reacted on to do other things. The beauty of this approach is that I can swap out my unity implementation for one that uses an asset store solution such as InControl without changing any game code. Notice that in the system below the code only queries the interface.

```csharp
public class EmitInputSystem : IInitalizeSystem, IExecuteSystem {    
    Contexts _contexts;
    IInputService _inputService; 
    InputEntity _inputEntity;
    
    // contructor needs a new argument to get a reference to the log service
    public EmitInputSystem (Contexts contexts, IInputService inputService) {
        _contexts = contexts;
        _inputService= inputService;
    }

    public void Initialize() {
        // use unique flag component to create an entity to store input components        
        _contexts.input.isInputManger = true;
        _inputEntity = _contexts.input.inputEntity;
    }

    // clean simple api, 
    // descriptive, 
    // obvious what it does
    // resistant to change
    // no using statements
    public void Execute () {
        inputEntity.isButtonAInput = _inputService.button1Pressed;
        inputEntity.ReplaceLeftStickInput(_inputService.leftStick);
        // ... lots more queries
    }
}
```

By now I hope you can see what I mean when I say "abstraction". I am *abstracting* the logic from the implementation, the *what* from the *how*. For the input service I am saying that all I care about is that I can query whether the user has pressed ButtonA, I don't care whether this comes from a keyboard or a mouse or a smartphone through a network connection. None of that matters to the part of my game where I'm actually reading the input. 

For the time service I am saying "give me the time delta", I don't need to know if it was Unity or XNA or Unreal that provided it, I just need to know what it is so I can figure out how much to move this guy around on the screen.


## Inversion of control

We have introduced one complication into our code which we didn't have before: now we have to get a reference to an instance of the service interface into the system somehow. In the above examples I've passed it in via the constructor, but this would lead to lots of systems with different constructors. What we'd like is to have our service instances to be globally accessible. We'd also like to have only one place in our code base, somewhere near application start, where we decide *which* implementations of these interfaces we will use. From there we need to create instances of them and make them globally accessible so they can be queried in systems without having to pass them into every individual constructor. Luckily this is super-easy to do with Entitas.

My approach to this is to first create a helper class that has a reference to each service in it:

*Services.cs*
```csharp
public class Services
{
    public readonly IViewService View;
    public readonly IApplicationService Application;
    public readonly ITimeService Time;
    public readonly IInputService Input;
    public readonly IAiService Ai;
    public readonly IConfigurationService Config;
    public readonly ICameraService Camera;
    public readonly IPhysicsService Physics;

    public Services(IViewService view, IApplicationService application, ITimeService time, IInputService input, IAiService ai, IConfigurationService config, ICameraService camera, IPhysicsService physics)
    {
        View = view;
        Application = application;
        Time = time;
        Input = input;
        Ai = ai;
        Config = config;
        Camera = camera;
        Physics = physics;
    }
}
```

Now in my game controller I can simply initialise it as follows:

```csharp
var _services = new Services(
    new UnityViewService(), // responsible for creating gameobjects for views
    new UnityApplicationService(), // gives app functionality like .Quit()
    new UnityTimeService(), // gives .deltaTime, .fixedDeltaTime etc
    new InControlInputService(), // provides user input
    // next two are monobehaviours attached to gamecontroller
    GetComponent<UnityAiService>(), // async steering calculations on MB
    GetComponent<UnityConfigurationService>(), // editor accessable global config
    new UnityCameraService(), // camera bounds, zoom, fov, orthsize etc
    new UnityPhysicsService() // raycast, checkcircle, checksphere etc.
);
```

In my `MetaContext` I have a set of unique components that hold instances of these interfaces. For example: 

```csharp
[Meta, Unique]
public sealed class TimeServiceComponent : IComponent {
    public ITimeService instance;
}
```

Finally I have a `Feature`, the very first to run in my systems heirarchy, called `ServiceRegistrationSystems`. This takes in an extra `Services` argument in its constructor, then passes the services down to initialize systems. These systems simple assign the instances in `Services` to the unique components in the meta context. 

*ServiceRegistrationSystems.cs*
```csharp
public class ServiceRegistrationSystems : Feature
{
    public ServiceRegistrationSystems(Contexts contexts, Services services)
    {
        Add(new RegisterViewServiceSystem(contexts, services.View));
        Add(new RegisterTimeServiceSystem(contexts, services.Time));
        Add(new RegisterApplicationServiceSystem(contexts, services.Application));
        Add(new RegisterInputServiceSystem(contexts, services.Input));
        Add(new RegisterAiServiceSystem(contexts, services.Ai));
        Add(new RegisterConfigurationServiceSystem(contexts, services.Config));
        Add(new RegisterCameraServiceSystem(contexts, services.Camera));
        Add(new RegisterPhysicsServiceSystem(contexts, services.Physics));
        Add(new ServiceRegistrationCompleteSystem(contexts));
    }
}
```

*Example of one of the registration systems*
```csharp
public class RegisterTimeServiceSystem : IInitializeSystem
{
    private readonly MetaContext _metaContext;
    private readonly ITimeService _timeService;

    public RegisterTimeServiceSystem(Contexts contexts, ITimeService timeService)
    {
        _metaContext = contexts.meta;
        _timeService = timeService;
    }

    public void Initialize()
    {
        _metaContext.ReplaceTimeService(_timeService);
    }
}
```

The result is we now have global access to the service instances through the Contexts instance (`_contexts.meta.timeService.instance`). We also created all of them in one place, so it is trivial to go back, change implementation or mock up dummy implementations for tests. You could also easily use compiler directives to give you platform specific, or debug-build specific implementations. We have "inverted control" of dependency resolution, from deep within our systems classes to right at the top of our application.


## View Layer Abstraction

So far, we've looked at the service interfaces from left of the diagram, now let's take a look at the View interfaces from the right hand side. The work in much the same way. As we've  said, the View layer is the stuff concerned with displaying the game state to the player - animations, sounds, sprites, meshes, renderers etc. The goal here is again to remove concrete dependencies on a particular game engine or 3rd party library, and also to have clean, descriptive code inside our systems without any nitty-gritty implementation details.

A naive approach would be to have a `ViewComponent` with a reference to a gameobject on it. Then perhaps a simple flag component `AssignViewComponent` to indicate we need to create a new gameobject to act as the view for this entity. To use this you'd write a reactive system that reacts on `AssignView` and filters for `!entity.hasView` to ensure we don't add a view where it's not needed. In this system you'd have to use the unity API directly inside your system code and even inside your components. This of course fails to acheive all the goals we have set for ourselves.

Here we can make use of the service patten described above, along with a further set of abstractions for the views. Again, think about what data and functionality you actually need from your views, and write an interface for it. This will be how your systems code sets or gets data from your views. I call this a "ViewController" - that is the piece of code that controls the View objects directly. Typically this will contain tranform information (position / scale / rotation) as well as things like tags, layers, names, enable / disable status.

The view, by its nature, is bound to an entity, and it may need to do work with information from both that entity and other parts of your game state. For this I want to pass in references to the entity and the Contexts instance when I set up the view. I will also want the ability to destroy the view from inside my entitas code. Here is a simple example:

```csharp
public interface IViewController {
    Vector2D Position {get; set;}
    Vector2D Scale {get; set;}
    bool Active {get; set;}
    void InitializeView(Contexts contexts, IEntity Entity);
    void DestroyView();
}
``` 

Here is an implementation of this interface for Unity:

```csharp
public class UnityGameView : MonoBehaviour, IViewController {

    protected Contexts _contexts;
    protected GameEntity _entity;

    public Vector2D Position {
        get {return transform.position.ToVector2D();} 
        set {transform.position = value.ToVector2();}
    }

    public Vector2D Scale // as above but with tranform.localScale

    public bool Active {get {return gameObject.activeSelf;} set {gameObject.SetActive(value);} }

    public void InitializeView(Contexts contexts, IEntity Entity) {
        _contexts = contexts;
        _entity = (GameEntity)entity;
    }

    public void DestroyView() {
        Object.Destroy(this);
    }
}
```

We will need a service to create these views and binds them to entities. This is my `IViewService` and its implementation for Unity.

A component to hold the view controller
```csharp
[Game]
public sealed class ViewComponent : IComponent {
    public IViewController instance;
}
```

An interface to define the two things I need to be able to ask the view service for
```csharp
public interface IViewService {   
    // create a view from a premade asset (e.g. a prefab)
    IViewController LoadAsset(Contexts contexts, IEntity entity, string assetName);
}
```

A Unity implementation of the view service:
```csharp
public class UnityViewService : IViewService {
    public IViewController LoadAsset(Contexts contexts, IEntity entity, string assetName) {
        var viewGo = GameObject.Instantiate(Resources.Load<GameObject>("Prefabs/" + assetName));
        if (viewGo == null) return null;
        var viewController = viewGo.GetComponent<IViewController>();
        if (viewController != null) viewController.InitializeView(contexts, entity);
        return viewController;
    }
}
```

A LoadAssetSystem that loads the asset and binds the view
```csharp
public class LoadAssetSystem : ReactiveSystem<GameEntity>, IInitializeSystem {
    readonly Contexts _contexts;
    readonly IViewService _viewService;

    // collector: GameMatcher.Asset
    // filter: entity.hasAsset && !entity.hasView

    public void Initialize() {    
        // grab the view service instance from the meta context
        _viewService = _contexts.meta.viewService.instance;
    }

    public void Execute(List<GameEntity> entities) {
        foreach (var e in entities) {
            // call the view service to make a new view
            var view = _viewService.LoadAsset(_contexts, e, e.asset.name); 
            if (view != null) e.ReplaceView(view);
        }
    }
}
```

An example position system that uses the abstracted view instead of talking directly to Unity.
```csharp
public class SetViewPositionSystem : ReactiveSystem<GameEntity> {
    // collector: GameMatcher.Position;
    // filter: entity.hasPosition && entity.hasView
    public void Execute(List<GameEntity> entities) {
        foreach (var e in entities) {
            e.view.instance.Position = e.position.value;
        }
    }
}
```

There are no dependencies to Unity engine in our code, components and systems reference only the interfaces we've written. There is no detailed implementation in the code (don't have to worry about accessing gameObjects and transforms, we are simply setting a property in an interface). 

**Problems with this approach**

There is one obvious flaw - that you are now writing systems in your game code which are responsible for talking to the view layer - this breaks one of our earlier principles - that our simulation should not need to know that it is being drawn. There is another way to do set things up in Entitas that does more to enforce fully decoupled views - that is the Entitas "Events" functionality.

## Events

In Match-One, Simon has no ViewComponent. In fact, nothing in the game code even knows it's being drawn at all. Instead his View MonoBehaviours are just event listeners. I will recreate the above example using events to show how this can simplify your game logic even further and fully decouple the simulation layer from the view layer.

First we need a component tagged with the [Event] attribute to generate the listeners and event systems we'll need. Let's use the Position example again.

```csharp
// [Game, Event(true)] (Event(true) DEPRECATED as of Entitas 1.6.0) 
[Game, Event(EventTarget.Self)] // generates events that are bound to the entities that raise them
public sealed class PositionComponent : IComponent {
    public Vector2D value;
}
```

The new attribute will generate a `PositionListenerComponent` and an `IPositionListener` interface. Now I will write another interface that will apply to *all* event listeners so that I can safely initialize them when they're created:

```csharp
public interface IEventListener {
    void RegisterListeners(IEntity entity);
}
```

We will now have no further need for the view component or the return value from our LoadAsset method in the view service, so we can remove them. Finally we will add some code to the view service to identify and initialize these event listeners if it finds them on an asset:

First update our IViewService:
```csharp
using Entitas;
public interface IViewService {
    // create a view from a premade asset (e.g. a prefab)
    void LoadAsset(
        Contexts contexts,
        IEntity entity,
        string assetName);
}
```

Then update our Unity implementation, UnityViewService. 
```csharp
using UnityEngine;
using Entitas;

public class UnityViewService : IViewService {
    // now returns void instead of IViewController
    public void LoadAsset(Contexts contexts, IEntity entity, string assetName) {

        //Similar to before, but now we don't return anything. 
        var viewGo = GameObject.Instantiate(Resources.Load<GameObject>("Prefabs/" + assetName));
        if (viewGo != null) {
            var viewController = viewGo.GetComponent<IViewController>();
            if(viewController != null) {
                viewController.InitializeView(contexts, entity);
            }

            // except we add some lines to find and initialize any event listeners
            var eventListeners = viewGo.GetComponents<IEventListener>();
            foreach(var listener in eventListeners) {
                listener.RegisterListeners(entity);
            }
        }
    }
}
```

Now we can get rid of all of our `SetViewXXXSystem` classes since we wont be telling the view to do anything. Instead we will be writing monobehaviours that listen for changes in position, such as:

```csharp
public class PositionListener : MonoBehaviour, IEventListener, IPositionListener {
    
    GameEntity _entity;
 
    public void RegisterEventListeners(IEntity entity) {
        _entity = (GameEntity)entity;
        _entity.AddPositionListener(this);
    }

    public void OnPosition(GameEntity e, Vector2D newPosition) {
        transform.position = newPosition.ToVector2();
    }
}
```

If we add this script to a prefab and generated `EventSystems` to the game controller, the gameobject transform will stay perfectly in sync with the entity's PositionComponent without any help from systems. The view's position is fully decoupled from the entity's position in the simulation layer. You can easily add events to any component you like, recreating all the functionality you had in the original IViewController interface, getting rid of it all together in favour of event listeners.

This pattern of loading assets through a service also gives us the ability to control the initialization of and information flow to our views. You could add as many as you like (IAudioPlayer, IAnimator, ICollider etc) and pass each of them references to the contexts and / or the entity they are associated with. You control the order and timing of the initialization (no more wondering when Start() and Update() will get called by Unity, no need to null check everywhere in case Start() got called too early).

Now you can have views handle things on their own - view controllers become simple event listeners, reacting to changes in components of interest, but with no need to ever send information back to the simulation layer (except perhaps to hang an xxxListenerComponent on an entity during initialization). You can implement an entire animation system in Unity through monobehaviour event listeners without having any reference to it in your simulation layers. The same goes with audio, particles, funky shaders etc. 


## Summing up

This is ideal. We have now achieved all the goals we set out at the start. 

We have fully decoupled our entitias code from our game engine and any 3rd party libraries we've got lying around. 

We have a simulation layer (data in components and logic in systems) that is completely engine agnostic. There is now just one folder in our project containing the actual Unity implementations of our various interfaces. This is the only folder we will have to touch if we decide to move everything out of Unity to XNA tomorrow. 

We have one place at the top of our application where we decide which implementations we will use. We can use this to mock up test situations, try out new 3rd party solutions, or simply change our minds about how things should work, without touch the game logic in any way.

Our simulation layer is fully decoupled from the view layer, and once we've got events up and running we have a code base that doesn't event know it's being drawn. The entire simulation could run happily on a headless server, leaving the view code to run on the client machines.  

Finally, when we look at our game logic, it is clean and easy to read. Complex implementation is hidden away and replaced with simple calls to descriptively named methods and properties. We can design our interfaces to only contain fields of interest, we no longer have to see huge intelli-sense dropdowns filled with irrelevant information. We will only have access to what we need.

















