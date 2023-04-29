# Entitas Code Generator
The Code Generator, named Jenny, generates classes and methods for you, so you can focus on getting the job done. It radically reduces the amount of code you have to write and improves readability by a huge magnitude. It makes your code less error-prone while ensuring best performance. I strongly recommend using it!

The Code Generator is flexible and can be customized to fit your needs. See the [[installation guide|Home]] to learn how to use the code generator in a pure C# or Unity project.

## Customizing and extending the Code Generator
You can easily implement your own generators by implementing one of the available `ICodeGeneratorInterfaces`:

- **ICodeGeneratorDataProvider:** Returns `CodeGeneratorData[]` to provide information for CodeGenerators
- **ICodeGenerator:** Takes `CodeGeneratorData` and returns `CodeGenFile[]` that contain all generated file contents
- **IPostProcessor:** Takes `CodeGenFile[]` to add modifications to any generated files

But for most projects the provided generators will cover all needs.

See [this tutorial](https://github.com/sschmid/Entitas-CSharp/wiki/Custom-Code-Generator-Tutorial) and [this page](https://github.com/sschmid/Entitas-CSharp/wiki/Custom-Code-Generator-Tips-And-Tricks) for extra help setting up custom code generators for your project.


## Available Generators
Entitas already comes with all Generators that are vital for clean and simple coding using Entitas framework. You can configure them and toggle them on/off using the Entitas>Preferences Editor Window within Unity or manually editing the `Entitas.properties` file in your root directory.

### ComponentEntityCreator
This Generator provides you with a simple interface for accessing and manipulating components on Entities. The outcome depends on whether your Component is a:
- flag Component without any fields (e.g. MovableComponent)
- standard Component with public fields (e.g. PositionComponent)

#### Flag Component (e.g. MovableComponent)

```csharp
[Game]
public class MovableComponent : IComponent {}

[Game, FlagPrefix("flag")]
public class DestroyComponent : IComponent {}
```

You get

```csharp
GameEntity e;
var movable = e.isMovable;
e.isMovable = true;
e.isMovable = false;

e.flagDestroy = true;
```

#### Standard Component (e.g. PositionComponent)

```csharp
[Game]
public class PositionComponent : IComponent {
    public int x;
    public int y;
    public int z;
}
```

You get

```csharp
GameEntity e;
if(e.hasPosition)
    var position = e.position;
else
    e.AddPosition(x, y, z);
e.ReplacePosition(x, y, z);
e.RemovePosition();
```

### ComponentContextCreator
This Generator helps you to manage Components, that are meant to exist once per Context. Think of a Singleton-Component that only exists within a Context instead of statically. You can mark Single-Instance Components by using the `[Unique]`-Attribute. The output depends on, where your Component is a:
- Unique flag Component without public fields (e.g. AnimatingComponent)
- Unique standard Component with public fields (e.g. UserComponent)

#### Single flag component (e.g. AnimatingComponent)

```csharp
[Game, Unique]
public class AnimatingComponent : IComponent {}
```

You get

```csharp
// extensions from `ComponentEntityCreator` are also available

GameContext context;
GameEntity e = context.animatingEntity;
var isAnimating = context.isAnimating;
context.isAnimating = true;
context.isAnimating = false;
```

#### Single standard component (e.g. UserComponent)

```csharp
[Game, Unique]
public class UserComponent : IComponent {
    public string name;
    public int age;
}
```

You get

```csharp
// extensions from `ComponentEntityCreator` are also available

GameContext context;
GameEntity e = context.userEntity;
if(context.hasUser)
    var name = context.user.name;
else
    context.SetUser("John", 42);
context.ReplaceUser("Max", 24);
context.RemoveUser();
```


### ComponentGenerator
[todo]

### ComponentLookupGenerator
[todo]

### ContextAttributeGenerator
[todo]

### ContextGenerator
[todo]

### ContextsGenerator
[todo]

### EntityGenerator
[todo]

### MatcherGenerator
[TODO]

## Adding your own Generator
  1. Create a new class that implements e.g. `ICodeGenerator` and save it in an **Editor** folder
  2. Your **Assembly-CSharp-Editor.dll** can now be considered a plugin, because it contains your new generator
  3. Add `Assembly-CSharp-Editor` to `Jenny.Plugins` field in **Preferences.properties** file
  4. Add **Assembly-CSharp-Editor.dll** folder path to `Jenny.SearchPaths`. This is usually `Library/ScriptAssemblies`
  5. Entitas preferences window will contain name of your custom code generator in one of the generator dropdowns. Enable it and generate.

## Fixing compilation errors
The Code Generator is based on runtime reflection. The project has to compile before you can generate.
This is not an issue when you creating new components, however when it comes to changing or deleting components, your code might stop compiling. Here is a list of recipes how you can avoid bigger hassle while changing and deleting components.

#### Renaming component fields
Use rename refactoring of your IDE and generate. Things should not break because fields only affect method parameter names in the generated methods.

#### Renaming component
Use rename refactoring of your IDE and also rename the existing methods, setters and getters in the generated class and generate.

#### Adding new fields to a component
Add the new fields and generate. This will result in compile errors because some methods now expect more parameters, e.g. e.AddXyz() and e.ReplaceXyz(). You'll have to update all the places where you call these methods.

#### Removing fields from a component
This will directly lead to compilation errors because at least the generated class is using them. In this case you can just comment out the implementation of the affected methods, e.g e.AddXyz() and e.ReplaceXyz(). After that, generate again.

#### Deleting a component
Delete the component and the generated class completely, then remove the component under componentTypes in ComponentIds (might have a prefix if you changed the context name). After that, remove/change your usages of the component and generate again.
You may need to close unity and open again. Also make sure your code compiles when you remove the component, like remove all references to it as well.

#### Renaming context names
Use rename refactoring of your IDE to rename the ContextAttribute class name first, then generate.