library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
library work;
use work.fixed_pkg.all;

USE work.heap_arr_pkg.all;

entity MAC is
    generic(input_size : integer := 15);
    port(
        input : array_stdvec (input_size-1 downto 0);
        weights : array_stdvec (input_size-1 downto 0);
        final : out sfixed(char_size-1 downto -mantissa_size)
    );
end MAC;

architecture arch of MAC is
signal products : array_prod(input_size-1 downto 0);
signal small_products : array_UI(input_size-1 downto 0);

begin

GEN1: for i in 0 to input_size-1 generate
products(i) <= to_sfixed(input(i), char_size-1, -mantissa_size) * to_sfixed(weights(i), char_size-1, -mantissa_size);
small_products(i) <= products(i)(char_size-1 downto -mantissa_size);
end generate;

process(small_products)
variable temp_sum : sfixed(char_size-1 downto -mantissa_size);
variable temp : sfixed(char_size downto -mantissa_size);
begin
temp_sum := to_sfixed(0, char_size-1, -mantissa_size);
temp := to_sfixed(0, char_size, -mantissa_size);
LOOP1: for i in 0 to input_size-1 loop
temp := temp_sum + small_products(i);
temp_sum := temp (char_size-1 downto -mantissa_size);
end loop;
final <= temp_sum;
end process;

end arch;

