// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Wed Apr 12 21:25:35 2017
// Host        : matt-samsung running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/Matthew/SkyDrive/_school/spring 2017 UF/EEL4720 09BC
//               Reconfig/project/EEL4720-Neural-Network-Project/test_projects/wrapper/wrapper.srcs/sources_1/ip/nn_wrapper_0/nn_wrapper_0_stub.v}
// Design      : nn_wrapper_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "nn_wrapper,Vivado 2016.4" *)
module nn_wrapper_0(input0, input1, input2, input3, final_0, final_1, 
  final_2, clk)
/* synthesis syn_black_box black_box_pad_pin="input0[15:0],input1[15:0],input2[15:0],input3[15:0],final_0[15:0],final_1[15:0],final_2[15:0],clk" */;
  input [15:0]input0;
  input [15:0]input1;
  input [15:0]input2;
  input [15:0]input3;
  output [15:0]final_0;
  output [15:0]final_1;
  output [15:0]final_2;
  input clk;
endmodule
