# Codegen Configuration

Generally, plugins operate on data annotated by C# attributes.  But there are cases where you'll want to change the behavior of a plugin in a way that's not specific to any one part of your source code.

All plugins are configured with standard [`.properties` files](https://en.wikipedia.org/wiki/.properties).  Most of the keys you'll see start with `Jenny` or `Entitas`, but you can use your own for custom plugins as you see fit.  There are a few settings you'll want to access regularly.

## Walkthrough

Even if your custom plugin doesn't need to be directly configured, it *will* likely need to access the parsed config files.  (See [[here|Codegen-Parsing-and-Caching]] for why.)  To do so, your plugins will need to implement `IConfigurable`.  Here's a minimal example.

```csharp
using System.Collections.Generic;
using DesperateDevs.Serialization;

public class MyConfigurable : IConfigurable
{
    public Dictionary<string, string> defaultProperties => new Dictionary<string, string>();

    private Preferences preferences;

    public void Configure(Preferences preferences)
    {
        this.preferences = preferences;
    }
}
```

This looks bare, but in practice this would usually be part of a plugin that implements other interfaces.  There are three interesting parts.

### `IConfigurable.defaultProperties`

If your `IConfigurable` doesn't require any particular configuration, it's enough to return an empty `Dictionary<string, string>` and then forget about it.

Otherwise, your `IConfigurable` might require certain settings, but you can't assume that they'll actually be provided.  In such a case, you should offer a sensible default.  You can do so with a `Dictionary` initializer, like so:

```csharp
public class MyConfigurable : IConfigurable
{
    // Other code omitted for brevity

    public Dictionary<string, string> defaultProperties => new Dictionary<string, string>
    {
        {
            "MyProject.MyConfigurable.Key1",
            "DefaultValue1"
        },
        {
            "MyProject.MyConfigurable.Key2",
            "DefaultValue2"
        }
    };
}
```

Your plugin can then be configured like this:

```properties
MyProject.MyConfigurable.Key1 = Excellence
# MyProject.MyConfigurable.Key2 not specified, defaulting to "DefaultValue2"
```

### The `Preferences` Class

TODO

### `IConfigurable.Configure`

TODO

## Possible Use Cases

- For accessing plugin configuration [[as listed here|Default-Plugin-Configuration]].  This is probably what you'll be doing most of the time.
- If you're distributing generators for pre-made `IComponent`s or `ISystem`s as a kit, you can use this system to configure which `Context`s are used.
- For providing sensitive API information to your plugins, if necessary.
- When C# attributes are unsuitable for your desired customization, e.g. when your customization doesn't revolve around specific C# constructs.

**TODO:** Document how it's decided which `.properties` files to load

## Tips

### Key Names

Prepending key names with your project or company name to mitigate collisions with those of other projects, i.e. use `YourCompany.CustomCodeGens.Contexts` instead of `Contexts`.

### Special Key Values

If you intend configuration values to be used as C# identifiers (e.g. when listing contexts) but also want to provide values with special meaning, give these values names that are not valid identifiers.  Suppose, for instance, that you have a configuration that looks like this:

```properties
MyCompany.MyProject.SupportedContexts = Game, Input, Ui, Config
Entitas.CodeGeneration.Plugins.Contexts = Game, Input, Ui, Config
```

If you want to denote support for all contexts in your project, you could add a special value named `All` that generates code for all contexts, like so:

```properties
MyCompany.MyProject.SupportedContexts = All
```

But Entitas generates lots of code that contains identifiers derived from context names, such as `GameContext` or `InputEntity` or `UiMatcher`.  If you have a context that happens to be named `All`, this can complicate your life; you'd have to either handle errors or disambiguate it.

```properties
MyCompany.MyProject.SupportedContexts = All
Entitas.CodeGeneration.Plugins.Contexts = Game, Input, Ui, Config, All
```

Should this custom plugin support all contexts?  Or just the context named `All`?  If you have to write code to answer that question, you will have to deal with any bugs or edge cases that occur as a result.  Consider using a special name that's not a valid C# identifier, like anything prepended with `$`:

```properties
MyCompany.MyProject.SupportedContexts = $All
Entitas.CodeGeneration.Plugins.Contexts = Game, Input, Ui, Config, All
```

### Non-Plugin `IConfigurable`s

[TODO](/sschmid/Entitas-CSharp/tree/master/Addons/Entitas.CodeGeneration.Plugins/Entitas.CodeGeneration.Plugins/Configs)

### `AbstractConfigurableConfig`

TODO

