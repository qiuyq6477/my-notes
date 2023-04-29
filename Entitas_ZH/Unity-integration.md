# Entitas.Unity.CodeGenerator

Entitas.Unity.CodeGenerator extends Unity with a menu item that generates code with a single click.

![Entitas.Unity.CodeGenerator](https://raw.githubusercontent.com/sschmid/Entitas-CSharp/develop/Readme/Images/Entitas.Unity-MenuItems.png)

It also plugs into the Entitas preferences, where you can specify the folder path within which to save the generated files. You can specify multiple contexts, and the corresponding Contexts and ContextAttributes will be generated for you.

![Entitas.Unity.CodeGenerator](https://raw.githubusercontent.com/sschmid/Entitas-CSharp/develop/Readme/Images/Entitas.Unity.VisualDebugging-Preferences.png)

# Entitas.Unity.VisualDebugging
Visual Debugging enables you to actually see and inspect all of your entities in the Unity Editor. Use the generated `Contexts.context` or add `ContextObserver` to your context. That's it!

```csharp
#if (!ENTITAS_DISABLE_VISUAL_DEBUGGING && UNITY_EDITOR)

var context = Contexts.sharedInstance.game;
var contextObserver = new Entitas.VisualDebugging.Unity.ContextObserver(context);
Object.DontDestroyOnLoad(contextObserver.gameObject);

#endif
```

Once you use the `ContextObserver`, the context and their entities will automatically display in the hierarchy.

![Entitas.Unity.VisualDebugging-Preferences-Hierarchy](https://raw.githubusercontent.com/sschmid/Entitas-CSharp/develop/Readme/Images/Entitas.Unity.VisualDebugging-Hierarchy.png)

![Entitas.Unity.VisualDebugging-ContextObserver](https://raw.githubusercontent.com/sschmid/Entitas-CSharp/develop/Readme/Images/Entitas.Unity.VisualDebugging-ContextObserver.png)

Although entities are not GameObjects and components are not MonoBehaviours, you can inspect them as if they were. All components of the selected entity are listed, and all of their fields are exposed. You can manipulate or remove components at runtime, and even destroy their root entity. All default Unity drawers are supported, and you can easily create your own `ITypeDrawer` to draw custom objects. [Take a look at these implementations](https://github.com/sschmid/Entitas-CSharp/tree/master/Addons/Entitas.VisualDebugging.Unity.Editor/Entitas.VisualDebugging.Unity.Editor/Entity/TypeDrawer)

![Entitas.Unity.VisualDebugging-Entity](https://raw.githubusercontent.com/sschmid/Entitas-CSharp/develop/Readme/Images/Entitas.Unity.VisualDebugging-Entity.png)

When you select multiple entities, you can manually destroy some of them or batch destroy all of them.

![Entitas.Unity.VisualDebugging-Entity-MultiTarget](https://raw.githubusercontent.com/sschmid/Entitas-CSharp/develop/Readme/Images/Entitas.Unity.VisualDebugging-Entity-MultiTarget.png)

Entitas.Unity.VisualDebugging also plugs into the Entitas preferences, where you can specify the folders in which to save the generated `IDefaultInstanceCreator` and `ITypeDrawer` implementations.

When using `DebugSystems` instead of `Systems`, you can easily monitor all your systems and more easily identify slow systems.

![Entitas.Unity.VisualDebugging-DebugSystems](https://raw.githubusercontent.com/sschmid/Entitas-CSharp/develop/Readme/Images/Entitas.Unity.VisualDebugging-DebugSystems.png)

Give it a try and check out the [example projects](https://github.com/sschmid/Entitas-CSharp/wiki/Example-projects)