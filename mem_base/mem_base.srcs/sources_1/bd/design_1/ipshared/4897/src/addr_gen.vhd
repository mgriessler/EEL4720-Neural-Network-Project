--Created by Nicholas Landy and Matthew Griessler
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity addr_gen is
generic (
    ADDR_WIDTH : integer := 32
    );
port(
    clk : in std_logic;
    en : in std_logic;
    rst : in std_logic;
    address : out std_logic_vector(ADDR_WIDTH-1 downto 0)
);
end addr_gen;

architecture addr of addr_gen is
    signal addr : std_logic_vector(ADDR_WIDTH-1 downto 0) := (others => '0');
begin
    process(clk, rst, en)
    begin
        if(rst = '1') then
            addr <= (others => '0');
        elsif(rising_edge(clk) and en = '1') then
            addr <= std_logic_vector(unsigned(addr) + 1);
        end if;
    end process;
    address <= addr;
end addr;
