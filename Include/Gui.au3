#include-once

#include <WindowsConstants.au3>
#include "Utilities.au3"
#include "WinFunc.au3"
#include "Opengl.au3"

; --- GUI globals ---
Global $iGuiWidth  = 500
Global $iGuiHeight = 500
Global $hGui, $bResize = True

; OpenGL window
Global $hOpenGL = 0, $hDC, $hRC, $iProgram, $eglSurface, $eglDisplay

Func MainFunc()
   $res = 1

   $res = InitGUIwindow()
   If Not $res Then
	  ErrorNotify("InitGUIwindow Fail")
	  GUI_EVENT_CLOSE()
	  return $res
   EndIf

   $res = InitOpenGLwindow()
   If Not $res Then
	  ErrorNotify("InitOpenGLwindow Fail")
	  GUI_EVENT_CLOSE()
	  return $res
   EndIf

;~    If Not CheckOpenGLversion( 3, 1 ) Then GUI_EVENT_CLOSE()
   $res = CreateResources()
   If Not $res Then
	  ErrorNotify("CreateResources Fail")
	  GUI_EVENT_CLOSE()
	  return $res
   EndIf

   return $res
EndFunc

Func InitGUIwindow()

   $hGui = GUICreate( ScriptName(), $iGuiWidth, $iGuiHeight, -1, -1, $WS_OVERLAPPEDWINDOW )

;~    GUISetOnEvent( $GUI_EVENT_MAXIMIZE, "GUI_EVENT_RESIZE" )
;~    GUISetOnEvent( $GUI_EVENT_RESIZED,  "GUI_EVENT_RESIZE" )
;~    GUISetOnEvent( $GUI_EVENT_RESTORE,  "GUI_EVENT_RESIZE" )
;~    GUISetOnEvent( $GUI_EVENT_CLOSE,    "GUI_EVENT_CLOSE"  )

   Return 1

EndFunc

Func InitOpenGLwindow()
   Local $attribute_list[] = [ _
        $EGL_BUFFER_SIZE, 16, _
		$EGL_RENDERABLE_TYPE, $EGL_OPENGL_ES2_BIT, _
        $EGL_NONE _
   ]
;

;~    Local $config
;~    Local $num_config
   Local $major, $minor, $aRet
   
;~    $hOpenGL = GUICreate( "", $iGuiWidth, $iGuiHeight, 0, 0, $WS_CHILD, -1, $hGui )
;~    GUISetState()

   $hDC = GetDC($hGui)

   ; Obtain an EGL display connection
   $eglDisplay = eglGetDisplay($hDC)
   If $eglDisplay = $EGL_NO_DISPLAY Then
	  ErrorNotify("eglGetDisplay")
	  return $EGL_FALSE
   EndIf
   ;ErrorNotify($eglDisplay)
   ; Initialize the EGL display connection
   $aRet = eglInitialize($eglDisplay, $major, $minor)
   If $aRet <> $EGL_TRUE Then
	  If $aRet = $EGL_BAD_DISPLAY Then ErrorNotify("Bad Display")
	  If $aRet = $EGL_NOT_INITIALIZED  Then ErrorNotify("Not initialized")
	  ErrorNotify("eglInitialize " & String(eglGetError()))
	  return $EGL_FALSE
   EndIf

   ;ErrorNotify($major & "." & $minor)

   $aRet = eglBindAPI($EGL_OPENGL_ES_API);
   If $aRet <> $EGL_TRUE Then
	  ErrorNotify("eglBindAPI")
	  return $EGL_FALSE
   EndIf

   Local $config
   Local $numConfigs
   ; Obtain the display configs
   If eglGetConfigs($eglDisplay, Null, 0, $numConfigs) <> $EGL_TRUE Then
	  ErrorNotify("eglGetConfigs")
	  return $EGL_FALSE
   EndIf

   ;ErrorNotify(String($numConfigs))

   ;$numConfigs = 0
   ; Choose the display config OR get an appropriate EGL frame buffer configuration
   If eglChooseConfig($eglDisplay, $attribute_list, $config, 1, $numConfigs) <> $EGL_TRUE Then
	  ErrorNotify("eglChooseConfig")
	  return $EGL_FALSE
   EndIf

;~    ErrorNotify(String($numConfigs) & " " & $config[0])

   Local $eglSurfaceAttributes[] = [ $EGL_NONE ]
   $eglSurface = eglCreateWindowSurface($eglDisplay, $config[0], $hGui, $eglSurfaceAttributes)
   If $eglSurface = $EGL_NO_SURFACE Then
	  ErrorNotify("eglCreateWindowSurface Fail")
	  return $EGL_FALSE
   EndIf

   ; create an EGL rendering context
   Local $contextAttribs[] = [ $EGL_CONTEXT_CLIENT_VERSION, 2, $EGL_NONE, $EGL_NONE ]
   Local $context = eglCreateContext($eglDisplay, $config[0], $EGL_NO_CONTEXT, $contextAttribs)
   If $context = $EGL_NO_CONTEXT Then
	  ErrorNotify("eglCreateContext Fail")
	  return $EGL_FALSE
   EndIf

   ; Make the context current
   $aRet = eglMakeCurrent($eglDisplay, $eglSurface, $eglSurface, $context)
   If $aRet <> $EGL_TRUE Then
	  ErrorNotify("eglMakeCurrent " & eglGetError())
	  return $EGL_FALSE
   EndIf
