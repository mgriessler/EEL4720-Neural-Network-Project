// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Wed Apr 12 22:21:38 2017
// Host        : matt-samsung running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/Matthew/SkyDrive/_school/spring 2017 UF/EEL4720 09BC
//               Reconfig/project/EEL4720-Neural-Network-Project/ip_repo/myip_1.0/src/nn_user_app_0/nn_user_app_0_stub.v}
// Design      : nn_user_app_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "user_app,Vivado 2016.4" *)
module nn_user_app_0(clk, rst, mmap_wr_en, mmap_wr_addr, mmap_wr_data, 
  mmap_rd_en, mmap_rd_addr, mmap_rd_data)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,mmap_wr_en,mmap_wr_addr[17:0],mmap_wr_data[31:0],mmap_rd_en,mmap_rd_addr[17:0],mmap_rd_data[31:0]" */;
  input clk;
  input rst;
  input mmap_wr_en;
  input [17:0]mmap_wr_addr;
  input [31:0]mmap_wr_data;
  input mmap_rd_en;
  input [17:0]mmap_rd_addr;
  output [31:0]mmap_rd_data;
endmodule
