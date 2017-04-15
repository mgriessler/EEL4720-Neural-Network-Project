-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Wed Apr 12 22:21:38 2017
-- Host        : matt-samsung running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {c:/Users/Matthew/SkyDrive/_school/spring 2017 UF/EEL4720 09BC
--               Reconfig/project/EEL4720-Neural-Network-Project/ip_repo/myip_1.0/src/nn_user_app_0/nn_user_app_0_stub.vhdl}
-- Design      : nn_user_app_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nn_user_app_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    mmap_wr_en : in STD_LOGIC;
    mmap_wr_addr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    mmap_wr_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mmap_rd_en : in STD_LOGIC;
    mmap_rd_addr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    mmap_rd_data : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end nn_user_app_0;

architecture stub of nn_user_app_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,mmap_wr_en,mmap_wr_addr[17:0],mmap_wr_data[31:0],mmap_rd_en,mmap_rd_addr[17:0],mmap_rd_data[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "user_app,Vivado 2016.4";
begin
end;
