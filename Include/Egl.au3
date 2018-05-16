#include-once

#include "EglConstants.au3"

Func eglGetDisplay( $dpy )
   Local $aRet = DllCall( $dllEgl, "ptr", "eglGetDisplay", "handle", $dpy )
   If @error Then
	  ErrorNotify("eglGetDisplay " & String(@error))
	  Return SetError(@error, 0, $EGL_FALSE)
   EndIf
   Return $aRet[0]
EndFunc

Func eglInitialize( $dpy, ByRef $major, ByRef $minor )
   Local $localVar = DllStructCreate("int;int")
   Local $aRet = DllCall( $dllEgl, "int", "eglInitialize", "handle", $dpy, "ptr", DllStructGetPtr($localVar, 1), "ptr", DllStructGetPtr($localVar, 2) )
   If @error Then
	  ErrorNotify("eglInitialize " & String(@error))
	  Return SetError(@error, 0, $EGL_FALSE)
   EndIf
   $major = DllStructGetData($localVar, 1)
   $minor = DllStructGetData($localVar, 2)
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

Func eglBindAPI( $api )
   Local $aRet = DllCall( $dllEgl, "bool", "eglBindAPI", "uint", $api)
   If @error Then
	  ErrorNotify("eglBindAPI " & String(@error))
	  Return SetError(@error, 0, $EGL_FALSE)
   EndIf
   Return $aRet[0]
EndFunc

Func eglGetConfigs($dpy, ByRef $configs, $config_size, ByRef $num_config)
   Local $num_configInt = DllStructCreate("int")
   Local $aRet = DllCall( $dllEgl, "bool", "eglGetConfigs", "handle", $dpy, "ptr", $configs, "int", $config_size, "ptr", DllStructGetPtr($num_configInt))
   If @error Then
	  ErrorNotify("eglGetConfigs " & String(@error))
	  Return SetError(@error, 0, $EGL_FALSE)
   EndIf
   $num_config = DllStructGetData($num_configInt, 1)
   Return $aRet[0]
EndFunc

Func eglChooseConfig($dpy, $eglChooseConfig, ByRef $configs, $config_size, ByRef $num_config)
   Local $num_configInt = DllStructCreate("int")
   Local $localConfigs = DllStructCreate( "void*[" & $config_size & "]" )
   Local $aRet = DllCall( $dllEgl, "bool", "eglChooseConfig", "handle", $dpy, "ptr", $eglChooseConfig, "ptr", DllStructGetPtr($localConfigs), "int", $config_size, "ptr", DllStructGetPtr($num_configInt))
   If @error Then
	  ErrorNotify("eglChooseConfig " & String(@error))
	  Return SetError(@error, 0, $EGL_FALSE)
   EndIf
   $num_config = DllStructGetData($num_configInt, 1)
   $configs = DllStructGetData($localConfigs, $config_size)
   Return $aRet[0]
EndFunc

Func eglCreateWindowSurface($dpy, $configs, $win, $attrib_list)
   Local $aRet = DllCall( $dllEgl, "ptr", "eglCreateWindowSurface", "handle", $dpy, "ptr", $configs, "hwnd", $win, "ptr", $attrib_list)
   If @error Then
	  ErrorNotify("eglCreateWindowSurface " & String(@error))
	  Return SetError(@error, 0, $EGL_FALSE)
   EndIf
   Return $aRet[0]
EndFunc

Func eglCreateContext($dpy, $configs, $share_context, $attrib_list)
   Local $aRet = DllCall( $dllEgl, "ptr", "eglCreateContext", "handle", $dpy, "ptr", $configs, "ptr", $share_context, "ptr", $attrib_list)
   If @error Then
	  ErrorNotify("eglCreateContext " & String(@error))
	  Return SetError(@error, 0, $EGL_FALSE)
   EndIf
   Return $aRet[0]
EndFunc

Func eglMakeCurrent($dpy, $draw, $read, $ctx)
   Local $aRet = DllCall( $dllEgl, "bool", "eglMakeCurrent", "handle", $dpy, "ptr", $draw, "ptr", $read, "ptr", $ctx)
   If @error Then
	  ErrorNotify("eglMakeCurrent " & String(@error))
	  Return SetError(@error, 0, $EGL_FALSE)
   EndIf
   Return $aRet[0]
EndFunc

Func eglSwapBuffers($dpy, $surface)
   Local $aRet = DllCall( $dllEgl, "bool", "eglSwapBuffers", "handle", $dpy, "ptr", $surface)
   If @error Then
	  ErrorNotify("eglSwapBuffers " & String(@error))
	  Return SetError(@error, 0, $EGL_FALSE)
   EndIf
   Return $aRet[0]
EndFunc