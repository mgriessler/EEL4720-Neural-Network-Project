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
    inputs : in array_stdvec(num_inputs-1 downto 0);
    hid : in array_stdvec(num_hid-1 downto 0);
    final : in array_stdvec(num_outputs-1 downto 0);
    final_prime_hid : in array_stdvec(num_hid-1 downto 0);
    final_prime_out: in array_stdvec(num_outputs-1 downto 0);
    y : in array_stdvec(num_outputs-1 downto 0);
    
    weights_hid_init : in array_stdvec4 (num_hid-1 downto 0);
    weights_out_init : in array_stdvec15 (num_outputs-1 downto 0);
    b_hid_init : in array_stdvec(num_hid-1 downto 0);
    b_out_init : in array_stdvec(num_outputs-1 downto 0);
    
    weights_hid : buffer array_stdvec4 (num_hid-1 downto 0);
    weights_out : buffer array_stdvec15 (num_outputs-1 downto 0);
    b_hid : buffer array_stdvec(num_hid-1 downto 0);
    b_out : buffer array_stdvec(num_outputs-1 downto 0);
    
    initialize : in std_logic;
    backpropagation : in std_logic;
    clr : in std_logic;
    clk : in std_logic
);
end parameters;

architecture param of parameters is

component MAC is
    generic(input_size : integer := 15);
    port(
        input : array_stdvec (input_size-1 downto 0);
        weights : array_stdvec (input_size-1 downto 0);
        final : out sfixed(char_size-1 downto -mantissa_size)
    );
end component;
signal state : integer := 0;
signal MAC_out : array_UI(num_hid-1 downto 0);
signal delta_out : array_stdvec(num_outputs-1 downto 0);
signal delta_hid : array_stdvec(num_hid-1 downto 0);
signal weights_hid_bp, weights_hid_upd : array_stdvec4 (num_hid-1 downto 0);
signal weights_out_bp, weights_out_upd : array_stdvec15 (num_outputs-1 downto 0);
signal weights_out_col : array_stdvec3(num_hid-1 downto 0);
signal b_hid_bp, b_hid_upd : array_stdvec(num_hid-1 downto 0);
signal b_out_bp, b_out_upd : array_stdvec(num_outputs-1 downto 0);
begin
gen: for i in 0 to num_outputs-1 generate
          delta_out(i) <= std_logic_vector(resize(((to_sfixed(final(i), char_size-1, -mantissa_size) - to_sfixed(y(i), char_size-1, -mantissa_size))*to_sfixed(final_prime_out(i), char_size-1, -mantissa_size)), char_size-1, -mantissa_size));
          b_out_bp(i) <= delta_out(i);
          b_out_upd(i) <= std_logic_vector(resize(to_sfixed(b_out(i), char_size-1, -mantissa_size) - to_sfixed(b_out_bp(i), char_size-1, -mantissa_size), char_size-1, -mantissa_size));
gen2:        for j in 0 to num_hid-1 generate
             weights_out_bp(i)(j) <= std_logic_vector(resize(to_sfixed(delta_out(i), char_size-1, -mantissa_size)*to_sfixed(hid(j), char_size-1, -mantissa_size)*to_sfixed(n, char_size-1, -mantissa_size)*to_sfixed(-1, char_size-1, -mantissa_size), char_size-1, -mantissa_size));
             weights_out_upd(i)(j) <= std_logic_vector(resize(to_sfixed(weights_out(i)(j), char_size-1, -mantissa_size) + to_sfixed(weights_out_bp(i)(j), char_size-1, -mantissa_size), char_size-1, -mantissa_size));
             end generate;
      end generate;
gen3: for i in 0 to num_hid-1 generate
      MC: MAC generic map(input_size => num_outputs)port map(delta_out, weights_out_col(i), MAC_out(i));
      delta_hid(i) <= std_logic_vector(resize(MAC_out(i) * to_sfixed(final_prime_hid(i), char_size-1, -mantissa_size), char_size-1, -mantissa_size));
      b_hid_bp(i) <= delta_hid(i);
      b_hid_upd(i) <= std_logic_vector(resize(to_sfixed(b_hid(i), char_size-1, -mantissa_size) - to_sfixed(b_hid_bp(i), char_size-1, -mantissa_size), char_size-1, -mantissa_size));
gen4:        for j in 0 to num_inputs-1 generate
                   weights_hid_bp(i)(j) <= std_logic_vector(resize(to_sfixed(delta_hid(i), char_size-1, -mantissa_size)*to_sfixed(inputs(j), char_size-1, -mantissa_size)*to_sfixed(n, char_size-1, -mantissa_size)*to_sfixed(-1, char_size-1, -mantissa_size), char_size-1, -mantissa_size));
                   weights_hid_upd(i)(j) <= std_logic_vector(resize(to_sfixed(weights_hid(i)(j), char_size-1, -mantissa_size) + to_sfixed(weights_hid_bp(i)(j), char_size-1, -mantissa_size), char_size-1, -mantissa_size));
             end generate;
      end generate;
gen5: for i in 0 to num_outputs-1 generate
gen6:      for j in 0 to num_hid-1 generate
      weights_out_col(j)(i) <= weights_out(i)(j); 
           end generate;
      end generate;

process(clk, clr, backpropagation)

begin

if(backpropagation'event and backpropagation = '1') then
state <= 0;
end if;

if (clr = '1') then
    weights_hid <= (others => (others => (others => '0')));
    weights_out <= (others => (others => (others => '0')));
    b_hid <= (others => (others => '0'));
    b_out <= (others => (others => '0'));
elsif (clk'event and clk = '1') then
    state <= state+1;
    if(state = 4) then
    state <= 0;
    end if;

    if(initialize = '1') then 
    weights_hid <= weights_hid_init;
    weights_out <= weights_out_init;
    b_hid <= b_hid_init;
    b_out <= b_out_init;
    
    elsif(backpropagation = '1') then
        if(state = 0 or state = 1 or state = 2) then
        
        elsif(state = 3) then
        weights_out <= weights_out_upd;
        b_out <= b_out_upd;
        elsif(state = 4) then
        weights_hid <= weights_hid_upd;
        b_hid <= b_hid_upd;
        end if;
    end if;
    
    
end if;

end process;


end param;
