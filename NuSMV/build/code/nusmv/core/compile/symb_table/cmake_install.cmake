# Install script for directory: /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/code/nusmv/core/compile/symb_table

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
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/code/nusmv/core/compile/symb_table" TYPE FILE FILES "/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/code/nusmv/core/compile/symb_table/NFunction.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/code/nusmv/core/compile/symb_table" TYPE FILE FILES "/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/code/nusmv/core/compile/symb_table/SymbCache.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/code/nusmv/core/compile/symb_table" TYPE FILE FILES "/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/code/nusmv/core/compile/symb_table/SymbLayer.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/code/nusmv/core/compile/symb_table" TYPE FILE FILES "/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/code/nusmv/core/compile/symb_table/symb_table.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/code/nusmv/core/compile/symb_table" TYPE FILE FILES "/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/code/nusmv/core/compile/symb_table/SymbType_private.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/code/nusmv/core/compile/symb_table" TYPE FILE FILES "/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/code/nusmv/core/compile/symb_table/ResolveSymbol.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/code/nusmv/core/compile/symb_table" TYPE FILE FILES "/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/code/nusmv/core/compile/symb_table/SymbCache_private.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/code/nusmv/core/compile/symb_table" TYPE FILE FILES "/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/code/nusmv/core/compile/symb_table/SymbLayer_private.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/code/nusmv/core/compile/symb_table" TYPE FILE FILES "/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/code/nusmv/core/compile/symb_table/SymbTable.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/code/nusmv/core/compile/symb_table" TYPE FILE FILES "/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/code/nusmv/core/compile/symb_table/SymbType.h")
endif()

