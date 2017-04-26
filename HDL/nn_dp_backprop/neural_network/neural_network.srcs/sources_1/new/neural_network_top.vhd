library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
library work;
use work.fixed_pkg.all;

USE work.heap_arr_pkg.all;

entity neural_network_top is
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
        --pipeline : in std_logic; --if enabled, data is pipelined, otherwise it takes 5 cycles per input (3 to get output, 2 to finish backprop)
        new_output : out std_logic; --high when nn generates a new output, valid for both pipelined and non pipelined
        --parameter control signals
        n : in std_logic_vector(15 downto 0); --learning rate for backprop
        initialize : in std_logic;--if high, will update internal weights and biases to input weights and biases
        backpropagation : in std_logic;--if enabled, will perform backprop, NOTE: always make sure backpropagation = !pipeline. Will combine to one signal later.
        clr : in std_logic --asynchronous clear to internal weights and biases
        
    );
end neural_network_top;

architecture top of neural_network_top is

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
        hid : out array_stdvec(num_hid-1 downto 0);
        final : out array_stdvec(num_outputs-1 downto 0);
        final_prime_hid : out array_stdvec(num_hid-1 downto 0);
        final_prime_out: out array_stdvec(num_outputs-1 downto 0);
        clk : in std_logic;
        en : in std_logic;
        pipeline : in std_logic;
        new_output : out std_logic
    );
end component;

component parameters is
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
end component;




signal input : array_stdvec (input_layer_size-1 downto 0);
signal weights_hid : array_stdvec4 (hidden_layer_size-1  downto 0);
signal weights_out : array_stdvec15 (output_layer_size-1 downto 0);
signal b_hid : array_stdvec(hidden_layer_size-1  downto 0);
signal b_out : array_stdvec(output_layer_size-1 downto 0);
signal weights_hid_init : array_stdvec4 (hidden_layer_size-1  downto 0);
signal weights_out_init : array_stdvec15 (output_layer_size-1 downto 0);
signal b_hid_init : array_stdvec(hidden_layer_size-1  downto 0);
signal b_out_init : array_stdvec(output_layer_size-1 downto 0);
signal hid : array_stdvec(hidden_layer_size-1 downto 0);
signal final : array_stdvec(output_layer_size-1 downto 0);
signal final_prime_hid : array_stdvec(hidden_layer_size-1 downto 0);
signal final_prime_out: array_stdvec(output_layer_size-1 downto 0);
signal y : array_stdvec(output_layer_size-1downto 0);
begin
input(0) <= input0;
input(1) <= input1;
input(2) <= input2;
input(3) <= input3;

weights_hid_init(0)(0) <= weight_hid_0;
weights_hid_init(0)(1) <= weight_hid_4;
weights_hid_init(0)(2) <= weight_hid_8;
weights_hid_init(0)(3) <= weight_hid_12;
weights_hid_init(1)(0) <= weight_hid_1;
weights_hid_init(1)(1) <= weight_hid_5;
weights_hid_init(1)(2) <= weight_hid_9;
weights_hid_init(1)(3) <= weight_hid_13;
weights_hid_init(2)(0) <= weight_hid_2;
weights_hid_init(2)(1) <= weight_hid_6;
weights_hid_init(2)(2) <= weight_hid_10;
weights_hid_init(2)(3) <= weight_hid_14;
weights_hid_init(3)(0) <= weight_hid_3;
weights_hid_init(3)(1) <= weight_hid_7;
weights_hid_init(3)(2) <= weight_hid_11;
weights_hid_init(3)(3) <= weight_hid_15;

weights_out_init(0)(0) <= weight_out_0;
weights_out_init(0)(1) <= weight_out_3;
weights_out_init(0)(2) <= weight_out_6;
weights_out_init(0)(3) <= weight_out_9;
weights_out_init(1)(0) <= weight_out_1;
weights_out_init(1)(1) <= weight_out_4;
weights_out_init(1)(2) <= weight_out_7;
weights_out_init(1)(3) <= weight_out_10;
weights_out_init(2)(0) <= weight_out_2;
weights_out_init(2)(1) <= weight_out_5;
weights_out_init(2)(2) <= weight_out_8;
weights_out_init(2)(3) <= weight_out_11;

b_hid_init(0) <= b_hid_0;
b_hid_init(1) <= b_hid_1;
b_hid_init(2) <= b_hid_2;
b_hid_init(3) <= b_hid_3;

b_out_init(0) <= b_out_0;
b_out_init(1) <= b_out_1;
b_out_init(2) <= b_out_2;

final_0 <= final(0);
final_1 <= final(1);
final_2 <= final(2);

final_prime_hid_0 <= final_prime_hid(0);
final_prime_hid_1 <= final_prime_hid(1);
final_prime_hid_2 <= final_prime_hid(2);
final_prime_hid_3 <= final_prime_hid(3);

final_prime_out_0 <= final_prime_out(0);
final_prime_out_1 <= final_prime_out(1);
final_prime_out_2 <= final_prime_out(2);

y(0) <= y_0;
y(1) <= y_1;
y(2) <= y_2;

par: parameters generic map(num_inputs => input_layer_size, num_hid => hidden_layer_size, num_outputs => output_layer_size)
                port map(
                n => n,
                inputs => input,
                hid => hid,
                final => final,
                final_prime_hid => final_prime_hid,
                final_prime_out => final_prime_out,
                y => y,
                
                weights_hid_init => weights_hid_init,
                weights_out_init => weights_out_init,
                b_hid_init => b_hid_init,
                b_out_init => b_out_init,
                
                weights_hid => weights_hid,
                weights_out => weights_out,
                b_hid => b_hid,
                b_out => b_out,
                
                initialize => initialize,
                backpropagation => backpropagation,
                clr => clr,
                clk => clk
                );

neu: neural_network generic map(num_inputs => input_layer_size, num_hid => hidden_layer_size, num_outputs => output_layer_size)
                    port map(
                    input => input,
                    weights_hid => weights_hid,
                    weights_out => weights_out,
                    b_hid => b_hid,
                    b_out => b_out,
                    hid => hid,
                    final => final,
                    final_prime_hid => final_prime_hid,
                    final_prime_out => final_prime_out,
                    clk => clk,
                    en => en,
                    pipeline => not backpropagation,
                    new_output => new_output
                    );
output <= "00" when (final(0) > final(1) and final(0) > final(2)) else
          "01" when (final(1) > final(0) and final(1) > final(2)) else
          "10";


end top;
