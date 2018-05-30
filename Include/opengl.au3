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

Func checkError($funcName)
	If @error Then
	  ErrorNotify($funcName & String(@error))
	  Return SetError(@error, 0, $EGL_FALSE)
	EndIf
	return $EGL_TRUE
EndFunc

Func glGetShaderiv($shader, $pname, byref $params)
	Local $ptrParams = DllStructCreate( "int" )
	DllCall( $dllGLESv2, "none", "glGetShaderiv", "uint", $shader, "uint", $pname, "ptr", DllStructGetPtr($ptrParams) )
	$error = checkError("glGetShaderiv")
	$params = DllStructGetData($ptrParams, 1);
	return $error
EndFunc

Func glDeleteShader( $shader )
	DllCall( $dllGLESv2, "none", "glDeleteShader", "uint", $shader )
	return checkError("glDeleteShader")
EndFunc

Func glGetShaderInfoLog($shader, $maxLength, byref $length, byref $infoLog)
	Local $ptrParams = DllStructCreate( "int;char[" & $maxLength & "]" )
	DllCall( $dllGLESv2, "none", "glGetShaderInfoLog", "uint", $shader, "uint", $maxLength, "ptr", DllStructGetPtr($ptrParams, 1), "ptr", DllStructGetPtr($ptrParams, 2) )
	$error = checkError("glGetShaderInfoLog")
	$length = DllStructGetData($ptrParams, 1);
	$infoLog = DllStructGetData($ptrParams, 2);
	return $error
EndFunc

Func glBindAttribLocation($glBindAttribLocation, $index, $name)
	DllCall( $dllGLESv2, "none", "glBindAttribLocation", "uint", $glBindAttribLocation, "uint", $index, "char*", $name )
	$error = checkError("glBindAttribLocation")
	return $error
EndFunc

Func glGetProgramiv($program, $pname, byref $params)
	Local $ptrParams = DllStructCreate( "int" )
	DllCall( $dllGLESv2, "none", "glGetProgramiv", "uint", $program, "uint", $pname, "ptr", DllStructGetPtr($ptrParams) )
	$error = checkError("glGetProgramiv")
	$params = DllStructGetData($ptrParams, 1);
	return $error
EndFunc

Func glGetProgramInfoLog($program, $maxLength, byref $length, byref $infoLog)
	Local $ptrParams = DllStructCreate( "int;char[" & $maxLength & "]" )
	DllCall( $dllGLESv2, "none", "glGetProgramInfoLog", "uint", $program, "uint", $maxLength, "ptr", DllStructGetPtr($ptrParams, 1), "ptr", DllStructGetPtr($ptrParams, 2) )
	$error = checkError("glGetProgramInfoLog")
	$length = DllStructGetData($ptrParams, 1);
	$infoLog = DllStructGetData($ptrParams, 2);
	return $error
EndFunc

Func glDeleteProgram( $program )
	DllCall( $dllGLESv2, "none", "glDeleteProgram", "uint", $program )
	return checkError("glDeleteProgram")
EndFunc

Func glVertexAttribPointer($index, $size, $type, $normalized, $stride, $pointer)
	Local $ptrParams = DllStructCreate( "float[" & ($size * 3) & "]" )
	For $i = 0 To UBound($pointer) - 1 Step 1
	  DllStructSetData($ptrParams, 1, $pointer[$i], $i + 1)
	Next
	DllCall( $dllGLESv2, "none", "glVertexAttribPointer", "uint", $index, "int", $size, "int", $type, "boolean", $normalized, "uint", $stride, "ptr", DllStructGetPtr($ptrParams))
	$error = checkError("glVertexAttribPointer")
	return $error
EndFunc

Func glEnableVertexAttribArray( $index )
	DllCall( $dllGLESv2, "none", "glEnableVertexAttribArray", "uint", $index )
	return checkError("glEnableVertexAttribArray")
EndFunc

Func glDrawArrays( $mode, $first, $count )
	DllCall( $dllGLESv2, "none", "glDrawArrays", "uint", $mode, "int", $first, "uint", $count )
	return checkError("glDrawArrays")
EndFunc

Func glGenBuffers(GLsizei $n, $buffers)
	Local $ptrParams = DllStructCreate( "uint[" & $n & "]" )
	DllCall( $dllGLESv2, "none", "glGenBuffers", "uint", $n, "ptr", DllStructGetPtr($ptrParams, 1))
	$error = checkError("glGenBuffers")
	$buffers = DllStructGetData($ptrParams, 1);
	return $error
EndFunc

Func glBindBuffer(GLenum $target, GLuint $buffer)
	DllCall( $dllGLESv2, "none", "glBindBuffer", "uint", $target, "uint", $buffer )
	return checkError("glBindBuffer")
EndFunc

Func glBufferData($target, $size, $data, $usage)
	Local $ptrParams = DllStructCreate( "float[" & ($size) & "]" )
	For $i = 0 To UBound($data) - 1 Step 1
	  DllStructSetData($ptrParams, 1, $data[$i], $i + 1)
	Next
	DllCall( $dllGLESv2, "none", "glBufferData", "uint", $target, "int", $size, "ptr", DllStructGetPtr($ptrParams), "uint", $usage)
	$error = checkError("glBufferData")
	return $error
EndFunc

Func glBufferSubData($target, $offset, $size, $data)
	Local $ptrParams = DllStructCreate( "float[" & ($size) & "]" )
	For $i = 0 To UBound($data) - 1 Step 1
	  DllStructSetData($ptrParams, 1, $data[$i], $i + 1)
	Next
	DllCall( $dllGLESv2, "none", "glBufferSubData", "uint", $target, "int", $offset, "int", $size, "ptr", DllStructGetPtr($ptrParams))
	$error = checkError("glBufferSubData")
	return $error
EndFunc