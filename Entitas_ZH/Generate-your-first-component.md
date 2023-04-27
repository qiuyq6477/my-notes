# Generate your first component
Let's create our first custom component and let the Code Generator do its magic!

### Step 1
Open the Entitas preferences and set the `Generated Folder` path where the Code Generator should save files.

![Entitas.Unity.CodeGenerator](https://raw.githubusercontent.com/sschmid/Entitas-CSharp/develop/Readme/Images/Entitas.Unity.VisualDebugging-Preferences.png)

### Step 2
Create a new class and implement `IComponent`

```csharp
using Entitas;

public class PositionComponent : IComponent {
    public float x;
    public float y;
    public float z;
}
```

### Step 3
Select `Entitas/Generate`

![Entitas.Unity.CodeGenerator](https://raw.githubusercontent.com/sschmid/Entitas-CSharp/develop/Readme/Images/Entitas.Unity-MenuItems.png)

### Step 4
Create some Systems. Passing your contexts into these systems when you create them lets you create and edit entities and components within your systems. You can use any of the following commands within your systems to manipulate entities and components. Use GroupEvents in your RS to narrow down what you are listening out for (e.g. GroupEvent.Added, GroupEvent.Removed). See [Systems](https://github.com/sschmid/Entitas-CSharp/wiki/Systems) for some practical examples.

```csharp
    
    // create a new entity in the [Game] context
    var e = contexts.game.CreateEntity();

    // add a position component to it
    // ReactiveSystems with GameMatcher.Position will receive this entity now
    // Also triggers GroupEvent.Added and GroupEvent.AddedOrRemoved
    e.AddPosition(x, y, z); 

    // change the position 
    // ReactiveSystems with GameMatcher.Position again receive this entity
    // Also triggers GroupEvent.Added and GroupEvent.AddedOrRemoved
    e.ReplacePosition(x, y, z);

    // remove the position component from the entity
    // ReactiveSystems with GameMatcher.Position again receive this entity
    // Also triggers GroupEvent.Removed and GroupEvent.AddedOrRemoved
    e.RemovePosition();

    // delete the entity
    e.Destroy(); 

```

### Step 5
Create a GameController script and attach it to an empty GameObject in your scene

```csharp
public class GameController : MonoBehaviour{

    void Start() {
        var contexts = Contexts.sharedInstance;    
        _systems = createSystems(contexts);
        _systems.Initialize();
    }
    
    void Update() {
        _systems.Execute();
        _systems.Cleanup();
    }

    void OnDestroy() {
        _systems.TearDown();
    }

    Systems createSystems(Contexts contexts) {
        return new Feature("Systems")

             // here is where you'd add your created systems
             .Add(new MySystem(contexts))
             .Add(new MyOtherSystem(contexts));
    }
}
```

For more code examples see [Code Generator](https://github.com/sschmid/Entitas-CSharp/wiki/Code-Generator)