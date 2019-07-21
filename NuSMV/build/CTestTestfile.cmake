# CMake generated Testfile for 
# Source directory: /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV
# Build directory: /home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(short "/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/bin/NuSMV" "/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/examples/smv-dist/short.smv")
add_test(bmc "/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/build/bin/NuSMV" "-bmc" "/home/zhangjiaqi/Documents/NuSMV-2.6.0/NuSMV/examples/bmc/barrel5.smv")
subdirs(build-cudd)
subdirs(build-MiniSat)
subdirs(code/nusmv/core)
subdirs(code/nusmv/addons_core)
subdirs(code/nusmv/shell)
subdirs(doc)
subdirs(contrib)
subdirs(examples)
