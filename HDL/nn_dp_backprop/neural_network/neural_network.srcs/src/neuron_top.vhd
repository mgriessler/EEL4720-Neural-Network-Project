library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.fixed_pkg.all;

USE work.heap_arr_pkg.all;

entity neuron_top is
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
end neuron_top;

architecture top of neuron_top is
component neuron is
    generic(in_size: integer := 4);
    port(
   
        input : array_stdvec (in_size-1 downto 0);
        weights : array_stdvec (in_size-1 downto 0);
        b : in std_logic_vector((mantissa_size+char_size)-1 downto 0);
        final : out std_logic_vector((mantissa_size+char_size)-1 downto 0);
        finalprime : out std_logic_vector((mantissa_size+char_size)-1 downto 0)
        
    );
end component;
signal input : array_stdvec (3 downto 0);
signal weight : array_stdvec (3 downto 0);
begin
input(0) <= input0;
input(1) <= input1;
input(2) <= input2;
input(3) <= input3;

weight(0) <= weight0;
weight(1) <= weight1;
weight(2) <= weight2;
weight(3) <= weight3;

neu: neuron generic map(in_size => 4)
            port map(input => input, weights => weight, b => b, final => final, finalprime => finalprime);


end top;
