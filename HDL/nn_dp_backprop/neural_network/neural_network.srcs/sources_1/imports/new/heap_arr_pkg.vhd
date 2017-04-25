library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
library work;
use work.fixed_pkg.all;

PACKAGE heap_arr_pkg IS
    constant input_layer_size : integer := 4;
    constant hidden_layer_size : integer := 4;
    constant output_layer_size : integer := 3;
    constant char_size : integer := 8;
    constant mantissa_size : integer := 8;
    type array_UI is array (natural range <>) of sfixed (char_size-1 downto -mantissa_size);
    type array_prod is array (natural range <>) of sfixed (2*char_size-1 downto -2*mantissa_size);
    type array_stdvec is array (natural range <>) of std_logic_vector ((mantissa_size+char_size)-1 downto 0);
    type array_stdvec3 is array (natural range <>) of array_stdvec (output_layer_size-1 downto 0);
    type array_stdvec15 is array (natural range <>) of array_stdvec (hidden_layer_size-1 downto 0);
    type array_stdvec4 is array (natural range <>) of array_stdvec (input_layer_size-1 downto 0);
END; 

