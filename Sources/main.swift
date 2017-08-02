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

		demo1(width: width, height: height, ratio: ratio)

		glfwSwapBuffers(window)
		glfwPollEvents()
	}

	glfwDestroyWindow(window)
	glfwTerminate()
}

main()
