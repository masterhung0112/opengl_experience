#include-once

#include "EglConstants.au3"

Func eglGetDisplay( $native_display )
   Local $aRet = DllCall( $dllEgl, "ptr", "eglGetDisplay", "handle", $native_display )
   If @error Then
	  ErrorNotify("eglGetDisplay " & String(@error))
	  Return SetError(@error, 0, $EGL_FALSE)
   EndIf
   Return $aRet[0]
EndFunc

Func eglInitialize( $display, ByRef $major, ByRef $minor )
   Local $aRet = DllCall( $dllEgl, "int", "eglInitialize", "handle", $display, "int*", $major, "int*", $minor )
   If @error Then
	  ErrorNotify("eglInitialize " & String(@error))
	  Return SetError(@error, 0, $EGL_FALSE)
   EndIf
   Return $aRet[0]
EndFunc

Func eglGetError(  )
   Local $aRet = DllCall( $dllEgl, "int", "eglGetError" )
   If @error Then
	  ErrorNotify("eglGetError " & String(@error))
	  Return SetError(@error, 0, $EGL_FALSE)
   EndIf
   Return $aRet[0]
EndFunc



