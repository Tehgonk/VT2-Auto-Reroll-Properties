/*
Author: Daniel Geula
Version: 0.9.2
Date: 22/07/22
Description: This script automatically re-rolls item properties in Vermintide 2
*/

#NoEnv
CoordMode, Mouse, Client
SendMode Input
#SingleInstance Force
#WinActivateForce

#include <Vis2> ; handles OCR
#include <menu> ; menu and item property names. can be found in lib folder


;;;;;;;;;;;;;;;;;;;;;; REROLL SCRIPT ;;;;;;;;;;;;;;;;;;;;;;

menuHandler(itemName)
{
	Properties := StrSplit(itemName, " - ", " ") ; split itemName string into 'Properties[1]' and 'Properties[2]'
	WinActivate, Warhammer: Vermintide 2

	loop
    {
        ; using PixelSearch for added safety so that Vis2 should only start scanning after reroll animation is finished
        PixelSearch Px, Py, 920, 445, 965, 480, 0x58A113, 5, RGB Fast ; checks if green dust icon is visible using pixel colour value and 5 variations

        /*
        If ErrorLevel ; colour not found. for testing
        {
            MsgBox, Error! could not find matching colour value.
            continue
        }
        */

        While !ErrorLevel ; while colour value found
        {
            ;MsgBox, colour found ; for testing

            text := OCR([1400, 380, 380, 100]) ; [x, y, w, h] starting from x=0, y=0. see Vis2 documentation on github for more info

            If InStr(text, Properties[1]) && InStr(text, Properties[2]) ; if OCR matches both strings in Properties
		    {
			    ;MsgBox, 0, Success, Done. ; for testing
			    Goto, finish ; exit both loops
		    }
            else
            {
                ;MsgBox, 0, Error, %text% ; for testing
                Click, 950, 900 Left, Down ; coordinates for the reroll button
                Sleep, 450 ; time to hold down left click
                Click, 950, 900 Left, Up
                sleep 200 ; shouldn't be noticeable. might help reduce chance of bad OCR
                break
            }
        }
    }
    
    finish: ; goto label
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