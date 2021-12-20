include "msdfgen"

project "msdf-atlas-gen"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
    staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"msdf-atlas-gen/**.h",
    	"msdf-atlas-gen/**.hpp",
    	"msdf-atlas-gen/**.cpp"
	}

	includedirs
	{
		"msdf-atlas-gen",
		"msdfgen",
		"msdfgen/include"
	}

	defines
	{
		"_CRT_SECURE_NO_WARNINGS"
	}

	links
	{
		"msdfgen"
	}

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug-OpenGL"
		runtime "Debug"
		symbols "on"

	filter "configurations:Debug-Vulkan"
		runtime "Debug"
		symbols "on"

	filter "configurations:Debug-DX11"
		runtime "Debug"
		symbols "on"

	filter "configurations:Debug-DX12"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release-OpenGL"
		runtime "Release"
		optimize "on"

	filter "configurations:Release-Vulkan"
		runtime "Release"
		optimize "on"
		
	filter "configurations:Release-DX11"
		runtime "Release"
		optimize "on"

	filter "configurations:Release-DX12"
		runtime "Release"
		optimize "on"
