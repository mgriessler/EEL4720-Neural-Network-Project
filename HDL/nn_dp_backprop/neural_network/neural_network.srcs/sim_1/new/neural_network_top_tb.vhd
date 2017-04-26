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
        pipeline : in std_logic; --if enabled, data is pipelined, otherwise it takes 5 cycles per input (3 to get output, 2 to finish backprop)
        new_output : out std_logic; --high when nn generates a new output, valid for both pipelined and non pipelined
        --parameter control signals
        n : in std_logic_vector(15 downto 0); --learning rate for backprop
        initialize : in std_logic;--if high, will update internal weights and biases to input weights and biases
        backpropagation : in std_logic;--if enabled, will perform backprop, NOTE: always make sure backpropagation = !pipeline. Will combine to one signal later.
        clr : in std_logic --asynchronous clear to internal weights and biases
        
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
        
        signal y_0 : std_logic_vector(15 downto 0);
        signal y_1 : std_logic_vector(15 downto 0);
        signal y_2 : std_logic_vector(15 downto 0);
        
        
        signal final_prime_hid_0 : std_logic_vector(15 downto 0);
        signal final_prime_hid_1 : std_logic_vector(15 downto 0);
        signal final_prime_hid_2 : std_logic_vector(15 downto 0);
        signal final_prime_hid_3 : std_logic_vector(15 downto 0);
        
        signal final_prime_out_0 : std_logic_vector(15 downto 0);
        signal final_prime_out_1 : std_logic_vector(15 downto 0);
        signal final_prime_out_2 : std_logic_vector(15 downto 0);

        signal clk : std_logic := '0';
        signal en : std_logic;
        signal pipeline : std_logic;
        signal new_output : std_logic;
        
        signal n : std_logic_vector(15 downto 0);
        signal initialize : std_logic;
        signal backpropagation : std_logic;
        signal clr : std_logic;
        
        signal flower : std_logic_vector(1 downto 0);
        signal stop : std_logic := '1';
        
        
        
        
        
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
        
        y_0 => y_0,
        y_1 => y_1,
        y_2 => y_2,
        
        
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


        clk <= not clk and stop after 10 ns;


        process
        variable num_correct : integer := 0;
        constant num_total_test : integer := 90;
        constant num_total_train : integer := 60;
        constant num_epochs : integer := 100;
       
        begin
        
        weight_hid_0  <= std_logic_vector(to_sfixed(0.364536, char_size-1, -mantissa_size));
        weight_hid_1 <= std_logic_vector(to_sfixed(0.517334, char_size-1, -mantissa_size));
        weight_hid_2  <= std_logic_vector(to_sfixed(0.998121, char_size-1, -mantissa_size));
        weight_hid_3  <= std_logic_vector(to_sfixed(0.930143, char_size-1, -mantissa_size));
        weight_hid_4  <= std_logic_vector(to_sfixed(-0.878858, char_size-1, -mantissa_size));
        weight_hid_5  <= std_logic_vector(to_sfixed(0.894606, char_size-1, -mantissa_size));
        weight_hid_6  <= std_logic_vector(to_sfixed(-0.939346, char_size-1, -mantissa_size));
        weight_hid_7  <= std_logic_vector(to_sfixed(-0.0824719, char_size-1, -mantissa_size));
        weight_hid_8  <= std_logic_vector(to_sfixed(0.669021, char_size-1, -mantissa_size));
        weight_hid_9  <= std_logic_vector(to_sfixed(0.0226686, char_size-1, -mantissa_size));
        weight_hid_10  <= std_logic_vector(to_sfixed(-0.0847505, char_size-1, -mantissa_size));
        weight_hid_11  <= std_logic_vector(to_sfixed(-0.576403, char_size-1, -mantissa_size));
        weight_hid_12  <= std_logic_vector(to_sfixed(-0.140578, char_size-1, -mantissa_size));
        weight_hid_13  <= std_logic_vector(to_sfixed(0.57999, char_size-1, -mantissa_size));
        weight_hid_14  <= std_logic_vector(to_sfixed(0.223978, char_size-1, -mantissa_size));
        weight_hid_15  <= std_logic_vector(to_sfixed(-0.318424, char_size-1, -mantissa_size));
        
        weight_out_0  <= std_logic_vector(to_sfixed(-0.846444, char_size-1, -mantissa_size));
        weight_out_1  <= std_logic_vector(to_sfixed(0.909234, char_size-1, -mantissa_size));
        weight_out_2  <= std_logic_vector(to_sfixed(0.745612, char_size-1, -mantissa_size));
        weight_out_3  <= std_logic_vector(to_sfixed(0.389809, char_size-1, -mantissa_size));
        weight_out_4  <= std_logic_vector(to_sfixed(0.992484, char_size-1, -mantissa_size));
        weight_out_5  <= std_logic_vector(to_sfixed(-0.676382, char_size-1, -mantissa_size));
        weight_out_6  <= std_logic_vector(to_sfixed(-0.0790069, char_size-1, -mantissa_size));
        weight_out_7  <= std_logic_vector(to_sfixed(0.447118, char_size-1, -mantissa_size));
        weight_out_8  <= std_logic_vector(to_sfixed(-0.86444, char_size-1, -mantissa_size));
        weight_out_9  <= std_logic_vector(to_sfixed(0.979992, char_size-1, -mantissa_size));
        weight_out_10  <= std_logic_vector(to_sfixed(0.821257, char_size-1, -mantissa_size));
        weight_out_11  <= std_logic_vector(to_sfixed(-0.67261, char_size-1, -mantissa_size));
        
       
        b_hid_0  <= std_logic_vector(to_sfixed(0, char_size-1, -mantissa_size));
        b_hid_1  <= std_logic_vector(to_sfixed(0, char_size-1, -mantissa_size));
        b_hid_2  <= std_logic_vector(to_sfixed(0, char_size-1, -mantissa_size));
        b_hid_3  <= std_logic_vector(to_sfixed(0, char_size-1, -mantissa_size));
        
        b_out_0  <= std_logic_vector(to_sfixed(0, char_size-1, -mantissa_size));
        b_out_1  <= std_logic_vector(to_sfixed(0, char_size-1, -mantissa_size));
        b_out_2  <= std_logic_vector(to_sfixed(0, char_size-1, -mantissa_size));
        
        y_0  <= std_logic_vector(to_sfixed(5, char_size-1, -mantissa_size));
        y_1  <= std_logic_vector(to_sfixed(0, char_size-1, -mantissa_size));
        y_2  <= std_logic_vector(to_sfixed(0, char_size-1, -mantissa_size));
        
        
        en <= '0';
        pipeline <= '1';
        clr <= '0';
        initialize <= '1';
        
        n <= std_logic_vector(to_sfixed(0.05, char_size-1, -mantissa_size));
        backpropagation <= '0';
        
        
        
        wait for 50 ns;
        
        en <= '1';
        
                backpropagation <='0';
        pipeline <= '1';
        
        for i in 0 to 89 loop
        
        input0 <= std_logic_vector(to_sfixed(sepal_length_test(i), char_size-1, -mantissa_size));
        input1 <= std_logic_vector(to_sfixed(sepal_width_test(i), char_size-1, -mantissa_size));
        input2  <= std_logic_vector(to_sfixed(petal_length_test(i), char_size-1, -mantissa_size));
        input3 <= std_logic_vector(to_sfixed(petal_width_test(i), char_size-1, -mantissa_size));
        wait for 100 ns;
        
        if(flower = expected_output_test(i)) then
        num_correct := num_correct + 1;
        end if;
        
        end loop;
        
        report "Start Accuracy is " & integer'image(num_correct) & "/" & integer'image(num_total_test) & " = " & integer'image(num_correct*100/num_total_test) & "%" severity note;
        num_correct := 0;
        
        
        pipeline <= '0';
        backpropagation <= '1';
        en <= '1';
        initialize <= '0';
        
        wait for 10 ns;
      
        for j in 0 to num_epochs - 1 loop
        for i in 0 to 59 loop
                
        input0 <= std_logic_vector(to_sfixed(sepal_length_train(i), char_size-1, -mantissa_size));
        input1 <= std_logic_vector(to_sfixed(sepal_width_train(i), char_size-1, -mantissa_size));
        input2  <= std_logic_vector(to_sfixed(petal_length_train(i), char_size-1, -mantissa_size));
        input3 <= std_logic_vector(to_sfixed(petal_width_train(i), char_size-1, -mantissa_size));
        if(expected_output_train(i) = "00") then
        y_0  <= std_logic_vector(to_sfixed(1, char_size-1, -mantissa_size));
        y_1  <= std_logic_vector(to_sfixed(0, char_size-1, -mantissa_size));
        y_2  <= std_logic_vector(to_sfixed(0, char_size-1, -mantissa_size));
        
        elsif (expected_output_train(i) = "01") then
        y_0  <= std_logic_vector(to_sfixed(0, char_size-1, -mantissa_size));
        y_1  <= std_logic_vector(to_sfixed(1, char_size-1, -mantissa_size));
        y_2  <= std_logic_vector(to_sfixed(0, char_size-1, -mantissa_size));
        
        elsif (expected_output_train(i) = "10") then
        y_0  <= std_logic_vector(to_sfixed(0, char_size-1, -mantissa_size));
        y_1  <= std_logic_vector(to_sfixed(0, char_size-1, -mantissa_size));
        y_2  <= std_logic_vector(to_sfixed(1, char_size-1, -mantissa_size));
        
        end if;
                
        wait for 100 ns;
        if(flower = expected_output_train(i)) then
        num_correct := num_correct + 1;
        end if;
        
        end loop;
        report "Current training Accuracy is " & integer'image(num_correct) & "/" & integer'image(num_total_train) & " = " & integer'image(num_correct*100/num_total_train) & "% (Epoch #" & integer'image(j) & ")" severity note;
        num_correct := 0;
        
        end loop;
        
      
        
        backpropagation <='0';
        pipeline <= '1';
        
        for i in 0 to 89 loop
                
        input0 <= std_logic_vector(to_sfixed(sepal_length_test(i), char_size-1, -mantissa_size));
        input1 <= std_logic_vector(to_sfixed(sepal_width_test(i), char_size-1, -mantissa_size));
        input2  <= std_logic_vector(to_sfixed(petal_length_test(i), char_size-1, -mantissa_size));
        input3 <= std_logic_vector(to_sfixed(petal_width_test(i), char_size-1, -mantissa_size));
        wait for 100 ns;
        
        if(flower = expected_output_test(i)) then
        num_correct := num_correct + 1;
        end if;
        
        end loop;
        
        
        
        stop <= '0';
        
        report "Final Accuracy is " & integer'image(num_correct) & "/" & integer'image(num_total_test) & " = " & integer'image(num_correct*100/num_total_test) & "%" severity note;
        
        wait;
        end process;
        
        flower <= "00" when (final_0 > final_1 and final_0 > final_2) else
                  "01" when (final_1 > final_0 and final_1 > final_2) else
                  "10" when (final_2 > final_1 and final_2 > final_0);

end tb;
