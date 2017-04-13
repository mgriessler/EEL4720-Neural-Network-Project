-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Wed Apr 12 21:25:25 2017
-- Host        : matt-samsung running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ nn_wrapper_0_stub.vhdl
-- Design      : nn_wrapper_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "input0[15:0],input1[15:0],input2[15:0],input3[15:0],final_0[15:0],final_1[15:0],final_2[15:0],clk";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "nn_wrapper,Vivado 2016.4";
begin
end;
