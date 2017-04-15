vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/blk_mem_gen_v8_3_5

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap blk_mem_gen_v8_3_5 activehdl/blk_mem_gen_v8_3_5

vlog -work xil_defaultlib  -sv2k12 \
"C:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_3_5  -v2k5 \
"../../../ipstatic/ipshared/6273/simulation/blk_mem_gen_v8_3.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../myip_1.0/src/nn_user_app_0/src/dbl_mem_0/src/design_1_blk_mem_gen_0_1/sim/design_1_blk_mem_gen_0_1.v" \
"../../../../myip_1.0/src/nn_user_app_0/src/dbl_mem_0/src/design_1_blk_mem_gen_1_0/sim/design_1_blk_mem_gen_1_0.v" \

vcom -work xil_defaultlib -93 \
"../../../../myip_1.0/src/nn_user_app_0/src/dbl_mem_0/src/design_1.vhd" \
"../../../../myip_1.0/src/nn_user_app_0/src/dbl_mem_0/src/mux_2_1.vhd" \
"../../../../myip_1.0/src/nn_user_app_0/src/dbl_mem_0/src/dblbufswitch.vhd" \
"../../../../myip_1.0/src/nn_user_app_0/src/dbl_mem_0/src/design_1_wrapper.vhd" \
"../../../../myip_1.0/src/nn_user_app_0/src/dbl_mem_0/src/dbl_mem_top.vhd" \
"../../../../myip_1.0/src/nn_user_app_0/src/dbl_mem_0/sim/dbl_mem_0.vhd" \
"../../../ipstatic/work/src/fixed_float_types_c.vhd" \
"../../../ipstatic/work/src/fixed_pkg_c.vhd" \
"../../../ipstatic/work/src/heap_arr_pkg.vhd" \
"../../../ipstatic/work/src/absfixed.vhd" \
"../../../ipstatic/work/src/MAC.vhd" \
"../../../ipstatic/work/src/sigmablock.vhd" \
"../../../ipstatic/work/src/neuron.vhd" \
"../../../ipstatic/work/src/neural_layer.vhd" \
"../../../ipstatic/work/src/hidden_layer.vhd" \
"../../../ipstatic/work/src/neural_network.vhd" \
"../../../ipstatic/work/src/neural_network_top.vhd" \
"../../../ipstatic/work/src/nn_wrapper.vhd" \
"../../../../myip_1.0/src/nn_user_app_0/src/nn_wrapper_0/sim/nn_wrapper_0.vhd" \
"../../../../myip_1.0/src/nn_user_app_0/src/config_pkg.vhd" \
"../../../../myip_1.0/src/nn_user_app_0/src/mem_map.vhd" \
"../../../../myip_1.0/src/nn_user_app_0/src/user_app.vhd" \
"../../../../myip_1.0/src/nn_user_app_0/sim/nn_user_app_0.vhd" \

vlog -work xil_defaultlib "glbl.v"

