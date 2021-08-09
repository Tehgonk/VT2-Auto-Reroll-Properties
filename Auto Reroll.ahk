/*
Name: Auto Reroll.ahk
Author: Bonk
Version: 0.9
*/

#NoEnv
CoordMode, Mouse, Window
SendMode Input
#SingleInstance Force
#WinActivateForce

#include <Vis2> ; Handles OCR

;;;;;;;;;;;;;;;;;;;;;; MENU ;;;;;;;;;;;;;;;;;;;;;;

; Melee menu
Menu, Submenu1, Add, Attack Speed - Block Cost Reduction, M_attackBCR
Menu, Submenu1, Add, Attack Speed - Crit Chance, M_attackCrit
Menu, Submenu1, Add, Attack Speed - Crit Power, M_attackCritPower
Menu, Submenu1, Add, Attack Speed - Stamina , M_attackStam
Menu, Submenu1, Add, Attack Speed - vs Chaos, M_attackChaos
Menu, Submenu1, Add, Attack Speed - vs Skaven, M_attackSkaven
Menu, Submenu1, Add, Block Cost Reduction - Crit Chance, M_bcrCrit
Menu, Submenu1, Add, Block Cost Reduction - Crit Power, M_bcrCritPower
Menu, Submenu1, Add, Block Cost Reduction - Push/Block Angle, M_bcrPBA
Menu, Submenu1, Add, Block Cost Reduction - vs Chaos, M_bcrChaos
Menu, Submenu1, Add, Block Cost Reduction - vs Skaven, M_bcrSkaven
Menu, Submenu1, Add, Crit Chance - Crit Power, M_critCritPower
Menu, Submenu1, Add, Crit Chance - vs Chaos, M_critChaos
Menu, Submenu1, Add, Crit Chance - vs Skaven, M_critSkaven
Menu, Submenu1, Add, Crit Power - vs Chaos, M_critpowerChaos
Menu, Submenu1, Add, Crit Power - vs Skaven, M_critpowerSkaven
Menu, Submenu1, Add, Stamina - Block Cost Reduction, M_staminaBCR
Menu, Submenu1, Add, Stamina - Crit Chance, M_staminaCrit
Menu, Submenu1, Add, Stamina - Crit Power, M_staminaCritPower
Menu, Submenu1, Add, Stamina - Push/Block Angle, M_staminaPBA
Menu, Submenu1, Add, Stamina - vs Chaos, M_staminaChaos
Menu, Submenu1, Add, Stamina - vs Skaven, M_staminaSkaven
Menu, Submenu1, Add, vs Chaos - vs Skaven, M_chaosSkaven

; Ranged menu
Menu, Submenu2, Add, Crit chance - Crit Power, R_critCritPower
Menu, Submenu2, Add, Crit chance - vs Armoured, R_critArmoured
Menu, Submenu2, Add, Crit chance - vs Berserkers, R_critBerserkers
Menu, Submenu2, Add, Crit chance - vs Chaos, R_critChaos
Menu, Submenu2, Add, Crit chance - vs Infantry, R_critInfantry
Menu, Submenu2, Add, Crit chance - vs Monsters, R_critMonsters
Menu, Submenu2, Add, Crit chance - vs Skaven, R_critSkaven
Menu, Submenu2, Add, Crit Power - vs Armoured, R_critPowerArmoured
Menu, Submenu2, Add, Crit Power - vs Berserkers, R_critPowerBerserkers
Menu, Submenu2, Add, Crit Power - vs Chaos, R_critPowerChaos
Menu, Submenu2, Add, Crit Power - vs Infantry, R_critPowerInfantry
Menu, Submenu2, Add, Crit Power - vs Monsters, R_critPowerMonsters
Menu, Submenu2, Add, Crit Power - vs Skaven, R_critPowerSkaven
Menu, Submenu2, Add, vs Armoured - vs Berserkers, R_armouredBerserkers
Menu, Submenu2, Add, vs Armoured - vs Infantry, R_armouredInfantry
Menu, Submenu2, Add, vs Armoured - vs Monsters, R_armouredMonsters
Menu, Submenu2, Add, vs Chaos - vs Armoured, R_chaosArmoured
Menu, Submenu2, Add, vs Chaos - vs Berserkers, R_chaosBerserkers
Menu, Submenu2, Add, vs Chaos - vs Infantry, R_chaosInfantry
Menu, Submenu2, Add, vs Chaos - vs Monsters, R_chaosMonsters
Menu, Submenu2, Add, vs Chaos - vs Skaven, R_chaosSkaven
Menu, Submenu2, Add, vs Infantry - vs Berserkers, R_infantryBerserkers
Menu, Submenu2, Add, vs Monsters - vs Berserkers, R_monstersBerserkers
Menu, Submenu2, Add, vs Monsters - vs Infantry, R_monstersInfantry
Menu, Submenu2, Add, vs Skaven - vs Armoured, R_skavenArmoured
Menu, Submenu2, Add, vs Skaven - vs Berserkers, R_skavenBerserkers
Menu, Submenu2, Add, vs Skaven - vs Infantry, R_skavenInfantry
Menu, Submenu2, Add, vs Skaven - vs Monsters, R_skavenMonsters

