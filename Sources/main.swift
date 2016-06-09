import COpenGL
import CGLFW3

let WIDTH:GLsizei = 640, HEIGHT:GLsizei = 480

func main()
{
	glfwInit()
	defer {glfwTerminate()}

	let window = glfwCreateWindow(WIDTH, HEIGHT, "LearnSwiftGL", nil, nil)
	guard window != nil else
	{
		print("Failed to create GLFW window")
		return
	}
	glfwMakeContextCurrent(window)

	glViewport(0, 0, WIDTH, HEIGHT)

	while glfwWindowShouldClose(window) == GL_FALSE
	{
		var ratio: Double
		var width: GLsizei = 0
		var height: GLsizei = 0

		glfwGetFramebufferSize(window, &width, &height);
		ratio = Double(width/height)

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

		glfwSwapBuffers(window)
		glfwPollEvents()
	}

	glfwDestroyWindow(window)
	glfwTerminate()
}

main()
