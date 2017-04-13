vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm
vlib msim/blk_mem_gen_v8_3_5

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm
vmap blk_mem_gen_v8_3_5 msim/blk_mem_gen_v8_3_5

vlog -work xil_defaultlib -64 -sv \
"C:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_3_5 -64 \
"../../../ipstatic/ipshared/6273/simulation/blk_mem_gen_v8_3.v" \

vlog -work xil_defaultlib -64 \
"../../../../wrapper.srcs/sources_1/ip/dbl_mem_0/src/design_1_blk_mem_gen_0_1/sim/design_1_blk_mem_gen_0_1.v" \
"../../../../wrapper.srcs/sources_1/ip/dbl_mem_0/src/design_1_blk_mem_gen_1_0/sim/design_1_blk_mem_gen_1_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../../wrapper.srcs/sources_1/ip/dbl_mem_0/src/design_1.vhd" \
"../../../../wrapper.srcs/sources_1/ip/dbl_mem_0/src/mux_2_1.vhd" \
"../../../../wrapper.srcs/sources_1/ip/dbl_mem_0/src/dblbufswitch.vhd" \
"../../../../wrapper.srcs/sources_1/ip/dbl_mem_0/src/design_1_wrapper.vhd" \
"../../../../wrapper.srcs/sources_1/ip/dbl_mem_0/src/dbl_mem_top.vhd" \
"../../../../wrapper.srcs/sources_1/ip/dbl_mem_0/sim/dbl_mem_0.vhd" \

vlog -work xil_defaultlib "glbl.v"