; Necklace menu
Menu, Submenu3, Add, Block Cost Reduction - Health, N_bcrHealth
Menu, Submenu3, Add, Block Cost Reduction - Push/Block Angle, N_bcrPBA
Menu, Submenu3, Add, Stamina - Block Cost Reduction, N_staminaBCR
Menu, Submenu3, Add, Stamina - Health, N_staminaHealth
Menu, Submenu3, Add, Stamina - Push/Block Angle Angle, N_staminaPBA

; Charm menu
Menu, Submenu4, Add, Attack Speed - Crit Power, C_attackCritPower
Menu, Submenu4, Add, Attack Speed - vs Armoured, C_attackArmoured
Menu, Submenu4, Add, Attack Speed - vs Berserkers, C_attackBerserkers
Menu, Submenu4, Add, Attack Speed - vs Chaos, C_attackChaos
Menu, Submenu4, Add, Attack Speed - vs Infantry, C_attackInfantry
Menu, Submenu4, Add, Attack Speed - vs Monsters, C_attackMonsters
Menu, Submenu4, Add, Attack Speed - vs Skaven, C_attackSkaven
Menu, Submenu4, Add, Crit Power - vs Armoured, C_critpowerArmoured
Menu, Submenu4, Add, Crit Power - vs Berserkers, C_critpowerBerserkers
Menu, Submenu4, Add, Crit Power - vs Chaos, C_critpowerChaos
Menu, Submenu4, Add, Crit Power - vs Infantry, C_critpowerInfantry
Menu, Submenu4, Add, Crit Power - vs Monsters, C_critpowerMonsters
Menu, Submenu4, Add, Crit Power - vs Skaven, C_critpowerSkaven
Menu, Submenu4, Add, vs Armoured - vs Berserkers, C_armouredBerserkers
Menu, Submenu4, Add, vs Armoured - vs Infantry, C_armouredInfantry
Menu, Submenu4, Add, vs Armoured - vs Monsters, C_armouredMonsters
Menu, Submenu4, Add, vs Chaos - vs Armoured, C_chaosArmoured
Menu, Submenu4, Add, vs Chaos - vs Berserkers, C_chaosBerserkers
Menu, Submenu4, Add, vs Chaos - vs Infantry, C_chaosInfantry
Menu, Submenu4, Add, vs Chaos - vs Monsters, C_chaosMonsters
Menu, Submenu4, Add, vs Chaos - vs Skaven, C_chaosSkaven
Menu, Submenu4, Add, vs Infantry - vs Berserkers, C_infantryBerserkers
Menu, Submenu4, Add, vs Monsters - vs Infantry, C_monstersInfantry
Menu, Submenu4, Add, vs Skaven - vs Armoured, C_skavenArmoured
Menu, Submenu4, Add, vs Skaven - vs Berserkers, C_skavenBerserkers
Menu, Submenu4, Add, vs Skaven - vs Infantry, C_skavenInfantry
Menu, Submenu4, Add, vs Skaven - vs Monsters, C_skavenMonsters

; Trinket menu
Menu, Submenu5, Add, Cooldown - Crit Chance, T_cooldownCrit
Menu, Submenu5, Add, Cooldown - Curse Resist, T_cooldownCurse
Menu, Submenu5, Add, Cooldown - Movement speed, T_cooldownMovement
Menu, Submenu5, Add, Cooldown - Revive Speed, T_cooldownRevive
Menu, Submenu5, Add, Cooldown - Stamina recovery, T_cooldownStamina
Menu, Submenu5, Add, Crit Chance - Curse Resist, T_critCurse
Menu, Submenu5, Add, Crit Chance - Movement Speed, T_critMovement
Menu, Submenu5, Add, Crit Chance - Revive Speed, T_critRevive
Menu, Submenu5, Add, Crit Chance - Stamina recovery, T_critStamina
Menu, Submenu5, Add, Curse Resist - Movement Speed, T_curseMovement
Menu, Submenu5, Add, Curse Resist - Stamina recovery, T_curseStamina
Menu, Submenu5, Add, Movement Speed - Revive Speed, T_movementRevive
Menu, Submenu5, Add, Movement Speed - Stamina recovery, T_movementStamina
Menu, Submenu5, Add, Revive Speed - Stamina recovery, T_reviveStamina


