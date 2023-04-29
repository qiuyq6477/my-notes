# Code Generation

This is probably why you're here!  This step of the pipeline is run after all code generators have finished.  If you used a data provider, you should not need to access the parsed source code directly (but you still can if you really want to).

## Retrieving Data

### The `CodeGeneratorData[]`

All code generators are given an array of `CodeGeneratorData` objects, which contains the output of *every* data provider.

### Filtering the Data

You can filter data with LINQ, including by type.

### Retrieving Attributes

You should have already stored any data from attributes in a `CodeGeneratorData`.

## Combining Multiple Types of Data

## Templates

## String Substitution

## Creating `CodeGenFile`s