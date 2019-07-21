# Install script for directory: /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/examples

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nusmv/examples" TYPE DIRECTORY FILES
    "/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/examples/abp"
    "/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/examples/example_irst"
    "/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/examples/prod-cons"
    "/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/examples/tcas"
    "/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/examples/guidance"
    "/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/examples/production-cell"
    "/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/examples/brp"
    "/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/examples/queue"
    "/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/examples/deadlock"
    "/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/examples/p-queue"
    "/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/examples/reactor"
    "/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/examples/example_cmu"
    "/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/examples/pci"
    "/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/examples/smv-dist"
    "/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/examples/msi"
    "/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/examples/bmc_tutorial"
    "/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/examples/m4"
    "/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/examples/psl-samples"
    REGEX "/CVS$" EXCLUDE REGEX "/[^/]*\\~$" EXCLUDE REGEX "/\\.[^/]*$" EXCLUDE)
endif()

