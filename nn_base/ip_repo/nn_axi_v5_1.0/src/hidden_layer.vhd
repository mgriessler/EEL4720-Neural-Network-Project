library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.fixed_pkg.all;

USE work.heap_arr_pkg.all;

entity hidden_layer is
generic(
num_inputs : integer := 4;
num_outputs : integer := 10
);
port(
        input :in  array_stdvec (num_inputs-1 downto 0);
        weights : in array_stdvec4 (num_outputs-1 downto 0);
        b : in array_stdvec(num_outputs-1 downto 0);
        final : out array_stdvec(num_outputs-1 downto 0);
        finalprime : out array_stdvec(num_outputs-1 downto 0)
        
    );
end hidden_layer;

architecture hid of hidden_layer is

component neuron is
    generic(in_size: integer := 15);
    port(
   
        input : array_stdvec (in_size-1 downto 0);
        weights : array_stdvec (in_size-1 downto 0);
        b : in std_logic_vector((mantissa_size+char_size)-1 downto 0);
        final : out std_logic_vector((mantissa_size+char_size)-1 downto 0);
        finalprime : out std_logic_vector((mantissa_size+char_size)-1 downto 0)
        
    );
end component;

begin
GEN2:for i in 0 to num_outputs-1 generate
neu: neuron generic map (in_size => num_inputs) 
            port map(input => input, weights => weights(i), b => b(i), final => final(i), finalprime => finalprime(i));
end generate;

end hid;
