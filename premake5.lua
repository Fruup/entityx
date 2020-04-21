project "EntityX"
	location "entityx"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"

	targetdir "bin/%{cfg.buildcfg}"
	objdir "bin-int/%{cfg.buildcfg}"
	
	includedirs {}

	files {
		"*.h",
		"*.cc"
	}


	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		defines { "HZ_DEBUG", "ENET_DEBUG" }
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		defines { "HZ_RELEASE" }
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		defines { "HZ_DIST" }
		runtime "Release"
		optimize "on"
		