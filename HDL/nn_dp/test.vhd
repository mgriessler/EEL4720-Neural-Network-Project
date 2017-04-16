
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
library ieee_proposed;
use ieee_proposed.fixed_float_types.all;
use ieee_proposed.fixed_pkg.all;
 
entity test is
    Port ( a : in  std_logic;
           b : in  std_logic;
           v : in  sfixed(1 downto -4);
           y_doesnt : out std_logic;
           y_works  : out std_logic);
end test;
 
architecture Behavioral of test is
 
begin
   y_works  <= a when v(1) = '0' else b;
   y_doesnt <= a when v >= 0.0   else b;
end Behavioral;
