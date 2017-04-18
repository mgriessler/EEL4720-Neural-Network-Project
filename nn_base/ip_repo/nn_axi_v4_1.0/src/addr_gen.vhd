--Created by Nicholas Landy and Matthew Griessler
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
use work.config_pkg.all;

entity addr_gen is
generic (start_addr : integer := 0);
port(
    clk : in std_logic;
    en : in std_logic;
    rst : in std_logic;
    address : out DBL_ADDR
);
end addr_gen;

architecture addr of addr_gen is
signal addr : DBL_ADDR:= (others => '0');
begin

process(clk, rst, en)

begin
if(rst = '1') then
    addr <= std_logic_vector(to_unsigned(start_addr, addr'length));
elsif(clk = '1' and clk'event and en = '1') then
    addr <= std_logic_vector(unsigned(addr) + 1);
end if;
end process;
address <= addr;
end addr;