Menu, RerollScript, Add, Melee, :Submenu1
Menu, RerollScript, Add, Ranged, :Submenu2
Menu, RerollScript, Add ; Add a separator line
Menu, RerollScript, Add, Necklace, :Submenu3
Menu, RerollScript, Add, Charm, :Submenu4
Menu, RerollScript, Add, Trinkets, :Submenu5
return

;;;;;;;;;;;;;;;;;;;;;; MENU ITEMS ;;;;;;;;;;;;;;;;;;;;;;

; Melee
M_attackBCR:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Attack Speed") && InStr(Clipboard,"Block Cost")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

M_attackCrit:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Attack Speed") && InStr(Clipboard,"Crit Chance")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

M_attackCritPower:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Attack Speed") && InStr(Clipboard,"Crit Power")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

M_attackStam:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Attack Speed") && InStr(Clipboard,"Stamina")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

M_attackChaos:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Attack Speed") && InStr(Clipboard,"Chaos")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

M_attackSkaven:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Attack Speed") && InStr(Clipboard,"Skaven")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

M_bcrCrit:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Block Cost") && InStr(Clipboard,"Crit Chance")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

M_bcrCritPower:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Block Cost") && InStr(Clipboard,"Crit Power")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

M_bcrPBA:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Block Cost") && InStr(Clipboard,"Block Angle")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

M_bcrChaos:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Block Cost") && InStr(Clipboard,"Chaos")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

M_bcrSkaven:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Block Cost") && InStr(Clipboard,"Skaven")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

M_critCritPower:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Crit Chance") && InStr(Clipboard,"Crit Power")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

M_critChaos:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Crit Chance") && InStr(Clipboard,"Chaos")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

M_critSkaven:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Crit Chance") && InStr(Clipboard,"Skaven")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

M_critpowerChaos:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Crit Power") && InStr(Clipboard,"Chaos")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

M_critpowerSkaven:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Crit Power") && InStr(Clipboard,"Skaven")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

M_staminaBCR:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Stamina") && InStr(Clipboard,"Block Cost")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

M_staminaCrit:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Stamina") && InStr(Clipboard,"Crit Chance")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

M_staminaCritPower:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Stamina") && InStr(Clipboard,"Crit Power")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

M_staminaPBA:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Stamina") && InStr(Clipboard,"Block Angle")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

M_staminaChaos:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Stamina") && InStr(Clipboard,"Chaos")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

M_staminaSkaven:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Stamina") && InStr(Clipboard,"Skaven")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

M_chaosSkaven:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Chaos") && InStr(Clipboard,"Skaven")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

; Ranged
R_critCritPower:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Crit Chance") && InStr(Clipboard,"Crit Power")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

R_critArmoured:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Crit Chance") && InStr(Clipboard,"Armoured")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

R_critBerserkers:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Crit Chance") && InStr(Clipboard,"Berserkers")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

R_critChaos:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Crit Chance") && InStr(Clipboard,"Chaos")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

R_critInfantry:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Crit Chance") && InStr(Clipboard,"Infantry")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

R_critMonsters:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Crit Chance") && InStr(Clipboard,"Monsters")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

R_critSkaven:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Crit Chance") && InStr(Clipboard,"Skaven")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

R_critPowerArmoured:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Crit Power") && InStr(Clipboard,"Armoured")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

R_critPowerBerserkers:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Crit Power") && InStr(Clipboard,"Berserkers")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

R_critPowerChaos:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Crit Power") && InStr(Clipboard,"Chaos")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

R_critPowerInfantry:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Crit Power") && InStr(Clipboard,"Infantry")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

R_critPowerMonsters:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Crit Power") && InStr(Clipboard,"Monsters")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

R_critPowerSkaven:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Crit Power") && InStr(Clipboard,"Skaven")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

R_armouredBerserkers:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Armoured") && InStr(Clipboard,"Berserkers")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

R_armouredInfantry:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Armoured") && InStr(Clipboard,"Infantry")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

R_armouredMonsters:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Armoured") && InStr(Clipboard,"Monsters")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

R_chaosArmoured:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Chaos") && InStr(Clipboard,"Armoured")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

R_chaosBerserkers:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Chaos") && InStr(Clipboard,"Berserkers")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

R_chaosInfantry:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Chaos") && InStr(Clipboard,"Infantry")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

R_chaosMonsters:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Chaos") && InStr(Clipboard,"Monsters")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

R_chaosSkaven:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Chaos") && InStr(Clipboard,"Skaven")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

R_infantryBerserkers:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Infantry") && InStr(Clipboard,"Berserkers")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

R_monstersBerserkers:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Monsters") && InStr(Clipboard,"Berserkers")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

R_monstersInfantry:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Monsters") && InStr(Clipboard,"Infantry")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

R_skavenArmoured:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Skaven") && InStr(Clipboard,"Armoured")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

