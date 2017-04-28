library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use work.config_pkg.all;
library work;
use work.fixed_pkg.all;

USE work.heap_arr_pkg.all;

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
    signal mem_in_addr, mem_out_addr : DBL_ADDR;
    signal mem_in_data : DBL_DATA;
    
    signal memtest_out_data : DBL_DATA;
    signal memtest_wr_en : std_logic := '0';
    
    signal input_0_out_data : DBL_DATA;
    signal input_0_wr_en : std_logic := '0';
    
    signal input_1_out_data : DBL_DATA;
    signal input_1_wr_en : std_logic := '0';
    
    signal input_2_out_data : DBL_DATA;
    signal input_2_wr_en : std_logic := '0';
    
    signal input_3_out_data : DBL_DATA;
    signal input_3_wr_en : std_logic := '0';
    
    signal expected_output_out_data : DBL_DATA;
    signal expected_output_wr_en : std_logic := '0';
    
    signal output_out_data : DBL_DATA;
    signal output_wr_en : std_logic := '0';
    
    signal input_mems_rd_addr : std_logic_vector(MEM_ADDR_WIDTH-1 downto 0);
    signal output_mem_wr_addr : std_logic_vector(MEM_ADDR_WIDTH-1 downto 0);
    
    signal ctrl_go : std_logic;
    signal ctrl_epoch_size : std_logic_vector(C_MMAP_DATA_WIDTH-1 downto 0);
    signal ctrl_done : std_logic;
    
    signal output_mem_wr_addr_inc : std_logic;
    signal input_mems_rd_addr_inc : std_logic;
    signal output_mem_wr_addr_rst : std_logic;
    signal input_mems_rd_addr_rst : std_logic;
    
    signal nn_init : std_logic;
    signal nn_bp : std_logic;
    signal nn_new_output : std_logic;
    signal nn_en : std_logic;
    signal nn_out : std_logic_vector(1 downto 0);
    
    signal bp : std_logic;

    signal nn_expected_output_0 : std_logic_vector(MEM_DATA_WIDTH-1 downto 0);
    signal nn_expected_output_1 : std_logic_vector(MEM_DATA_WIDTH-1 downto 0);
    signal nn_expected_output_2 : std_logic_vector(MEM_DATA_WIDTH-1 downto 0);
    
    signal output_mem_wr_data : std_logic_vector(MEM_DATA_WIDTH-1 downto 0);
    
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
        go => ctrl_go,
        epoch_size => ctrl_epoch_size,
        backprop => bp,
        init => nn_init,
        done => ctrl_done,
        mem_in_addr => mem_in_addr,
        mem_out_addr => mem_out_addr,
        mem_in_data => mem_in_data,
        memtest_out_data => memtest_out_data,
        memtest_wr_en => memtest_wr_en,
        input_0_wr_en => input_0_wr_en,
        input_1_wr_en => input_1_wr_en,
        input_2_wr_en => input_2_wr_en,
        input_3_wr_en => input_3_wr_en,
        expected_output_wr_en => expected_output_wr_en,
        output_out_data => output_out_data
    );

    U_INPUT_0 : entity work.ram(SYNC_READ)
    generic map (
        num_words => 2**MEM_ADDR_WIDTH,
        word_width => MEM_DATA_WIDTH,
        addr_width => MEM_ADDR_WIDTH
    )
    port map (
        clk => clk,
        wen => input_0_wr_en,
        waddr => mem_in_addr(MEM_ADDR_WIDTH-1 downto 0),
        wdata => mem_in_data,
        raddr => input_mems_rd_addr,
        rdata => input_0_out_data
    );

    U_INPUT_1 : entity work.ram(SYNC_READ)
    generic map (
        num_words => 2**MEM_ADDR_WIDTH,
        word_width => MEM_DATA_WIDTH,
        addr_width => MEM_ADDR_WIDTH
    )
    port map (
        clk => clk,
        wen => input_1_wr_en,
        waddr => mem_in_addr(MEM_ADDR_WIDTH-1 downto 0),
        wdata => mem_in_data,
        raddr => input_mems_rd_addr,
        rdata => input_1_out_data
    );

    U_INPUT_2 : entity work.ram(SYNC_READ)
    generic map (
        num_words => 2**MEM_ADDR_WIDTH,
        word_width => MEM_DATA_WIDTH,
        addr_width => MEM_ADDR_WIDTH
    )
    port map (
        clk => clk,
        wen => input_2_wr_en,
        waddr => mem_in_addr(MEM_ADDR_WIDTH-1 downto 0),
        wdata => mem_in_data,
        raddr => input_mems_rd_addr,
        rdata => input_2_out_data
    );

    U_INPUT_3 : entity work.ram(SYNC_READ)
    generic map (
        num_words => 2**MEM_ADDR_WIDTH,
        word_width => MEM_DATA_WIDTH,
        addr_width => MEM_ADDR_WIDTH
    )
    port map (
        clk => clk,
        wen => input_3_wr_en,
        waddr => mem_in_addr(MEM_ADDR_WIDTH-1 downto 0),
        wdata => mem_in_data,
        raddr => input_mems_rd_addr,
        rdata => input_3_out_data
    );

    U_EXPECTED_OUTPUT : entity work.ram(SYNC_READ)
    generic map (
        num_words => 2**MEM_ADDR_WIDTH,
        word_width => MEM_DATA_WIDTH,
        addr_width => MEM_ADDR_WIDTH
    )
    port map (
        clk => clk,
        wen => expected_output_wr_en,
        waddr => mem_in_addr(MEM_ADDR_WIDTH-1 downto 0),
        wdata => mem_in_data,
        raddr => input_mems_rd_addr,
        rdata => expected_output_out_data
    );

    U_OUTPUT : entity work.ram(SYNC_READ)
    generic map (
        num_words => 2**MEM_ADDR_WIDTH,
        word_width => MEM_DATA_WIDTH,
        addr_width => MEM_ADDR_WIDTH
    )
    port map (
        clk => clk,
        wen => nn_new_output,
        waddr => output_mem_wr_addr,
        wdata => output_mem_wr_data,
        raddr => mem_out_addr(MEM_ADDR_WIDTH-1 downto 0),
        rdata => output_out_data
    );

    U_IN_MEMS_ADDR_GEN : entity work.addr_gen(addr)
    generic map (
        ADDR_WIDTH => MEM_ADDR_WIDTH
    )
    port map (
        clk => clk,
        en => input_mems_rd_addr_inc,
        rst => input_mems_rd_addr_rst,
        address => input_mems_rd_addr 
    );

    U_OUT_MEM_ADDR_GEN : entity work.addr_gen(addr)
    generic map (
        ADDR_WIDTH => MEM_ADDR_WIDTH
    )
    port map (
        clk => clk,
        en => nn_new_output,
        rst => output_mem_wr_addr_rst,
        address => output_mem_wr_addr 
    );

    U_CNTRL : entity work.controller(cont)
    port map (
        clk => clk,
        rst => rst,
        go => ctrl_go,
        epoch_size => ctrl_epoch_size,
        done => ctrl_done,
        nn_bp => nn_bp,
        bp => bp,
        nn_en => nn_en,
        input_mems_rd_addr_inc => input_mems_rd_addr_inc,
        output_mem_wr_addr_rst => output_mem_wr_addr_rst,
        input_mems_rd_addr_rst => input_mems_rd_addr_rst
    );
    
    U_OUT_CNTRL : entity work.out_ctrl(cont)
    port map (
        clk => clk,
        rst => rst,
        nn_new_output => nn_new_output,
        inc => output_mem_wr_addr_inc,
        wr_en => output_wr_en
    );
    
    U_MEMTEST : entity work.ram(SYNC_READ)
    generic map (
        num_words => 2**MEM_ADDR_WIDTH,
        word_width => MEM_DATA_WIDTH,
        addr_width => MEM_ADDR_WIDTH
    )
    port map (
        clk => clk,
        wen => memtest_wr_en,
        waddr => mem_in_addr(MEM_ADDR_WIDTH-1 downto 0),
        wdata => mem_in_data,
        raddr => mem_out_addr(MEM_ADDR_WIDTH-1 downto 0),
        rdata => memtest_out_data
    );
    
    output_mem_wr_data <= "00000000000000" & nn_out;
    
    U_NN_WRAPPER : entity work.nn_wrapper(wrap)
    port map (
        clk => clk,
        clr => rst,
        en => nn_en,
        input0 => input_0_out_data,
        input1 => input_1_out_data,
        input2 => input_2_out_data,
        input3 => input_3_out_data,
        y_0 => nn_expected_output_0,
        y_1 => nn_expected_output_1,
        y_2 => nn_expected_output_2,
        output => nn_out,
        new_output => nn_new_output,
        n => std_logic_vector(to_sfixed(0.05, char_size-1, -mantissa_size)),
        initialize => nn_init,
        backpropagation => nn_bp
    );
    
    U_SPLITTER : entity work.expected_out_splitter(BHV)
    port map (
        expected_output => expected_output_out_data,
        expected_output_0 => nn_expected_output_0,
        expected_output_1 => nn_expected_output_1,
        expected_output_2 => nn_expected_output_2
    );
end default;