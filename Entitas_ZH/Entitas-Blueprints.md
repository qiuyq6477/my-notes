## Deprecation Notice
 
Blueprints are no longer supported or included with the most recent releases of Entitas ([#380](https://github.com/sschmid/Entitas-CSharp/issues/390)) and remain in a beta state that is not ready for production use. They currently use binary serialization as a proof-of-concept. Migrating existing binary blueprints to a new version of Entitas can be difficult. Alternative data formats like Json are easier to migrate ([#267](https://github.com/sschmid/Entitas-CSharp/issues/267)). 

***

Blueprints for Entitas let you create preconfigured entities right in the Unity editor in a similar manner to Unity's own prefabs. You can add multiple components and set initial values. The goal of blueprint is to allow anyone on a team to create and configure entities without needing to write any code to do so.

![BlueprintInspector](https://raw.githubusercontent.com/sschmid/Entitas-CSharp/develop/Readme/Images/Blueprints/BlueprintInspector.png)

# Current limitations:
This first implementation uses the C# [BinaryFormatter](https://msdn.microsoft.com/en-us/library/system.runtime.serialization.formatters.binary.binaryformatter(v=vs.110).aspx) to serialize Blueprints. Feel free to contribute other formatters like Json, Xml, Yaml, etc.
You can read more about serialization to understand it's limitations
https://msdn.microsoft.com/en-us/library/ms233843.aspx

# Match-One with Blueprints
You can test blueprints on the blueprints branch of the Match-One example project:

https://github.com/sschmid/Match-One/tree/feature/blueprints

# Follow these basic steps to get started with Blueprints for Entitas:

- Copy Entitas into your project

- Open Menu -> Entitas -> Preferences
  - set your paths
  - optionally add a custom contexts
  - hit Generate

![Entitas-Preferences](https://raw.githubusercontent.com/sschmid/Entitas-CSharp/develop/Readme/Images/Blueprints/Entitas-Preferences.png)

- Create some components and generate again

```csharp
using Entitas;

[Core]
public class NameComponent : IComponent {
    public string value;
}

[Core]
public class AgeComponent : IComponent {
    public int value;
}
```

- Create a new Blueprint and set it up

![Entitas-Create-Blueprint](https://raw.githubusercontent.com/sschmid/Entitas-CSharp/develop/Readme/Images/Blueprints/Entitas-Create-Blueprint.png)

![BlueprintInspector](https://raw.githubusercontent.com/sschmid/Entitas-CSharp/develop/Readme/Images/Blueprints/BlueprintInspector.png)

- Create a Blueprints object

![Entitas-Create-Blueprints](https://raw.githubusercontent.com/sschmid/Entitas-CSharp/develop/Readme/Images/Blueprints/Entitas-Create-Blueprints.png)

- Generate again

- Create a GameController and put it on a GameObject

```csharp
using UnityEngine;
using Entitas.Unity.Serialization.Blueprints;

public class GameController : MonoBehaviour {

    public Blueprints blueprints;

    void Start() {

        var context = Contexts.core;

        var max = context.CreateEntity()
                    .ApplyBlueprint(blueprints.Max);

        var jack = context.CreateEntity()
                    .ApplyBlueprint(blueprints.Jack);


        Debug.Log("max.name.value: " + max.name.value);
        Debug.Log("jack.name.value: " + jack.name.value);
    }
}
```

Drag and drop the Blueprints into the Blueprints slot

![GameController-Setup](https://raw.githubusercontent.com/sschmid/Entitas-CSharp/develop/Readme/Images/Blueprints/GameController-Setup.png)

- Enter play-mode

![GameController-Console](https://raw.githubusercontent.com/sschmid/Entitas-CSharp/develop/Readme/Images/Blueprints/GameController-Console.png)