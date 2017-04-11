--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Mon Apr 10 16:53:58 2017
--Host        : matt-samsung running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    MEMA_PORTA_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MEMA_PORTA_clk : in STD_LOGIC;
    MEMA_PORTA_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MEMA_PORTA_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    MEMA_PORTA_en : in STD_LOGIC;
    MEMA_PORTA_rst : in STD_LOGIC;
    MEMA_PORTA_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    MEMB_PORTA_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MEMB_PORTA_clk : in STD_LOGIC;
    MEMB_PORTA_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MEMB_PORTA_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    MEMB_PORTA_en : in STD_LOGIC;
    MEMB_PORTA_rst : in STD_LOGIC;
    MEMB_PORTA_we : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    MEMB_PORTA_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MEMB_PORTA_clk : in STD_LOGIC;
    MEMB_PORTA_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MEMB_PORTA_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    MEMB_PORTA_en : in STD_LOGIC;
    MEMB_PORTA_rst : in STD_LOGIC;
    MEMB_PORTA_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    MEMA_PORTA_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MEMA_PORTA_clk : in STD_LOGIC;
    MEMA_PORTA_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MEMA_PORTA_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    MEMA_PORTA_en : in STD_LOGIC;
    MEMA_PORTA_rst : in STD_LOGIC;
    MEMA_PORTA_we : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      MEMA_PORTA_addr(31 downto 0) => MEMA_PORTA_addr(31 downto 0),
      MEMA_PORTA_clk => MEMA_PORTA_clk,
      MEMA_PORTA_din(31 downto 0) => MEMA_PORTA_din(31 downto 0),
      MEMA_PORTA_dout(31 downto 0) => MEMA_PORTA_dout(31 downto 0),
      MEMA_PORTA_en => MEMA_PORTA_en,
      MEMA_PORTA_rst => MEMA_PORTA_rst,
      MEMA_PORTA_we(3 downto 0) => MEMA_PORTA_we(3 downto 0),
      MEMB_PORTA_addr(31 downto 0) => MEMB_PORTA_addr(31 downto 0),
      MEMB_PORTA_clk => MEMB_PORTA_clk,
      MEMB_PORTA_din(31 downto 0) => MEMB_PORTA_din(31 downto 0),
      MEMB_PORTA_dout(31 downto 0) => MEMB_PORTA_dout(31 downto 0),
      MEMB_PORTA_en => MEMB_PORTA_en,
      MEMB_PORTA_rst => MEMB_PORTA_rst,
      MEMB_PORTA_we(3 downto 0) => MEMB_PORTA_we(3 downto 0)
    );
end STRUCTURE;
