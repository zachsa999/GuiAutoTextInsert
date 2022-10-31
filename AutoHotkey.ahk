#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

winName = 4F DISPATCH *

^!b::
    Sleep 50
    Send f
    Sleep 750
    Send accounting@naturalproteins.ca
    Send {Enter}
    Sleep 5
    Send reception@rockypond.ca
    Send {Enter}
    Sleep 5
    Send keith@rockypond.ca
    Send {Enter}
    Sleep 50
    Send ^{Enter}
return

^!m::
    Send {Enter}
    Send {space}(confirmed)
    Send {ENTER}
    Send {UP}

return

^!n::
    Send {Enter}
    Send {space}(invoiced)
    Send {ENTER}
    Send {UP}
return

