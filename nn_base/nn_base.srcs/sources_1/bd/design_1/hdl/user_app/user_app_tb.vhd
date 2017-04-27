library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

use work.config_pkg.all;

entity user_app_tb is
end user_app_tb;

architecture TB of user_app_tb is
    signal clk : std_logic := '0';
    signal rst : std_logic := '1';
    
    signal mmap_wr_en, mmap_rd_en : std_logic := '0';
    signal mmap_wr_addr, mmap_rd_addr : std_logic_vector(C_MMAP_ADDR_WIDTH-1 downto 0) := (others => '0');
    signal mmap_wr_data, mmap_rd_data : std_logic_vector(C_MMAP_DATA_WIDTH-1 downto 0) := (others => '0');
    
    signal sim_done : std_logic := '0';
begin

    UUT : entity work.user_app
    port map (
        clk => clk,
        rst => rst,
        mmap_wr_en => mmap_wr_en,
        mmap_wr_addr => mmap_wr_addr,
        mmap_wr_data => mmap_wr_data,
        mmap_rd_en => mmap_rd_en,
        mmap_rd_addr => mmap_rd_addr,
        mmap_rd_data => mmap_rd_data
    );

    clk <= not clk after 5 ns when sim_done = '0' else clk;
    
    process
        procedure clearMMAP is
        begin
            mmap_rd_en <= '0';
            mmap_wr_en <= '0';
        end clearMMAP;
        
        variable result : std_logic_vector(C_MMAP_DATA_WIDTH-1 downto 0);
        variable done : std_logic;
    begin
        rst <= '1';
        clearMMAP;
        wait for 50 ns;
        
        rst <= '0';
        wait for 50 ns;

        mmap_rd_addr <= C_OUTPUT0_ADDR;
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Output 0 is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0';        
        
        mmap_rd_addr <= C_OUTPUT1_ADDR;
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Output 1 is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0';        
        
        mmap_rd_addr <= C_OUTPUT2_ADDR;
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Output 2 is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
    
        wait for 50 ns;
        
        --memtest
        mmap_wr_addr <= std_logic_vector(unsigned(C_MEMTEST_START_ADDR)+43);
        mmap_wr_data <= "00000000000000000000000000101010";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';        

        mmap_wr_addr <= std_logic_vector(unsigned(C_MEMTEST_START_ADDR)+44);
        mmap_wr_data <= "00000000000000000000000000101011";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';        

        mmap_wr_addr <= std_logic_vector(unsigned(C_MEMTEST_START_ADDR)+45);
        mmap_wr_data <= "00000000000000000000000000101100";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';        

        mmap_wr_addr <= std_logic_vector(unsigned(C_MEMTEST_START_ADDR)+46);
        mmap_wr_data <= "00000000000000000000000000101101";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';        

        mmap_wr_addr <= std_logic_vector(unsigned(C_MEMTEST_START_ADDR)+47);
        mmap_wr_data <= "00000000000000000000000000101110";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';        

        mmap_rd_addr <= std_logic_vector(unsigned(C_MEMTEST_START_ADDR)+43);
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        mmap_rd_addr <= std_logic_vector(unsigned(C_MEMTEST_START_ADDR)+44);
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        mmap_rd_addr <= std_logic_vector(unsigned(C_MEMTEST_START_ADDR)+45);
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        mmap_rd_addr <= std_logic_vector(unsigned(C_MEMTEST_START_ADDR)+46);
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        mmap_rd_addr <= std_logic_vector(unsigned(C_MEMTEST_START_ADDR)+47);
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        wait for 50 ns;
        --input_0
        mmap_wr_addr <= std_logic_vector(unsigned(C_INPUT_0_START_ADDR)+43);
        mmap_wr_data <= "00000000000000000000000001101010";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';        

        mmap_wr_addr <= std_logic_vector(unsigned(C_INPUT_0_START_ADDR)+44);
        mmap_wr_data <= "00000000000000000000000001101011";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';        

        mmap_wr_addr <= std_logic_vector(unsigned(C_INPUT_0_START_ADDR)+45);
        mmap_wr_data <= "00000000000000000000000001101100";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';        

        mmap_wr_addr <= std_logic_vector(unsigned(C_INPUT_0_START_ADDR)+46);
        mmap_wr_data <= "00000000000000000000000001101101";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';        

        mmap_wr_addr <= std_logic_vector(unsigned(C_INPUT_0_START_ADDR)+47);
        mmap_wr_data <= "00000000000000000000000001101110";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';        

        mmap_rd_addr <= std_logic_vector(unsigned(C_INPUT_0_START_ADDR)+43);
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        mmap_rd_addr <= std_logic_vector(unsigned(C_INPUT_0_START_ADDR)+44);
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        mmap_rd_addr <= std_logic_vector(unsigned(C_INPUT_0_START_ADDR)+45);
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        mmap_rd_addr <= std_logic_vector(unsigned(C_INPUT_0_START_ADDR)+46);
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        mmap_rd_addr <= std_logic_vector(unsigned(C_INPUT_0_START_ADDR)+47);
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        wait for 50 ns;
        --input 1
        mmap_wr_addr <= std_logic_vector(unsigned(C_INPUT_1_START_ADDR)+43);
        mmap_wr_data <= "00000000000000000000000010101010";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';        

        mmap_wr_addr <= std_logic_vector(unsigned(C_INPUT_1_START_ADDR)+44);
        mmap_wr_data <= "00000000000000000000000010101011";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';        

        mmap_wr_addr <= std_logic_vector(unsigned(C_INPUT_1_START_ADDR)+45);
        mmap_wr_data <= "00000000000000000000000010101100";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';        

        mmap_wr_addr <= std_logic_vector(unsigned(C_INPUT_1_START_ADDR)+46);
        mmap_wr_data <= "00000000000000000000000010101101";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';        

        mmap_wr_addr <= std_logic_vector(unsigned(C_INPUT_1_START_ADDR)+47);
        mmap_wr_data <= "00000000000000000000000010101110";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';        

        mmap_rd_addr <= std_logic_vector(unsigned(C_INPUT_1_START_ADDR)+43);
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        mmap_rd_addr <= std_logic_vector(unsigned(C_INPUT_1_START_ADDR)+44);
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        mmap_rd_addr <= std_logic_vector(unsigned(C_INPUT_1_START_ADDR)+45);
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        mmap_rd_addr <= std_logic_vector(unsigned(C_INPUT_1_START_ADDR)+46);
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        mmap_rd_addr <= std_logic_vector(unsigned(C_INPUT_1_START_ADDR)+47);
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        wait for 50 ns;
        --input 2
        mmap_wr_addr <= std_logic_vector(unsigned(C_INPUT_2_START_ADDR)+43);
        mmap_wr_data <= "00000000000000000000000100101010";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';        

        mmap_wr_addr <= std_logic_vector(unsigned(C_INPUT_2_START_ADDR)+44);
        mmap_wr_data <= "00000000000000000000000100101011";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';        

        mmap_wr_addr <= std_logic_vector(unsigned(C_INPUT_2_START_ADDR)+45);
        mmap_wr_data <= "00000000000000000000000100101100";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';        

        mmap_wr_addr <= std_logic_vector(unsigned(C_INPUT_2_START_ADDR)+46);
        mmap_wr_data <= "00000000000000000000000100101101";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';        

        mmap_wr_addr <= std_logic_vector(unsigned(C_INPUT_2_START_ADDR)+47);
        mmap_wr_data <= "00000000000000000000000100101110";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';        

        mmap_rd_addr <= std_logic_vector(unsigned(C_INPUT_2_START_ADDR)+43);
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        mmap_rd_addr <= std_logic_vector(unsigned(C_INPUT_2_START_ADDR)+44);
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        mmap_rd_addr <= std_logic_vector(unsigned(C_INPUT_2_START_ADDR)+45);
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        mmap_rd_addr <= std_logic_vector(unsigned(C_INPUT_2_START_ADDR)+46);
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        mmap_rd_addr <= std_logic_vector(unsigned(C_INPUT_2_START_ADDR)+47);
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        wait for 50 ns;
        --input 3
        mmap_wr_addr <= std_logic_vector(unsigned(C_INPUT_3_START_ADDR)+43);
        mmap_wr_data <= "00000000000000000000001000101010";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';        

        mmap_wr_addr <= std_logic_vector(unsigned(C_INPUT_3_START_ADDR)+44);
        mmap_wr_data <= "00000000000000000000001000101011";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';        

        mmap_wr_addr <= std_logic_vector(unsigned(C_INPUT_3_START_ADDR)+45);
        mmap_wr_data <= "00000000000000000000001000101100";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';        

        mmap_wr_addr <= std_logic_vector(unsigned(C_INPUT_3_START_ADDR)+46);
        mmap_wr_data <= "00000000000000000000001000101101";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';        

        mmap_wr_addr <= std_logic_vector(unsigned(C_INPUT_3_START_ADDR)+47);
        mmap_wr_data <= "00000000000000000000001000101110";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';        

        mmap_rd_addr <= std_logic_vector(unsigned(C_INPUT_3_START_ADDR)+43);
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        mmap_rd_addr <= std_logic_vector(unsigned(C_INPUT_3_START_ADDR)+44);
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        mmap_rd_addr <= std_logic_vector(unsigned(C_INPUT_3_START_ADDR)+45);
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        mmap_rd_addr <= std_logic_vector(unsigned(C_INPUT_3_START_ADDR)+46);
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        mmap_rd_addr <= std_logic_vector(unsigned(C_INPUT_3_START_ADDR)+47);
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        wait for 50 ns;
        --expected output
        mmap_wr_addr <= std_logic_vector(unsigned(C_EXPECTED_OUTPUT_START_ADDR)+43);
        mmap_wr_data <= "00000000000000000000010000101010";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';        

        mmap_wr_addr <= std_logic_vector(unsigned(C_EXPECTED_OUTPUT_START_ADDR)+44);
        mmap_wr_data <= "00000000000000000000010000101011";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';        

        mmap_wr_addr <= std_logic_vector(unsigned(C_EXPECTED_OUTPUT_START_ADDR)+45);
        mmap_wr_data <= "00000000000000000000010000101100";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';        

        mmap_wr_addr <= std_logic_vector(unsigned(C_EXPECTED_OUTPUT_START_ADDR)+46);
        mmap_wr_data <= "00000000000000000000010000101101";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';        

        mmap_wr_addr <= std_logic_vector(unsigned(C_EXPECTED_OUTPUT_START_ADDR)+47);
        mmap_wr_data <= "00000000000000000000010000101110";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';        

        mmap_rd_addr <= std_logic_vector(unsigned(C_EXPECTED_OUTPUT_START_ADDR)+43);
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        mmap_rd_addr <= std_logic_vector(unsigned(C_EXPECTED_OUTPUT_START_ADDR)+44);
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        mmap_rd_addr <= std_logic_vector(unsigned(C_EXPECTED_OUTPUT_START_ADDR)+45);
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        mmap_rd_addr <= std_logic_vector(unsigned(C_EXPECTED_OUTPUT_START_ADDR)+46);
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        mmap_rd_addr <= std_logic_vector(unsigned(C_EXPECTED_OUTPUT_START_ADDR)+47);
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        wait for 50 ns;
        -- output
        mmap_wr_addr <= std_logic_vector(unsigned(C_OUTPUT_START_ADDR)+43);
        mmap_wr_data <= "00000000000000000000100000101010";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';        

        mmap_wr_addr <= std_logic_vector(unsigned(C_OUTPUT_START_ADDR)+44);
        mmap_wr_data <= "00000000000000000000100000101011";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';        

        mmap_wr_addr <= std_logic_vector(unsigned(C_OUTPUT_START_ADDR)+45);
        mmap_wr_data <= "00000000000000000000100000101100";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';        

        mmap_wr_addr <= std_logic_vector(unsigned(C_OUTPUT_START_ADDR)+46);
        mmap_wr_data <= "00000000000000000000100000101101";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';        

        mmap_wr_addr <= std_logic_vector(unsigned(C_OUTPUT_START_ADDR)+47);
        mmap_wr_data <= "00000000000000000000100000101110";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';        

        mmap_rd_addr <= std_logic_vector(unsigned(C_OUTPUT_START_ADDR)+43);
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        mmap_rd_addr <= std_logic_vector(unsigned(C_OUTPUT_START_ADDR)+44);
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        mmap_rd_addr <= std_logic_vector(unsigned(C_OUTPUT_START_ADDR)+45);
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        mmap_rd_addr <= std_logic_vector(unsigned(C_OUTPUT_START_ADDR)+46);
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        mmap_rd_addr <= std_logic_vector(unsigned(C_OUTPUT_START_ADDR)+47);
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        sim_done <= '1';
        wait;
    end process;
        
end TB;
