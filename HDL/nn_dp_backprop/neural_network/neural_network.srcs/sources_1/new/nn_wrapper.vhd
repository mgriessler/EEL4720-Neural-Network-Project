library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
library work;
use work.fixed_pkg.all;

USE work.heap_arr_pkg.all;

entity nn_wrapper is
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
end nn_wrapper;

architecture wrap of nn_wrapper is

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
        
        output : out std_logic_vector(1 downto 0);
        
        y_0 : in std_logic_vector(15 downto 0);
        y_1 : in std_logic_vector(15 downto 0);
        y_2 : in std_logic_vector(15 downto 0);
        
        
        final_prime_hid_0 : out std_logic_vector(15 downto 0);
        final_prime_hid_1 : out std_logic_vector(15 downto 0);
        final_prime_hid_2 : out std_logic_vector(15 downto 0);
        final_prime_hid_3 : out std_logic_vector(15 downto 0);
        
        final_prime_out_0 : out std_logic_vector(15 downto 0);
        final_prime_out_1 : out std_logic_vector(15 downto 0);
        final_prime_out_2 : out std_logic_vector(15 downto 0);
        
        clk : in std_logic;
        --datapath control signals
        en : in std_logic; --enables nn to start processing data
        new_output : out std_logic; --high when nn generates a new output, valid for both pipelined and non pipelined
        --parameter control signals
        n : in std_logic_vector(15 downto 0); --learning rate for backprop
        initialize : in std_logic;--if high, will update internal weights and biases to input weights and biases
        backpropagation : in std_logic;--if enabled, will perform backprop, NOTE: always make sure backpropagation = !pipeline. Will combine to one signal later.
        clr : in std_logic --asynchronous clear to internal weights and biases
        
        
    );
end component;
        
begin

nn: neural_network_top port map(
input0 => input0,
input1 => input1,
input2 => input2,
input3 => input3,
weight_hid_0 => std_logic_vector(to_sfixed(0.6, char_size-1, -mantissa_size)),
weight_hid_1 => std_logic_vector(to_sfixed(0.8, char_size-1, -mantissa_size)),
weight_hid_2 => std_logic_vector(to_sfixed(1.5, char_size-1, -mantissa_size)),
weight_hid_3 => std_logic_vector(to_sfixed(-1.4, char_size-1, -mantissa_size)),
weight_hid_4 => std_logic_vector(to_sfixed(0.2, char_size-1, -mantissa_size)),
weight_hid_5 => std_logic_vector(to_sfixed(0.9, char_size-1, -mantissa_size)),
weight_hid_6 => std_logic_vector(to_sfixed(-1.5, char_size-1, -mantissa_size)),
weight_hid_7 => std_logic_vector(to_sfixed(-1.4, char_size-1, -mantissa_size)),
weight_hid_8 => std_logic_vector(to_sfixed(-2.5, char_size-1, -mantissa_size)),
weight_hid_9 => std_logic_vector(to_sfixed(0.9, char_size-1, -mantissa_size)),
weight_hid_10 => std_logic_vector(to_sfixed(-0.5, char_size-1, -mantissa_size)),
weight_hid_11 => std_logic_vector(to_sfixed(1.4, char_size-1, -mantissa_size)),
weight_hid_12 => std_logic_vector(to_sfixed(2.5, char_size-1, -mantissa_size)),
weight_hid_13 => std_logic_vector(to_sfixed(0.9, char_size-1, -mantissa_size)),
weight_hid_14 => std_logic_vector(to_sfixed(10, char_size-1, -mantissa_size)),
weight_hid_15 => std_logic_vector(to_sfixed(1.4, char_size-1, -mantissa_size)),
weight_out_0 => std_logic_vector(to_sfixed(2.5, char_size-1, -mantissa_size)),
weight_out_1 => std_logic_vector(to_sfixed(0.9, char_size-1, -mantissa_size)),
weight_out_2 => std_logic_vector(to_sfixed(10, char_size-1, -mantissa_size)),
weight_out_3 => std_logic_vector(to_sfixed(1.4, char_size-1, -mantissa_size)),
weight_out_4 => std_logic_vector(to_sfixed(-2.5, char_size-1, -mantissa_size)),
weight_out_5 => std_logic_vector(to_sfixed(0.9, char_size-1, -mantissa_size)),
weight_out_6 => std_logic_vector(to_sfixed(-10, char_size-1, -mantissa_size)),
weight_out_7 => std_logic_vector(to_sfixed(1.4, char_size-1, -mantissa_size)),
weight_out_8 => std_logic_vector(to_sfixed(-2.5, char_size-1, -mantissa_size)),
weight_out_9 => std_logic_vector(to_sfixed(0.9, char_size-1, -mantissa_size)),
weight_out_10 => std_logic_vector(to_sfixed(-1, char_size-1, -mantissa_size)),
weight_out_11 => std_logic_vector(to_sfixed(1.4, char_size-1, -mantissa_size)),
b_hid_0 => (others => '0'),
b_hid_1 => (others => '0'),
b_hid_2 => (others => '0'),
b_hid_3 => (others => '0'),
b_out_0 => (others => '0'),
b_out_1 => (others => '0'),
b_out_2 => (others => '0'),
final_0 => final_0,
final_1 => final_1,
final_2 => final_2,
clk => clk,
en => en,
n => n,
initialize => initialize,
backpropagation => backpropagation,
clr => clr,
new_output => new_output,
y_0 => (others => '0'),
y_1 => (others => '0'),
y_2 => (others => '0')
);


end wrap;
