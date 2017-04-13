library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
library work;
use work.fixed_pkg.all;

USE work.heap_arr_pkg.all;

entity neural_layer_tb is
end neural_layer_tb;

architecture tb of neural_layer_tb is

component neural_layer is
generic(
num_inputs : integer := 15;
num_outputs : integer := 3
);
port(
        input : array_stdvec15 (num_outputs-1 downto 0);
        weights : array_stdvec15 (num_outputs-1 downto 0);
        b : in array_stdvec(num_outputs-1 downto 0);
        final : out array_stdvec(num_outputs-1 downto 0)
        
    );
end component;

signal input, weights : array_stdvec15(2 downto 0);
signal final, b : array_stdvec(2 downto 0);
begin
uut: neural_layer 
         port map(input => input, weights => weights, final => final, b => b);
process
begin

for i in 0 to 2 loop
for j in 0 to 14 loop
input(i)(j) <= std_logic_vector(to_unsigned(j*2**16, 32));
weights(i)(j) <= std_logic_vector(to_unsigned(j*2**16, 32));
end loop;
b(i) <= std_logic_vector(to_unsigned(30*2**16, 32));
end loop;


wait for 10 ns;

wait;
end process;


end tb;