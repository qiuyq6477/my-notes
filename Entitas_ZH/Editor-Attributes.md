# Overview

The visual debugging unity plugin currently supports the following attributes:
- [**`[DontDrawComponent]`**](#entitasvisualdebuggingunitydontdrawcomponentattribute): You can use this attribute on a `component` `class` inheriting from `Entitas.IComponent` to hide a `component` from the `EntityInspector` window. The window which draws your component in the unity inspector and allows you to edit them during runtime.

## Attributes

### `Entitas.VisualDebugging.Unity.DontDrawComponentAttribute`

The `DontDrawComponent` attribute is located in the `Entitas.VisualDebugging.Unity` namespace. In the example below this component is apart of the Game [**context**](https://github.com/sschmid/Entitas-CSharp/wiki/Attributes#context) and can be used just like any other component but it will not drawn in the unity inspector.

```c#
[Game, DontDrawComponent]
public class MyHiddenIntComponent : IComponent {
    public int myInt;
}
```


