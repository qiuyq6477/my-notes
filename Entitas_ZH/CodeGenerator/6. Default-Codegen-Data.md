The default installation of Entitas comes with these data classes, sorted by assembly.

Note that these data classes can come from any provider, even your own.  The paid version of Jenny includes custom data providers, but they still generate these objects.

# Common Classes

These classes are not subclasses of `CodeGeneratorData`, but are often used as members.  All are available in the `Entitas.CodeGeneration.Plugins` assembly and namespace.

## `EventData`

## `MemberData`

## `MethodData`

# `Entitas.CodeGeneration.Plugins`

The contents of this assembly are available in the free and paid versions of Jenny.  These data classes use extension methods rather than properties, and thus are effectively defined across multiple files.

**Note:** `EventData` is *not* a subclass of `CodeGeneratorData`.

## `ComponentData`

## `ContextData`

## `EntityIndexData`



# `Entitas.Roslyn.CodeGeneration.Plugins`

The contents of this assembly are only available in the paid version of Jenny.

## `CleanupData`


