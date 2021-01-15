# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\dianhsu\workspace\hw_platform\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\dianhsu\workspace\hw_platform\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {hw_platform}\
-hw {C:\Users\dianhsu\Desktop\FPGA\edt_tutorial\tutorial_bd_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -fsbl-target {psu_cortexa53_0} -out {C:/Users/dianhsu/workspace}

platform write
platform generate -domains 
platform active {hw_platform}
platform generate
platform active {hw_platform}
platform config -updatehw {C:/Users/dianhsu/Desktop/FPGA/edt_tutorial/tutorial_bd_wrapper.xsa}
platform generate -domains 
platform clean
platform generate
domain active {zynq_fsbl}
bsp reload
domain active {standalone_domain}
bsp reload
platform clean
platform generate
platform config -updatehw {C:/Users/dianhsu/Desktop/FPGA/edt_tutorial/tutorial_bd_wrapper.xsa}
platform generate -domains 
platform clean
platform generate
platform write
platform active {hw_platform}
platform config -updatehw {C:/Users/dianhsu/Desktop/FPGA/edt_tutorial/tutorial_bd_wrapper.xsa}
platform clean
platform generate
