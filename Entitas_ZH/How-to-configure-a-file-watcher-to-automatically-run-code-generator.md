# Using AssetStore version of Entitas (w/Jenny)
## In JetBrains Rider

Using the Jenny-Server

### Create a custom Scope
* Go to Settings -> Appearance & Behavior -> Scopes
* Create a new scope
* * Name: `Changed component files`
* * Pattern: `file[riderModule]:Assets/App/Features//*Component*.cs`

All my components are either in a SomeComponent.cs file, or in SomeFeatureComponents.cs when I'm building a feature before I cleanup the code.

### Create a file watcher
* Go to Settings -> Tools -> File Watchers
* Create a new file watcher
* * name: `Watch for component change`
* * File Type: `C#`
* * Scope: `Changed component files`
* * Program: `$ProjectFileDir$\Jenny\Jenny.exe`
* * Arguments: `client gen`
* * Working Directory: `$ProjectFileDir$`
* * Advanced options: I enabled only  `Trigger watcher on external changes`
* * Show console: `On Error`

### Auto Jenny-Server launch (Windows)
Don't want to have to manually start the jenny server manually?

Create a file "Jenny-Client-Gen.bat" in the project root
```
@echo off
pushd %~dp0

tasklist /FI "IMAGENAME eq Jenny.exe" 2>NUL | find /I /N "Jenny.exe"
if "%ERRORLEVEL%" NEQ "0" (
  START CMD /K CALL "Jenny-Server.bat"
)

.\Jenny\Jenny.exe client gen
popd
```

Update the "Program" field of the file watcher to run this batch file instead of Jenny.exe and remove the arguments.

It will check if Jenny is running and if not, start it in a new console window that will stay opened.

### Auto Jenny-Server launch (Mac)
Create a file "Jenny-Client-Gen.txt” in the project root
```
#!/bin/bash
dir="$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)"
cd $dir
ps ax | grep -v grep | grep "Jenny.exe server"
if [[ $? -ne 0 ]]; then
osascript -e "tell application \"Terminal\" to do script \"cd $dir; ./Jenny-Server;\""
sleep 3
fi
mono ./Jenny/Jenny.exe client gen
```

Don't forget to 'chmod +x (path to the file)/Jenny-Client-Gen.txt' to make it executable.

Update the "Program" field of the file watcher to run this file instead of Jenny.exe and remove the arguments.

It will check if Jenny is running and if not, start it in a new terminal window that will stay opened.


***
## In VSCode
(feel free to contribute if you're using it)

***
## In Visual Studio
(feel free to contribute if you're using it)