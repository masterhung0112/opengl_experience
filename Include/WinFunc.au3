#include-once

Func GetDC( $hWnd )
   Local $aRet = DllCall( $dllUser32, "handle", "GetDC", "hwnd", $hWnd )
   If @error Or Not $aRet[0] Then
	  ErrorNotify("GetDC")
	  Return SetError( 1, 0, 0 )
   EndIf
   Return $aRet[0]
EndFunc

Func SwapBuffers( $hDC )
	DllCall( $dllGDI32, "int", "SwapBuffers", "hwnd", $hDC )
EndFunc