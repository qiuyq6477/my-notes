The default code generation plugins provided by Entitas can be configured in the `Jenny.properties` or `Entitas.properties` files as follows.

TODO: Describe configuration option classes like `ContextNamesConfig`

You may choose to correspond your codegen's configuration with your project's namespaces, but this is not a requirement.

## `Jenny.SearchPaths`

Comma-separated list of directories in which Jenny will search for plugins, with paths relative to the current working directory of the `Jenny` process.  If multiple directories have a plugin of the same name, the first directory in which it's found will be used.  Does not search recursively, so the directories you give *must* have `.dll` files.

### Example

If you extract the contents of `Jenny.zip` into your project's root directory, your value of `Jenny.SearchPaths` should look something like this:

```properties
Jenny.SearchPaths = Jenny/Plugins/DesperateDevs, \
                    Jenny/Plugins/Entitas, \
                    Jenny/Plugins/Entitas.Roslyn
```

## `Jenny.Plugins`

Comma-separated list of assemblies that contain Jenny plugins, without the `.dll` extension.  Every plugin listed here must exist in one of the paths listed in `Jenny.SearchPaths`.  Order doesn't matter.

Note that these are *assembly names*, not *namespaces*.  By convention, C# namespaces are named after the assemblies in which they're used, but this is not a requirement.

### Example

If you're developing a Unity project with the paid version of Entitas but without any custom Jenny plugins, your value of `Jenny.Plugins` should look something like this.

```properties
Jenny.Plugins = DesperateDevs.CodeGeneration.Plugins, \
                DesperateDevs.CodeGeneration.Unity.Plugins, \
                Entitas.CodeGeneration.Plugins, \
                Entitas.Roslyn.CodeGeneration.Plugins, \
                Entitas.VisualDebugging.CodeGeneration.Plugins
```

## `Jenny.PreProcessors`

Comma-separated list of [[pre-processors|Codegen-Preprocessing]] (i.e. plugins that implement `IPreProcessor`), given by their namespace-qualified class names.

