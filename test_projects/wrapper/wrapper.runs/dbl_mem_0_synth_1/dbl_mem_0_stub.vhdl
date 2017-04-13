-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Wed Apr 12 20:40:02 2017
-- Host        : matt-samsung running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dbl_mem_0_stub.vhdl
-- Design      : dbl_mem_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    in_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    out_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    in_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    trigger : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    wren : in STD_LOGIC;
    out_data : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "in_addr[31:0],out_addr[31:0],in_data[31:0],trigger,rst,clk,wren,out_data[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dbl_mem_top,Vivado 2016.4";
begin
end;
