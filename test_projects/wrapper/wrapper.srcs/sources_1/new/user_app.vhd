library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use work.config_pkg.all;

entity user_app is
    port (
        clk : in std_logic;
        rst : in std_logic;

        -- memory-map interface
        mmap_wr_en   : in  std_logic;
        mmap_wr_addr : in  std_logic_vector(MMAP_ADDR_RANGE);
        mmap_wr_data : in  std_logic_vector(MMAP_DATA_RANGE);
        mmap_rd_en   : in  std_logic;
        mmap_rd_addr : in  std_logic_vector(MMAP_ADDR_RANGE);
        mmap_rd_data : out std_logic_vector(MMAP_DATA_RANGE)
        );
end user_app;

architecture default of user_app is

    signal go_epoch     : std_logic;
    signal go_batch     : std_logic;
    signal go_fp        : std_logic;
    signal go_bp        : std_logic;

    signal epoch_size   : std_logic_vector(MAX_EPOCH_SIZE downto 0);    
    signal result : std_logic_vector(RESULT_SIZE downto 0);
    signal done   : std_logic;
    
    signal input0, input1, input2, input3 : NN_INPUT;
    signal output0, output1, output2 : NN_OUTPUT;
    
    signal memtest_in_addr, memtest_out_addr : DBL_ADDR;
begin

    U_MEM_MAP : entity work.mem_map(BHV)
    port map (
        clk => clk,
        rst => rst,
        wr_en => mmap_wr_en,
        wr_addr => mmap_wr_addr,
        wr_data => mmap_wr_data,
        rd_en => mmap_rd_en,
        rd_addr => mmap_rd_addr,
        rd_data => mmap_rd_data,
        go_epoch => go_epoch,
        epoch_size => epoch_size,
        result => result,
        done => done,
        input0 => input0,
        input1 => input1,
        input2 => input2,
        input3 => input3,
        output0 => output0,
        output1 => output1,
        output2 => output2
    );
    
    U_DP : entity work.DP(STR)
    port map (
        clk => clk,
        input0 => input0,
        input1 => input1,
        input2 => input2,
        input3 => input3,
        final_0 => output0,
        final_1 => outpu1,
        final_2 => output2
    );
    
    U_MEMTEST : entity work.dbl_mem_0(dbl_mem_0_arch)
    port map (
        in_addr => memtest_in_addr,
        out_addr => memtest_out_addr,
        in_data => memtest_in_data,
        trigger : IN STD_LOGIC;
        rst : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        wren : IN STD_LOGIC;
        out_data => memtest_out_data
    );

end default;