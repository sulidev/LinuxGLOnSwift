import COpenGL
import CGLFW3

func demo1(width: GLsizei, height: GLsizei, ratio: Double){

  glViewport(0, 0, width, height)
  glClearColor(0.2, 0.3, 0.3, 1.0)
  glClear(GLenum(GL_COLOR_BUFFER_BIT))

  glMatrixMode(GLenum(GL_PROJECTION))
  glLoadIdentity()
  glOrtho(-ratio, ratio, -1.0, 1.0, 1.0, -1.0)
  glMatrixMode(GLenum(GL_MODELVIEW))

  glLoadIdentity()
  glRotatef(Float(glfwGetTime()) * 30.0, 0.0, 0.0, 1.0)

  glBegin(GLenum(GL_TRIANGLES))
  glColor3f(1.0, 0.0, 0.0)
  glVertex3f(-0.6, -0.4, 0.0)
  glColor3f(0.0, 1.0, 0.0)
  glVertex3f(0.6, -0.4, 0.0)
  glColor3f(0.0, 0.0, 1.0)
  glVertex3f(0.0, 0.6, 0.0)
  glEnd()

}
