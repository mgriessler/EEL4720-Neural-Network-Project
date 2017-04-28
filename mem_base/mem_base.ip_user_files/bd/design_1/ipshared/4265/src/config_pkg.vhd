library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package config_pkg is

    constant C_MMAP_ADDR_WIDTH : positive := 18;
    constant C_MMAP_DATA_WIDTH : positive := 32;

    subtype MMAP_ADDR_RANGE is natural range C_MMAP_ADDR_WIDTH-1 downto 0;
    subtype MMAP_DATA_RANGE is natural range C_MMAP_DATA_WIDTH-1 downto 0;
        
    constant MAX_EPOCH_SIZE : positive := 10; --epoch size = 2^MAX_EPOCH_SIZE
    constant RESULT_SIZE : positive := 3; --number of bits required for result
    constant INPUT_WIDTH : positive := 16;
    constant OUTPUT_WIDTH : positive := 16;
    
    -- Neural network
    subtype NN_INPUT is std_logic_vector(INPUT_WIDTH-1 downto 0);
    subtype NN_OUTPUT is std_logic_vector(OUTPUT_WIDTH-1 downto 0);
    
    constant C_MEMS_SRC_MAP : std_logic := '0';
    constant C_MEMS_SRC_CTRL : std_logic := '1';
    
    -- Memory Map address definitions    
    subtype addr_type is integer range 0 to 2**C_MMAP_ADDR_WIDTH-1;
    constant MEM_ADDR_WIDTH : positive := 10;
    constant MEM_DATA_WIDTH : positive := 16;
    constant C_INPUT_0_ADDR       : std_logic_vector(MMAP_ADDR_RANGE) := std_logic_vector(to_unsigned(2**C_MMAP_ADDR_WIDTH-9, C_MMAP_ADDR_WIDTH));
    constant C_INPUT_1_ADDR       : std_logic_vector(MMAP_ADDR_RANGE) := std_logic_vector(to_unsigned(2**C_MMAP_ADDR_WIDTH-10, C_MMAP_ADDR_WIDTH));
    constant C_INPUT_2_ADDR       : std_logic_vector(MMAP_ADDR_RANGE) := std_logic_vector(to_unsigned(2**C_MMAP_ADDR_WIDTH-11, C_MMAP_ADDR_WIDTH));
    constant C_INPUT_3_ADDR       : std_logic_vector(MMAP_ADDR_RANGE) := std_logic_vector(to_unsigned(2**C_MMAP_ADDR_WIDTH-12, C_MMAP_ADDR_WIDTH));
    constant C_FINAL_0_ADDR       : std_logic_vector(MMAP_ADDR_RANGE) := std_logic_vector(to_unsigned(2**C_MMAP_ADDR_WIDTH-13, C_MMAP_ADDR_WIDTH));
    constant C_FINAL_1_ADDR       : std_logic_vector(MMAP_ADDR_RANGE) := std_logic_vector(to_unsigned(2**C_MMAP_ADDR_WIDTH-14, C_MMAP_ADDR_WIDTH));
    constant C_FINAL_2_ADDR       : std_logic_vector(MMAP_ADDR_RANGE) := std_logic_vector(to_unsigned(2**C_MMAP_ADDR_WIDTH-15, C_MMAP_ADDR_WIDTH));
    constant C_OUTPUT_ADDR       : std_logic_vector(MMAP_ADDR_RANGE) := std_logic_vector(to_unsigned(2**C_MMAP_ADDR_WIDTH-16, C_MMAP_ADDR_WIDTH));
    
    constant C_INIT_ADDR         : std_logic_vector(MMAP_ADDR_RANGE) := std_logic_vector(to_unsigned(2**C_MMAP_ADDR_WIDTH-8, C_MMAP_ADDR_WIDTH));
    constant C_BP_ADDR         : std_logic_vector(MMAP_ADDR_RANGE) := std_logic_vector(to_unsigned(2**C_MMAP_ADDR_WIDTH-7, C_MMAP_ADDR_WIDTH));
    constant C_GO_EPOCH_ADDR   : std_logic_vector(MMAP_ADDR_RANGE) := std_logic_vector(to_unsigned(2**C_MMAP_ADDR_WIDTH-6, C_MMAP_ADDR_WIDTH));
    constant C_EPOCH_SIZE_ADDR : std_logic_vector(MMAP_ADDR_RANGE) := std_logic_vector(to_unsigned(2**C_MMAP_ADDR_WIDTH-5, C_MMAP_ADDR_WIDTH));
    constant C_DONE_ADDR       : std_logic_vector(MMAP_ADDR_RANGE) := std_logic_vector(to_unsigned(2**C_MMAP_ADDR_WIDTH-4, C_MMAP_ADDR_WIDTH));
    constant C_MEMTEST_START_ADDR : std_logic_vector(MMAP_ADDR_RANGE) := (others => '0');
    constant C_MEMTEST_END_ADDR : std_logic_vector(MMAP_ADDR_RANGE) := std_logic_vector(unsigned(C_MEMTEST_START_ADDR) + (2**MEM_ADDR_WIDTH-1));
    constant C_INPUT_0_START_ADDR : std_logic_vector(MMAP_ADDR_RANGE) := std_logic_vector(unsigned(C_MEMTEST_END_ADDR) + 1);
    constant C_INPUT_0_END_ADDR : std_logic_vector(MMAP_ADDR_RANGE) := std_logic_vector(unsigned(C_INPUT_0_START_ADDR) + (2**MEM_ADDR_WIDTH-1));
    constant C_INPUT_1_START_ADDR : std_logic_vector(MMAP_ADDR_RANGE) := std_logic_vector(unsigned(C_INPUT_0_END_ADDR) + 1);
    constant C_INPUT_1_END_ADDR : std_logic_vector(MMAP_ADDR_RANGE) := std_logic_vector(unsigned(C_INPUT_1_START_ADDR) + (2**MEM_ADDR_WIDTH-1));
    constant C_INPUT_2_START_ADDR : std_logic_vector(MMAP_ADDR_RANGE) := std_logic_vector(unsigned(C_INPUT_1_END_ADDR) + 1);
    constant C_INPUT_2_END_ADDR : std_logic_vector(MMAP_ADDR_RANGE) := std_logic_vector(unsigned(C_INPUT_2_START_ADDR) + (2**MEM_ADDR_WIDTH-1));
    constant C_INPUT_3_START_ADDR : std_logic_vector(MMAP_ADDR_RANGE) := std_logic_vector(unsigned(C_INPUT_2_END_ADDR) + 1);
    constant C_INPUT_3_END_ADDR : std_logic_vector(MMAP_ADDR_RANGE) := std_logic_vector(unsigned(C_INPUT_3_START_ADDR) + (2**MEM_ADDR_WIDTH-1));
    constant C_EXPECTED_OUTPUT_START_ADDR : std_logic_vector(MMAP_ADDR_RANGE) := std_logic_vector(unsigned(C_INPUT_3_END_ADDR) + 1);
    constant C_EXPECTED_OUTPUT_END_ADDR : std_logic_vector(MMAP_ADDR_RANGE) := std_logic_vector(unsigned(C_EXPECTED_OUTPUT_START_ADDR) + (2**MEM_ADDR_WIDTH-1));
    constant C_OUTPUT_START_ADDR : std_logic_vector(MMAP_ADDR_RANGE) := std_logic_vector(unsigned(C_EXPECTED_OUTPUT_END_ADDR) + 1);
    constant C_OUTPUT_END_ADDR : std_logic_vector(MMAP_ADDR_RANGE) := std_logic_vector(unsigned(C_OUTPUT_START_ADDR) + (2**MEM_ADDR_WIDTH-1));
    
    subtype DBL_ADDR is std_logic_vector(MEM_ADDR_WIDTH-1 downto 0);
    subtype DBL_DATA is std_logic_vector(MEM_DATA_WIDTH-1 downto 0);
    
    constant C_RES_OUTPUT_0 : std_logic_vector(MEM_DATA_WIDTH-1 downto 0) := std_logic_vector(to_unsigned(0, MEM_DATA_WIDTH));
    constant C_RES_OUTPUT_1 : std_logic_vector(MEM_DATA_WIDTH-1 downto 0) := std_logic_vector(to_unsigned(1, MEM_DATA_WIDTH));
    constant C_RES_OUTPUT_2 : std_logic_vector(MEM_DATA_WIDTH-1 downto 0) := std_logic_vector(to_unsigned(2, MEM_DATA_WIDTH));
    
end config_pkg;