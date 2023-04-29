# Using Generated Code

Your code is now ready for use!  But, as with other code generation systems, there are caveats:

## Manual Changes

Manual changes to generated code *will* be lost the next time the code generator is run.  If you need to augment the output of a code generator, consider making a new one.

## Version Control

Generated code exists as plain text files and is thus safe for storage in any version control system.  However, the previous warnings about manual changes still hold, thus complicating merge conflicts.  We see two main workflows for handling this:

### Track Generated Code

This is the simplest option, and may be sufficient for solo projects.  As a consequence, small changes to your code (such as introducing a handful of components) can result in disproportionately large commits, especially if your project uses Unity and its `.meta` file system.

### Don't Track Generated Code

For this workflow, you would not track generated source code; instead, you would expect everyone on your team to be able to generate a local copy at will, as they would for compiled binaries.  This has its own set of drawbacks:

- Every member on your team will need to be able to run Jenny, even designers who don't touch the code.  This implies that if you're using the commercial version of Entitas then every member on your team will need a license.
- If your project is open source, this workflow may hinder user's ability to contribute (since you may have to help them set up Entitas and Jenny).
- If you're using Unity, every team member's copy of the same generated code file will have a different `.meta` file, and thus a different GUID.  This will complicate the use of generated assets such as `MonoBehaviour`s.

## Directory Size

Jenny usually generates a large number of files.  If your project uses Unity, double this to account for `.meta` files.  If your development environment scans your code base in real time (e.g. for autocomplete or diagnostics), the sheer number of generated files may result in high CPU or RAM usage, potentially hindering your IDE's performance or features.

## Unity `MonoBehaviour`s

`MonoBehaviour`s and other Unity assets deserve special mention.  For every asset (source file, texture, etc.) in your project, [Unity generates a corresponding `.meta` file containing metadata](https://docs.unity3d.com/Manual/BehindtheScenes.html).  This `.meta` file assigns a randomly-generated GUID to its corresponding asset for the purpose of declaring relationships between assets.  If a file is deleted outside of Unity but then re-added, it will have a different GUID, and all references to it in other assets (e.g. prefabs or animations) will be lost.  For this reason, **if you use custom code generators to generate `MonoBehaviour`s, you must take extra steps to ensure that their `.meta` files are preserved between generations**.  You will need to write a custom plugin for this.