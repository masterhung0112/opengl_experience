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
Global $hOpenGL = 0, $hDC, $hRC, $iProgram

Func MainFunc()
   $res = 1

   $res = InitGUIwindow()
   If Not $res Then
	  GUI_EVENT_CLOSE()
	  return $res
   EndIf

   $res = InitOpenGLwindow()
   If Not $res Then
	  GUI_EVENT_CLOSE()
	  return $res
   EndIf



;~    If Not CheckOpenGLversion( 3, 1 ) Then GUI_EVENT_CLOSE()
   If Not CreateResources() Then GUI_EVENT_CLOSE()

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
        $EGL_RED_SIZE, 1, _
        $EGL_GREEN_SIZE, 1, _
        $EGL_BLUE_SIZE, 1, _
		$EGL_CONFORMANT, $EGL_OPENGL_ES2_BIT, _
        $EGL_NONE _
   ]
;

;~    Local $config
;~    Local $num_config
   Local $major, $minor, $aRet
   Local $eglDisplay
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

;~    ErrorNotify($major & " " & $minor)

   $aRet = eglBindAPI($EGL_OPENGL_ES_API);
   If $aRet <> $EGL_TRUE Then
	  ErrorNotify("eglBindAPI")
	  return $EGL_FALSE
   EndIf

   Local $numConfigs
   ; Obtain the display configs
   If eglGetConfigs($eglDisplay, Null, 0, $numConfigs) <> $EGL_TRUE Then
	  return $EGL_FALSE
   EndIf
   $numConfigs = 0
   ; Choose the display config OR get an appropriate EGL frame buffer configuration
   Local $config
   If eglChooseConfig($eglDisplay, $attribute_list, $config, 1, $numConfigs) <> $EGL_TRUE Then
	  return $EGL_FALSE
   EndIf

   ;ErrorNotify(String($numConfigs))

   $surface = eglCreateWindowSurface($eglDisplay, $config, $hGui, Null)
   If $surface = $EGL_NO_SURFACE Then
	  ErrorNotify("eglCreateWindowSurface Fail")
	  return $EGL_FALSE
   EndIf

   ; create an EGL rendering context
   Local $contextAttribs[] = [ $EGL_CONTEXT_CLIENT_VERSION, 2, $EGL_NONE, $EGL_NONE ]
   Local $context = eglCreateContext($eglDisplay, $config, $EGL_NO_CONTEXT, $contextAttribs)
   If $context = $EGL_NO_CONTEXT Then
	  ErrorNotify("eglCreateContext Fail")
	  return $EGL_FALSE
   EndIf

   ; Make the context current
   $aRet = eglMakeCurrent($eglDisplay, $surface, $surface, $context)
   If $aRet <> $EGL_TRUE Then
	  ErrorNotify("eglMakeCurrent")
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

;~    eglSwapBuffers($eglDisplay, $surface)

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
		"#version 330" & @CRLF & _
		"layout(location = 0) in vec4 position;" & @CRLF & _
		"void main()" & @CRLF & _
		"{" & @CRLF & _
		"    gl_Position = position;" & @CRLF & _
		"}" & @CRLF

	Local $sFragmentShader = _
		"#version 330" & @CRLF & _
		"out vec4 outputColor;" & @CRLF & _
		"void main()" & @CRLF & _
		"{" & @CRLF & _
		"    outputColor = vec4(1.0f, 1.0f, 1.0f, 1.0f);" & @CRLF & _
		"}" & @CRLF

	$iVertexShader = glCreateShader( $GL_VERTEX_SHADER )
	glShaderSource( $iVertexShader, 1, $sVertexShader, StringLen( $sVertexShader ) )
	glCompileShader( $iVertexShader )

	$iFragmentShader = glCreateShader( $GL_FRAGMENT_SHADER )
	glShaderSource( $iFragmentShader, 1, $sFragmentShader, StringLen( $sFragmentShader ) )
	glCompileShader( $iFragmentShader )

	$iProgram = glCreateProgram()
	glAttachShader( $iProgram, $iVertexShader )
	glAttachShader( $iProgram, $iFragmentShader )
	glLinkProgram( $iProgram )
	glUseProgram(0)

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