Execution order is determined by the declared [[priority|Codegen-Common-Plugin-Properties#icodegenerationpluginpriority]] of each plugin, **not** by the order in which they're listed here.

### Example

```properties
Jenny.PreProcessors = DesperateDevs.CodeGeneration.Plugins.ValidateProjectPathPreProcessor, \
                      DesperateDevs.CodeGeneration.Plugins.TargetFrameworkProfilePreProcessor
```

## `Jenny.DataProviders`

Comma-separated list of [[data providers|Codegen-Data-Providers]] (i.e. plugins that implement `IDataProvider`), given by their namespace-qualified class names.

Execution order is determined by the declared [[priority|Codegen-Common-Plugin-Properties#icodegenerationpluginpriority]] of each plugin, **not** by the order in which they're listed here.

### Example

If you are using the paid version of Entitas and no custom data providers, your value of `Jenny.DataProviders` should look something like this:

```properties
Jenny.DataProviders = Entitas.CodeGeneration.Plugins.ContextDataProvider, \
                      Entitas.Roslyn.CodeGeneration.Plugins.CleanupDataProvider, \
                      Entitas.Roslyn.CodeGeneration.Plugins.ComponentDataProvider, \
                      Entitas.Roslyn.CodeGeneration.Plugins.EntityIndexDataProvider
```

If you are using the paid version of Entitas, you can safely leave out `Entitas.CodeGeneration.Plugins.CleanupDataProvider`, `Entitas.CodeGeneration.Plugins.ComponentDataProvider`, and `Entitas.CodeGeneration.Plugins.EntityIndexDataProvider`.

## `Jenny.CodeGenerators`

Comma-separated list of [[code generators|Codegen-Generation]] (i.e. plugins that implement `ICodeGenerator`), given by their namespace-qualified class names.

Execution order is determined by the declared [[priority|Codegen-Common-Plugin-Properties#icodegenerationpluginpriority]] of each plugin, **not** by the order in which they're listed here.

### Example

If you are using the paid version of Entitas and no custom code generators, your value of `Jenny.CodeGenerators` should look something like this:

```properties
Jenny.CodeGenerators = Entitas.CodeGeneration.Plugins.ComponentContextApiGenerator, \
                       Entitas.CodeGeneration.Plugins.ComponentEntityApiGenerator, \
                       Entitas.CodeGeneration.Plugins.ComponentEntityApiInterfaceGenerator, \
                       Entitas.CodeGeneration.Plugins.ComponentGenerator, \
                       Entitas.CodeGeneration.Plugins.ComponentLookupGenerator, \
                       Entitas.CodeGeneration.Plugins.ComponentMatcherApiGenerator, \
                       Entitas.CodeGeneration.Plugins.ContextAttributeGenerator, \
                       Entitas.CodeGeneration.Plugins.ContextGenerator, \
                       Entitas.CodeGeneration.Plugins.ContextMatcherGenerator, \
                       Entitas.CodeGeneration.Plugins.ContextsGenerator, \
                       Entitas.CodeGeneration.Plugins.EntityGenerator, \
                       Entitas.CodeGeneration.Plugins.EntityIndexGenerator, \
                       Entitas.CodeGeneration.Plugins.EventEntityApiGenerator, \
                       Entitas.CodeGeneration.Plugins.EventListenerComponentGenerator, \
                       Entitas.CodeGeneration.Plugins.EventListenertInterfaceGenerator, \
                       Entitas.CodeGeneration.Plugins.EventSystemGenerator, \
                       Entitas.CodeGeneration.Plugins.EventSystemsGenerator, \
                       Entitas.Roslyn.CodeGeneration.Plugins.CleanupSystemGenerator, \
                       Entitas.Roslyn.CodeGeneration.Plugins.CleanupSystemsGenerator, \
                       Entitas.VisualDebugging.CodeGeneration.Plugins.ContextObserverGenerator, \
                       Entitas.VisualDebugging.CodeGeneration.Plugins.FeatureClassGenerator
```

All plugins listed here are available in the free version of Entitas except for `Entitas.Roslyn.CodeGeneration.Plugins.CleanupSystemGenerator` and `Entitas.Roslyn.CodeGeneration.Plugins.CleanupSystemsGenerator` (note the extra `s`).

## `Jenny.PostProcessors`

Comma-separated list of [[post-processors|Codegen-Postprocessing]] (i.e. plugins that implement `IPostProcessor`), given by their namespace-qualified class names.

Execution order is determined by the declared [[priority|Codegen-Common-Plugin-Properties#icodegenerationpluginpriority]] of each plugin, **not** by the order in which they're listed here.

### Example

If you are using any version of Entitas and no custom post-processors, your value of `Jenny.PostProcessors` should look something like this:

```properties
Jenny.PostProcessors = DesperateDevs.CodeGeneration.Plugins.AddFileHeaderPostProcessor, \
                       DesperateDevs.CodeGeneration.Plugins.CleanTargetDirectoryPostProcessor, \
                       DesperateDevs.CodeGeneration.Plugins.MergeFilesPostProcessor, \
                       DesperateDevs.CodeGeneration.Plugins.NewLinePostProcessor, \
                       DesperateDevs.CodeGeneration.Plugins.UpdateCSProjPostProcessor, \
                       DesperateDevs.CodeGeneration.Plugins.WriteToDiskPostProcessor, \
                       DesperateDevs.CodeGeneration.Plugins.ConsoleWriteLinePostProcessor
```


## `Jenny.Client.Host`

The address of the Jenny server, used by the Entitas extension for Unity when sending requests to generate code.  Should almost certainly be `localhost`, but you can change it if you absolutely must.

### Example

```properties
Jenny.Client.Host = localhost
```

## `Jenny.Server.Port`

The TCP port Jenny uses to accept generation requests, used by both Jenny when binding and Unity when connecting.  No need to change it from the default unless you're using port 3333 for something else.

### Example

```properties
Jenny.Server.Port = 3333
```

## `DesperateDevs.CodeGeneration.Plugins.ProjectPath`

The path to the C# project file (ending in `.csproj`) that Jenny will open.  Does *not* search linked projects; therefore if you're using Unity's [assembly definition system](https://docs.unity3d.com/Manual/ScriptCompilationAssemblyDefinitionFiles.html), all classes that you intend to process with Jenny (including `IComponent`s) should be in one project.

More than likely this project file will be in your source tree's root.

### Example

```properties
DesperateDevs.CodeGeneration.Plugins.ProjectPath = Assembly-CSharp.csproj
```


## `Entitas.CodeGeneration.Plugins.Contexts`

Comma-separated list of [[1.8 Contexts|Introduction-to-Entitas#Context]] that your project will have.  All context names should be valid C# identifiers, because they will be used to generate *other* C# identifiers.

Different projects use contexts in different ways, but using a handful of contexts based on logical groups of entities is a reasonable idea.

### Example

```properties
Entitas.CodeGeneration.Plugins.Contexts = Game, \
                                          Engine, \
                                          Global, \
                                          Timer, \
                                          Ui
```

## `Entitas.CodeGeneration.Plugins.IgnoreNamespaces`

TODO

## `DesperateDevs.CodeGeneration.Plugins.TargetDirectory`

A directory named `Generated` will be created in this directory, and will contain all generated code.  

### Example

```properties
DesperateDevs.CodeGeneration.Plugins.TargetDirectory = Assets/Scripts
```

In this example, Jenny will create the directory `Assets/Scripts/Generated` to contain all generated code.

## `Entitas.VisualDebugging.Unity.Editor.SystemWarningThreshold`

TODO

## `Entitas.VisualDebugging.Unity.Editor.DefaultInstanceCreatorFolderPath`

TODO

## `Entitas.VisualDebugging.Unity.Editor.TypeDrawerFolderPath`

TODO
