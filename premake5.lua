project "glfw"
	kind "StaticLib"
	language "c"
	staticruntime "on"
	
	location "%{wks.location}/Intermediate/ProjectFiles"
	targetdir ("%{wks.location}/Binaries/" ..outputdir.. "/%{prj.name}")
	objdir    ("%{wks.location}/Intermediate/Build/" ..outputdir.. "/%{prj.name}")

	files
	{
		"src/internal.h",
		"src/mappings.h",
		"src/context.c",
		"src/init.c",
		"src/input.c",
		"src/monitor.c",
		"src/vulkan.c",
		"src/window.c"
	}

	filter "system:windows"
		systemversion "latest"

		files
		{
			"include/glfw/glfw3.h",
			"include/glfw/glfw3native.h",
			"src/win32_platform.h",
			"src/win32_joystick.h",
			"src/wgl_context.h",
			"src/egl_context.h", 
			"src/osmesa_context.h", 
			"src/win32_init.c",
			"src/win32_joystick.c",
			"src/win32_monitor.c",
			"src/win32_time.c",
			"src/win32_thread.c",
			"src/win32_window.c",
			"src/wgl_context.c",
			"src/egl_context.c",
			"src/osmesa_context.c"
		}

		defines
		{
			"_GLFW_WIN32",
			"_CRT_SECURE_NO_WARNINGS"
		}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Shipping"
		runtime "Release"
		optimize "on"