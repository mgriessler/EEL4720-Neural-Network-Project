-makelib ies/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies/xpm \
  "C:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/blk_mem_gen_v8_3_5 \
  "../../../ipstatic/ipshared/6273/simulation/blk_mem_gen_v8_3.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../wrapper.srcs/sources_1/ip/dbl_mem_0/src/design_1_blk_mem_gen_0_1/sim/design_1_blk_mem_gen_0_1.v" \
  "../../../../wrapper.srcs/sources_1/ip/dbl_mem_0/src/design_1_blk_mem_gen_1_0/sim/design_1_blk_mem_gen_1_0.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../wrapper.srcs/sources_1/ip/dbl_mem_0/src/design_1.vhd" \
  "../../../../wrapper.srcs/sources_1/ip/dbl_mem_0/src/mux_2_1.vhd" \
  "../../../../wrapper.srcs/sources_1/ip/dbl_mem_0/src/dblbufswitch.vhd" \
  "../../../../wrapper.srcs/sources_1/ip/dbl_mem_0/src/design_1_wrapper.vhd" \
  "../../../../wrapper.srcs/sources_1/ip/dbl_mem_0/src/dbl_mem_top.vhd" \
  "../../../../wrapper.srcs/sources_1/ip/dbl_mem_0/sim/dbl_mem_0.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

