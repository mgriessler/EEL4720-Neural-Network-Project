vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/processing_system7_bfm_v2_0_5
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_10
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/fifo_generator_v13_1_3
vlib activehdl/axi_data_fifo_v2_1_10
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_11
vlib activehdl/axi_protocol_converter_v2_1_11

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap processing_system7_bfm_v2_0_5 activehdl/processing_system7_bfm_v2_0_5
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_10 activehdl/proc_sys_reset_v5_0_10
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_1_3 activehdl/fifo_generator_v13_1_3
vmap axi_data_fifo_v2_1_10 activehdl/axi_data_fifo_v2_1_10
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_11 activehdl/axi_register_slice_v2_1_11
vmap axi_protocol_converter_v2_1_11 activehdl/axi_protocol_converter_v2_1_11

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"C:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work processing_system7_bfm_v2_0_5  -v2k5 "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl/processing_system7_bfm_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/hdl/design_1.vhd" \
"../../../bd/design_1/hdl/nn_dp/lib/fixed_float_types_c.vhd" \
"../../../bd/design_1/hdl/nn_dp/lib/fixed_pkg_c.vhd" \
"../../../bd/design_1/hdl/nn_dp/lib/heap_arr_pkg.vhd" \
"../../../bd/design_1/hdl/nn_dp/absfixed.vhd" \
"../../../bd/design_1/hdl/nn_dp/sigmablock.vhd" \
"../../../bd/design_1/hdl/nn_dp/MAC.vhd" \
"../../../bd/design_1/hdl/nn_dp/neuron.vhd" \
"../../../bd/design_1/hdl/nn_dp/neural_layer.vhd" \
"../../../bd/design_1/hdl/nn_dp/hidden_layer.vhd" \
"../../../bd/design_1/hdl/nn_dp/neural_network.vhd" \
"../../../bd/design_1/hdl/nn_dp/neural_network_top.vhd" \
"../../../bd/design_1/hdl/user_app/config_pkg.vhd" \
"../../../bd/design_1/hdl/nn_dp/nn_wrapper.vhd" \
"../../../bd/design_1/hdl/user_app/mem_map.vhd" \
"../../../bd/design_1/hdl/user_app/ram.vhd" \
"../../../bd/design_1/hdl/user_app/user_app.vhd" \
"../../../bd/design_1/ipshared/30e3/hdl/nn_axi_v1_0_S00_AXI.vhd" \
"../../../bd/design_1/ipshared/30e3/hdl/nn_axi_v1_0.vhd" \
"../../../bd/design_1/ip/design_1_nn_axi_0_1/sim/design_1_nn_axi_0_1.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_10 -93 \
"../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/04b4/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7ee0/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_1_3  -v2k5 "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/564d/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_3 -93 \
"../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/564d/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_3  -v2k5 "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/564d/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work axi_data_fifo_v2_1_10  -v2k5 "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/39ba/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_11  -v2k5 "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/0b6b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_11  -v2k5 "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/df1b/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7dd0/hdl" "+incdir+../../../../nn_base.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vlog -work xil_defaultlib "glbl.v"

