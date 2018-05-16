#include-once

Global Const $dllGDI32    = DllOpen( "gdi32.dll" )
Global Const $dllGLU32    = DllOpen( "glu32.dll" )
Global Const $dllKernel32 = DllOpen( "kernel32.dll" )
Global Const $dllOpenGL32 = DllOpen( "opengl32.dll" )
Global Const $dllUser32   = DllOpen( "user32.dll" )
Global Const $dllEgl = DllOpen( "libEGL.dll" )

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