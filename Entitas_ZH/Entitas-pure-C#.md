# Entitas pure C# project step by step guide

- [Download Entitas from the Unity Asset Store](http://u3d.as/NuJ)
- Create new C# Console Project `MyGame` with at least .Net 4.6
- Add refereces to
    - `Entitas.dll`
    - `Entitas.CodeGeneration.Attributes.dll`
    - `DesperateDevs.Utils.dll`

- Extract the contents of `Jenny.zip` to the root of your project
- Navigate into the same folder as `MyGame.csproj`
- Run `mono ../Jenny/Jenny.exe` and select
    - Create new Jenny.properties
    - Edit Jenny.properties

<img width="682" alt="entitaspure-jenny" src="https://user-images.githubusercontent.com/233700/46687453-34ed5900-cbfb-11e8-90a4-144ee0162ad2.png">

- Assign the location of Jenny to `Jenny.SearchPaths`

```
Jenny.Ignore.Keys =
Jenny.SearchPaths = ../Jenny
Jenny.Plugins =
Jenny.PreProcessors =
Jenny.DataProviders =
Jenny.CodeGenerators =
Jenny.PostProcessors =
Jenny.Server.Port = 3333
Jenny.Client.Host = localhost
```

- Run `mono ..Jenny/Jenny.exe` and select
    - Use Jenny.properties
- Select the following plugins
    - DesperateDevs.CodeGeneration.Plugins
    - Entitas.CodeGeneration.Plugins
    - Entitas.Roslyn.CodeGeneration.Plugins
- Select
    - Save and continue (auto import)
- When prompted to resolve plugin collisions, please choose `Entitas.Roslyn...`

<img width="682" alt="entitaspure-gen" src="https://user-images.githubusercontent.com/233700/46687474-42a2de80-cbfb-11e8-8c45-dbd8066b5f60.png">

- Update `Jenny.properties`

```
DesperateDevs.CodeGeneration.Plugins.ProjectPath = MyGame.csproj
DesperateDevs.CodeGeneration.Plugins.TargetDirectory = .
```

- You're all setup and you can generate now
- Run `mono ../Jenny/Jenny.exe gen`

<img width="682" alt="entitaspure-done" src="https://user-images.githubusercontent.com/233700/46687512-53535480-cbfb-11e8-89a0-82d09185245d.png">

- Add your first component and generate

```
using Entitas;

namespace MyGame
{
    class Program
    {
        public static void Main(string[] args)
        {
            var e = Contexts.sharedInstance.game.CreateEntity();
            e.AddHealth(100);
        }
    }
}

public sealed class HealthComponent : IComponent
{
    public int value;
}
```

<img width="488" alt="entitaspure-folders" src="https://user-images.githubusercontent.com/233700/46687779-fd32e100-cbfb-11e8-96f2-cff1875cac5f.png">

```
MyGame
├── Jenny
│   └── Plugins
│       ├── DesperateDevs
│       ├── Entitas
│       └── Entitas.Roslyn
├── Libraries
│   ├── DesperateDevs.Utils.dll
│   ├── Entitas.CodeGeneration.Attributes.dll
│   └── Entitas.dll
├── MyGame
│   ├── Generated
│   ├── Jenny.properties
│   ├── MyGame.csproj
│   ├── Program.cs
│   └── simonschmid.userproperties
└── MyGame.sln
```