#include-once

Func ScriptName()
   return StringLeft(@ScriptName, StringInStr(@ScriptName, ".", 0, -1) - 1)
EndFunc

Func ErrorNotify($errMsg)
   MsgBox(16, "Failure", $errMsg)
EndFunc