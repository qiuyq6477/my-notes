This is originally some notes I wrote for myself, I rewrote them here in case in can help some people. 

The idea is to have most of the code in a C# only project and only have code in the Unity project that is for the game client (aka: the view).
This allow us to have our simulation code independent of the game client.


## Create a new c# ClassLibrary project
(keep solution and project in separate folder)

So the solution folder would be ~/projects/MyProject, and the project folder would be ~/projects/MyProject/MyProject

## Initialize a Git repo in the solution folder

## Create a Unity project, place it in the solution folder

Then import Entitas from the Asset Store to your assets.

I like to move the Entitas folder to my solution folder, and keep only the Entitas/Editor/Images folder in Unity (otherwise the images aren't loaded, looks like the tags from the .meta files aren't imported with a package or something), 
I then create a package.json file in <solution_folder>/Entitas to be able to import it as a package in Unity (using Unity 2018 package manager)

## Create another C# project for the Tests

Create a ConsoleApplication project in <solution_root>/MyProject.Tests

Using Nuget, import NSubstitute, Shouldly and Nspec

Inspired by the instructions in https://youtu.be/DZpvUnj2dGI?t=289 



## Move Jenny to solution folder

Extract Jenny.zip and move the "Jenny" folder to the solution root

Execute the Jenny-Auto-Import script from your solution folder.
Note: keep Roslyn generator

Move the _Jenny-Auto-Import_, _Jenny-Server_ and _preferences.properties_ files to the project root 

Edit the Jenny-Auto-Import and Jenny-Server files to reference the correct paths
(example: "..\Jenny\Jenny.exe server"  instead of ".\Jenny\Jenny.exe server")

Edit the generated preferences.properties to make sure that the Jenny.SearchPaths key reference the correct directory
```
    Jenny.SearchPaths = ..\Jenny\Plugins\DesperateDevs, \
                        ..\Jenny\Plugins\Entitas, \
                        ..\Jenny\Plugins\Entitas.Roslyn
```

that the ProjectPath is correct
```
DesperateDevs.CodeGeneration.Plugins.ProjectPath = MyProject.csproj
```

that your contexts are defined correctly
```
Entitas.CodeGeneration.Plugins.Contexts = Game, Input, Meta
```

that you ignore namespaces (optional)
```
Entitas.CodeGeneration.Plugins.IgnoreNamespaces = true
```

fix the TargetDirectory since we're outside of Unity
```
DesperateDevs.CodeGeneration.Plugins.TargetDirectory = ./
```

You should now be able to launch the Jenny-Server from the project folder. (Or run jenny doctor to check for errors)

In Rider, I also like to create a run Configuration to quickly generate Entitas code
```
Menu: Run -> Edit Configuration...
Create a new ".NET Executable"
Name: Jenny Client Gen
Exe Path: <whatever>\Acme\Acme.MyProject\Jenny\Jenny.exe
Program arguments: client gen
Working directory: <whatever>\Acme\Acme.MyProject\Acme.MyProject
you can later uncheck "Activate tool window" once you know everything works well
```

Running it should create the "Generated" folder in your project with the generated contexts.

Create you first component

```
// Sources\Components\LogMessageComponent.cs
using Entitas;

namespace Acme.MyProject.Sources.Components
{
    [Game]
    public class LogMessageComponent: IComponent
    {
        public string value;
    }
}
```

Test that everything works by running "Jenny Client Gen" again and make sure you have the file generated in Source\Generated\Game\Components\GameLogMessageComponent.cs


## Overview
Folder structure should look like:
```
projects\
--MyProject\                   <-- Solution root, .sln file, 
----MyProject\                 <-- Components, Systems, Services, etc.
----MyProject.Tests\           <-- The tests, NSpec, Nsubstitute, Shouldy
----MyProject.UnityClient\     <-- The unity project
----Jenny\                     <-- The generator, needs to be outside of the Entitas folder to avoid errors in Unity
----Entitas\                   <-- The Entitas asset moved to the solution root
```
