#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------
#include <MsgBoxConstants.au3>

Local $timeout = 2
Local $sentText = " (confirmed)"
Local $winName = "F4F DISPATCH - Brave"
Local $messText = "(confirmed)"

If WinExists($winName) Then
;	MsgBox($MB_SYSTEMMODAL, "", "Window exists")
	WinActivate($winName)
	Send("{ALTDOWN}")
	Send("{ENTER}")
	Send("{ALTUP}")
	Send($sentText)
Else
	MsgBox($MB_SYSTEMMODAL, "AutoIT", "'" & $winName & "' not found, '" & $messText & "' not sent", $timeout)
EndIf
	Exit






