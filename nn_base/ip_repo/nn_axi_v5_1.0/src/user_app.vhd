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

    signal epoch_size   : DBL_ADDR;    
    signal result : std_logic_vector(RESULT_SIZE-1 downto 0);
    signal done   : std_logic;
    
    signal input0, input1, input2, input3 : NN_INPUT;
    signal output0, output1, output2 : NN_OUTPUT;
    
    signal memtest_in_addr, memtest_in_addr0, memtest_in_addr1,memtest_in_addr2, memtest_out_addr, memtest_out_addr0, memtest_out_addr1, memtest_out_addr2, memtest_out_addr3, memtest_out_addr4, memtest_out_addr5, memtest_out_addr6 : DBL_ADDR;
    signal memtest_in_data, memtest_out_data0, memtest_out_data1, memtest_out_data2 : DBL_DATA;
    signal memtest_wr_en0, memtest_wr_en1, memtest_wr_en2, memtest_wr_en3, memtest_wr_en_o0, memtest_wr_en_o1, memtest_wr_en_o2, dp_en : std_logic := '0';
    
    signal gen0_en, gen1_en, gen2_en, gen3_en, gen4_en, gen5_en, gen6_en : std_logic;
    
    
    component nn_wrapper is
    port (
        clk : in std_logic;
        input0 : in NN_INPUT;
        input1 : in NN_INPUT;
        input2 : in NN_INPUT;
        input3 : in NN_INPUT;
        final_0 : out NN_OUTPUT;
        final_1 : out NN_OUTPUT;
        final_2 : out NN_OUTPUT;
        dp_en : in std_logic
    );
    end component;

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
--        input0 => input0,
--        input1 => input1,
--        input2 => input2,
--        input3 => input3,
--        output0 => output0,
--        output1 => output1,
--        output2 => output2,
        memtest_in_addr => memtest_in_addr,
        memtest_out_addr => memtest_out_addr,
        memtest_in_data => memtest_in_data,
        memtest_out_data0 => memtest_out_data0,
        memtest_out_data1 => memtest_out_data1,
        memtest_out_data2 => memtest_out_data2,
        memtest_wr_en0 => memtest_wr_en0,
        memtest_wr_en1 => memtest_wr_en1,
        memtest_wr_en2 => memtest_wr_en2,
        memtest_wr_en3 => memtest_wr_en3
        --memtest_wr_en_o0 => memtest_wr_en_o0,
        --memtest_wr_en_o1 => memtest_wr_en_o1,
        --memtest_wr_en_o2 => memtest_wr_en_o2
        
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
        final_2 => output2,
        dp_en => dp_en
    );
    
    U_MEMTEST0 : entity work.ram(SYNC_READ)
    generic map (
        num_words => 1100,
        word_width => MEM_DATA_WIDTH,
        addr_width => MEM_ADDR_WIDTH
    )
    port map (
        clk => clk,
        wen => memtest_wr_en0,
        waddr => memtest_in_addr(MEM_ADDR_WIDTH-1 downto 0),
        wdata => memtest_in_data(MEM_DATA_WIDTH-1 downto 0),
        raddr => memtest_out_addr0(MEM_ADDR_WIDTH-1 downto 0),
        rdata => input0
    );
    U_MEM_IN_GEN0 : entity work.addr_gen
       generic map(start_addr => C_MEMTEST0_START_ADDR)
       port map(
       clk => clk,
       en => gen0_en,
       rst => rst,
       address => memtest_out_addr0);
    
    U_MEMTEST1 : entity work.ram(SYNC_READ)
        generic map (
            num_words => 1100,
            word_width => MEM_DATA_WIDTH,
            addr_width => MEM_ADDR_WIDTH
        )
        port map (
            clk => clk,
            wen => memtest_wr_en1,
            waddr => memtest_in_addr(MEM_ADDR_WIDTH-1 downto 0),
            wdata => memtest_in_data(MEM_DATA_WIDTH-1 downto 0),
            raddr => memtest_out_addr1(MEM_ADDR_WIDTH-1 downto 0),
            rdata => input1
        );
    U_MEM_IN_GEN1 : entity work.addr_gen
           generic map(start_addr => C_MEMTEST1_START_ADDR)
           port map(
           clk => clk,
           en => gen1_en,
           rst => rst,
           address => memtest_out_addr1);
        
   U_MEMTEST2 : entity work.ram(SYNC_READ)
    generic map (
        num_words => 1100,
        word_width => MEM_DATA_WIDTH,
        addr_width => MEM_ADDR_WIDTH
    )
    port map (
        clk => clk,
        wen => memtest_wr_en2,
        waddr => memtest_in_addr(MEM_ADDR_WIDTH-1 downto 0),
        wdata => memtest_in_data(MEM_DATA_WIDTH-1 downto 0),
        raddr => memtest_out_addr2(MEM_ADDR_WIDTH-1 downto 0),
        rdata => input2
    );
    U_MEM_IN_GEN2 : entity work.addr_gen
           generic map(start_addr => C_MEMTEST2_START_ADDR)
           port map(
           clk => clk,
           en => gen2_en,
           rst => rst,
           address => memtest_out_addr2);
    
    U_MEMTEST3 : entity work.ram(SYNC_READ)
    generic map (
        num_words => 1100,
        word_width => MEM_DATA_WIDTH,
        addr_width => MEM_ADDR_WIDTH
    )
    port map (
        clk => clk,
        wen => memtest_wr_en3,
        waddr => memtest_in_addr(MEM_ADDR_WIDTH-1 downto 0),
        wdata => memtest_in_data(MEM_DATA_WIDTH-1 downto 0),
        raddr => memtest_out_addr3(MEM_ADDR_WIDTH-1 downto 0),
        rdata => input3
    );
    
    U_MEM_IN_GEN3 : entity work.addr_gen
   generic map(start_addr => C_MEMTEST3_START_ADDR)
   port map(
   clk => clk,
   en => gen3_en,
   rst => rst,
   address => memtest_out_addr3);
   
    U_MEMTESTout0 : entity work.ram(SYNC_READ)
            generic map (
                num_words => 1100,
                word_width => MEM_DATA_WIDTH,
                addr_width => MEM_ADDR_WIDTH
            )
            port map (
                clk => clk,
                wen => memtest_wr_en_o0,
                waddr => memtest_in_addr0(MEM_ADDR_WIDTH-1 downto 0),
                wdata => output0,
                raddr => memtest_out_addr(MEM_ADDR_WIDTH-1 downto 0),
                rdata => memtest_out_data0(MEM_DATA_WIDTH-1 downto 0)
            );
            
        U_MEM_IN_GEN4 : entity work.addr_gen
               generic map(start_addr => C_MEMTEST4_START_ADDR)
               port map(
               clk => clk,
               en => gen4_en,
               rst => rst,
               address => memtest_in_addr0);
               
    U_MEMTESTout1 : entity work.ram(SYNC_READ)
            generic map (
                num_words => 1100,
                word_width => MEM_DATA_WIDTH,
                addr_width => MEM_ADDR_WIDTH
            )
            port map (
                clk => clk,
                wen => memtest_wr_en_o1,
                waddr => memtest_in_addr1(MEM_ADDR_WIDTH-1 downto 0),
                wdata => output1,
                raddr => memtest_out_addr(MEM_ADDR_WIDTH-1 downto 0),
                rdata => memtest_out_data1(MEM_DATA_WIDTH-1 downto 0)
            );
        U_MEM_IN_GEN5 : entity work.addr_gen
           generic map(start_addr => C_MEMTEST5_START_ADDR)
           port map(
           clk => clk,
           en => gen4_en,
           rst => rst,
           address => memtest_in_addr1);

    U_MEMTESTout2 : entity work.ram(SYNC_READ)
            generic map (
                num_words => 1100,
                word_width => MEM_DATA_WIDTH,
                addr_width => MEM_ADDR_WIDTH
            )
            port map (
                clk => clk,
                wen => memtest_wr_en_o2,
                waddr => memtest_in_addr2(MEM_ADDR_WIDTH-1 downto 0),
                wdata => output2,
                raddr => memtest_out_addr(MEM_ADDR_WIDTH-1 downto 0),
                rdata => memtest_out_data2(MEM_DATA_WIDTH-1 downto 0)
            );
    U_MEM_IN_GEN6 : entity work.addr_gen
               generic map(start_addr => C_MEMTEST6_START_ADDR)
               port map(
               clk => clk,
               en => gen6_en,
               rst => rst,
               address => memtest_in_addr2);
               
    U_CONTROL : entity work.controller
          port map(
          clk => clk,
          rst => rst,
          go => go_epoch,
          size => epoch_size,
          done => done,
          gen0_en => gen0_en,
          gen1_en => gen1_en,
          gen2_en => gen2_en,
          gen3_en => gen3_en,
          gen4_en => gen4_en,
          gen5_en => gen5_en,
          gen6_en => gen6_en,
          dp_en => dp_en,
          memtest_wr_en_o0 => memtest_wr_en_o0,
          memtest_wr_en_o1 => memtest_wr_en_o1,
          memtest_wr_en_o2 => memtest_wr_en_o2
          );
end default;