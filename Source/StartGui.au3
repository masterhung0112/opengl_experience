#Au3Stripper_Parameters=/mo

#include "../Include/Gui.au3"

If MainFunc() = 1 Then
   While 1
	  If $bResize Then
		   ; An OpenGL window (viewport) should not be resized in the middle of a drawing cycle.
		   ; In GUI_EVENT_RESIZE() $bResize is set to True when the GUI is resized. At this point
		   ; when the DisplayFunction() isn't running it's safe to resize the OpenGL window.
		   glViewport( 0, 0, $iGuiWidth, $iGuiHeight )
		   $bResize = False
	   EndIf
	   DisplayFunction()
	   Sleep(10)
	WEnd
 EndIf

 ErrorNotify("MainFunc Error")

Func DisplayFunction()

   glClear( $GL_COLOR_BUFFER_BIT + $GL_DEPTH_BUFFER_BIT )
   glClearColor( 0.0, 0.0, 0.0, 0.0 )
   glUseProgram( $iProgram )

   Local $vVertices[] = [0.0, 0.5, 0.0, -0.5, -0.5, 0.0, 0.5, -0.5, 0.0]

   ; Load the vertex data
   glVertexAttribPointer( 0, 3, $GL_FLOAT, $GL_FALSE, 0, $vVertices )
   glEnableVertexAttribArray(0)
   glDrawArrays( $GL_TRIANGLES, 0, 3 )
   eglSwapBuffers($eglDisplay, $eglSurface)

   glUseProgram(0)
EndFunc