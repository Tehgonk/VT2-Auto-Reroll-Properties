# VT2-Auto-Reroll-Properties

This script automates the rerolling process by crating a menu system with pretty much every item property combination that once selected, will reroll the item until the chosen combination is found.

It uses OCR to cature the current properties on the item in the reroll slot and checks that agaisnt a predefined set of words that are associated with the menu item you selected. Make sure to read further for all the requirement and usage instructions.

**Side note:** The method used in this script (Vis2 OCR) is not as fast as something like the built in ImageSearch function in AHK, but seems far more robust and does mean that making a menu item for all the different item property combinations is actually feasable. It also actually works for people with different setups, assuming the resolution is the same (screen coordinates), which doesn't seem to be the case with ImageSearch from my testing. 

<br/><br/>
**REQUIREMENTS:**

**AutoHotkey (not tested with v2):**

https://www.autohotkey.com/

**1080p screen resolution:**

Have a different screen resolution? Message me and I'll be happy to try to make it work.

**New UI enabled:**

"OLD MENU LAYOUT" must be turned off while using the script. This is because it uses the results UI element to check if the selected combination matches the item properties.

<br/><br/>
**RECOMMENDED:**

**Borderless Windowed Mode:** 

This stops the game windows from minimising every time you interact with the scripts menu. Not necessary AFAIK, but it is a better experience

<br/><br/>
**USAGE:**

Extract the folder "Auto Reroll" wherever you want and double click the file "Auto Reroll.ahk" to launch the script.

To start the process of rerolling an item's properties, first make sure to load the item into the reroll slot in the crafting menu, then reroll it once so that the results window pops up.

Once that's done, bring up the script menu and navigate through the different submenus to the combination that you want.

Remember that if you are rerolling a melee weapon, you'll want to choose a combination from the melee menu. Otherwise the script won't work as intended.

This also works for orange items (probably blue aswell) but I wouldn't use it on anything with less than two properties because it will confuse the script and reroll until you run out of dust.

**Win-Z** to bring up the menu.

**Page Down** to suspend the script.

**Page Up** to reload the script.

**End to** terminate the script.
