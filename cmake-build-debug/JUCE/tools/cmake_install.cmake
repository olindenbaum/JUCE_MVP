# Install script for directory: /cygdrive/c/Users/Oscar/Documents/Projects/fyp/JUCE_Tempometer/JUCE

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump.exe")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/cygdrive/c/Users/Oscar/Documents/Projects/fyp/JUCE_Tempometer/cmake-build-debug/JUCE/tools/modules/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/cygdrive/c/Users/Oscar/Documents/Projects/fyp/JUCE_Tempometer/cmake-build-debug/JUCE/tools/extras/Build/cmake_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/JUCE-7.0.2" TYPE FILE FILES
    "/cygdrive/c/Users/Oscar/Documents/Projects/fyp/JUCE_Tempometer/cmake-build-debug/JUCE/tools/JUCEConfigVersion.cmake"
    "/cygdrive/c/Users/Oscar/Documents/Projects/fyp/JUCE_Tempometer/cmake-build-debug/JUCE/tools/JUCEConfig.cmake"
    "/cygdrive/c/Users/Oscar/Documents/Projects/fyp/JUCE_Tempometer/JUCE/extras/Build/CMake/JUCECheckAtomic.cmake"
    "/cygdrive/c/Users/Oscar/Documents/Projects/fyp/JUCE_Tempometer/JUCE/extras/Build/CMake/JUCEHelperTargets.cmake"
    "/cygdrive/c/Users/Oscar/Documents/Projects/fyp/JUCE_Tempometer/JUCE/extras/Build/CMake/JUCEModuleSupport.cmake"
    "/cygdrive/c/Users/Oscar/Documents/Projects/fyp/JUCE_Tempometer/JUCE/extras/Build/CMake/JUCEUtils.cmake"
    "/cygdrive/c/Users/Oscar/Documents/Projects/fyp/JUCE_Tempometer/JUCE/extras/Build/CMake/JuceLV2Defines.h.in"
    "/cygdrive/c/Users/Oscar/Documents/Projects/fyp/JUCE_Tempometer/JUCE/extras/Build/CMake/LaunchScreen.storyboard"
    "/cygdrive/c/Users/Oscar/Documents/Projects/fyp/JUCE_Tempometer/JUCE/extras/Build/CMake/PIPAudioProcessor.cpp.in"
    "/cygdrive/c/Users/Oscar/Documents/Projects/fyp/JUCE_Tempometer/JUCE/extras/Build/CMake/PIPAudioProcessorWithARA.cpp.in"
    "/cygdrive/c/Users/Oscar/Documents/Projects/fyp/JUCE_Tempometer/JUCE/extras/Build/CMake/PIPComponent.cpp.in"
    "/cygdrive/c/Users/Oscar/Documents/Projects/fyp/JUCE_Tempometer/JUCE/extras/Build/CMake/PIPConsole.cpp.in"
    "/cygdrive/c/Users/Oscar/Documents/Projects/fyp/JUCE_Tempometer/JUCE/extras/Build/CMake/RecentFilesMenuTemplate.nib"
    "/cygdrive/c/Users/Oscar/Documents/Projects/fyp/JUCE_Tempometer/JUCE/extras/Build/CMake/UnityPluginGUIScript.cs.in"
    "/cygdrive/c/Users/Oscar/Documents/Projects/fyp/JUCE_Tempometer/JUCE/extras/Build/CMake/checkBundleSigning.cmake"
    "/cygdrive/c/Users/Oscar/Documents/Projects/fyp/JUCE_Tempometer/JUCE/extras/Build/CMake/copyDir.cmake"
    "/cygdrive/c/Users/Oscar/Documents/Projects/fyp/JUCE_Tempometer/JUCE/extras/Build/CMake/juce_runtime_arch_detection.cpp"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/JUCE-7.0.2/LV2_HELPER.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/JUCE-7.0.2/LV2_HELPER.cmake"
         "/cygdrive/c/Users/Oscar/Documents/Projects/fyp/JUCE_Tempometer/cmake-build-debug/JUCE/tools/CMakeFiles/Export/lib/cmake/JUCE-7.0.2/LV2_HELPER.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/JUCE-7.0.2/LV2_HELPER-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/JUCE-7.0.2/LV2_HELPER.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/JUCE-7.0.2" TYPE FILE FILES "/cygdrive/c/Users/Oscar/Documents/Projects/fyp/JUCE_Tempometer/cmake-build-debug/JUCE/tools/CMakeFiles/Export/lib/cmake/JUCE-7.0.2/LV2_HELPER.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/JUCE-7.0.2" TYPE FILE FILES "/cygdrive/c/Users/Oscar/Documents/Projects/fyp/JUCE_Tempometer/cmake-build-debug/JUCE/tools/CMakeFiles/Export/lib/cmake/JUCE-7.0.2/LV2_HELPER-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/cygdrive/c/Users/Oscar/Documents/Projects/fyp/JUCE_Tempometer/cmake-build-debug/JUCE/tools/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
