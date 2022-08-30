-- premake5.lua
workspace "HelloWorld"
   configurations { "Debug" }

project "HelloWorld"
   kind "ConsoleApp"
   language "C++"
   targetdir "x64/%{cfg.buildcfg}"

   files { "**.cpp", "**.rc" }

   filter "configurations:Debug"
      defines { "DEBUG" }
      symbols "On"