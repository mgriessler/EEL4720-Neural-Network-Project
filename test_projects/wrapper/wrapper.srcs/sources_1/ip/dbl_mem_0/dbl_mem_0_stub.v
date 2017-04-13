// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Wed Apr 12 20:40:03 2017
// Host        : matt-samsung running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/Matthew/SkyDrive/_school/spring 2017 UF/EEL4720 09BC
//               Reconfig/project/EEL4720-Neural-Network-Project/test_projects/wrapper/wrapper.srcs/sources_1/ip/dbl_mem_0/dbl_mem_0_stub.v}
// Design      : dbl_mem_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dbl_mem_top,Vivado 2016.4" *)
module dbl_mem_0(in_addr, out_addr, in_data, trigger, rst, clk, wren, 
  out_data)
/* synthesis syn_black_box black_box_pad_pin="in_addr[31:0],out_addr[31:0],in_data[31:0],trigger,rst,clk,wren,out_data[31:0]" */;
  input [31:0]in_addr;
  input [31:0]out_addr;
  input [31:0]in_data;
  input trigger;
  input rst;
  input clk;
  input wren;
  output [31:0]out_data;
endmodule
