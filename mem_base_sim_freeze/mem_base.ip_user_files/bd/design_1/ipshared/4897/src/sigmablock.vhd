library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
library work;
use work.fixed_pkg.all;

USE work.heap_arr_pkg.all;


entity sigmablock is
port(
input : in sfixed(char_size-1 downto -mantissa_size);
sig : out sfixed(char_size-1 downto -mantissa_size);
sigprime : out sfixed(char_size-1 downto -mantissa_size)
);
end sigmablock;

architecture sig of sigmablock is

component absfixed is
port(
input : in sfixed(char_size-1 downto -mantissa_size);
output : out sfixed (char_size-1 downto -mantissa_size)
);
end component;

signal mag : sfixed(char_size-1 downto -mantissa_size);
begin
abso: absfixed port map(input => input, output => mag);
sig <= resize(to_sfixed(0.5, char_size-1, -mantissa_size)+input * to_sfixed(0.5, char_size-1, -mantissa_size)/(to_sfixed(1, char_size-1, -mantissa_size)+mag), char_size-1, -mantissa_size);
sigprime <= resize(to_sfixed(0.5, char_size-1, -mantissa_size)/((mag+to_sfixed(1, char_size-1, -mantissa_size))*(mag+to_sfixed(1, char_size-1, -mantissa_size))), char_size-1, -mantissa_size);
end sig;