R_skavenBerserkers:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Skaven") && InStr(Clipboard,"Berserkers")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

R_skavenInfantry:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Skaven") && InStr(Clipboard,"Infantry")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

R_skavenMonsters:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Skaven") && InStr(Clipboard,"Monsters")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

; Necklace
N_bcrHealth:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Block Cost") && InStr(Clipboard,"Health")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

N_bcrPBA:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Block Cost") && InStr(Clipboard,"Block Angle")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

N_staminaBCR:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Stamina") && InStr(Clipboard,"Block Cost")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

N_staminaHealth:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Stamina") && InStr(Clipboard,"Health")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

N_staminaPBA:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Stamina") && InStr(Clipboard,"Block Angle")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

; Charm
C_attackCritPower:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Attack Speed") && InStr(Clipboard,"Crit Power")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

C_attackArmoured:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Attack Speed") && InStr(Clipboard,"Armoured")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

C_attackBerserkers:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Attack Speed") && InStr(Clipboard,"Berserkers")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

C_attackChaos:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Attack Speed") && InStr(Clipboard,"Chaos")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

C_attackInfantry:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Attack Speed") && InStr(Clipboard,"Infantry")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

C_attackMonsters:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Attack Speed") && InStr(Clipboard,"Monsters")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

C_attackSkaven:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Attack Speed") && InStr(Clipboard,"Skaven")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

C_critpowerArmoured:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Crit Power") && InStr(Clipboard,"Armoured")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

C_critpowerBerserkers:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Crit Power") && InStr(Clipboard,"Berserkers")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

C_critpowerChaos:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Crit Power") && InStr(Clipboard,"Chaos")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

C_critpowerInfantry:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Crit Power") && InStr(Clipboard,"Infantry")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

C_critpowerMonsters:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Crit Power") && InStr(Clipboard,"Monsters")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

C_critpowerSkaven:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Crit Power") && InStr(Clipboard,"Skaven")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

C_armouredBerserkers:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Armoured") && InStr(Clipboard,"Berserkers")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

C_armouredInfantry:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Armoured") && InStr(Clipboard,"Infantry")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

C_armouredMonsters:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Armoured") && InStr(Clipboard,"Monsters")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

C_chaosArmoured:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Chaos") && InStr(Clipboard,"Armoured")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

C_chaosBerserkers:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Chaos") && InStr(Clipboard,"Berserkers")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

C_chaosInfantry:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Chaos") && InStr(Clipboard,"Infantry")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

C_chaosMonsters:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Chaos") && InStr(Clipboard,"Monsters")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

C_chaosSkaven:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Chaos") && InStr(Clipboard,"Skaven")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

C_infantryBerserkers:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Infantry") && InStr(Clipboard,"Berserkers")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

C_monstersInfantry:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Monsters") && InStr(Clipboard,"Infantry")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

C_skavenArmoured:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Skaven") && InStr(Clipboard,"Armoured")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

C_skavenBerserkers:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Skaven") && InStr(Clipboard,"Berserkers")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

C_skavenInfantry:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Skaven") && InStr(Clipboard,"Infantry")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

C_skavenMonsters:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Skaven") && InStr(Clipboard,"Monsters")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

;Trinket
T_cooldownCrit:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Cooldown") && InStr(Clipboard,"Crit Chance")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

T_cooldownCurse:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Cooldown") && InStr(Clipboard,"Curse")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

T_cooldownMovement:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Cooldown") && InStr(Clipboard,"Movement")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

T_cooldownRevive:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Cooldown") && InStr(Clipboard,"Revive")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

T_cooldownStamina:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Cooldown") && InStr(Clipboard,"Stamina")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

T_critCurse:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Crit Chance") && InStr(Clipboard,"Curse")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

T_critMovement:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Crit Chance") && InStr(Clipboard,"Movement")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

T_critRevive:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Crit Chance") && InStr(Clipboard,"Revive")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

T_critStamina:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Crit Chance") && InStr(Clipboard,"Stamina")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

T_curseMovement:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Curse") && InStr(Clipboard,"Movement")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

T_curseStamina:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Curse") && InStr(Clipboard,"Stamina")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

T_movementRevive:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Movement") && InStr(Clipboard,"Revive")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

T_movementStamina:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Movement") && InStr(Clipboard,"Stamina")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
}
}
}
return

T_reviveStamina:
WinActivate, Vermintide 2
Sleep, 333
Loop
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_WorkingDir%\BG.png
If !ErrorLevel
{
text := OCR([750, 590, 400, 70])
Clipboard := % text
If InStr(Clipboard,"Revive") && InStr(Clipboard,"Stamina")
{
	Break
}
Else
{
	Click, 950, 900 Left, Down
	Sleep, 50
	Click, 950, 900 Left, Up
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