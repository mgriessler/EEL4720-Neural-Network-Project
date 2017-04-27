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
    
    output : out std_logic_vector(1 downto 0);
    
    clk : in std_logic;
    en : in std_logic := '0'; --enables nn to start processing data
    new_output : out std_logic; --high when nn generates a new output, valid for both pipelined and non pipelined
    --parameter control signals
    n : in std_logic_vector(15 downto 0) := (others => '0'); --learning rate for backprop
    initialize : in std_logic := '1';--if high, will update internal weights and biases to input weights and biases
    backpropagation : in std_logic := '0';--if enabled, will perform backprop, NOTE: always make sure backpropagation = !pipeline. Will combine to one signal later.
    clr : in std_logic := '0' --asynchronous clear to internal weights and biases
    
    
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

        signal clk : std_logic := '0';
        signal en : std_logic;
        signal new_output : std_logic;
        signal n : std_logic_vector(15 downto 0);
        signal initialize : std_logic;
        signal backpropagation : std_logic;
        signal clr : std_logic;
        
        signal finished : std_logic := '0';
        


begin
clk <= not clk and not finished after 10 ns;
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
        clk => clk,
        en => en,
        new_output => new_output,
        n => n,
        initialize => initialize,
        backpropagation => backpropagation,
        clr => clr
     );

process
begin
       
       input0 <= std_logic_vector(to_sfixed(0.5, char_size-1, -mantissa_size));
       input1 <= std_logic_vector(to_sfixed(0.25, char_size-1, -mantissa_size));
       input2  <= std_logic_vector(to_sfixed(-0.4, char_size-1, -mantissa_size));
       input3 <= std_logic_vector(to_sfixed(-0.75, char_size-1, -mantissa_size));
       wait for 1000 ns;
       backpropagation <= '0';
       wait for 1000 ns;
       clr <= '0';
       wait for 1000 ns;
       n <= (others => '0');
       wait for 1000 ns;
       initialize <= '1';
        en <= '1';
       wait for 1000 ns;
      
       
       
       
       
       
       
              
wait for 1000 ns;
finished <= '1';
wait;
end process;

end tb;