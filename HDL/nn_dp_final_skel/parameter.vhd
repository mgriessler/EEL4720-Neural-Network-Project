library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
library work;
use work.fixed_pkg.all;

USE work.heap_arr_pkg.all;

entity parameters is
generic(
    num_inputs : integer := input_layer_size;
    num_hid : integer := hidden_layer_size;
    num_outputs : integer := output_layer_size
);
port(
    n : in std_logic_vector((mantissa_size+char_size)-1 downto 0);
    final : in array_stdvec(num_outputs-1 downto 0);
    final_prime_hid : in array_stdvec(num_hid-1 downto 0);
    final_prime_out: in array_stdvec(num_outputs-1 downto 0);
    
    weights_hid_init : in array_stdvec4 (num_hid-1 downto 0);
    weights_out_init : in array_stdvec15 (num_outputs-1 downto 0);
    b_hid_init : in array_stdvec(num_hid-1 downto 0);
    b_out_init : in array_stdvec(num_outputs-1 downto 0);
    
    weights_hid : out array_stdvec4 (num_hid-1 downto 0);
    weights_out : out array_stdvec15 (num_outputs-1 downto 0);
    b_hid : out array_stdvec(num_hid-1 downto 0);
    b_out : out array_stdvec(num_outputs-1 downto 0);
    
    initialize : in std_logic;
    backpropagation : in std_logic;
    clr : in std_logic;
    clk : in std_logic
);
end parameters;

architecture param of parameters is

begin

process(clk, clr)

begin
if (clr = '1') then
    weights_hid <= (others => (others => (others => '0')));
    weights_out <= (others => (others => (others => '0')));
    b_hid <= (others => (others => '0'));
    b_out <= (others => (others => '0'));
elsif (clk'event and clk = '1') then

    if(initialize = '1') then 
    weights_hid <= weights_hid_init;
    weights_out <= weights_out_init;
    b_hid <= b_hid_init;
    b_out <= b_out_init;
    end if;
end if;

end process;


end param;
