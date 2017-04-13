library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
library work;
use work.fixed_pkg.all;

USE work.heap_arr_pkg.all;

entity neuron_tb is
end neuron_tb;

architecture tb of neuron_tb is

component neuron_top is
port(
    input0 : in std_logic_vector((mantissa_size+char_size)-1 downto 0);
    input1 : in std_logic_vector((mantissa_size+char_size)-1 downto 0);
    input2 : in std_logic_vector((mantissa_size+char_size)-1 downto 0);
    input3 : in std_logic_vector((mantissa_size+char_size)-1 downto 0);
    
    weight0 : in std_logic_vector((mantissa_size+char_size)-1 downto 0);
    weight1 : in std_logic_vector((mantissa_size+char_size)-1 downto 0);
    weight2 : in std_logic_vector((mantissa_size+char_size)-1 downto 0);
    weight3 : in std_logic_vector((mantissa_size+char_size)-1 downto 0);
    
    b : in std_logic_vector((mantissa_size+char_size)-1 downto 0);
    final : out std_logic_vector((mantissa_size+char_size)-1 downto 0);
    finalprime : out std_logic_vector((mantissa_size+char_size)-1 downto 0)
        
    );
end component;
signal input, weight : array_stdvec (3 downto 0);
signal final, finalprime, b : std_logic_vector(15 downto 0);
begin
uut: neuron_top 
         port map(input0 => input(0), input1 => input(1) ,input2 => input(2), input3 => input(3),
                  weight0 => weight(0), weight1 => weight(1), weight2 => weight(2), weight3 => weight(3),
                  final => final, b => b, finalprime => finalprime);
process
begin

for i in 0 to 3 loop
input(i) <= std_logic_vector(to_unsigned(i*2**8, 16));
weight(i) <= std_logic_vector(to_unsigned(i*2**8, 16));
end loop;

b<= std_logic_vector(to_unsigned(30*2**8, 16));

wait for 10 ns;

wait;
end process;


end tb;