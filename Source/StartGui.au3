#Au3Stripper_Parameters=/mo

#include "../Include/Gui.au3"

If MainFunc() = 1 Then
   If $bResize Then
		; An OpenGL window (viewport) should not be resized in the middle of a drawing cycle.
		; In GUI_EVENT_RESIZE() $bResize is set to True when the GUI is resized. At this point
		; when the DisplayFunction() isn't running it's safe to resize the OpenGL window.
		glViewport( 0, 0, $iGuiWidth, $iGuiHeight )
		$bResize = False
	EndIf
	DisplayFunction()
	Sleep(10)
 EndIf

 Func DisplayFunction()

	glClear( $GL_COLOR_BUFFER_BIT + $GL_DEPTH_BUFFER_BIT )

	glUseProgram( $iProgram )

;~ 	glBindBuffer( $GL_ARRAY_BUFFER, $iPositionBufferObject )
;~ 	glEnableVertexAttribArray(0)
;~ 	glVertexAttribPointer( 0, 4, $GL_FLOAT, $GL_FALSE, 0, 0 )

;~ 	glDrawArrays( $GL_TRIANGLES, 0, 3 )

;~ 	glDisableVertexAttribArray(0)
	glUseProgram(0)

	SwapBuffers( $hDC )

EndFunc