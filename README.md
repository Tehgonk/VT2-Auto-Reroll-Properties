# VT2-Auto-Reroll-Properties

**REQUIREMENTS:**
AutoHotkey (not tested with v2): https://www.autohotkey.com/
Vis2: Download from https://github.com/iseahound/Vis2/archive/master.zip and exract the "bin" and "lib" folders into the Auto Re-roll folder
Reroll Improvements: https://steamcommunity.com/sharedfiles/filedetails
1080p Screen Resolution: Unfortunately I can't figure out how to make a resolution agnostic script. The script uses screen coordinates that are calibrated 1920x1080.

**RECOMMENDED:**
UI Improvements: https://steamcommunity.com/sharedfiles/filedetails/?id=1391228174
Borderless Windowed Mode: This stops the game windows from minimising every time you interact with the scripts menu. Not necessary AFAIK, but it is a better experience.AtEOF

**INSTRUCTIONS:**
After ensuring that your directory tree looks like this:

|   Auto Reroll.ahk
|   BG.png
|   output.txt
|   ReadMe.txt
|   
+---bin
|   +---leptonica_util
|   |       leptonica_util.exe
|   |       liblept168.dll
|   |       Microsoft.VC90.CRT.manifest
|   |       
|   \---tesseract
|       |   tesseract.exe
|       |   
|       +---tessdata_best
|       |       eng.traineddata
|       |       
|       \---tessdata_fast
|               eng.traineddata
|               
\---lib
        Gdip_All.ahk
        JSON.ahk
        Vis2.ahk

And that you have met the requirements above, the hotkeys for the script are:

Win-Z to bring up the menu.

Page Down to suspend the script.

Page Up to reload the script.

End to terminate the script.

To start the process of rerolling an item's properties, first make sure to load the item into the reroll slot in the crafting menu.
Once that's done, bring up the script menu and navigate through the different submenus to the combination that you want.
Remember that if you are rerolling a melee weapon, you'll want to choose a combination from the melee menu. Otherwise the script won't work as intended.
