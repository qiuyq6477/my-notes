Caveat: It should be noted that this example was derived for a network game where inputs are transmitted via the server.

>警告：应该注意的是，此示例是针对通过服务器传输输入的网络游戏派生的。

What we want is to be able to have some thing happen on one players input context that propagates across the network to effect the game context of other players, and their own. A simple button clicking process is detailed below, where a button widget transmits a user action into the entitas systems and behaviours. 

For sake of brevity, the networking code is ommitted. If this were a single player game only, a simpler method could be derived. An interesting feature of Entitas for networked games is that it allows deterministic creation of entities meaning each player has the same presentation, requiring only transmission of inputs across the network to keep the system in step.

In this example we have two contexts:
+ Game
+ Input

The overall process is:
+ User click a button in the local game world
+ GameObject handles click event, send the event across the network that generates an entity locally
+ New entity triggers reactive system behaviours via collectors
+ Input is translated into game entity

## Components
So we need a Component that handles a click action on a button.

```csharp
using Entitas;
[Input]
public sealed class ClickComponent : IComponent {
	public bool state;
}
```

As we want to only access a single entity on each player, we have an indexed Input id and Game name:
```csharp
using Entitas;
using Entitas.CodeGenerator.Api;

[Input]
public sealed class InputIdComponent : IComponent{
    [EntityIndex]
    public string value;
}

[Game]
public sealed class NameComponent : IComponent{
    
    [EntityIndex]
    public string value;
}
```

Also we need some entites that are the buttons in Entitas:
```csharp
[Game]
public sealed class ButtonStateComponent : IComponent{
    public bool buttonState;
}
```

## Auto-generated Context Extensions
Because we are using discrete indexed entities via the [EntityIndex] tag, the code generator creates some methods for finding all those entites:

```csharp
using System.Collections.Generic;
public static class ContextsExtensions {

    public static HashSet<InputEntity> GetEntitiesWithInputId(this InputContext context, string value) {
        return ((Entitas.EntityIndex<InputEntity, string>)context.GetEntityIndex(Contexts.InputId)).GetEntities(value);
    }

    public static HashSet<GameEntity> GetEntitiesWithName(this GameContext context, string value) {
        return ((Entitas.EntityIndex<GameEntity, string>)context.GetEntityIndex(Contexts.Name)).GetEntities(value);
    }
}
```

