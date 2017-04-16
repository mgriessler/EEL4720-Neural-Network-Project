library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use work.config_pkg.all;

entity user_app is
    port (
        clk : in std_logic;
        rst : in std_logic;

        -- memory-map interface
        mmap_wr_en   : in  std_logic;
        mmap_wr_addr : in  std_logic_vector(C_MMAP_ADDR_WIDTH-1 downto 0);
        mmap_wr_data : in  std_logic_vector(C_MMAP_DATA_WIDTH-1 downto 0);
        mmap_rd_en   : in  std_logic;
        mmap_rd_addr : in  std_logic_vector(C_MMAP_ADDR_WIDTH-1 downto 0);
        mmap_rd_data : out std_logic_vector(C_MMAP_DATA_WIDTH-1 downto 0)
        );
end user_app;

architecture default of user_app is

    signal go_epoch     : std_logic;
    signal go_batch     : std_logic;
    signal go_fp        : std_logic;
    signal go_bp        : std_logic;

    signal epoch_size   : std_logic_vector(MAX_EPOCH_SIZE-1 downto 0);    
    signal result : std_logic_vector(RESULT_SIZE-1 downto 0);
    signal done   : std_logic;
    
    signal input0, input1, input2, input3 : NN_INPUT;
    signal output0, output1, output2 : NN_OUTPUT;
    
    signal memtest_in_addr, memtest_out_addr : DBL_ADDR;
    signal memtest_in_data, memtest_out_data : DBL_DATA;
    signal memtest_wr_en : std_logic := '0';
    
    component nn_wrapper is
    port (
        clk : in std_logic;
        input0 : in NN_INPUT;
        input1 : in NN_INPUT;
        input2 : in NN_INPUT;
        input3 : in NN_INPUT;
        final_0 : out NN_OUTPUT;
        final_1 : out NN_OUTPUT;
        final_2 : out NN_OUTPUT
    );
    end component;

--    component dbl_mem_0 is
--    port (
--        in_addr : in DBL_ADDR;
--        out_addr : in DBL_ADDR;
--        in_data : in DBL_DATA;
--        trigger : in std_logic;
--        rst : in std_logic;
--        clk : in std_logic;
--        wren : in std_logic;
--        out_data : out DBL_DATA
--    );
--    end component;

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
        output2 => output2,
        memtest_in_addr => memtest_in_addr,
        memtest_out_addr => memtest_out_addr,
        memtest_in_data => memtest_in_data,
        memtest_out_data => memtest_out_data,
        memtest_wr_en => memtest_wr_en
    );
    
    U_NN : nn_wrapper
    port map (
        clk => clk,
        input0 => input0,
        input1 => input1,
        input2 => input2,
        input3 => input3,
        final_0 => output0,
        final_1 => output1,
        final_2 => output2
    );
   
--    U_MEMTEST : dbl_mem_0
--    port map (
--        in_addr => memtest_in_addr,
--        out_addr => memtest_out_addr,
--        in_data => memtest_in_data,
--        trigger => '0',
--        rst => '0',
--        clk => clk,
--        wren => memtest_wr_en,
--        out_data => memtest_out_data
--    );

end default;