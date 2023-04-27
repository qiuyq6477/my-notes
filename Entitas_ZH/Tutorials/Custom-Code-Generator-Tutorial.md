Here is a step-by-step guide on how to extend the Roslyn code generator for custom code generation with Entitas. This guide was written assuming you have the Asset Store version of entitas with the standalone code generator. I'm using a Windows machine, VS 2017 Community, Unity 2018.3 and Entitas version 1.12.

Our goal is to extend the code generator with a custom attribute that we can use to tag component classes in order for custom files to be generated during code gen. This will require a new Attribute class, a new Data Provider and a new Code Generator. 

After this tutorial you may want to check out [Custom Code Generator: Tips and Tricks](https://github.com/sschmid/Entitas-CSharp/wiki/Custom-Code-Generator-Tips-And-Tricks) for additional ideas for what you can do with the Roslyn generator.


# Implementing the code generator


## 1. Create a new solution for the custom code generator

Create a new blank solution with default namespace `MyNamespace.CodeGeneration`

Create a C# DotNet Framework Class Library project called `MyNamespace.CodeGeneration.Plugins` 
Add all of the DLLs from Jenny/Plugins/Entitas.Roslyn/ in your extracted Jenny folder as references in the plugins project (DesperateDevs, Entitas, Microsoft.CodeAnalysis etc).

Create a C# DotNet Framework Class Library project called `MyNamespace.CodeGeneration.Attributes` 
Set the target for the attributes project to DotNet 3.5 so it will be recognized by Unity.
Default references should be fine here



## 2. Create your attribute

In the attributes project create a new class called `CoolAttribute`. 
It must inherit from `System.Attribute`
Set the AttributeUsage as desired (e.g. class, property, field, method).
Here we will use class as we are trying to tag component classes.

```csharp
using System;

namespace MyNamespace.CodeGeneration.Attributes
{
    // change attribute usage if desired, 
    // this defines where the attribute is allowed to be placed
    // e.g. on a class, field, property, method etc
    [AttributeUsage(AttributeTargets.Class)]
    public class CoolAttribute : Attribute
    {
    }
}
```

This is the only file we need in the Attributes project, everything else will go in Plugins.


## 3. Create a class to hold data for the CodeGenerator

In the plugins project, create a class to hold data about the object. This is a wrapper around the dictionary in the CodeGeneratorData base class. It's optional but convenient and provides type-safe access tot he dictionaries.

This will hold the name of the class and an array of `MemberData` containing data about each member variable.

```csharp
using DesperateDevs.CodeGeneration;
using Entitas.CodeGeneration.Plugins;

namespace MyNamespace.CodeGeneration.Plugins
{
    public class CoolData : CodeGeneratorData
    {    
        // string keys to access the base dictionary with
        public const string NameKey = "Cool.Name";
        public const string DataKey = "Cool.Data";
        
        // wrapper property to access the dictionary
        public string Name
        {
            get => (string)this[NameKey];
            set => this[NameKey] = value;
        }

        // wrapper properties to access the dictionary
        public MemberData[] MemberData
        {
            get => (MemberData[])this[DataKey];
            set => this[DataKey] = value;
        }         
    }
}
```


## 4. Create the data provider

The data provider will identify the component classes that have our Cool attribute and save an instance of CoolData so they can be accessed by the generator. Comments show what elements are crucial and what can be changed.

This is also in the Plugins project.

```csharp
using System.Collections.Generic;
using System.Linq;
using DesperateDevs.CodeGeneration;
using DesperateDevs.CodeGeneration.Plugins;
using DesperateDevs.Roslyn;
using DesperateDevs.Serialization;
using Entitas.CodeGeneration.Plugins;
using Microsoft.CodeAnalysis;

namespace MyNamespace.CodeGeneration.Plugins
{
    public class CoolDataProvider : IDataProvider, IConfigurable, ICachable
    {
        public string name => "Cool"; // set this to match your dataprovider name
        public int priority => 0; // can be left at 0
        public bool runInDryMode => true; // allows this to run in dry-run mode, optional
        
        public Dictionary<string, string> defaultProperties => _projectPathConfig.defaultProperties;
        public Dictionary<string, object> objectCache { get; set; }        
        private readonly ProjectPathConfig _projectPathConfig = new ProjectPathConfig();
        
        public void Configure(Preferences preferences)
        {
            _projectPathConfig.Configure(preferences);
        }

        // Define here which attribute you want to look for and the data type of the 
        // code gen data we will create
        public CodeGeneratorData[] GetData()
        {
            return DesperateDevs.Roslyn.CodeGeneration.Plugins.PluginUtil
                .GetCachedProjectParser(objectCache, _projectPathConfig.projectPath)
                .GetTypes()
                .Where(type => type.GetAttribute<CoolAttribute>() != null) // change to your attribute
                .Select(type => new CoolData // change to your data type
                {
                    Name = type.Name,
                    MemberData = GetData(type),
                }).ToArray();
        }

        // this will get field type names and field names for each field in the class
        // replacing IFieldSymbol with IPropertySymbol would get property names and types instead
        private MemberData[] GetData(INamedTypeSymbol type)
        {
            return type.GetMembers()
                .OfType<IFieldSymbol>() 
                .Select(field => new MemberData(field.Type.ToCompilableString(), field.Name))
                .ToArray();
        }
    }
}
```


## 5. Create the generator

Now we will create the code generator itself. For this example, we will have the new generator create a monobehaviour file for each of our tagged components. It will contain a method that will take a GameEntity as input and modify the entity to by adding the component to it. This is just an example of usage.

The example below shows a few useful things. The first is that we have two different string templates, one for flag components and one for standard components. For a flag component the set method is different (`e.isThing = true` instead of `e.ReplaceThing(newThing)`). Flag components are identified by having zero members, such that `memberData.ToArray().Length == 0`. 

It also shows the use of member variables and their types. Looking at the STANDARD_TEMPLATE you can see the following lines _${Fields}_ and _entity.Replace${ComponentName}(${Args});_ which are generated by the methods `GenerateFields(MemberData[] data)` and `GenerateArgs(MemberData[] data)`. If you inspect those methods you can see how the list of members can be manipulated to allow type names, variable names and lowerCaseFirst names to be used here.

The templates are where you define what your generated code looks like, the `Generate` method simply filters the full list of `CodeGeneratorData` for data of type `CoolData` (which was only given to the components with the `Cool` attribute in the data provider above). It then calls `GenerateClass` which returns a `CodeGenFile` object containing the name of the file (with path relative to the Jenny's output folder), the text of the file, and the name of the generator that created it.

The newly created `CodeGenFile` objects are then written to disk by the built-in WriteToDisk post-processor.

```csharp
using System.Linq;
using DesperateDevs.CodeGeneration;
using DesperateDevs.Utils;
using Entitas.CodeGeneration.Plugins;
using System.IO;

namespace MyNamespace.CodeGeneration.Plugins
{
    public class CoolGenerator : ICodeGenerator
    {
        public string name => "Cool";
        public int priority => 0;
        public bool runInDryMode => true;

        private const string DIRECTORY_NAME = "CoolStuff";

        private const string STANDARD_TEMPLATE =
@"using UnityEngine;

public class ${ClassName} : MonoBehaviour,
{ 
${Fields} 

    public void Initialize(GameEntity entity) 
    {
        entity.Replace${ComponentName}(${Args});
    }
}
";
        private const string FLAG_TEMPLATE =
@"using UnityEngine;

public class ${ClassName} : MonoBehaviour
{        
    public void Initialize(GameEntity entity) 
    {
        entity.is${ComponentName} = true;
    }
}
";
        private const string FieldTemplate = @"    public ${FieldType} ${fieldName};";
        private const string ArgTemplate = @"${fieldName}";

        public CodeGenFile[] Generate(CodeGeneratorData[] data)
        {            
            return data
                .OfType<CoolData>() // Change to your data type                
                .Select(Generate)
                .ToArray();
        }

        private CodeGenFile Generate(CoolData data)
        {
            // helpful extention methods for stripping the Component suffix if it exists
            var componentName = data.Name.ToComponentName(true);
            // here you define how the name of your generated file relates to the name of the component
            var className = componentName + "Script";  
            // here you set your file name
            var filename = DIRECTORY_NAME + Path.DirectorySeparatorChar + className + ".cs";

            var memberData = data.MemberData;
            var template = memberData.ToArray().Length == 0 ? FLAG_TEMPLATE : STANDARD_TEMPLATE;

            var fileContent = template
                .Replace("${ClassName}", className)
                .Replace("${ComponentName}", componentName)
                .Replace("${Fields}", GenerateFields(data.MemberData))
                .Replace("${Args}", GenerateArgs(data.MemberData));

            return new CodeGenFile(
                filename,
                fileContent,
                GetType().FullName);
        }

        private static string GenerateFields(MemberData[] data)
        {
            return string.Join("\n", data.Select(member => FieldTemplate
                    .Replace("${FieldType}", member.type)
                    .Replace("${fieldName}", member.name.LowercaseFirst())
                    .Replace("${FieldName}", member.name))
                .ToArray());
        }

        private static string GenerateArgs(MemberData[] data)
        {
            return string.Join(", ", data.Select(member => ArgTemplate
                    .Replace("${FieldType}", member.type)
                    .Replace("${fieldName}", member.name.LowercaseFirst())
                    .Replace("${FieldName}", member.name))
                .ToArray());
        }
    }
}
```


## 6. Build your solution

Save everything, build the solution and locate the DLL files you've just made (usually under ProjectName/bin/Release). Copy them into your unity project. The Attributes project will be referenced by your component code so it must be in the Assets folder, I find it helpful to just put both DLLs in a folder e.g. Libraries/MyLibrary/CodeGeneration/.


## 7. Add the new code generator to Jenny

Open Jenny.properties and add the path you just saved your DLLs to as a search path. E.g. Assets/Libraries/MyLibrary/CodeGeneration. Make sure commas and linebreaks are in the correct places (e.g. if you add it to the end of your list of search paths you'll need to add `, \` to the previous line).

Run Jenny-Auto-Import and then reopen the properties file. Check that your data provider is listed in Jenny.DataProviders and your code generator is listed in Jenny.CodeGenerators.

Finally check that it is enabled in the unity menu (Tools / Jenny / Properties / Data Providers and Code Generators). Verify your CoolDataProvider and CoolCodeGenerator are selected in the dropdown menus.


## 8. Start Generating

Add some `Cool` tags to your components and generate code again, you should see files showing up in the location you specified as a path in the `CoolCodeGenerator` class. The Jenny log should also output the files created by your code generator in it's console log.

From a component like this:

```csharp
[Game, Cool]
public sealed class MyTestComponent : IComponent
{
    public float testFloatField;
    public string testStringField;
}
```

We should get a file like this:

```csharp
using UnityEngine;

public class MyTestScript : MonoBehaviour,
{ 
    public float testFloatField;
    public string testStringField;

    public void Initialize(GameEntity entity) 
    {
        entity.ReplaceMyTest(testFloatField, testStringField);
    }
}
```

# Toubleshooting

If Jenny can't find your dlls, make sure you you've configured the search paths correctly. Errors like "Invalid Key" can be caused by syntax errors in the properties file.

If your generator is listed and enabled but nothing is happening, try adding some Console.WriteLine calls into your CodeGenerator to identify where the problem is. 








