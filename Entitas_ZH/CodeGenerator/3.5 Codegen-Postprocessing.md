# Post-Processing

Once all code has been executed, you will have one last change to make any changes or otherwise process it.

```csharp

using System;
using System.Linq;
using DesperateDevs.CodeGeneration;
using DesperateDevs.Utils;

public class AddFileHeaderPostProcessor : ICodeGenerationPlugin, IPostProcessor
{
    // Other fields omitted for brevity

    public CodeGenFile[] PostProcess(CodeGenFile[] files)
    {
        // Do things
        // TODO: Finish this section

        return files;
    }
}
```
## The `CodeGenFile[]`

## Filtering Generated Files

If you only want to process a subset of the generated files, you can filter with LINQ.

## Returning Output

You can either directly modify the `CodeGenFile` objects and return the input array, or create a new `CodeGenFile[]` and return *that* instead.

Note that the generated code is stored as *text*, not as an abstract syntax tree; if you want to change the generated code in ways that require syntax information (such as adding attributes), you will have to parse the generated source code, modify the syntax tree, and save it back to a `CodeGenFile`.

