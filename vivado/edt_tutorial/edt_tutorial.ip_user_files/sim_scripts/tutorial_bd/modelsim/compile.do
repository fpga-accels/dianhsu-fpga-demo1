vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr "+incdir+../../../../edt_tutorial.gen/sources_1/bd/tutorial_bd/ipshared/ec67/hdl" "+incdir+../../../../edt_tutorial.gen/sources_1/bd/tutorial_bd/ipshared/34f8/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/tutorial_bd/ip/tutorial_bd_processing_system7_0_0/sim/tutorial_bd_processing_system7_0_0.v" \
"../../../bd/tutorial_bd/sim/tutorial_bd.v" \


vlog -work xil_defaultlib \
"glbl.v"

