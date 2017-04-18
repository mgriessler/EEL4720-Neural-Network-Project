library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
library work;
use work.fixed_pkg.all;

USE work.heap_arr_pkg.all;

entity neural_network_top_tb is
end neural_network_top_tb;

architecture tb of neural_network_top_tb is
component neural_network_top is
port(
        input0 : in std_logic_vector(15 downto 0);
        input1 : in std_logic_vector(15 downto 0);
        input2 : in std_logic_vector(15 downto 0);
        input3 : in std_logic_vector(15 downto 0);
        
        weight_hid_0 : in std_logic_vector(15 downto 0);
        weight_hid_1 : in std_logic_vector(15 downto 0);
        weight_hid_2 : in std_logic_vector(15 downto 0);
        weight_hid_3 : in std_logic_vector(15 downto 0);
        weight_hid_4 : in std_logic_vector(15 downto 0);
        weight_hid_5 : in std_logic_vector(15 downto 0);
        weight_hid_6 : in std_logic_vector(15 downto 0);
        weight_hid_7 : in std_logic_vector(15 downto 0);
        weight_hid_8 : in std_logic_vector(15 downto 0);
        weight_hid_9 : in std_logic_vector(15 downto 0);
        weight_hid_10 : in std_logic_vector(15 downto 0);
        weight_hid_11 : in std_logic_vector(15 downto 0);
        weight_hid_12 : in std_logic_vector(15 downto 0);
        weight_hid_13 : in std_logic_vector(15 downto 0);
        weight_hid_14 : in std_logic_vector(15 downto 0);
        weight_hid_15 : in std_logic_vector(15 downto 0);
        
        weight_out_0 : in std_logic_vector(15 downto 0);
        weight_out_1 : in std_logic_vector(15 downto 0);
        weight_out_2 : in std_logic_vector(15 downto 0);
        weight_out_3 : in std_logic_vector(15 downto 0);
        weight_out_4 : in std_logic_vector(15 downto 0);
        weight_out_5 : in std_logic_vector(15 downto 0);
        weight_out_6 : in std_logic_vector(15 downto 0);
        weight_out_7 : in std_logic_vector(15 downto 0);
        weight_out_8 : in std_logic_vector(15 downto 0);
        weight_out_9 : in std_logic_vector(15 downto 0);
        weight_out_10 : in std_logic_vector(15 downto 0);
        weight_out_11 : in std_logic_vector(15 downto 0);
        
       
        b_hid_0 : in std_logic_vector(15 downto 0);
        b_hid_1 : in std_logic_vector(15 downto 0);
        b_hid_2 : in std_logic_vector(15 downto 0);
        b_hid_3 : in std_logic_vector(15 downto 0);
        
        b_out_0 : in std_logic_vector(15 downto 0);
        b_out_1 : in std_logic_vector(15 downto 0);
        b_out_2 : in std_logic_vector(15 downto 0);
        
        final_0 : out std_logic_vector(15 downto 0);
        final_1 : out std_logic_vector(15 downto 0);
        final_2 : out std_logic_vector(15 downto 0);
        
        
        final_prime_hid_0 : out std_logic_vector(15 downto 0);
        final_prime_hid_1 : out std_logic_vector(15 downto 0);
        final_prime_hid_2 : out std_logic_vector(15 downto 0);
        final_prime_hid_3 : out std_logic_vector(15 downto 0);
        
        final_prime_out_0 : out std_logic_vector(15 downto 0);
        final_prime_out_1 : out std_logic_vector(15 downto 0);
        final_prime_out_2 : out std_logic_vector(15 downto 0);

        clk : in std_logic;
        en : in std_logic; --if en = 1, neural_network will start processing data
        pipeline : in std_logic; --if enabled, input data is pipelined, otherwise each input takes 5 cycles to process (3 for output, 2 for backprop)
        new_output : out std_logic; --goes high when new_output is generated by nn, valid both with and without pipelining
        
        n : in std_logic_vector(15 downto 0); --learning rate for backpropagation
        initialize : in std_logic; --if enabled, internal weights and biases are updated with input weights and biases on rising clk edge
        backpropagation : in std_logic; --if enabled, parameter module will perform backpropagation. NOTE: make sure backpropagation = !pipelining (will combine into one signal later)
        clr : in std_logic --asynchrounous to internal weights and biases going to nn
        
    );
