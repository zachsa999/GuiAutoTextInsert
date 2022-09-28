#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         zachsa999

 Script Function:
	Sends keystrokes to a Firefox Window 

#ce ----------------------------------------------------------------------------
#include <MsgBoxConstants.au3>

Local $timeout = 2
Local $sentText = " (confirmed)"
Local $winName = "F4F DISPATCH - Vivaldi"
#F4F DISPATCH - Vivaldi
Local $messText = "(confirmed)"

If WinExists($winName) Then
;	MsgBox($MB_SYSTEMMODAL, "", "Window exists")
	WinActivate($winName)
	Send("{ALTDOWN}")
	Send("{ENTER}")
	Send("{ALTUP}")
	Send($sentText)
	Send("{ENTER}")
	Send("{UP}")
Else
	MsgBox($MB_SYSTEMMODAL, "AutoIT", "'" & $winName & "' not found, '" & $messText & "' not sent", $timeout)
EndIf
	Exit






knl;jl