## Unity GameObjects
So now we have a set of generated components, we need to trigger them. If we have a MonoBehaviour attached to an entity that can handle a standard mouse input from Unity in the following fashion ([see View components and systems in action in the Match-One example project](https://github.com/sschmid/Match-One))

This is a event to that passes a component as the argument:

```csharp
using UnityEngine.Events;
public class ClickEvent : UnityEvent<ButtonWidget> { }
```

This is the widget that can be configured in the Unity Editor, that should be on the entities view game object.

```csharp
using Entitas.Unity;
using UnityEngine;
using UnityEngine.EventSystems;
using System;
using UnityEngine.Events;

public class ButtonWidget : MonoBehaviour, IClickable
{
    
    [SerializeField]
    protected Color onClickColour = Color.green;
    protected Color originalOffColour;

    public ClickEvent OnClick;
    bool _state = false;

    void OnEnable()
    {            
        if (OnClick == null)
            OnClick = new ClickEvent();

        OnClick.AddListener(FindLocalNetworkPlayer().HandleClick);

        originalOffColour = offColour;
    }

    void OnDisable()
    {            
        if (OnClick != null)
            OnClick.RemoveListener(FindLocalNetworkPlayer().HandleClick);
    }

    public string GetId()
    {            
        return GetGameEntity().name.value;
    }

    public GameEntity GetGameEntity(){
        return gameObject.GetEntityLink().entity as GameEntity;
    }

    public bool GetState()
    {
        return GetGameEntity().buttonState.buttonState;
    }

    public void OnPointerClick(PointerEventData eventData)
    {
        if (OnClick != null)
            OnClick.Invoke(this);
    }

    public void SetState(bool state)
    {
        _state = state;
        if (gameObject.GetComponent<Renderer>())
        {
            if (_state)
            {
                gameObject.GetComponent<Renderer>().material.color = onClickColour;
                offColour = onClickColour;
            }
            else
            {
                offColour = originalOffColour;
                gameObject.GetComponent<Renderer>().material.color = offColour;
            }
        }
    }
}
```

Now we have a game object that can handle input locally, we need to transmit this over the network and create new entities on all the players. So lets imagine that the HandleClick method here is some fancy network code that happens on each players local system, as if by magic.
```csharp
public class NetworkPlayer : NetworkBehavior{
    // This happens locally for each player!
    public void HandleClick(ButtonWidget btn)
        {
            var e = Contexts.sharedInstance.input.CreateEntity();    
            e.AddInputId(btn.GetButtonId());
            e.AddClick(btn.GetClickState());
        }
}
```

## Input Context Systems
Then somewhere in your features you will have a system that reacts to input entities that have click components:
```csharp
using System.Collections.Generic;
using Entitas;

public sealed class AddClickSystem : ReactiveSystem<InputEntity>
{
    readonly InputContext _context;

    public AddClickSystem(Contexts contexts) : base(contexts.input)
    {
        _context = contexts.input;
    }

    protected override Collector<InputEntity> GetTrigger(IContext<InputEntity> context)
    {
        return context.CreateCollector(InputMatcher.Click, GroupEvent.Added);
    }

    protected override bool Filter(InputEntity entity)
    {
        return entity.hasInputId;
    }

    protected override void Execute(List<InputEntity> entities)
    {

        foreach (var e in entities)
        {
            // Find the game entity with the name of the input id.
            var obj = Contexts.sharedInstance.game.GetEntitiesWithName(e.inputId.value).SingleEntity();
            
            if (obj != null && obj.hasButtonState)
            {
                obj.ReplaceButtonState(!obj.buttonState.buttonState);                      
            }
            e.RemoveClick();
        }
    }
}
```

This system is to tidy up any inputs after they have been issued:
```csharp
using System.Collections.Generic;
using Entitas;
using System.Linq;
using UnityEngine;
using System;

public sealed class RemoveClickSystem : ReactiveSystem<InputEntity> {

    readonly InputContext _context;
    
    public RemoveClickSystem(Contexts contexts) : base(contexts.input) {
        _context = contexts.input;       
    }

    protected override Collector<InputEntity> GetTrigger(IContext<InputEntity> context) {
        return context.CreateCollector(InputMatcher.Click, GroupEvent.Removed);
    }

    protected override bool Filter(InputEntity entity) {
        return entity.isEnabled;
    }

    protected override void Execute(List<InputEntity> entities) {
        foreach(var e in entities) {
            Contexts.sharedInstance.input.DestroyEntity(e);
        }
    }
}
```

## Game Context Systems
Now that a entity has been changed in the game context, a system can react to the change. In this network example the input is decoupled from the game state so that the local system is responsible for changing the view and state of the object.
```csharp
using System;
using System.Collections.Generic;
using Entitas;

public sealed class ButtonSystem : ReactiveSystem<GameEntity>
{
    readonly GameContext _context;
    public ButtonSystem(Contexts contexts) : base(contexts.game){
        _context = contexts.game;
    }

    protected override Collector<GameEntity> GetTrigger(IContext<GameEntity> context)
    {
        return context.CreateCollector(GameMatcher.ButtonState);
    }

    protected override bool Filter(GameEntity entity)
    {
        return entity.hasButtonState && entity.hasView;
    }

    protected override void Execute(List<GameEntity> entities)
    {
        foreach(var e in entities){            
            // Let the editor configured game object handle colour changes
            if(e.view.gameObject.GetComponent<Widgets.ButtonWidget>())
                e.view.gameObject.GetComponent<Widgets.ButtonWidget>().SetState(e.buttonState.buttonState);
        }
    }    
    
}
```

Your button should change colour now.