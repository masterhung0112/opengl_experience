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
   Local $localConfigs = DllStructCreate( "void*[" & $config_size & "]" )
   Local $aRet = DllCall( $dllEgl, "bool", "eglGetConfigs", "handle", $dpy, "ptr", DllStructGetPtr($localConfigs), "int", $config_size, "ptr", DllStructGetPtr($num_configInt))
   If @error Then
	  ErrorNotify("eglGetConfigs " & String(@error))
	  Return SetError(@error, 0, $EGL_FALSE)
   EndIf
   $num_config = DllStructGetData($num_configInt, 1)
   $configs = DllStructGetData($localConfigs, 1)
   Return $aRet[0]
EndFunc

Func eglChooseConfig($dpy, $attribute_list, ByRef $configs, $config_size, ByRef $num_config)
   Local $num_configInt = DllStructCreate("int")
   Local $localConfigsStr = ""
   For $i = 0 To $config_size - 1 Step 1
	  $localConfigsStr &= "ptr;"
   Next
   Local $localConfigs = DllStructCreate( $localConfigsStr )
   Local $localAttributeList = DllStructCreate("int[" & UBound($attribute_list) & "]" )
   For $i = 0 To UBound($attribute_list) - 1 Step 1
	  DllStructSetData($localAttributeList, 1, $attribute_list[$i], $i + 1)
   Next

;~    For $i = 0 To $config_size - 1 Step 1
;~ 	  DllStructSetData($localConfigs, $i + 1, 0xF5)
;~ 	  ErrorNotify("H" & DllStructGetData($localConfigs, $i + 1))
;~    Next
   Local $aRet = DllCall( $dllEgl, "bool", "eglChooseConfig", "handle", $dpy, "ptr", DllStructGetPtr($localAttributeList), "ptr", DllStructGetPtr($localConfigs), "int", $config_size, "ptr", DllStructGetPtr($num_configInt))
   If @error Then
	  ErrorNotify("eglChooseConfig " & String(@error))
	  Return SetError(@error, 0, $EGL_FALSE)
   EndIf
   $num_config = DllStructGetData($num_configInt, 1)

   Local $configArr[$num_config]
   For $i = 0 To $num_config - 1 Step 1
;~ 	  ErrorNotify(DllStructGetData($localConfigs, $i + 1))
	  $configArr[$i] = DllStructGetData($localConfigs, $i + 1)
   Next
   $configs = $configArr
   Return $aRet[0]
EndFunc

Func eglCreateWindowSurface($dpy, $configs, $win, $attribute_list)
   Local $localAttributeList = DllStructCreate("int[" & UBound($attribute_list) & "]" )
   For $i = 0 To UBound($attribute_list) - 1 Step 1
	  DllStructSetData($localAttributeList, 1, $attribute_list[$i], $i + 1)
   Next

   Local $aRet = DllCall( $dllEgl, "ptr", "eglCreateWindowSurface", "handle", $dpy, "ptr", $configs, "hwnd", $win, "ptr", DllStructGetPtr($localAttributeList))
   If @error Then
	  ErrorNotify("eglCreateWindowSurface " & String(@error))
	  Return SetError(@error, 0, $EGL_NO_SURFACE)
   EndIf
   Return $aRet[0]
EndFunc

Func eglCreateContext($dpy, $configs, $share_context, $attribute_list)
   Local $localAttributeList = DllStructCreate("int[" & UBound($attribute_list) & "]" )
   For $i = 0 To UBound($attribute_list) - 1 Step 1
	  DllStructSetData($localAttributeList, 1, $attribute_list[$i], $i + 1)
   Next

   Local $aRet = DllCall( $dllEgl, "ptr", "eglCreateContext", "handle", $dpy, "ptr", $configs, "ptr", $share_context, "ptr", DllStructGetPtr($localAttributeList))
   If @error Then
	  ErrorNotify("eglCreateContext " & String(@error))
	  Return SetError(@error, 0, $EGL_NO_CONTEXT)
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