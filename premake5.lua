project "BX"
	kind "StaticLib"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"include/bx/allocator.h",
		"include/bx/bx.h",
		"include/bx/commandline.h",
		"include/bx/config.h",
		"include/bx/cpu.h",
		"include/bx/debug.h",
		"include/bx/easing.h",
		"include/bx/endian.h",
		"include/bx/error.h",
		"include/bx/file.h",
		"include/bx/filepath.h",
		"include/bx/float4x4_t.h",
		"include/bx/handlealloc.h",
		"include/bx/hash.h",
		"include/bx/macros.h",
		"include/bx/maputil.h",
		"include/bx/math.h",
		"include/bx/mpscqueue.h",
		"include/bx/mutex.h",
		"include/bx/os.h",
		"include/bx/pixelformat.h",
		"include/bx/platform.h",
		"include/bx/process.h",
		"include/bx/readerwriter.h",
		"include/bx/ringbuffer.h",
		"include/bx/rng.h",
		"include/bx/semaphore.h",
		"include/bx/settings.h",
		"include/bx/simd_t.h",
		"include/bx/sort.h",
		"include/bx/spscqueue.h",
		"include/bx/string.h",
		"include/bx/thread.h",
		"include/bx/timer.h",
		"include/bx/uint32_t.h",
		"include/bx/url.h",

		--include compat???

		"include/tinystl/allocator.h",
		"include/tinystl/buffer.h",
		"include/tinystl/hash.h",
		"include/tinystl/hash_base.h",
		"include/tinystl/new.h",
		"include/tinystl/stddef.h",
		"include/tinystl/string.h",
		"include/tinystl/traits.h",
		"include/tinystl/unordered_map.h",
		"include/tinystl/unordered_set.h",
		"include/tinystl/vector.h",

		"src/allocator.cpp",
		--"src/amalgamated.cpp", // amalgamated seems to a fast way to include all cpp files in src
		"src/bx.cpp",
		"src/bx_p.h",
		"src/commandline.cpp",
		"src/crtnone.cpp",
		"src/debug.cpp",
		"src/dtoa.cpp",
		"src/easing.cpp",
		"src/file.cpp",
		"src/filepath.cpp",
		"src/hash.cpp",
		"src/math.cpp",
		"src/mutex.cpp",
		"src/os.cpp",
		"src/process.cpp",
		"src/semaphore.cpp",
		"src/settings.cpp",
		"src/sort.cpp",
		"src/string.cpp",
		"src/thread.cpp",
		"src/timer.cpp",
		"src/url.cpp"


	}
	
	filter "system:windows"
		systemversion "latest"
		staticruntime "On"

		files
		{

		}

		defines 
		{ 
			"_CRT_SECURE_NO_WARNINGS"
		}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
