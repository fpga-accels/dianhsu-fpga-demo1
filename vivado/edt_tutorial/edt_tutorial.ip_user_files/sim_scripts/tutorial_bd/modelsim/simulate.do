onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xil_defaultlib -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -L xpm -lib xil_defaultlib xil_defaultlib.tutorial_bd xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {tutorial_bd.udo}

run -all

quit -force
