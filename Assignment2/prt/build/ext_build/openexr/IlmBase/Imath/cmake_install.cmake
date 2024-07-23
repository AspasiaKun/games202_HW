# Install script for directory: /Users/bytedance/Desktop/WorkSpace/games202 hw/Assignment2/prt/ext/openexr/IlmBase/Imath

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
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/bytedance/Desktop/WorkSpace/games202 hw/Assignment2/prt/build/ext_build/openexr/IlmBase/Imath/libImath.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libImath.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libImath.a")
    execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libImath.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/Users/bytedance/Desktop/WorkSpace/games202 hw/Assignment2/prt/build/ext_build/openexr/IlmBase/Imath/CMakeFiles/Imath.dir/install-cxx-module-bmi-Release.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenEXR" TYPE FILE FILES
    "/Users/bytedance/Desktop/WorkSpace/games202 hw/Assignment2/prt/ext/openexr/IlmBase/Imath/ImathBoxAlgo.h"
    "/Users/bytedance/Desktop/WorkSpace/games202 hw/Assignment2/prt/ext/openexr/IlmBase/Imath/ImathBox.h"
    "/Users/bytedance/Desktop/WorkSpace/games202 hw/Assignment2/prt/ext/openexr/IlmBase/Imath/ImathColorAlgo.h"
    "/Users/bytedance/Desktop/WorkSpace/games202 hw/Assignment2/prt/ext/openexr/IlmBase/Imath/ImathColor.h"
    "/Users/bytedance/Desktop/WorkSpace/games202 hw/Assignment2/prt/ext/openexr/IlmBase/Imath/ImathEuler.h"
    "/Users/bytedance/Desktop/WorkSpace/games202 hw/Assignment2/prt/ext/openexr/IlmBase/Imath/ImathExc.h"
    "/Users/bytedance/Desktop/WorkSpace/games202 hw/Assignment2/prt/ext/openexr/IlmBase/Imath/ImathExport.h"
    "/Users/bytedance/Desktop/WorkSpace/games202 hw/Assignment2/prt/ext/openexr/IlmBase/Imath/ImathForward.h"
    "/Users/bytedance/Desktop/WorkSpace/games202 hw/Assignment2/prt/ext/openexr/IlmBase/Imath/ImathFrame.h"
    "/Users/bytedance/Desktop/WorkSpace/games202 hw/Assignment2/prt/ext/openexr/IlmBase/Imath/ImathFrustum.h"
    "/Users/bytedance/Desktop/WorkSpace/games202 hw/Assignment2/prt/ext/openexr/IlmBase/Imath/ImathFrustumTest.h"
    "/Users/bytedance/Desktop/WorkSpace/games202 hw/Assignment2/prt/ext/openexr/IlmBase/Imath/ImathFun.h"
    "/Users/bytedance/Desktop/WorkSpace/games202 hw/Assignment2/prt/ext/openexr/IlmBase/Imath/ImathGL.h"
    "/Users/bytedance/Desktop/WorkSpace/games202 hw/Assignment2/prt/ext/openexr/IlmBase/Imath/ImathGLU.h"
    "/Users/bytedance/Desktop/WorkSpace/games202 hw/Assignment2/prt/ext/openexr/IlmBase/Imath/ImathHalfLimits.h"
    "/Users/bytedance/Desktop/WorkSpace/games202 hw/Assignment2/prt/ext/openexr/IlmBase/Imath/ImathInt64.h"
    "/Users/bytedance/Desktop/WorkSpace/games202 hw/Assignment2/prt/ext/openexr/IlmBase/Imath/ImathInterval.h"
    "/Users/bytedance/Desktop/WorkSpace/games202 hw/Assignment2/prt/ext/openexr/IlmBase/Imath/ImathLimits.h"
    "/Users/bytedance/Desktop/WorkSpace/games202 hw/Assignment2/prt/ext/openexr/IlmBase/Imath/ImathLineAlgo.h"
    "/Users/bytedance/Desktop/WorkSpace/games202 hw/Assignment2/prt/ext/openexr/IlmBase/Imath/ImathLine.h"
    "/Users/bytedance/Desktop/WorkSpace/games202 hw/Assignment2/prt/ext/openexr/IlmBase/Imath/ImathMath.h"
    "/Users/bytedance/Desktop/WorkSpace/games202 hw/Assignment2/prt/ext/openexr/IlmBase/Imath/ImathMatrixAlgo.h"
    "/Users/bytedance/Desktop/WorkSpace/games202 hw/Assignment2/prt/ext/openexr/IlmBase/Imath/ImathMatrix.h"
    "/Users/bytedance/Desktop/WorkSpace/games202 hw/Assignment2/prt/ext/openexr/IlmBase/Imath/ImathNamespace.h"
    "/Users/bytedance/Desktop/WorkSpace/games202 hw/Assignment2/prt/ext/openexr/IlmBase/Imath/ImathPlane.h"
    "/Users/bytedance/Desktop/WorkSpace/games202 hw/Assignment2/prt/ext/openexr/IlmBase/Imath/ImathPlatform.h"
    "/Users/bytedance/Desktop/WorkSpace/games202 hw/Assignment2/prt/ext/openexr/IlmBase/Imath/ImathQuat.h"
    "/Users/bytedance/Desktop/WorkSpace/games202 hw/Assignment2/prt/ext/openexr/IlmBase/Imath/ImathRandom.h"
    "/Users/bytedance/Desktop/WorkSpace/games202 hw/Assignment2/prt/ext/openexr/IlmBase/Imath/ImathRoots.h"
    "/Users/bytedance/Desktop/WorkSpace/games202 hw/Assignment2/prt/ext/openexr/IlmBase/Imath/ImathShear.h"
    "/Users/bytedance/Desktop/WorkSpace/games202 hw/Assignment2/prt/ext/openexr/IlmBase/Imath/ImathSphere.h"
    "/Users/bytedance/Desktop/WorkSpace/games202 hw/Assignment2/prt/ext/openexr/IlmBase/Imath/ImathVecAlgo.h"
    "/Users/bytedance/Desktop/WorkSpace/games202 hw/Assignment2/prt/ext/openexr/IlmBase/Imath/ImathVec.h"
    )
endif()

