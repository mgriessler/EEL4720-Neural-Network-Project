library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity design_1_wrapper_tb is
end;

architecture bench of design_1_wrapper_tb is

  component design_1_wrapper
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
  end component;

  signal MEMA_PORTA_addr: STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MEMA_PORTA_clk: STD_LOGIC;
  signal MEMA_PORTA_din: STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MEMA_PORTA_dout: STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MEMA_PORTA_en: STD_LOGIC;
  signal MEMA_PORTA_rst: STD_LOGIC;
  signal MEMA_PORTA_we: STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MEMB_PORTA_addr: STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MEMB_PORTA_clk: STD_LOGIC;
  signal MEMB_PORTA_din: STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MEMB_PORTA_dout: STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MEMB_PORTA_en: STD_LOGIC;
  signal MEMB_PORTA_rst: STD_LOGIC;
  signal MEMB_PORTA_we: STD_LOGIC_VECTOR ( 3 downto 0 ) ;

begin

  uut: design_1_wrapper port map ( MEMA_PORTA_addr => MEMA_PORTA_addr,
                                   MEMA_PORTA_clk  => MEMA_PORTA_clk,
                                   MEMA_PORTA_din  => MEMA_PORTA_din,
                                   MEMA_PORTA_dout => MEMA_PORTA_dout,
                                   MEMA_PORTA_en   => MEMA_PORTA_en,
                                   MEMA_PORTA_rst  => MEMA_PORTA_rst,
                                   MEMA_PORTA_we   => MEMA_PORTA_we,
                                   MEMB_PORTA_addr => MEMB_PORTA_addr,
                                   MEMB_PORTA_clk  => MEMB_PORTA_clk,
                                   MEMB_PORTA_din  => MEMB_PORTA_din,
                                   MEMB_PORTA_dout => MEMB_PORTA_dout,
                                   MEMB_PORTA_en   => MEMB_PORTA_en,
                                   MEMB_PORTA_rst  => MEMB_PORTA_rst,
                                   MEMB_PORTA_we   => MEMB_PORTA_we );

  stimulus: process
  begin
  
    -- Put initialisation code here


    -- Put test bench stimulus code here

    wait;
  end process;


end;
