# Code Parsing and Caching

After your plugins have been configured and your [[pre-processors|Codegen-Preprocessing]] run, it's time to load your code.  There isn't actually a dedicated pipeline stage for this; all plugins are expected to follow steps much like what this page describes.

In order for your plugin to parse your project and cache its parsed code for use by later plugins, it will need to implement `IConfigurable` ([[as previously described|Codegen-Configuration]]) and `ICachable`.  Generally your project will be parsed by a [[data provider|Codegen-Data-Providers]], but you can do so in a custom [[pre-processor|Codegen-Preprocessing]] if you'd like to.  We'll do that here.

## Accessing the Cache

The Jenny pipeline provides a cache that is shared among all plugins, regardless of stage.  The cache is mostly used for reading the parsed project, but can be used to store anything you'd like.  To expose this cache to your plugin, implement the `ICachable` interface.  

```csharp
using System.Collections.Generic;
using DesperateDevs.CodeGeneration;

public class MyCustomPlugin : ICachable
{
    public Dictionary<string, object> objectCache { get; set; }
}
```

The default implementation of the `objectCache` property is almost certainly good enough, but you can provide your own if necessary.

You can use the cache in a plugin like this:

```csharp
using System.Collections.Generic;
using DesperateDevs.CodeGeneration;

public class MyCustomPlugin : IPreProcessor, ICachable
{
    // Other methods and properties omitted for brevity

    public Dictionary<string, object> objectCache { get; set; }

    public void PreProcess()
    {
        var cachedItem = objectCache["InsertedBySomethingElse"];
        objectCache["InsertedByCustomPlugin"] = new object();
    }
}
```


## Parsing and Caching the Code

**This code requires the full version of Entitas.**

Parsing source code is fairly slow, but it only has to be done once.  Your plugin [[must also be configurable|Codegen-Configuration]] in order to access the project path.  Once you implement the requisite interfaces, you can use the static method `PluginUtil.GetCachedProjectParser`, found in the `DesperateDevs.Roslyn.CodeGeneration.Plugins` namespace.  It will look something like this:

```csharp
using System.Collections.Generic;
using DesperateDevs.CodeGeneration;
using DesperateDevs.Serialization;
using DesperateDevs.Roslyn.CodeGeneration.Plugins;

public class LoadProjectPreProcessor : IConfigurable, IPreProcessor, ICachable
{
    public string name => "Load Project";
    public int priority => 0;
    public bool runInDryMode => true;
    // ^ These properties explained in an earlier page

    public Dictionary<string, object> objectCache { get; set; }
    // ^ Explained in an earlier section on this page

    public Dictionary<string, string> defaultProperties => new Dictionary<string, string>();
    // ^ Explained in an earlier page

    private Preferences preferences;

    public void Configure(Preferences prefs)
    {
        preferences = prefs;
    }

    public void PreProcess()
    {
        var projectParser = PluginUtil.GetCachedProjectParser(
            objectCache,
            preferences["DesperateDevs.CodeGeneration.Plugins.ProjectPath"]
        );
    }
}
```

`PluginUtil.GetCachedProjectParser` checks the cache for the presence of the parsed source code.  If it's there, it returns the parsed source code.  If not, it opens the project file [[at the given path|Default-Plugin-Configuration#desperatedevscodegenerationpluginsprojectpath]], parses the code, and stores it in the cache for use by other plugins.

While only one plugin would actually need to load and parse the code in this way, all of the default [[data providers|Codegen-Data-Providers]] do so in practice, because there's no guarantee that this hypothetical plugin is actually enabled.  If you want to simplify your data provider workflow, implement a plugin similar to the one described and have your custom data providers use it.