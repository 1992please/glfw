project "GLFW"
	kind "static"
	language "c"

	targetdir ("Binaries/" ..outputdir.. "/%{prj.name}")
   	objdir    ("Binaries_Obj/" ..outputdir.. "/%{prj.name}")

   	files
   	{
		"internal.h",
		"mappings.h",
		"context.c",
		"init.c",
		"input.c",
		"monitor.c",
		"vulkan.c",
		"window.c"
   	}

   	filter "system:windows"
   		systemversion "latest"
		staticruntime "On"

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
	   		"_GLFW_WIN32"
	   	}
	   	
	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"