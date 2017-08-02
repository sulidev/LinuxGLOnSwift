import PackageDescription

let package = Package(
	name: "LinuxGLOnSwift",
	dependencies: [
	  .Package(url: "https://github.com/sulidev/COpenGL.git", "1.0.1"),
		.Package(url: "https://github.com/SwiftGL/CGLFWLinux.git", majorVersion: 1)
	]
)