;~    ; Create an EGL window surface
;~    $eglSurface = eglCreateWindowSurface($eglDisplay, $config, $hOpenGL, Null);
;~    If $eglSurface = $EGL_NO_SURFACE Then
;~ 	 return $EGL_FALSE;
;~    EndIf

;~    ; connect the context to the surface
;~    eglMakeCurrent($eglDisplay, $eglSurface, $eglSurface, $context)
;~    ;If GetOpenGLContext( $hOpenGL, $hDC, $hRC ) = 0 Then Return 0
;~    GUISetState()

;~ 	  glClearColor( 1.0, 0.0, 0.0, 0.0 )
;~    glFlush();

;~    eglSwapBuffers($eglDisplay, $eglSurface)

;~    GUISetState()

;~    GUISwitch( $hGui )

   Return 1
EndFunc

Func CreateResources()

	InitializeProgram()

;~ 	InitializeVertexBuffer()

;~ 	glGenVertexArrays( 1, $iVao )
;~ 	glBindVertexArray( $iVao )

	GUISetState()

	Return 1

EndFunc

Func InitializeProgram()

	Local $sVertexShader = _
		"attribute vec4 vPosition;" & @CRLF & _
		"void main()" & @CRLF & _
		"{" & @CRLF & _
		"    gl_Position = vPosition;" & @CRLF & _
		"}" & @CRLF

	Local $sFragmentShader = _
		"precision mediump float;" & @CRLF & _
		"void main()" & @CRLF & _
		"{" & @CRLF & _
		"    gl_FragColor = vec4(1.0, 0.0, 0.0, 1.0);" & @CRLF & _
		"}" & @CRLF
	
	$iVertexShader = LoadShader($sVertexShader, $GL_VERTEX_SHADER)
	If $iVertexShader = 0 Then
		ErrorNotify("glCreateShader vertex " & eglGetError())
		return $EGL_FALSE
	EndIf
	
	$iFragmentShader = LoadShader($sFragmentShader, $GL_FRAGMENT_SHADER)
	If $iFragmentShader = 0 Then
		ErrorNotify("glCreateShader fragment " & eglGetError())
		return $EGL_FALSE
	EndIf

	$iProgram = glCreateProgram()
	glAttachShader( $iProgram, $iVertexShader )
	glAttachShader( $iProgram, $iFragmentShader )
	
	; Bind vPosition to attribute 0
	glBindAttribLocation($iProgram, 0, "vPosition")
	
	glLinkProgram( $iProgram )
	
	Local $linked = 0
	glGetProgramiv($iProgram, $GL_LINK_STATUS, $linked)
	If $linked = 0 Then
		Local $infoLen = 0
		glGetProgramiv($iProgram, $GL_INFO_LOG_LENGTH, $infoLen)
		If $infoLen > 0 Then
			Local $infoLog = ""
			glGetProgramInfoLog($iProgram, $infoLen, Null, $infoLog)
			ErrorNotify("glGetProgramInfoLog " & $infoLog)
		EndIf
		
		glDeleteProgram($iProgram)
		return 0
	EndIf
	
	glUseProgram(0)

EndFunc

; Create a shader object, load the shader source, and
; compile the shader.
Func LoadShader($shaderSrc, $type)
	$ishader = glCreateShader( $type )
	; Load the shader source
	glShaderSource( $ishader, 1, $shaderSrc, StringLen( $shaderSrc ) )
	; Compile the shader
	glCompileShader( $ishader )
	
	Local $compiled = 0
	glGetShaderiv($ishader, $GL_COMPILE_STATUS, $compiled)
	If $compiled = 0 Then
		Local $infoLen = 0
		glGetShaderiv($ishader, $GL_INFO_LOG_LENGTH, $infoLen)
		If $infoLen > 0 Then
			Local $infoLog = ""
			glGetShaderInfoLog($ishader, $infoLen, Null, $infoLog)
			ErrorNotify("glGetShaderInfoLog " & $infoLog)
		EndIf
		
		glDeleteShader($ishader)
		return 0
	EndIf
	return $ishader
EndFunc

Func GUI_EVENT_CLOSE()
;~    DestroyProgram()
;~    DestroyVertexBuffer()
;~    DisableOpenGL( $hOpenGL, $hDC, $hRC )

   If @error Then MsgBox(16, "Failure", "blah.")

   GUIDelete( $hGui )
;~    ExLauncherWin()
   CloseDlls()
   Exit
EndFunc