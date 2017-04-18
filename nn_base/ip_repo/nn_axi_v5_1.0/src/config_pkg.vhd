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
    
    -- Memory Map address definitions    
    subtype addr_type is integer range 0 to 2**C_MMAP_ADDR_WIDTH-1;
    constant C_GO_ADDR : addr_type := 1;
    constant C_SIZE_ADDR   : addr_type := 2;
    constant C_DONE_ADDR   : addr_type := 3;
    constant C_MEMTEST0_END_ADDR : addr_type := 499;
    constant C_MEMTEST0_START_ADDR : addr_type := 400;
    constant C_MEMTEST1_END_ADDR : addr_type := 599;
    constant C_MEMTEST1_START_ADDR : addr_type := 500;
    constant C_MEMTEST2_END_ADDR : addr_type := 699;
    constant C_MEMTEST2_START_ADDR : addr_type := 600;
    constant C_MEMTEST3_END_ADDR : addr_type := 799;
    constant C_MEMTEST3_START_ADDR : addr_type := 700;
    constant C_MEMTEST4_END_ADDR : addr_type := 899;
    constant C_MEMTEST4_START_ADDR : addr_type := 800;
    constant C_MEMTEST5_END_ADDR : addr_type := 999;
    constant C_MEMTEST5_START_ADDR : addr_type := 900;
    constant C_MEMTEST6_END_ADDR : addr_type := 1099;
    constant C_MEMTEST6_START_ADDR : addr_type := 1000;
    
        
    
    -- Double Buffered Memory
    subtype DBL_ADDR is std_logic_vector(15 downto 0);
    subtype DBL_DATA is std_logic_vector(15 downto 0);
    
    constant MEM_DATA_WIDTH : addr_type := 16;
    constant MEM_ADDR_WIDTH : addr_type := 16;
    

    
end config_pkg;