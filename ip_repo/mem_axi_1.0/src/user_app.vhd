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
    signal ctrl_go : std_logic;
    signal ctrl_epoch_size : std_logic_vector(C_MMAP_DATA_WIDTH-1 downto 0);
    signal ctrl_done : std_logic;
    signal ctrl_num_epochs : std_logic_vector(C_MMAP_DATA_WIDTH-1 downto 0);

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

    signal input_0 : std_logic_vector(MEM_DATA_WIDTH-1 downto 0);
    signal input_1 : std_logic_vector(MEM_DATA_WIDTH-1 downto 0);
    signal input_2 : std_logic_vector(MEM_DATA_WIDTH-1 downto 0);
    signal input_3 : std_logic_vector(MEM_DATA_WIDTH-1 downto 0);
    signal final_0 : std_logic_vector(MEM_DATA_WIDTH-1 downto 0);
    signal final_1 : std_logic_vector(MEM_DATA_WIDTH-1 downto 0);
    signal final_2 : std_logic_vector(MEM_DATA_WIDTH-1 downto 0);
    
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
        num_epochs => ctrl_num_epochs,
        backprop => bp,
        init => nn_init,
        done => ctrl_done,
        input_0 => input_0,
        input_1 => input_1,
        input_2 => input_2,
        input_3 => input_3,
        final_0 => final_0,
        final_1 => final_1,
        final_2 => final_2,
        output => output_mem_wr_data
    );

    U_CNTRL : entity work.controller(cont)
    port map (
        clk => clk,
        rst => rst,
        go => ctrl_go,
        epoch_size => ctrl_epoch_size,
        num_epochs => ctrl_num_epochs,
        done => ctrl_done,
        nn_bp => nn_bp,
        bp => bp,
        nn_en => nn_en,
        input_mems_rd_addr_inc => input_mems_rd_addr_inc,
        output_mem_wr_addr_rst => output_mem_wr_addr_rst,
        input_mems_rd_addr_rst => input_mems_rd_addr_rst
    );
    
    output_mem_wr_data <= "00000000000000" & nn_out;
    
    U_NN_WRAPPER : entity work.nn_wrapper(wrap)
    port map (
        clk => clk,
        clr => rst,
        en => nn_en,
        input0 => input_0,
        input1 => input_1,
        input2 => input_2,
        input3 => input_3,
        y_0 => (others => '0'),
        y_1 => (others => '0'),
        y_2 => (others => '0'),
        final_0 => final_0,
        final_1 => final_1,
        final_2 => final_2,
        output => nn_out,
        new_output => nn_new_output,
        n => std_logic_vector(to_sfixed(0.05, char_size-1, -mantissa_size)),
        initialize => nn_init
    );
end default;