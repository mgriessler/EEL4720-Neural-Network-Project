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
        done => ctrl_done,
        mem_in_addr => mem_in_addr,
        mem_out_addr => mem_out_addr,
        mem_in_data => mem_in_data,
        memtest_out_data => memtest_out_data,
        memtest_wr_en => memtest_wr_en,
        input_0_out_data => input_0_out_data,
        input_0_wr_en => input_0_wr_en,
        input_1_out_data => input_1_out_data,
        input_1_wr_en => input_1_wr_en,
        input_2_out_data => input_2_out_data,
        input_2_wr_en => input_2_wr_en,
        input_3_out_data => input_3_out_data,
        input_3_wr_en => input_3_wr_en,
        expected_output_out_data => expected_output_out_data,
        expected_output_wr_en => expected_output_wr_en,
        output_out_data => output_out_data,
        output_wr_en => output_wr_en
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
        wen => output_wr_en,
        waddr => output_mem_wr_addr,
        wdata => mem_in_data,
        raddr => mem_out_addr(MEM_ADDR_WIDTH-1 downto 0),
        rdata => output_out_data
    );
    
    U_CNTRL : entity work.controller(cont)
    port map (
        clk => clk,
        rst => rst,
        go => ctrl_go,
        epoch_size => ctrl_epoch_size,
        done => ctrl_done,
        nn_bp => nn_bp,
        nn_init => nn_init,
        nn_en => nn_en,
        input_mems_rd_addr_inc => input_mems_rd_addr_inc,
        output_mem_wr_addr_rst => output_mem_wr_addr_rst,
        input_mems_rd_addr_rst => input_mems_rd_addr_rst
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
end default;