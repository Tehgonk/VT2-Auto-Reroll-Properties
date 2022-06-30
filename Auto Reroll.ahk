/*
Name: Auto Re-roll.ahk
Author: Bonk
Version: 0.9.0.3
*/

#NoEnv
CoordMode, Mouse, Client
SendMode Input
#SingleInstance Force
#WinActivateForce

#include <Vis2> ; handles OCR

;;;;;;;;;;;;;;;;;;;;;; MENU ;;;;;;;;;;;;;;;;;;;;;;

; Melee menu
Menu, Submenu1, Add, Attack Speed - Crit Chance, menuHandler
Menu, Submenu1, Add, Attack Speed - Block Cost Reduction, menuHandler
Menu, Submenu1, Add, Attack Speed - Crit Power, menuHandler
Menu, Submenu1, Add, Attack Speed - Stamina , menuHandler
Menu, Submenu1, Add, Attack Speed - vs Chaos, menuHandler
Menu, Submenu1, Add, Attack Speed - vs Skaven, menuHandler
Menu, Submenu1, Add, Block Cost Reduction - Crit Chance, menuHandler
Menu, Submenu1, Add, Block Cost Reduction - Crit Power, menuHandler
Menu, Submenu1, Add, Block Cost Reduction - Push/Block Angle, menuHandler
Menu, Submenu1, Add, Block Cost Reduction - vs Chaos, menuHandler
Menu, Submenu1, Add, Block Cost Reduction - vs Skaven, menuHandler
Menu, Submenu1, Add, Block Cost Reduction - vs Attack Speed, menuHandler
Menu, Submenu1, Add, Crit Chance - Crit Power, menuHandler
Menu, Submenu1, Add, Crit Chance - vs Chaos, menuHandler
Menu, Submenu1, Add, Crit Chance - vs Skaven, menuHandler
Menu, Submenu1, Add, Crit Power - vs Chaos, menuHandler
Menu, Submenu1, Add, Crit Power - vs Skaven, menuHandler
Menu, Submenu1, Add, Stamina - Block Cost Reduction, menuHandler
Menu, Submenu1, Add, Stamina - Crit Chance, menuHandler
Menu, Submenu1, Add, Stamina - Crit Power, menuHandler
Menu, Submenu1, Add, Stamina - Push/Block Angle, menuHandler
Menu, Submenu1, Add, Stamina - vs Chaos, menuHandler
Menu, Submenu1, Add, Stamina - vs Skaven, menuHandler
Menu, Submenu1, Add, vs Chaos - vs Skaven, menuHandler

; Ranged menu
Menu, Submenu2, Add, Crit chance - Crit Power, menuHandler
Menu, Submenu2, Add, Crit chance - vs Armoured, menuHandler
Menu, Submenu2, Add, Crit chance - vs Berserkers, menuHandler
Menu, Submenu2, Add, Crit chance - vs Chaos, menuHandler
Menu, Submenu2, Add, Crit chance - vs Infantry, menuHandler
Menu, Submenu2, Add, Crit chance - vs Monsters, menuHandler
Menu, Submenu2, Add, Crit chance - vs Skaven, menuHandler
Menu, Submenu2, Add, Crit Power - vs Armoured, menuHandler
Menu, Submenu2, Add, Crit Power - vs Berserkers, menuHandler
Menu, Submenu2, Add, Crit Power - vs Chaos, menuHandler
Menu, Submenu2, Add, Crit Power - vs Infantry, menuHandler
Menu, Submenu2, Add, Crit Power - vs Monsters, menuHandler
Menu, Submenu2, Add, Crit Power - vs Skaven, menuHandler
Menu, Submenu2, Add, vs Armoured - vs Berserkers, menuHandler
Menu, Submenu2, Add, vs Armoured - vs Infantry, menuHandler
Menu, Submenu2, Add, vs Armoured - vs Monsters, menuHandler
Menu, Submenu2, Add, vs Chaos - vs Armoured, menuHandler
Menu, Submenu2, Add, vs Chaos - vs Berserkers, menuHandler
Menu, Submenu2, Add, vs Chaos - vs Infantry, menuHandler
Menu, Submenu2, Add, vs Chaos - vs Monsters, menuHandler
Menu, Submenu2, Add, vs Chaos - vs Skaven, menuHandler
Menu, Submenu2, Add, vs Infantry - vs Berserkers, menuHandler
Menu, Submenu2, Add, vs Monsters - vs Berserkers, menuHandler
Menu, Submenu2, Add, vs Monsters - vs Infantry, menuHandler
Menu, Submenu2, Add, vs Skaven - vs Armoured, menuHandler
Menu, Submenu2, Add, vs Skaven - vs Berserkers, menuHandler
Menu, Submenu2, Add, vs Skaven - vs Infantry, menuHandler
Menu, Submenu2, Add, vs Skaven - vs Monsters, menuHandler

; Necklace menu
Menu, Submenu3, Add, Block Cost Reduction - Health, menuHandler
Menu, Submenu3, Add, Block Cost Reduction - Push/Block Angle, menuHandler
Menu, Submenu3, Add, Stamina - Block Cost Reduction, menuHandler
Menu, Submenu3, Add, Stamina - Health, menuHandler
Menu, Submenu3, Add, Stamina - Push/Block Angle Angle, menuHandler

