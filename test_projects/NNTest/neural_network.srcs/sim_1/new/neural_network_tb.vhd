library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
library work;
use work.fixed_pkg.all;

USE work.heap_arr_pkg.all;

entity neural_network_tb is
end neural_network_tb;

architecture tb of neural_network_tb is
component neural_network is
generic(
num_inputs : integer := input_layer_size;
num_hid : integer := hidden_layer_size;
num_outputs : integer := output_layer_size
);
port(
        input : in array_stdvec (num_inputs-1 downto 0);
        weights_hid : in array_stdvec4 (num_hid-1 downto 0);
        weights_out : in array_stdvec15 (num_outputs-1 downto 0);
        b_hid : in array_stdvec(num_hid-1 downto 0);
        b_out : in array_stdvec(num_outputs-1 downto 0);
        final : out array_stdvec(num_outputs-1 downto 0);
        final_prime_hid : out array_stdvec(num_hid-1 downto 0);
        final_prime_out: out array_stdvec(num_outputs-1 downto 0);
        clk : in std_logic
        
    );
end component;
        constant num_inputs : integer := input_layer_size;
        constant num_hid : integer := hidden_layer_size;
        constant num_outputs : integer := output_layer_size;
        signal input : array_stdvec (num_inputs-1 downto 0);
        signal weights_hid : array_stdvec4 (num_hid-1 downto 0);
        signal weights_out : array_stdvec15 (num_outputs-1 downto 0);
        signal b_hid : array_stdvec(num_hid-1 downto 0);
        signal b_out : array_stdvec(num_outputs-1 downto 0);
        signal final : array_stdvec(num_outputs-1 downto 0);
        signal final_prime_hid :array_stdvec(num_hid-1 downto 0);
        signal final_prime_out: array_stdvec(num_outputs-1 downto 0);
        signal clk : std_logic;

begin

neu: neural_network
     port map
     (
     input => input,
     weights_hid => weights_hid,
     weights_out => weights_out,
     b_hid => b_hid,
     b_out => b_out,
     final => final,
     final_prime_hid => final_prime_hid,
     final_prime_out => final_prime_out,
     clk => clk
     );

process
begin
       input(0) <= (others => '0');
       input(1) <= (others => '0');
       input(2)  <= (others => '0');
       input(3) <= (others => '0');
       
       weights_hid(0)(0)  <= (others => '0');
       weights_hid(0)(1) <= (others => '0');
       weights_hid(0)(2)  <= (others => '0');
       weights_hid(0)(3)  <= (others => '0');
       weights_hid(1)(0)  <= (others => '0');
       weights_hid(1)(1)  <= (others => '0');
       weights_hid(1)(2)  <= (others => '0');
       weights_hid(1)(3)  <= (others => '0');
       weights_hid(2)(0)  <= (others => '0');
       weights_hid(2)(1) <= (others => '0');
       weights_hid(2)(2)  <= (others => '0');
       weights_hid(2)(3)  <= (others => '0');
       weights_hid(3)(0)  <= (others => '0');
       weights_hid(3)(1)  <= (others => '0');
       weights_hid(3)(2)  <= (others => '0');
       weights_hid(3)(3)  <= (others => '0');
       
      weights_out(0)(0)  <= (others => '0');
      weights_out(0)(1) <= (others => '0');
      weights_out(0)(2)  <= (others => '0');
      weights_out(0)(3)  <= (others => '0');
      weights_out(1)(0)  <= (others => '0');
      weights_out(1)(1)  <= (others => '0');
      weights_out(1)(2)  <= (others => '0');
      weights_out(1)(3)  <= (others => '0');
      weights_out(2)(0)  <= (others => '0');
      weights_out(2)(1) <= (others => '0');
      weights_out(2)(2)  <= (others => '0');
      weights_out(2)(3)  <= (others => '0');
       
      
       b_hid(0)  <= (others => '0');
       b_hid(1)  <= (others => '0');
       b_hid(2)  <= (others => '0');
       b_hid(3)  <= (others => '0');
       
       b_out(0)  <= (others => '0');
       b_out(1)  <= (others => '0');
       b_out(2)  <= (others => '0');
       
       clk <= '1';
       wait for 10 ns;
       clk <= '0';
       wait for 10 ns;
       clk <= '1';
       wait for 10 ns;
       clk <= '0';
       wait for 10 ns;
       clk <= '1';
       wait for 10 ns;
       clk <= '0';
       wait for 10 ns;
wait for 10 ns;
wait;
end process;

end tb;
