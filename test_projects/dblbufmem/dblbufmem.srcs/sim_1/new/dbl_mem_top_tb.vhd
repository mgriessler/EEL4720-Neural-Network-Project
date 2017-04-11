library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dbl_mem_top_tb is
end dbl_mem_top_tb;

architecture tb of dbl_mem_top_tb is
    signal in_addr, out_addr, in_data, out_data : std_logic_vector(31 downto 0) := (others => '0');
    signal trigger, rst, clk, wren : std_logic := '0';
    signal sim_done : std_logic := '0';
begin
    UUT : entity work.dbl_mem_top
        port map (
            in_addr => in_addr,
            out_addr => out_addr,
            in_data => in_data,
            trigger => trigger,
            rst => rst,
            clk => clk,
            wren => wren,
            out_data => out_data
        );

    -- toggle clock
    clk <= not clk after 5 ns when sim_done = '0' else clk;

    process
    begin
        trigger <= '0';
        rst <= '0';
        wren <= '0';
        in_addr <= (others => '0');
        out_addr <= (others => '0');
        in_data <= (others => '0');
        
        wait for 10ns;
        
        trigger <= '0';
        rst <= '0';
        wren <= '1';
        in_addr <= (others => '0');
        out_addr <= (others => '0');
        in_data <= x"AAAAAAAA";
        
        wait for 10ns;
    
        trigger <= '0';
        rst <= '0';
        wren <= '0';
        in_addr <= (others => '0');
        out_addr <= (others => '0');
        in_data <= x"00000000";
        
        wait for 10ns;
        
        trigger <= '1';
        rst <= '0';
        wren <= '0';
        in_addr <= (others => '0');
        out_addr <= (others => '0');
        in_data <= x"00000000";
        
        wait for 10ns;
        
        trigger <= '0';
        rst <= '0';
        wren <= '1';
        in_addr <= (others => '0');
        out_addr <= (others => '0');
        in_data <= x"55555555";
    
        wait for 10ns;
        
        trigger <= '0';
        rst <= '0';
        wren <= '0';
        in_addr <= (others => '0');
        out_addr <= (others => '0');
        in_data <= x"00000000";
        
        wait for 10ns;
        
        trigger <= '1';
        rst <= '0';
        wren <= '0';
        in_addr <= (others => '0');
        out_addr <= (others => '0');
        in_data <= x"00000000";
        
        wait for 10ns;
        
        trigger <= '0';
        rst <= '0';
        wren <= '0';
        in_addr <= (others => '0');
        out_addr <= (others => '0');
        in_data <= x"00000000";    
        
        sim_done <= '1'; 
    end process;    
end tb;
