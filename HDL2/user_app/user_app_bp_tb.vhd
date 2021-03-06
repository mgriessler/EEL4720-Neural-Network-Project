library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

use work.config_pkg.all;
library work;
use work.fixed_pkg.all;

USE work.heap_arr_pkg.all;

entity user_app_bp_tb is
end user_app_bp_tb;

architecture TB of user_app_bp_tb is
    constant TEST_SIZE : integer := 90;
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
        
        for i in 0 to TEST_SIZE-1 loop
            mmap_wr_addr <= std_logic_vector(unsigned(C_INPUT_0_START_ADDR)+i);
            mmap_wr_en   <= '1';
            mmap_wr_data <= (others => '0');
            mmap_wr_data <= "0000000000000000" & std_logic_vector(to_sfixed(sepal_length_test(i), char_size-1, -mantissa_size));
            wait until rising_edge(clk);
            mmap_wr_en <= '0';
        end loop;  -- i
        
        for i in 0 to TEST_SIZE-1 loop
            mmap_wr_addr <= std_logic_vector(unsigned(C_INPUT_1_START_ADDR)+i);
            mmap_wr_en   <= '1';
            mmap_wr_data <= (others => '0');
            mmap_wr_data <= "0000000000000000" & std_logic_vector(to_sfixed(sepal_width_test(i), char_size-1, -mantissa_size));
            wait until rising_edge(clk);
            mmap_wr_en <= '0';
        end loop;  -- i
        
        for i in 0 to TEST_SIZE-1 loop
            mmap_wr_addr <= std_logic_vector(unsigned(C_INPUT_2_START_ADDR)+i);
            mmap_wr_en   <= '1';
            mmap_wr_data <= (others => '0');
            mmap_wr_data <= "0000000000000000" & std_logic_vector(to_sfixed(petal_length_test(i), char_size-1, -mantissa_size));
            wait until rising_edge(clk);
            mmap_wr_en <= '0';
        end loop;  -- i
        
        for i in 0 to TEST_SIZE-1 loop
            mmap_wr_addr <= std_logic_vector(unsigned(C_INPUT_3_START_ADDR)+i);
            mmap_wr_en   <= '1';
            mmap_wr_data <= (others => '0');
            mmap_wr_data <= "0000000000000000" & std_logic_vector(to_sfixed(petal_width_test(i), char_size-1, -mantissa_size));
            wait until rising_edge(clk);
            mmap_wr_en <= '0';
        end loop;  -- i
        
        for i in 0 to TEST_SIZE-1 loop
            mmap_wr_addr <= std_logic_vector(unsigned(C_EXPECTED_OUTPUT_START_ADDR)+i);
            mmap_wr_en   <= '1';
            mmap_wr_data <= (others => '0');
            mmap_wr_data <= std_logic_vector(resize(unsigned(expected_output_test(i)), C_MMAP_DATA_WIDTH));
            wait until rising_edge(clk);
            mmap_wr_en <= '0';
        end loop;  -- i

	    mmap_wr_addr <= std_logic_vector(unsigned(C_EPOCH_SIZE_ADDR));
            mmap_wr_en   <= '1';
            mmap_wr_data <= std_logic_vector(to_unsigned(TEST_SIZE, C_MMAP_DATA_WIDTH));
            wait until rising_edge(clk);
            mmap_wr_en <= '0';
            
        mmap_wr_addr <= std_logic_vector(unsigned(C_INIT_ADDR));
            mmap_wr_en   <= '1';
            mmap_wr_data <= std_logic_vector(to_unsigned(1, C_MMAP_DATA_WIDTH));
            wait until rising_edge(clk);
            mmap_wr_en <= '0';
        mmap_wr_addr <= std_logic_vector(unsigned(C_INIT_ADDR));
            mmap_wr_en   <= '1';
            mmap_wr_data <= std_logic_vector(to_unsigned(0, C_MMAP_DATA_WIDTH));
            wait until rising_edge(clk);
            mmap_wr_en <= '0';

	    mmap_wr_addr <= std_logic_vector(unsigned(C_BP_ADDR));
                    mmap_wr_en   <= '1';
                    mmap_wr_data <= std_logic_vector(to_unsigned(1, C_MMAP_DATA_WIDTH));
                    wait until rising_edge(clk);
                    mmap_wr_en <= '0';

	    mmap_wr_addr <= std_logic_vector(unsigned(C_GO_EPOCH_ADDR));
            mmap_wr_en   <= '1';
            mmap_wr_data <= std_logic_vector(to_unsigned(1, C_MMAP_DATA_WIDTH));
            wait until rising_edge(clk);
            mmap_wr_en <= '0';
            
        
            
	    wait for 8000 ns;

	    mmap_rd_addr <= std_logic_vector(unsigned(C_DONE_ADDR));
            mmap_rd_en   <= '1';
            result := mmap_rd_data;
            wait until rising_edge(clk);
            mmap_rd_en <= '0';


        for i in 1 to TEST_SIZE loop
            mmap_rd_addr <= std_logic_vector(unsigned(C_OUTPUT_START_ADDR)+i);
            mmap_rd_en   <= '1';
            result := mmap_rd_data;
            wait until rising_edge(clk);
            mmap_rd_en <= '0';
        end loop;  -- i
        
        sim_done <= '1';
        wait;
    end process;
        
end TB;