end component;
signal input0 : std_logic_vector(15 downto 0);
        signal input1 : std_logic_vector(15 downto 0);
        signal input2 : std_logic_vector(15 downto 0);
        signal input3 : std_logic_vector(15 downto 0);
        
        signal weight_hid_0 : std_logic_vector(15 downto 0);
        signal weight_hid_1 : std_logic_vector(15 downto 0);
        signal weight_hid_2 : std_logic_vector(15 downto 0);
        signal weight_hid_3 : std_logic_vector(15 downto 0);
        signal weight_hid_4 : std_logic_vector(15 downto 0);
        signal weight_hid_5 : std_logic_vector(15 downto 0);
        signal weight_hid_6 : std_logic_vector(15 downto 0);
        signal weight_hid_7 : std_logic_vector(15 downto 0);
        signal weight_hid_8 : std_logic_vector(15 downto 0);
        signal weight_hid_9 : std_logic_vector(15 downto 0);
        signal weight_hid_10 : std_logic_vector(15 downto 0);
        signal weight_hid_11 : std_logic_vector(15 downto 0);
        signal weight_hid_12 : std_logic_vector(15 downto 0);
        signal weight_hid_13 : std_logic_vector(15 downto 0);
        signal weight_hid_14 : std_logic_vector(15 downto 0);
        signal weight_hid_15 : std_logic_vector(15 downto 0);
        
        signal weight_out_0 : std_logic_vector(15 downto 0);
        signal weight_out_1 : std_logic_vector(15 downto 0);
        signal weight_out_2 : std_logic_vector(15 downto 0);
        signal weight_out_3 : std_logic_vector(15 downto 0);
        signal weight_out_4 : std_logic_vector(15 downto 0);
        signal weight_out_5 : std_logic_vector(15 downto 0);
        signal weight_out_6 : std_logic_vector(15 downto 0);
        signal weight_out_7 : std_logic_vector(15 downto 0);
        signal weight_out_8 : std_logic_vector(15 downto 0);
        signal weight_out_9 : std_logic_vector(15 downto 0);
        signal weight_out_10 : std_logic_vector(15 downto 0);
        signal weight_out_11 : std_logic_vector(15 downto 0);
        
       
        signal b_hid_0 : std_logic_vector(15 downto 0);
        signal b_hid_1 : std_logic_vector(15 downto 0);
        signal b_hid_2 : std_logic_vector(15 downto 0);
        signal b_hid_3 : std_logic_vector(15 downto 0);
        
        signal b_out_0 : std_logic_vector(15 downto 0);
        signal b_out_1 : std_logic_vector(15 downto 0);
        signal b_out_2 : std_logic_vector(15 downto 0);
        
        signal final_0 : std_logic_vector(15 downto 0);
        signal final_1 : std_logic_vector(15 downto 0);
        signal final_2 : std_logic_vector(15 downto 0);
        
        
        signal final_prime_hid_0 : std_logic_vector(15 downto 0);
        signal final_prime_hid_1 : std_logic_vector(15 downto 0);
        signal final_prime_hid_2 : std_logic_vector(15 downto 0);
        signal final_prime_hid_3 : std_logic_vector(15 downto 0);
        
        signal final_prime_out_0 : std_logic_vector(15 downto 0);
        signal final_prime_out_1 : std_logic_vector(15 downto 0);
        signal final_prime_out_2 : std_logic_vector(15 downto 0);

        signal clk : std_logic;
        signal en : std_logic;
        signal pipeline : std_logic;
        signal new_output : std_logic;
        
        signal n : std_logic_vector(15 downto 0);
        signal initialize : std_logic;
        signal backpropagation : std_logic;
        signal clr : std_logic;
        
