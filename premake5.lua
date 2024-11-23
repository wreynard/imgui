-- imgui/premake5.lua

	-------------------------------
	-- [ PROJECT CONFIGURATION ] --
	-------------------------------
	project "imgui"
		kind "StaticLib"
		language "C++"
		cppdialect "C++20"
		targetdir ("%{prj.location}/bin/%{cfg.platform}/%{cfg.buildcfg}")
		objdir "%{prj.location}/obj/%{prj.name}/%{cfg.platform}/%{cfg.buildcfg}"

		local srcDir = "./"

		files
		{
			srcDir .. "*.h",
			srcDir .. "*.hpp",
			srcDir .. "*.inl",
			srcDir .. "*.c",
			srcDir .. "*.cpp",
			srcDir .. "backends/imgui_impl_dx11.h",
			srcDir .. "backends/imgui_impl_dx11.cpp",
			srcDir .. "backends/imgui_impl_dx12.h",
			srcDir .. "backends/imgui_impl_dx12.cpp",
			srcDir .. "backends/imgui_impl_win32.h",
			srcDir .. "backends/imgui_impl_win32.cpp",
		}

		includedirs { srcDir }
