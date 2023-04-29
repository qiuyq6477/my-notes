# Introduction
This tutorial will give a brief introduction on how to use Entitas-lang with Entitas. In this tutorial I will use a small example of creating a simple combat system where a player can attack enemies in the game by pressing the space bar.

## Why use Entitas-lang?
An advantage of using Entitas-lang is that it allows you get rid of many of the redundancies of writing the same code over and over when creating new components and systems in Entitas. That means you have to write less code to get the same amount of work done and it will automatically generate new files each time new components and systems are added. 

Another advantage is that, it allows you to generate new files even though you get compile errors. Without Entitas-lang, the "Entitas"-menu in Unity will disappear, thus making you unable to generate new files (which is the only way to generate files if you do not use Entitas-lang).

Once you get used to the syntax of Entitas-lang, it becomes very easy to create new components and systems and thereby add new features to your games.

# Step 1 - Install Entitas-lang
Before installing Entitas-lang you need to have Entitas installed. Follow the [[Quick Start|Quick-Start]] guide to learn how to download and install Entitas if you haven't already.

There are two ways to use Entitas-lang; with Visual Studio Code, or with Eclipse. Note that the Visual Studio Code has a few limitations (such as not supporting more than one .entitas file). However, it does support autocompletion, which can help a lot when starting out learning Entitas-lang. In this tutorial i will be using Visual Studio Code.

