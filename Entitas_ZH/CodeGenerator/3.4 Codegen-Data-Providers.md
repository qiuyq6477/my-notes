# Data Extraction

After all pre-processors have finished, data providers will begin.

Data providers are plugins that implement the `IDataProvider` interface, and are used to extract information from parsed code (or, if you're using the free version, compiled code via reflection).  This extracted data is then made available to all `ICodeGenerator` plugins.

You can extract any information you want from any class in your project, even if it's not a component.  Most commonly, data providers are used to extract information about components, their members, and any attributes applied to them.

## Data Classes

All extracted data is stored in instances of the `CodeGeneratorData` class, which is essentially a `Dictionary<string, object>` that can be used to store any information.

You can use plain `CodeGeneratorData` instances if you'd like, but in practice it's more convenient to subclass it to simplify access to extracted data in a type-safe way.  Here's an example:

```csharp
using DesperateDevs.CodeGeneration;
using Entitas.CodeGeneration.Plugins;

public class MyCustomData : CodeGeneratorData
{
    public const string NameKey = "MyCustomData.Name";
    public const string MemberKey = "MyCustomData.Member";
    public const string ContextsKey = "MyCustomData.Contexts";

    public string Name
    {
        get => (string)this[NameKey];
        set => this[NameKey] = value;
    }

    // wrapper properties to access the dictionary
    public MemberData Member
    {
        get => (MemberData)this[MemberKey];
        set => this[MemberKey] = value;
    }

    public string[] Contexts
    {
        get => (string[])this[ContextsKey];
        set => this[ContextsKey] = value;
    }
}
```

TODO Describe this in more detail

### Deciding What to Extract

Before you decide what to extract, take note of what the [[built-in data classes|Default-Codegen-Data]] already store.  You don't need to extract information redundantly; inside your code generator, [[you can combine all data objects you need with LINQ|Codegen-Generation#combining-multiple-types-of-data]].  So only extract what you need, and join them later based on a common field (like the component name).

### Do I Need to Subclass `CodeGeneratorData`?

`CodeGeneratorData` can be used directly if you want to.  However, providing a subclass tailored to your needs will simplify your code generators.

### Do I Need Data Providers At All?

You can *technically* extract data directly from within a `ICodeGenerator` plugin, bypassing data providers entirely.  However, this will complicate your code generator and your ability to share extracted data among different plugins.

## Retrieving the Parsed Code

You can retrieve the parsed code in much the same way as our [[previous example|Codegen-Parsing-and-Caching#parsing-and-caching-the-code]].  But once you have it, you'll need to extract type information.  You can do that like so:

```csharp
using DesperateDevs.CodeGeneration;
using DesperateDevs.Roslyn.CodeGeneration.Plugins;
using DesperateDevs.Roslyn;

public class MyDataProvider : IDataProvider, IConfigurable, ICachable
{
    // Other methods omitted for brevity

    private Preferences preferences;

    public CodeGeneratorData[] GetData()
    {
        string componentInterface = typeof(IComponent).ToString();

        return PluginUtil
            .GetCachedProjectParser(
                objectCache,
                preferences["DesperateDevs.CodeGeneration.Plugins.ProjectPath"]
            )
            .GetTypes()
            .Where(type => type.AllInterfaces.Any(i => i.ToCompilableString() == componentInterface))
            .Select(type => new CodeGeneratorData())
            .ToArray()
        ;
    }
}
```

You will find [LINQ](https://docs.microsoft.com/en-us/dotnet/csharp/linq) to be massively useful.  See [here](https://docs.microsoft.com/en-us/dotnet/api/system.linq) for the API.

## Generating Data

### Generating Other Data
