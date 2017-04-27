-- Greg Stitt
-- University of Florida
-- EEL 5721/4720 Reconfigurable Computing
--
-- File: user_app_tb.vhd
--
-- Description: This file implements a testbench for the simple pipeline
-- when running on the ZedBoard. 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memtest_tb is
end memtest_tb;

architecture behavior of memtest_tb is

    constant TEST_SIZE : integer := 4;
    constant MAX_CYCLES : integer  := TEST_SIZE*4;
    constant MEM_ADDR_WIDTH : positive := 15;
    constant MEM_DATA_WIDTH : positive := 32;

    signal clk : std_logic := '0';
    signal rst : std_logic := '1';

    signal memtest_wr_en   : std_logic                         := '0';
    signal memtest_in_addr : std_logic_vector(MEM_ADDR_WIDTH-1 downto 0) := (others => '0');
    signal memtest_in_data : std_logic_vector(MEM_DATA_WIDTH-1 downto 0) := (others => '0');

    signal memtest_out_addr : std_logic_vector(MEM_ADDR_WIDTH-1 downto 0) := (others => '0');
    signal memtest_out_data : std_logic_vector(MEM_DATA_WIDTH-1 downto 0);

    signal sim_done : std_logic := '0';
begin

    UUT : entity work.ram(SYNC_READ)
        generic map (
            num_words => 2**MEM_ADDR_WIDTH,
            word_width => MEM_DATA_WIDTH,
            addr_width => MEM_ADDR_WIDTH
        )
        port map (
            clk => clk,
            wen => memtest_wr_en,
            waddr => memtest_in_addr,
            wdata => memtest_in_data,
            raddr => memtest_out_addr,
            rdata => memtest_out_data
    );

    -- toggle clock
    clk <= not clk after 10 ns when sim_done = '0' else clk;

    -- process to test different inputs
    process
        variable result : std_logic_vector(MEM_DATA_WIDTH-1 downto 0);
    begin
        wait until clk'event and clk = '1';
        wait until clk'event and clk = '1';

        -- write contents to input ram, which starts at addr 0
        for i in 0 to TEST_SIZE-1 loop
            memtest_in_addr <= std_logic_vector(to_unsigned(i, MEM_ADDR_WIDTH));
            memtest_wr_en   <= '1';
            memtest_in_data <= std_logic_vector(to_unsigned((i*4) mod 256, 8) &
                                             to_unsigned((i*4+1) mod 256, 8) &
                                             to_unsigned((i*4+2) mod 256, 8) &
                                             to_unsigned((i*4+3) mod 256, 8));
            wait until clk'event and clk = '1';
        end loop;

        -- read outputs from output memory
        for i in 0 to TEST_SIZE-1 loop
            memtest_out_addr   <= std_logic_vector(to_unsigned(i, MEM_ADDR_WIDTH));
            wait until clk'event and clk = '1';
            -- give entity one cycle to respond
            --wait until clk'event and clk = '1';
            result := memtest_out_data;
        end loop;  -- i

        report "SIMULATION FINISHED!!!";

        sim_done <= '1';
        wait;

    end process;
end behavior;
