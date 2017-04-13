library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
library work;
use work.fixed_pkg.all;

USE work.heap_arr_pkg.all;

entity MAC_tb is
end MAC_tb;

architecture tb of MAC_tb is

component MAC is
    port(
        input : array_stdvec (14 downto 0);
        weights : array_stdvec (14 downto 0);
        final : out sfixed(15 downto -16)
    );
end component;

signal input, weights : array_stdvec(14 downto 0);
signal final : sfixed(15 downto -16);
begin
uut: MAC 
         port map(input => input, weights => weights, final => final);
process
begin

for i in 0 to 14 loop
input(i) <= std_logic_vector(to_unsigned(i*2**16, 32));
weights(i) <= std_logic_vector(to_unsigned(i*2**16, 32));
end loop;

wait for 10 ns;

wait;
end process;


end tb;
