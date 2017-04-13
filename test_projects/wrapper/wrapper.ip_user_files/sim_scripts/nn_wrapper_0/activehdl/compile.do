vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vcom -work xil_defaultlib -93 \
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
"../../../../wrapper.srcs/sources_1/ip/nn_wrapper_0/sim/nn_wrapper_0.vhd" \


