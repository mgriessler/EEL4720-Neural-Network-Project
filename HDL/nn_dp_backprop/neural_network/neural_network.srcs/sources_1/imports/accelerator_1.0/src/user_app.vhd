-- Greg Stitt
-- University of Florida
-- Modified by Nicholas Landy and Matthew Griessler

library ieee;
use ieee.std_logic_1164.all;

use work.config_pkg.all;
use work.user_pkg.all;

library work;
use work.fixed_pkg.all;

USE work.heap_arr_pkg.all;

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

    signal final0   : std_logic_vector ((mantissa_size+char_size)-1 downto 0);
    signal final1   : std_logic_vector ((mantissa_size+char_size)-1 downto 0);
    signal final2   : std_logic_vector ((mantissa_size+char_size)-1 downto 0);

    signal mem_in_wr_data       : std_logic_vector(C_MEM_IN_WIDTH-1 downto 0);
    signal mem_in_wr_addr       : std_logic_vector(C_MEM_ADDR_WIDTH-1 downto 0);
    signal mem_in_rd_data       : std_logic_vector(C_MEM_IN_WIDTH-1 downto 0);
    signal mem_in_rd_addr       : std_logic_vector(C_MEM_ADDR_WIDTH-1 downto 0);
    signal mem_in_wr_en         : std_logic;
    signal mem_in_rd_addr_valid : std_logic;

    signal mem_out_wr_data       : std_logic_vector(C_MEM_OUT_WIDTH-1 downto 0);
    signal mem_out_wr_addr       : std_logic_vector(C_MEM_ADDR_WIDTH-1 downto 0);
    signal mem_out_rd_data       : std_logic_vector(C_MEM_OUT_WIDTH-1 downto 0);
    signal mem_out_rd_addr       : std_logic_vector(C_MEM_ADDR_WIDTH-1 downto 0);
    signal mem_out_wr_en         : std_logic;
    signal mem_out_wr_data_valid : std_logic;
    signal mem_out_done          : std_logic;
    
    signal addr_mem_in : std_logic;
    signal addr_mem_out : std_logic;
    signal dp_en : std_logic;

component nn_wrapper is
    port(
    input0 : in std_logic_vector(15 downto 0);
    input1 : in std_logic_vector(15 downto 0);
    input2 : in std_logic_vector(15 downto 0);
    input3 : in std_logic_vector(15 downto 0);
    
    final_0 : out std_logic_vector(15 downto 0);
    final_1 : out std_logic_vector(15 downto 0);
    final_2 : out std_logic_vector(15 downto 0);
    
    clk : in std_logic
    
    );
end component;
begin

	------------------------------------------------------------------------------
    U_MMAP : entity work.memory_map
        port map (
            clk     => clk,
            rst     => rst,
            wr_en   => mmap_wr_en,
            wr_addr => mmap_wr_addr,
            wr_data => mmap_wr_data,
            rd_en   => mmap_rd_en,
            rd_addr => mmap_rd_addr,
            rd_data => mmap_rd_data,
		
			-- TODO: connect to appropriate logic
            final0              => X"FFFE",         
            final1            => X"FFFE",       
            final2            => X"FFFE",       
			
			-- already connected to block RAMs
			-- the memory map functionality writes to the input ram
			-- and reads from the output ram
            mem_in_wr_data  => mem_in_wr_data,
            mem_in_wr_addr  => mem_in_wr_addr,
            mem_in_wr_en    => mem_in_wr_en,
            mem_out_rd_data => mem_out_rd_data,
            mem_out_rd_addr => mem_out_rd_addr
            );
	------------------------------------------------------------------------------

	
	------------------------------------------------------------------------------
    -- input memory
    -- written to by memory map
    -- read from by controller+datapath
    U_MEM_IN : entity work.ram(SYNC_READ)
        generic map (
            num_words  => 2**C_MEM_ADDR_WIDTH,
            word_width => C_MEM_IN_WIDTH,
            addr_width => C_MEM_ADDR_WIDTH)
        port map (
            clk   => clk,
            wen   => mem_in_wr_en,
            waddr => mem_in_wr_addr,
            wdata => mem_in_wr_data,
            raddr => mem_in_rd_addr,  -- TODO: connect to input address generator
            rdata => mem_in_rd_data); -- TODO: connect to pipeline input
	------------------------------------------------------------------------------

	
	------------------------------------------------------------------------------
    -- output memory
    -- written to by controller+datapath
    -- read from by memory map
    U_MEM_OUT : entity work.ram(SYNC_READ)
        generic map (
            num_words  => 2**C_MEM_ADDR_WIDTH,
            word_width => C_MEM_OUT_WIDTH,
            addr_width => C_MEM_ADDR_WIDTH)
        port map (
            clk   => clk,
            wen   => mem_out_wr_en,
            waddr => mem_out_wr_addr,  -- TODO: connect to output address generator
            wdata => mem_out_wr_data,  -- TODO: connect to pipeline output
            raddr => mem_out_rd_addr,
            rdata => mem_out_rd_data);
	------------------------------------------------------------------------------
	U_NN:nn_wrapper
        port map(
        input0 => std_logic_vector(to_sfixed(0.5, char_size-1, -mantissa_size)),
        input1 => std_logic_vector(to_sfixed(0.25, char_size-1, -mantissa_size)),
        input2 => std_logic_vector(to_sfixed(-0.4, char_size-1, -mantissa_size)),
        input3 => std_logic_vector(to_sfixed(-0.75, char_size-1, -mantissa_size)),
        
        final_0 => final0,
        final_1 => final1,
        final_2 => final2,
        
        clk => clk
        
        );
   
	
	-- TODO: instatiate controllerm datapath/pipeline, address generators, 
	-- and any other necessary logic
			
end default;
