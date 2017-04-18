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
        wait for 200 ns;
        
        rst <= '0';
        wait until rising_edge(clk);
        wait until rising_edge(clk);

        wait for 200 ns;
        mmap_rd_addr <= std_logic_vector(to_unsigned(C_OUTPUT0_ADDR, mmap_rd_addr'length));
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Output 0 is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0';        
        
        mmap_rd_addr <= std_logic_vector(to_unsigned(C_OUTPUT1_ADDR, mmap_rd_addr'length));
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Output 1 is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0';        
        
        mmap_rd_addr <= std_logic_Vector(to_unsigned(C_OUTPUT2_ADDR, mmap_rd_addr'length));
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Output 2 is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        mmap_wr_addr <= std_logic_vector(to_unsigned(C_MEMTEST_START_ADDR + 43, mmap_wr_addr'length));
        mmap_wr_data <= "00000000000000000000000000101010";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';        
        
        mmap_wr_addr <= std_logic_vector(to_unsigned(C_MEMTEST_START_ADDR + 44, mmap_wr_addr'length));
        mmap_wr_data <= "00000000000000000000000000101011";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';   
        
        mmap_wr_addr <= std_logic_vector(to_unsigned(C_MEMTEST_START_ADDR + 45, mmap_wr_addr'length));
        mmap_wr_data <= "00000000000000000000000000101100";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';  
        
        mmap_wr_addr <= std_logic_vector(to_unsigned(C_MEMTEST_START_ADDR + 46, mmap_wr_addr'length));
        mmap_wr_data <= "00000000000000000000000000101101";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';  
        
        mmap_wr_addr <= std_logic_vector(to_unsigned(C_MEMTEST_START_ADDR + 47, mmap_wr_addr'length));
        mmap_wr_data <= "00000000000000000000000000101110";
        mmap_wr_en <= '1';
        wait until rising_edge(clk);
        mmap_wr_en <= '0';  


        wait until rising_edge(clk);
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        wait until rising_edge(clk);

        mmap_rd_addr <= std_logic_vector(to_unsigned(C_MEMTEST_START_ADDR+43, mmap_rd_addr'length));
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        mmap_rd_addr <= std_logic_vector(to_unsigned(C_MEMTEST_START_ADDR+44, mmap_rd_addr'length));
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        mmap_rd_addr <= std_logic_vector(to_unsigned(C_MEMTEST_START_ADDR+45, mmap_rd_addr'length));
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        mmap_rd_addr <= std_logic_vector(to_unsigned(C_MEMTEST_START_ADDR+46, mmap_rd_addr'length));
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        mmap_rd_en <= '0'; 
        
        mmap_rd_addr <= std_logic_vector(to_unsigned(C_MEMTEST_START_ADDR+47, mmap_rd_addr'length));
        mmap_rd_en <= '1';
        wait until rising_edge(clk);
        result := mmap_rd_data;
        report "Memory output is " & integer'image(to_integer(unsigned(result)));
        --mmap_rd_en <= '0'; 
        
        
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        wait until rising_edge(clk);


        wait until rising_edge(clk);
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        wait until rising_edge(clk);
  

        wait until rising_edge(clk);
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        wait until rising_edge(clk);


        
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        wait until rising_edge(clk);

        
        sim_done <= '1';
    end process;
        
end TB;
