This page contains instructions on setting up a keyboard shortcut in Visual Studio to generate code using Jenny.

Notice that the shortcut is not limited to the current solution: It's a 'global' setting.

# Step 0 - Setup Jenny

Setup Jenny as described in this [video](https://www.youtube.com/watch?v=L-18XRTarOM)

# Step 1 - Add a external tool
#### 1.1 Add a external tool
* Navigate to `Tools -> External Tools...`
* Press `Add`
* Enter path to Jenny.exe:
	* `$(SolutionDir)\Jenny\Jenny.exe`
* Enter arguments:
	* `client gen -v` (verbose log mode) or 
	* `client gen -s` (silent log mode)
* Enter inital directory:
	* `$(SolutionDir)`

###### Optional:
* Name the external tool:
	* Enter something like `jenny client gen` into the Title text box
* Use the visual studio output window instead of opening a cmd window
	* Check `Use Output window`

#### 1.2 Apply
* Press the `Apply` button
* A dialog might pop up stating `The command is not a valid executable. Would you like to change the command?`
	* Press the `No` button

#### 1.3 External tool number
Note the number of you external tool entry. This is not explicitly displayed - you have to count the entries from top to bottom. You will need the number in **Step 2**.

Close the external tools window.

# Step 2 - Add a shortcut
* Navigate to `Tools -> Options -> Environment -> Keyboard`
* Enter `Tools.ExternalCommand` into the `Show commands containing:` search field
* Select the entry with the number of your previously added external tool
* Click into the `Press shortcut keys:` text box and press your desired key combination
* Press the `Assign` button
* Press the `OK` button to close the options window

# Step 3 - Use the shortcut
* Run the `Jenny-Server.bat` that you extracted in **Step 0** alongside the Jenny folder
* Press the key combination that you assigned in **Step2**