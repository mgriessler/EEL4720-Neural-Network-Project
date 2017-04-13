library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
library work;
use work.fixed_pkg.all;

USE work.heap_arr_pkg.all;

entity sigmablock_tb is
end sigmablock_tb;

architecture tb of sigmablock_tb is
component sigmablock is
port(
input : in sfixed(15 downto -16);
sig : out sfixed(15 downto -16);
sigprime : out sfixed(15 downto -16)
);
end component;


--signal input, weights, output : array_UI(1 downto 0);
signal input, output, output_prime: sfixed(15 downto -16);
begin
uut: sigmablock --generic map(num_inputs => 2)
         --port map(input => input, weights => weights, output => output, final => final);
         port map(input => input, sig => output, sigprime => output_prime);
process
begin

input <= to_sfixed(0.5, 15, -16);
wait for 10 ns;
input <= to_sfixed(-0.5, 15, -16);


wait for 10 ns;

wait;
end process;


end tb;