; Charm menu
Menu, Submenu4, Add, Attack Speed - Crit Power, menuHandler
Menu, Submenu4, Add, Attack Speed - vs Armoured, menuHandler
Menu, Submenu4, Add, Attack Speed - vs Berserkers, menuHandler
Menu, Submenu4, Add, Attack Speed - vs Chaos, menuHandler
Menu, Submenu4, Add, Attack Speed - vs Infantry, menuHandler
Menu, Submenu4, Add, Attack Speed - vs Monsters, menuHandler
Menu, Submenu4, Add, Attack Speed - vs Skaven, menuHandler
Menu, Submenu4, Add, Crit Power - vs Armoured, menuHandler
Menu, Submenu4, Add, Crit Power - vs Berserkers, menuHandler
Menu, Submenu4, Add, Crit Power - vs Chaos, menuHandler
Menu, Submenu4, Add, Crit Power - vs Infantry, menuHandler
Menu, Submenu4, Add, Crit Power - vs Monsters, menuHandler
Menu, Submenu4, Add, Crit Power - vs Skaven, menuHandler
Menu, Submenu4, Add, vs Armoured - vs Berserkers, menuHandler
Menu, Submenu4, Add, vs Armoured - vs Infantry, menuHandler
Menu, Submenu4, Add, vs Armoured - vs Monsters, menuHandler
Menu, Submenu4, Add, vs Chaos - vs Armoured, menuHandler
Menu, Submenu4, Add, vs Chaos - vs Berserkers, menuHandler
Menu, Submenu4, Add, vs Chaos - vs Infantry, menuHandler
Menu, Submenu4, Add, vs Chaos - vs Monsters, menuHandler
Menu, Submenu4, Add, vs Chaos - vs Skaven, menuHandler
Menu, Submenu4, Add, vs Infantry - vs Berserkers, menuHandler
Menu, Submenu4, Add, vs Monsters - vs Infantry, menuHandler
Menu, Submenu4, Add, vs Skaven - vs Armoured, menuHandler
Menu, Submenu4, Add, vs Skaven - vs Berserkers, menuHandler
Menu, Submenu4, Add, vs Skaven - vs Infantry, menuHandler
Menu, Submenu4, Add, vs Skaven - vs Monsters, menuHandler

; Trinket menu
Menu, Submenu5, Add, Cooldown - Crit Chance, menuHandler
Menu, Submenu5, Add, Cooldown - Curse Resist, menuHandler
Menu, Submenu5, Add, Cooldown - Movement speed, menuHandler
Menu, Submenu5, Add, Cooldown - Revive Speed, menuHandler
Menu, Submenu5, Add, Cooldown - Stamina recovery, menuHandler
Menu, Submenu5, Add, Crit Chance - Curse Resist, menuHandler
Menu, Submenu5, Add, Crit Chance - Movement Speed, menuHandler
Menu, Submenu5, Add, Crit Chance - Revive Speed, menuHandler
Menu, Submenu5, Add, Crit Chance - Stamina recovery, menuHandler
Menu, Submenu5, Add, Curse Resist - Movement Speed, menuHandler
Menu, Submenu5, Add, Curse Resist - Stamina recovery, menuHandler
Menu, Submenu5, Add, Movement Speed - Revive Speed, menuHandler
Menu, Submenu5, Add, Movement Speed - Stamina recovery, menuHandler
Menu, Submenu5, Add, Revive Speed - Stamina recovery, menuHandler


Menu, RerollScript, Add, Melee, :Submenu1
Menu, RerollScript, Add, Ranged, :Submenu2
Menu, RerollScript, Add ; Add a separator line
Menu, RerollScript, Add, Necklace, :Submenu3
Menu, RerollScript, Add, Charm, :Submenu4
Menu, RerollScript, Add, Trinkets, :Submenu5
return

;;;;;;;;;;;;;;;;;;;;;; REROLL SCRIPT ;;;;;;;;;;;;;;;;;;;;;;


menuHandler(itemName)
{
	Properties := StrSplit(itemName, " - ", " ") ; split itemName string into 'Properties[1]' and 'Properties[2]'
	WinActivate, Vermintide 2
	Loop
	{
		text := OCR([1400, 380, 380, 100]) ; [x, y, w, h] starting from x=0, y=0.

		; Clipboard := text  ; for debugging

        If !Trim(text) 	; possibly checks if the clipboard contains any text.
		{
			continue	; once there 'text' contains something the loop continues.
		}

		If InStr(text, Properties[1]) && InStr(text, Properties[2]) ; if 'text' contains both both parts of 'Properties' the loop breaks.
		{
			break
		} 
        else
		{
            ; for debugging.
            ; MsgBox, 0, error, fail
            ; break

			Click, 950, 900 Left, Down ; coordinates for the reroll button
			Sleep, 400 ; time to hold down left click
			Click, 950, 900 Left, Up
            Sleep, 1500 ; might not be necesary but since there's an animation it might be useful to slow the loop down a bit.
		}
	}
	
}
return


;;;;;;;;;;;;;;;;;;;;;; HOTKEYS ;;;;;;;;;;;;;;;;;;;;;;

; Press the Win-Z hotkey to show the menu
#Z::
Menu, RerollScript, Show

; Page Down suspends the script
PgDn::
suspend

; Page Up reloads the script
Pgup::
Reload

; End terminates the script
End::
ExitApp