begin
top: neural_network_top port map(
        input0 => input0, 
        input1 => input1,
        input2 => input2, 
        input3 => input3,
        
        weight_hid_0 => weight_hid_0,
        weight_hid_1 => weight_hid_1,
        weight_hid_2 => weight_hid_2,
        weight_hid_3 => weight_hid_3,
        weight_hid_4 => weight_hid_4,
        weight_hid_5 => weight_hid_5, 
        weight_hid_6 => weight_hid_6, 
        weight_hid_7 => weight_hid_7, 
        weight_hid_8 => weight_hid_8,
        weight_hid_9 =>  weight_hid_9, 
        weight_hid_10 => weight_hid_10, 
        weight_hid_11 => weight_hid_11,
        weight_hid_12 => weight_hid_12,
        weight_hid_13 => weight_hid_13,
        weight_hid_14 => weight_hid_14,
        weight_hid_15 => weight_hid_15,
        
        weight_out_0 => weight_out_0,
        weight_out_1 => weight_out_1,
        weight_out_2 => weight_out_2, 
        weight_out_3 => weight_out_3,
        weight_out_4 => weight_out_4, 
        weight_out_5 => weight_out_5, 
        weight_out_6 => weight_out_6, 
        weight_out_7 => weight_out_7, 
        weight_out_8 => weight_out_8, 
        weight_out_9 => weight_out_9, 
        weight_out_10 => weight_out_10, 
        weight_out_11 => weight_out_11, 
        
       
        b_hid_0 => b_hid_0, 
        b_hid_1 => b_hid_1, 
        b_hid_2 => b_hid_2,
        b_hid_3 => b_hid_3, 
        
        b_out_0 => b_out_0, 
        b_out_1 => b_out_1, 
        b_out_2 => b_out_2, 
        
        final_0 => final_0, 
        final_1 => final_1,
        final_2 => final_2,
        
        
        final_prime_hid_0 => final_prime_hid_0, 
        final_prime_hid_1 => final_prime_hid_1, 
        final_prime_hid_2 => final_prime_hid_2, 
        final_prime_hid_3 => final_prime_hid_3,
        
        final_prime_out_0 => final_prime_out_0, 
        final_prime_out_1 => final_prime_out_1, 
        final_prime_out_2 => final_prime_out_2,

        clk =>  clk,
        en => en,
        pipeline => pipeline,
        new_output => new_output,
        
        n => n,
        initialize => initialize,
        backpropagation => backpropagation,
        clr => clr);





        process
        begin
        input0 <= std_logic_vector(to_sfixed(0.5, char_size-1, -mantissa_size));
        input1 <= std_logic_vector(to_sfixed(0.25, char_size-1, -mantissa_size));
        input2  <= std_logic_vector(to_sfixed(-0.4, char_size-1, -mantissa_size));
        input3 <= std_logic_vector(to_sfixed(-0.75, char_size-1, -mantissa_size));
        
        weight_hid_0  <= std_logic_vector(to_sfixed(0.6, char_size-1, -mantissa_size));
        weight_hid_1 <= std_logic_vector(to_sfixed(0.8, char_size-1, -mantissa_size));
        weight_hid_2  <= std_logic_vector(to_sfixed(1.5, char_size-1, -mantissa_size));
        weight_hid_3  <= std_logic_vector(to_sfixed(-1.4, char_size-1, -mantissa_size));
        weight_hid_4  <= std_logic_vector(to_sfixed(0.2, char_size-1, -mantissa_size));
        weight_hid_5  <= std_logic_vector(to_sfixed(0.9, char_size-1, -mantissa_size));
        weight_hid_6  <= std_logic_vector(to_sfixed(-1.5, char_size-1, -mantissa_size));
        weight_hid_7  <= std_logic_vector(to_sfixed(-1.4, char_size-1, -mantissa_size));
        weight_hid_8  <= std_logic_vector(to_sfixed(-2.5, char_size-1, -mantissa_size));
        weight_hid_9  <= std_logic_vector(to_sfixed(0.9, char_size-1, -mantissa_size));
        weight_hid_10  <= std_logic_vector(to_sfixed(-0.5, char_size-1, -mantissa_size));
        weight_hid_11  <= std_logic_vector(to_sfixed(1.4, char_size-1, -mantissa_size));
        weight_hid_12  <= std_logic_vector(to_sfixed(2.5, char_size-1, -mantissa_size));
        weight_hid_13  <= std_logic_vector(to_sfixed(0.9, char_size-1, -mantissa_size));
        weight_hid_14  <= std_logic_vector(to_sfixed(10, char_size-1, -mantissa_size));
        weight_hid_15  <= std_logic_vector(to_sfixed(1.4, char_size-1, -mantissa_size));
        
        weight_out_0  <= std_logic_vector(to_sfixed(2.5, char_size-1, -mantissa_size));
        weight_out_1  <= std_logic_vector(to_sfixed(0.9, char_size-1, -mantissa_size));
        weight_out_2  <= std_logic_vector(to_sfixed(10, char_size-1, -mantissa_size));
        weight_out_3  <= std_logic_vector(to_sfixed(1.4, char_size-1, -mantissa_size));
        weight_out_4  <= std_logic_vector(to_sfixed(-2.5, char_size-1, -mantissa_size));
        weight_out_5  <= std_logic_vector(to_sfixed(0.9, char_size-1, -mantissa_size));
        weight_out_6  <= std_logic_vector(to_sfixed(-10, char_size-1, -mantissa_size));
        weight_out_7  <= std_logic_vector(to_sfixed(1.4, char_size-1, -mantissa_size));
        weight_out_8  <= std_logic_vector(to_sfixed(-2.5, char_size-1, -mantissa_size));
        weight_out_9  <= std_logic_vector(to_sfixed(0.9, char_size-1, -mantissa_size));
        weight_out_10  <= std_logic_vector(to_sfixed(-1, char_size-1, -mantissa_size));
        weight_out_11  <= std_logic_vector(to_sfixed(1.4, char_size-1, -mantissa_size));
        
       
        b_hid_0  <= (others => '0');
        b_hid_1  <= (others => '0');
        b_hid_2  <= (others => '0');
        b_hid_3  <= (others => '0');
        
        b_out_0  <= (others => '0');
        b_out_1  <= (others => '0');
        b_out_2  <= (others => '0');
        
        en <= '1';
        pipeline <= '0';
        clr <= '0';
        initialize <= '1';
        
        n <= (others => '0');
        backpropagation <= '0';
        
        
        
        clk <= '0';
        wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
        clk <= '0';
        wait for 5 ns;
        
        input0 <= std_logic_vector(to_sfixed(0, char_size-1, -mantissa_size));
        input1 <= std_logic_vector(to_sfixed(0, char_size-1, -mantissa_size));
        input2  <= std_logic_vector(to_sfixed(0, char_size-1, -mantissa_size));
        input3 <= std_logic_vector(to_sfixed(0, char_size-1, -mantissa_size));
        wait for 5 ns;   
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
        wait;
        end process;

end tb;
