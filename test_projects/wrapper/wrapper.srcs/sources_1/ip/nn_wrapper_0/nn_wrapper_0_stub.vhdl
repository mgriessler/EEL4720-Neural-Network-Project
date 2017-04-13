-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Wed Apr 12 21:25:35 2017
-- Host        : matt-samsung running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {c:/Users/Matthew/SkyDrive/_school/spring 2017 UF/EEL4720 09BC
--               Reconfig/project/EEL4720-Neural-Network-Project/test_projects/wrapper/wrapper.srcs/sources_1/ip/nn_wrapper_0/nn_wrapper_0_stub.vhdl}
-- Design      : nn_wrapper_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nn_wrapper_0 is
  Port ( 
    input0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    input1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    input2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    input3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    final_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    final_1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    final_2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC
  );

end nn_wrapper_0;

architecture stub of nn_wrapper_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "input0[15:0],input1[15:0],input2[15:0],input3[15:0],final_0[15:0],final_1[15:0],final_2[15:0],clk";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "nn_wrapper,Vivado 2016.4";
begin
end;
