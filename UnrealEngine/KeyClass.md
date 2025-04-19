- <mark style="background: #FFB8EBA6;">Pawn</mark>
Pawn is the base class for any actor that can be controlled by a player or AI. 
Pawns provide the capabilities, the controller chooses which of those to use and when.

- <mark style="background: #FFB8EBA6;">Character</mark>
A character is a special type of Pawn designed for a vertically-oriented player representation that can walk, run, jump, fly, and swim through the world.

Essentially a specialised pawn that can be used as a shortcut to handle a lot of common requirements for pawns.

- <mark style="background: #FFB8EBA6;">Controller</mark>
Controllers are non-physical actors that can possess a Pawn to control its actions. A Player Controller is used by human players to control Pawns, while an AI controller implements artificial intelligence to dictate a Pawn's actions.

1, Actors spawned at runtime
2, Represent “the thing controlling the Pawn”
3, Rotation of the actor is relevant
4, Pawns don’t need controllers, 没有controller意味着pawn什么不能做
5, controller可以比pawn存在更久

- <mark style="background: #FFB8EBA6;">PlayerController</mark>
- <mark style="background: #FFB8EBA6;">GameMode</mark>
are actors
One per level
Controlled via WorldSettings
Game Mode is the primary class that specifies which other classes to use in the gameplay framework and is commonly used to specify game rules for modes, such as capture the flag.

- <mark style="background: #FFB8EBA6;">GameInstance</mark>
The game instance class persists throughout the lifetime of the game. Traveling between maps and menus maintain the same instance of this class. 

This class is used to manage information and systems that need to exist throughout the lifetime of the game between levels and maps. You can also use the GameInstance class to organize different game instance subsystems.

Lives for the duration of the program
Class used for GameInstance is set in project settings
Cannot be deleted/replaced at runtime

- <mark style="background: #FFB8EBA6;">GameState</mark>
Game state contains data and logic relevant to all players in a game, such as team scores, objectives, and a list of all players and their associated player states.

Mainly relevant for networked multiplayer
Acts like a replicated version of GameMode
GameMode only present on the server in an networked multiplayer context

- <mark style="background: #FFB8EBA6;">PlayerState</mark>
Player state handles data and logic relevant to its associated player, such as health, ammo count, and inventory.

- <mark style="background: #FFB8EBA6;">HUD</mark>
- <mark style="background: #FFB8EBA6;">Camera</mark>