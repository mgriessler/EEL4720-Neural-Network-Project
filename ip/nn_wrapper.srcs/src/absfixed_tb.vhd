library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
library work;
use work.fixed_pkg.all;

USE work.heap_arr_pkg.all;

entity absfixed_tb is
end absfixed_tb;

architecture tb of absfixed_tb is
component absfixed is
port(
input : in sfixed(15 downto -16);
output : out sfixed (15 downto -16)
);
end component;


--signal input, weights, output : array_UI(1 downto 0);
signal input, output: sfixed(15 downto -16);
begin
uut: absfixed --generic map(num_inputs => 2)
         --port map(input => input, weights => weights, output => output, final => final);
         port map(input => input, output => output);
process
begin

input <= to_sfixed(0.5, 15, -16);
wait for 10 ns;
input <= to_sfixed(-0.5, 15, -16);


wait for 10 ns;

wait;
end process;


end tb;
