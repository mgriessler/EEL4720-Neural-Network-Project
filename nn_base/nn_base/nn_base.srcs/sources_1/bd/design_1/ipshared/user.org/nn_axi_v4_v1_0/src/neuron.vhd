library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.fixed_pkg.all;

USE work.heap_arr_pkg.all;

entity neuron is
    generic(in_size: integer := 4);
    port(
   
        input : array_stdvec (in_size-1 downto 0);
        weights : array_stdvec (in_size-1 downto 0);
        b : in std_logic_vector((mantissa_size+char_size)-1 downto 0);
        final : out std_logic_vector((mantissa_size+char_size)-1 downto 0);
        finalprime : out std_logic_vector((mantissa_size+char_size)-1 downto 0)
        
    );
end neuron;

architecture arch of neuron is

component MAC is
    generic(input_size : integer := 15);
    port(
        input : array_stdvec (input_size-1 downto 0);
        weights : array_stdvec (input_size-1 downto 0);
        final : out sfixed(char_size-1 downto -mantissa_size)
    );
end component;

component sigmablock is
port(
input : in sfixed(char_size-1 downto -mantissa_size);
sig : out sfixed(char_size-1 downto -mantissa_size);
sigprime : out sfixed(char_size-1 downto -mantissa_size)
);
end component;

signal macout, plusb, fin, finp : sfixed(char_size-1 downto -mantissa_size);

begin
MC: MAC generic map(input_size => in_size) port map(input => input, weights => weights, final => macout);
plusb <= resize(macout + to_sfixed(b, char_size-1, -mantissa_size), char_size-1, -mantissa_size);
sig: sigmablock port map(input => plusb, sig => fin, sigprime => finp);
final <= std_logic_vector(fin);
finalprime <= std_logic_vector(finp);


end arch;