## 1. Using Visual Studio Code
1. Download [**Visual Studio Code**](http://code.visualstudio.com/download).
1. Download the [**Entitas Extension**](http://bomzhi.de/entitas_lang/vscode/vscode-extension-self-contained-unspecified.vsix).
1. Open the command line in VS Code (Ctrl+Shift+P) and enter the following command: "install from VSIX" Then locate and select the downloaded extension file.
1. Make sure you have Java 1.8 Runtime installed on your machine. (execute `java -version` in console) If it is not installed please visit the [Java website](https://www.java.com/en/download/help/download_options.xml) for more information on how to install it
1. File > Open Folder... > Go to your Unity project folder > Select the Assets folder

## 2. Using Eclipse
1. Download the latest version of [**Eclipse**](http://www.eclipse.org/downloads/).
1. Download [**Xtext**](https://www.eclipse.org/Xtext/).

Install the eclipse plugin from the update site by following this step-by-step guide:

1. Open Eclipse > Go to Help > Install New Software...
1. Paste "http://bomzhi.de/entitas_lang/site.xml" into "Work with" (top input bar).
1. Tick the item "Uncategorized" in the box.
1. Click Next and let it install.
1. File > Open Projects from file system > Click on Directory > Select your Unity projects Assets folder
1. If eclipse prompts you with a dialog about converting the project to an Xtext project; click yes.

Alternatively you can download the plugin as a [zip file](http://bomzhi.de/entitas_lang/plugins.zip) if you want to add it to eclipse manually.

## Project structure
After you have installed Entitas your project structure should look like this:

![](http://imgur.com/JMMV7Kh.png)

Create one additional folder called "Sources". This is where we will create the systems that manipulate the entities in the game. Create a new file called "compAndSys.entitas" (important that it is .entitas). This file will contain all the components and systems that Entitas-lang will generate.

The final project structure should look like this:

![](http://imgur.com/J45JcQY.png)

# Step 2 - Setting Entitas-lang to C#
In order for Entitas-lang to generate files in C# write the following code at the top in "compAndSys.entitas":

`target entitas_csharp`

After doing this, you can see Entitas-lang has created a folder called "src-gen". This is where all generated files will be placed.

# Step 3 - Generating contexts
In this tutorial there will only be two contexts - a game and input context. The game context will have all core logic, and the input context will be for all inputs from the user (in this case, pressing the space bar on the keyboard).

To generate the game and input context; write the following code in the "compAndSys.entitas" file:

`context Game(default), Input`

Another tag (the default tag) has been added to the code above. As we will see in a moment when we start generating components, all new components that does not specify their context will be put in the default context.

The full "compAndSys.entitas" file should look like this:

    target entitas_csharp

    context Game(default), Input

# Step 4 - Generating components
The game will consist of a player and enemies that the player can attack. That is, a health component, damage component, player component (flag), enemy component (flag), and a space bar input component.

To generate these components we will need to introduce an alias:

`alias int : "int"`
___
## Why use an alias?

Whenever you want to use a type from C# in your components it is best practice specify a new alias. Consider the following code in Entitas-lang:

    comp CompA
        ListOfInts : "System.Collections.Generic.List"
    comp CompB
        ListOfInts : "System.Collections.Generic.List"
    comp CompC
        ListOfInts : "System.Collections.Generic.List"

Because Entitas-lang does not have knowledge about the types in C# you have to specify the full namespace. However, with an alias this becomes much easier. Consider the code (same as the above, but with an alias):

    alias IntList : "System.Collections.Generic.List"

    comp CompA
        ListOfInts : IntList 
    comp CompB
        ListOfInts : IntList 
    comp CompC
        ListOfInts : IntList 

___

As seen above, to generate a component; use the "comp" keyword. That is, to generate the health and damage component write the code:

    comp Health
        Value : int

    comp Damage
        Value : int

This is the power of Entitas-lang; being able to write and generate components quickly. Normally you would write the following C# code:

    public class HealthComponent : IComponent{
        public int Value { get; set; }
    }

    public class DamageComponent : IComponent{
        public int Value { get; set; }
    }

and then press generate in Unity. Entitas-lang does this automatically for you.

To distinguish between the player entity and the enemy entities, we will create two components that will be used as flags.

    comp Player (unique)

    comp Enemy

Additionally "(unique)" has been added to specify that there is only one player in the whole game.

It should be noted that so far, we have not yet specified the context of the components. That is because of the default context we set earlier. In the input component we will have to write the context explicitly using the "in" keyword. The following code demonstrates this:

    comp SpacebarInput in Input

The full code in "compAndSys.entitas" looks like this:

    target entitas_csharp

    context Game(default), Input

    alias int : "int"
    comp Health
        Value : int
    comp Damage
        Value : int
    comp Player (unique)
    comp Enemy
    comp SpacebarInput in Input

If you look inside the "src-gen" you can see all the components that Entitas-lang has generated:

![](http://imgur.com/4imTqtz.png)

# Step 5 - Generating systems
Before we are able to use the components that was just generated, we need to generate a system. In this game, there will be four systems in total:
* SpawnSystem (initialize system)
* InputSystem (execute and cleanup system - to gather inputs from the keyboard)
* ProcessSpacebarInputSystem (reactive system - to deal damage to all enemies)
* PrintHealthSystem (reactive system - to print the health of the entities)

## SpawnSystem (initialize system)
We will use an initialize system to create the player and enemies in the game. The following code does that:

    sys SpawnSystem (init)
        access:
            _gameContext : Game

To generate systems you use the "sys" keyword. When dealing with an initialize system you have to specify it after the name of the system. This is shown above with "(init)". Another keyword "access" was introduced. This allows us to access the context in which we will create the player and enemy entities. "_gameContext" is the name of the field that will be generated in C#, and "Game" is the context.

The above code generates a class called "AbstractSpawnSystem" which we will inherit from, when creating the spawn system. The following C# code snippet shows this:

    public class SpawnSystem : AbstractSpawnSystem
    {
        public SpawnSystem(Contexts contexts) : base(contexts)
        { }
    
        public override void Execute()
        {
            // leave this as empty
        }
    
        public override void Initialize()
        {
            // access the game context and create a player
            var player = _gameContext.CreateEntity();
            player.isPlayer = true;
            player.AddDamage(2);
            player.AddHealth(10);
    
            // create two enemies
            var enemy1 = _gameContext.CreateEntity();
            enemy1.isEnemy = true;
            enemy1.AddDamage(2);
            enemy1.AddHealth(10);
    
            var enemy2 = _gameContext.CreateEntity();
            enemy2.isEnemy = true;
            enemy2.AddDamage(2);
            enemy2.AddHealth(10);
        }
    }

In the above code, I showed how you use the context accessor, "_gameContext", we created. The context field is used to create the player and enemy entities.

## InputSystem (execute and cleanup system)
When using Entitas with Unity, it is in general, a good practice to sync all external logic to Entitas. This means, if you have input from Unity, you should make components and systems that can manipulate that input. This could for example be: collisions from Unity's collision system, creating a gameobject in Unity and or keyboard and mouse inputs. 

Here i will show how to sync keyboard inputs to Entitas, so that it can be used fluently by the different systems in our game. The following code shows how to create the input system:

    sys InputSystem (cleanup)
        access:
            _inputContext : Input

Notice that we now use the accessor for the input context. Additionally "(cleanup)" has been added, to make it a clean up system. 

As with the SpawnSystem, Entitas-lang has created a class called "AbstractInputSystem", where we will create an entity with a SpacebarInputComponent:

    using UnityEngine;
    
    public class InputSystem : AbstractInputSystem
    {
        public InputSystem(Contexts contexts) : base(contexts)
        { }
    
        public override void Execute()
        {
            if (Input.GetKeyDown(KeyCode.Space))
            {
                var spaceBarInput = _inputContext.CreateEntity();
                spaceBarInput.isSpacebarInput = true;
            }
        }
    
        public override void Cleanup()
        {
            var spacebarInputs = _inputContext.GetGroup(InputMatcher.SpacebarInput);
            foreach (InputEntity inputEntity in spacebarInputs.GetEntities())
            {
                _inputContext.DestroyEntity(inputEntity);
            }
        }
    }

In this system we create a new entity each time the player presses the space bar. However, the entities will never be cleaned up! This is why "(cleanup)" was added in the .entitas file. Each frame we clean up all the input entities because they will no longer be used by any system.

## ProcessSpacebarInputSystem (reactive system)
The entity we created in the InputSystem will have the SpacebarInputComponent. When added to the entity, we want to react to it in the ProcessSpacebarInputSystem. Which, in turn, will damage all enemies in the game.

To create a reactive system, we will to use the "trigger" keyword when defining our system. We only want to damage our enemies when the player hits the space bar. That is, when the SpacebarInputComponent is added to an entity. Therefore we use the keyword "added". We also add "filter allOf(SpacebarInput" to ensure that all the entities we get does in fact have this component on it. The following code generates the ProcessSpacebarInputSystem:

    sys ProcessSpacebarInputSystem
        trigger:
            added(SpacebarInput)
            filter allOf(SpacebarInput)
        access:
            _gameContext : Game

In C#, we want to get all enemies in the game and decrease their health based on how much damage the player can deal. The following code demonstrates this:

    using System.Collections.Generic;
    
    class ProcessSpacebarInputSystem : AbstractProcessSpacebarInputSystem
    {
        public ProcessSpacebarInputSystem(Contexts contexts) : base(contexts)
        {
        }
    
        protected override void Execute(List<InputEntity> spacebarInputs)
        {
            // get all enemies
            var enemies = _gameContext.GetGroup(GameMatcher.Enemy).GetEntities();
            // get the player
            var player = _gameContext.player;
            
            foreach (var spacebarInput in spacebarInputs)
            {
                foreach (var enemy in enemies)
                {
                    enemy.ReplaceHealth(enemy.health.Value - player.damage.Value);
                }
            }
        }
    }

## PrintHealthSystem (reactive system)
The PrintHealthSystem will print out the health of an entity when its health changes. The following code creates this system:

    sys PrintHealthSystem
        trigger:
            added(Health)
            filter allOf(Health)

And the C# code looks like this:

    using System.Collections.Generic;
    using UnityEngine;
    
    class PrintHealthSystem : AbstractPrintHealthSystem
    {
        public PrintHealthSystem(Contexts contexts) : base(contexts)
        {
        }
    
        protected override void Execute(List<GameEntity> entities)
        {
            // iterate over all entities where their health has changed
            foreach (var entity in entities)
            {
                Debug.Log(entity + " has " + entity.health.Value + " health left");
            }
        }
    }

The final code for the systems in "compAndSys.entitas" looks like this:

    sys SpawnSystem (init)
        access:
            _gameContext : Game
            
    sys InputSystem (cleanup)
        access:
            _inputContext : Input
    
    sys ProcessSpacebarInputSystem
        trigger:
            added(SpacebarInput)
            filter allOf(SpacebarInput)
        access:
            _gameContext : Game
    
    sys PrintHealthSystem
        trigger:
            added(Health)
            filter allOf(Health)

# Step 6 - GameController (running the systems)
There is one thing missing! None of the code runs yet. To make the systems execute their code, make an empty game object in Unity called "GameController" with a script called "GameController.cs" like this:

![](http://imgur.com/W5S2cB7.png)

In GameController.cs write the following code:

    using UnityEngine;
    using Entitas;
    
    class GameController : MonoBehaviour
    {
        private Systems _systems;
    
        private void Start()
        {
            var contexts = Contexts.sharedInstance;
            contexts.SetAllContexts();
    
            _systems = CreateSystems(contexts);
            _systems.Initialize();
        }
    
        private void Update()
        {
            _systems.Execute();
            _systems.Cleanup();
        }
    
        private void OnDestroy()
        {
            _systems.TearDown();
        }
    
        private Systems CreateSystems(Contexts contexts)
        {
            return new Feature("Systems")
                .Add(new SpawnSystem(contexts))
                .Add(new InputSystem(contexts))
                .Add(new ProcessSpacebarInputSystem(contexts))
                .Add(new PrintHealthSystem(contexts))
                ;
        }
    }

When running the game you will first see three prints in the console; one for the player and two for the enemies:

![](http://imgur.com/jTvulvs.png)

Every time you press the space bar, it will deal 2 damage to the enemies:

![](http://imgur.com/XDos7Dl.png)

# The End - Where to go from here
That is it! This is how you use Entitas-lang to your advantage when using Entitas. As i have shown, it allows you to quickly create new components and systems for your games.

A lot has been done in this small example, but the game still need all the visuals! Try to look in the [Match-One example](https://github.com/sschmid/Match-One) and see if you can add game objects in Unity that represent the enemies and players in the game. 

I have showed you some features of Entitas-lang. If you want to see a full game you can find the .entitas file for the Match-One example project [here](https://gist.github.com/mzaks/96281190266065bed4d707af7235bbf1) (converted by [mazrks](https://github.com/mzaks))

If you know how to read language grammars you might be interested in reading the grammar, which can be found [here]( http://bomzhi.de/entitas_lang/Entitas-LangSyntaxGraph.png)