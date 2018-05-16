#include-once

Global Const $dllGDI32    = DllOpen( "gdi32.dll" )
Global Const $dllGLU32    = DllOpen( "glu32.dll" )
Global Const $dllKernel32 = DllOpen( "kernel32.dll" )
Global Const $dllOpenGL32 = DllOpen( "opengl32.dll" )
Global Const $dllUser32   = DllOpen( "user32.dll" )
Global Const $dllEgl = DllOpen( "libEGL.dll" )
Global Const $dllGLESv2 = DllOpen( "libGLESv2" )

#include "oglConstants.au3"
#include "EglConstants.au3"
#include "Egl.au3"

Func CloseDlls( $bUser32 = True )
	DllClose( $dllGDI32 )
	DllClose( $dllGLU32 )
	DllClose( $dllKernel32 )
	DllClose( $dllOpenGL32 )
	DllClose( $dllEgl )
	If $bUser32 Then _
		DllClose( $dllUser32 )
EndFunc

Func glClearColor( $red, $green, $blue, $alpha )
	DllCall( $dllGLESv2, "none", "glClearColor", "float", $red, "float", $green, "float", $blue, "float", $alpha )
	If @error Then Return SetError( 3, 0, 0 )
   If @error Then
	  ErrorNotify("eglInitialize " & String(@error))
	  Return SetError(@error, 0, $EGL_FALSE)
   EndIf
EndFunc

Func glFlush()
	DllCall( $dllGLESv2, "none", "glFlush" )
	If @error Then Return SetError( 3, 0, 0 )
	EndFunc

Func glCreateShader( $type )
   Local $aRet = DllCall( $dllGLESv2, "uint", "glCreateShader", "uint", $type )
   If @error Then
	  ErrorNotify("glCreateShader " & String(@error))
	  Return SetError(@error, 0, $EGL_FALSE)
   EndIf
   Return $aRet[0]
EndFunc

Func glShaderSource( $shader, $count, $strings, $lengths )
	Local $stShader = DllStructCreate( "char[" & $lengths & "]" )
	DllStructSetData( $stShader, 1, $strings )
	Local $pStrings = DllStructGetPtr( $stShader )
	Local Static $ptr = 0
	DllCall( $dllGLESv2, "none", "glShaderSource", "uint", $shader, "int", $count, "ptr*", $pStrings, "int*", $lengths )
   If @error Then
	  ErrorNotify("glShaderSource " & String(@error))
	  Return SetError(@error, 0, $EGL_FALSE)
   EndIf
	EndFunc

Func glCompileShader( $shader )
	DllCall( $dllGLESv2, "none", "glCompileShader", "uint", $shader )
	If @error Then
	  ErrorNotify("glCompileShader " & String(@error))
	  Return SetError(@error, 0, $EGL_FALSE)
   EndIf
EndFunc

Func glCreateProgram()
   Local $aRet = DllCall( $dllGLESv2, "uint", "glCreateProgram")
	If @error Then
	  ErrorNotify("glCreateProgram " & String(@error))
	  Return SetError(@error, 0, $EGL_FALSE)
   EndIf
   return $aRet[0]
EndFunc

Func glAttachShader( $program, $shader )
   DllCall( $dllGLESv2, "none", "glAttachShader", "uint", $program, "uint", $shader )
	If @error Then
	  ErrorNotify("glAttachShader " & String(@error))
	  Return SetError(@error, 0, $EGL_FALSE)
   EndIf
EndFunc

Func glLinkProgram( $program )
	DllCall( $dllGLESv2, "none", "glLinkProgram", "uint", $program)
	If @error Then
	  ErrorNotify("glLinkProgram " & String(@error))
	  Return SetError(@error, 0, $EGL_FALSE)
   EndIf
EndFunc

Func glUseProgram( $program )
	DllCall( $dllGLESv2, "none", "glUseProgram", "uint", $program )
	If @error Then
	  ErrorNotify("glUseProgram " & String(@error))
	  Return SetError(@error, 0, $EGL_FALSE)
   EndIf
EndFunc

Func glViewport( $x, $y, $width, $height )
	DllCall( $dllGLESv2, "none", "glViewport", "int", $x, "int", $y, "int", $width, "int", $height )
	If @error Then
	  ErrorNotify("glViewport " & String(@error))
	  Return SetError(@error, 0, $EGL_FALSE)
   EndIf
EndFunc

Func glClear( $mask )
	DllCall( $dllGLESv2, "none", "glClear", "uint", $mask )
	If @error Then Return SetError( 3, 0, 0 )
EndFunc