#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

#include <MsgBoxConstants.au3>

Local $timeout = 2
Local $messText = "(invoiced)"
Local $sentText = " " & $messText
Local $winName = "F4F DISPATCH - Vivaldi"

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
