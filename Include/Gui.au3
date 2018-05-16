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
Global $hOpenGL = 0, $hDC, $hRC

Func MainFunc()
   If Not InitGUIwindow() Then GUI_EVENT_CLOSE()
   If Not InitOpenGLwindow() Then GUI_EVENT_CLOSE()
;~    If Not CheckOpenGLversion( 3, 1 ) Then GUI_EVENT_CLOSE()
;~    If Not CreateResources() Then GUI_EVENT_CLOSE()
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
;~    Local $attribute_list[] = [
;~         $EGL_RED_SIZE, 1,
;~         $EGL_GREEN_SIZE, 1,
;~         $EGL_BLUE_SIZE, 1,
;~         $EGL_NONE
;~    ]

;~    Local $config
;~    Local $num_config
   Local $major, $minor, $aRet
   Local $eglDisplay
   $hOpenGL = GUICreate( "", $iGuiWidth, $iGuiHeight, 0, 0, $WS_CHILD, -1, $hGui )
   GUISetState()

   $hDC = GetDC($hOpenGL)

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
   ;eglBindAPI(EGL_OPENGL_ES_API);
;~    ; Obtain the display configs
;~    If eglGetConfigs($eglDisplay, Null, 0, &numConfigs) <> $EGL_TRUE Then
;~ 	  return $EGL_FALSE
;~    EndIf

;~    ; Choose the display config OR get an appropriate EGL frame buffer configuration
;~    If eglChooseConfig($eglDisplay, $attribute_list, $config, 1, $numConfigs) <> $EGL_TRUE Then
;~ 	  return $EGL_FALSE
;~    EndIf

;~    ; create an EGL rendering context
;~    $context = eglCreateContext($eglDisplay, $config, $EGL_NO_CONTEXT, NULL);

;~    ; Create an EGL window surface
;~    $eglSurface = eglCreateWindowSurface($eglDisplay, $config, $hOpenGL, Null);
;~    If $eglSurface = $EGL_NO_SURFACE Then
;~ 	 return $EGL_FALSE;
;~    EndIf

;~    ; connect the context to the surface
;~    eglMakeCurrent($eglDisplay, $eglSurface, $eglSurface, $context)
;~    ;If GetOpenGLContext( $hOpenGL, $hDC, $hRC ) = 0 Then Return 0
;~    GUISetState()

;~    glClearColor( 0.0, 0.0, 0.0, 0.0 )
;~    glFlush();

;~    eglSwapBuffers($eglDisplay, $eglSurface)

   GUISetState()

   GUISwitch( $hGui )

   Return 1
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