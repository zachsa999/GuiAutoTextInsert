#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

^!j::
    ; Sleep 50
    ; Send f
    ; Sleep 750
    Send accounting@naturalproteins.ca
    Sleep 5
    Send {Enter}
    Sleep 5
    Send reception@rockypond.ca
    Sleep 5
    Send {Enter}
    Sleep 5
    Send keith@rockypond.ca
    Sleep 5
    Send {Enter}
    Sleep 50
    Send ^{Enter}
return

^!l::
    ; Ties into a macro in Google sheets
    Send ^+!0
return

^!k::
    ; Ties into a macro in Google sheets
    Send ^+!9
return

InsertText(Text) {
    WinGetTitle, Title, A
    If (Title == "F4F Dispatch 2022 - Google Sheets - Google Chrome") {
        ;Google Sheets routine
        Send {Enter}
        Send {space}%Text%
        Send {Enter}
    } Else If (Title == "F4F DISPATCH - Google Chrome") {
        ; Icloud routine
        Send !{Enter}
        Send {space}%Text%
        Send {ENTER}

    } Else {
        Return
    }

}
