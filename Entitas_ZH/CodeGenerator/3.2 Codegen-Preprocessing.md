# Codegen Pre-Processing

Pre-processors implement the `IPreProcessor` interface, and are executed before your project's source code is analyzed.  They're useful for validating assumptions or enforcing prerequisites for your other plugins.  If these assumptions fail or you can't enforce prerequisites, you can stop the entire pipeline by throwing an exception.

```csharp
using DesperateDevs.CodeGeneration;

public class MyPreProcessor : IPreProcessor
{
    public string name => "My Pre-Processor";
    public int priority => 0;
    public bool runInDryMode => true;

    public void PreProcess()
    {
        // Pre-processing logic
    }
}
```

The `name`, `priority`, and `runInDryMode` properties are mandated by the `ICodeGeneratorPlugin` interface and should be implemented [[as previously described|Codegen-Common-Plugin-Properties]].

The `PreProcess()` method can contain whatever logic you'd like, and is usually used to prepare other stages of the pipeline.  You can pull information from anywhere you need it, including the [file system](https://docs.microsoft.com/en-us/dotnet/api/system.io?view=netstandard-2.0) or the [current process environment](https://docs.microsoft.com/en-us/dotnet/api/system.environment?view=netstandard-2.0), [[your project's configuration|Codegen-Configuration]], and [[your project's source code|Codegen-Parsing-and-Caching]].  To cache data for use by other plugins, see [[this page|Codegen-Parsing-and-Caching]].

## Possible Use Cases

- Search for or download external programs or libraries that your code generator relies on.
- Verify the existence of files that your code generator reads, or that a file you intend to generate doesn't already exist.
- Validate the format of complicated configuration options.
- Print information that can be used for debugging.
- Change behavior depending on Jenny's process environment (such as [command-line arguments](https://docs.microsoft.com/en-us/dotnet/api/system.environment.getcommandlineargs?view=netstandard-2.0) or [environment variables](https://docs.microsoft.com/en-us/dotnet/api/system.environment.getenvironmentvariable?view=netstandard-2.0)).