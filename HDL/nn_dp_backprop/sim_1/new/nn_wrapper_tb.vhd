library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
library work;
use work.fixed_pkg.all;

USE work.heap_arr_pkg.all;

entity nn_wrapper_tb is
end nn_wrapper_tb;

architecture tb of nn_wrapper_tb is
component nn_wrapper is

port(
    input0 : in std_logic_vector(15 downto 0);
    input1 : in std_logic_vector(15 downto 0);
    input2 : in std_logic_vector(15 downto 0);
    input3 : in std_logic_vector(15 downto 0);
    
    final_0 : out std_logic_vector(15 downto 0);
    final_1 : out std_logic_vector(15 downto 0);
    final_2 : out std_logic_vector(15 downto 0);
    
    clk : in std_logic
    
    );
end component;
        constant num_inputs : integer := input_layer_size;
        constant num_hid : integer := hidden_layer_size;
        constant num_outputs : integer := output_layer_size;

        signal input0 : std_logic_vector(15 downto 0);
        signal input1 : std_logic_vector(15 downto 0);
        signal input2 : std_logic_vector(15 downto 0);
        signal input3 : std_logic_vector(15 downto 0);
        
        signal final_0 : std_logic_vector(15 downto 0);
        signal final_1 : std_logic_vector(15 downto 0);
        signal final_2 : std_logic_vector(15 downto 0);

        signal clk : std_logic;


begin

nn: nn_wrapper
     port map
     (
        input0 => input0,
        input1 => input1,
        input2 => input2,
        input3 => input3,
        final_0 => final_0,
        final_1 => final_1,
        final_2 => final_2,
        clk => clk
     );

process
begin
       
       input0 <= std_logic_vector(to_sfixed(0.5, char_size-1, -mantissa_size));
       input1 <= std_logic_vector(to_sfixed(0.25, char_size-1, -mantissa_size));
       input2  <= std_logic_vector(to_sfixed(-0.4, char_size-1, -mantissa_size));
       input3 <= std_logic_vector(to_sfixed(-0.75, char_size-1, -mantissa_size));
       
       
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