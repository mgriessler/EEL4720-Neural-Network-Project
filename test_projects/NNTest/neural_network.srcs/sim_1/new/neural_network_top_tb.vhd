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

        clk : in std_logic
        
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

        clk =>  clk);





        process
        begin
        input0 <= (others => '0');
        input1 <= (others => '0');
        input2  <= (others => '0');
        input3 <= (others => '0');
        
        weight_hid_0  <= (others => '0');
        weight_hid_1 <= (others => '0');
        weight_hid_2  <= (others => '0');
        weight_hid_3  <= (others => '0');
        weight_hid_4  <= (others => '0');
        weight_hid_5  <= (others => '0');
        weight_hid_6  <= (others => '0');
        weight_hid_7  <= (others => '0');
        weight_hid_8  <= (others => '0');
        weight_hid_9  <= (others => '0');
        weight_hid_10  <= (others => '0');
        weight_hid_11  <= (others => '0');
        weight_hid_12  <= (others => '0');
        weight_hid_13  <= (others => '0');
        weight_hid_14  <= (others => '0');
        weight_hid_15  <= (others => '0');
        
        weight_out_0  <= (others => '0');
        weight_out_1  <= (others => '0');
        weight_out_2  <= (others => '0');
        weight_out_3  <= (others => '0');
        weight_out_4  <= (others => '0');
        weight_out_5  <= (others => '0');
        weight_out_6  <= (others => '0');
        weight_out_7  <= (others => '0');
        weight_out_8  <= (others => '0');
        weight_out_9  <= (others => '0');
        weight_out_10  <= (others => '0');
        weight_out_11  <= (others => '0');
        
       
        b_hid_0  <= (others => '0');
        b_hid_1  <= (others => '0');
        b_hid_2  <= (others => '0');
        b_hid_3  <= (others => '0');
        
        b_out_0  <= (others => '0');
        b_out_1  <= (others => '0');
        b_out_2  <= (others => '0');
        
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
