;Main script to run at login
;Boiler plate
#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
;Keyboard layers
#Include, keyboard.ahk
;Autocorrect for my usual typos
#Include, autocorrect.ahk
;Standard answers for chat and mail
#Include, textblocks.ahk