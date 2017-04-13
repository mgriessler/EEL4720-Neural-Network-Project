library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
library work;
use work.fixed_pkg.all;

USE work.heap_arr_pkg.all;


entity absfixed is
port(
input : in sfixed(char_size-1 downto -mantissa_size);
output : out sfixed (char_size-1 downto -mantissa_size)
);
end absfixed;

architecture ab of absfixed is

begin

output <= input when (input > to_sfixed(0, char_size-1, -mantissa_size)) else
          resize(input * to_sfixed(-1, char_size-1, -mantissa_size), char_size-1, -mantissa_size);

end ab;
