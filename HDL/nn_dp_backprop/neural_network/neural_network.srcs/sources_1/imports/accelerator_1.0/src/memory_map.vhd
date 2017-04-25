-- Greg Stitt
-- University of Florida

-- Entity: memory_map
-- This entity establishes connections with user-defined addresses and
-- internal FPGA components (e.g. registers and blockRAMs).
--
-- Note: Make sure to add any new addresses to user_pkg. Also, in your C code,
-- make sure to use the same constants.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.config_pkg.all;
use work.user_pkg.all;

library work;
use work.fixed_pkg.all;

USE work.heap_arr_pkg.all;

entity memory_map is
    port (
        clk     : in  std_logic;
        rst     : in  std_logic;
        wr_en   : in  std_logic;
        wr_addr : in  std_logic_vector(MMAP_ADDR_RANGE);
        wr_data : in  std_logic_vector(MMAP_DATA_RANGE);
        rd_en   : in  std_logic;
        rd_addr : in  std_logic_vector(MMAP_ADDR_RANGE);
        rd_data : out std_logic_vector(MMAP_DATA_RANGE);

        -- app-specific signals
        final0           : in std_logic_vector ((mantissa_size+char_size)-1 downto 0);
        final1           : in std_logic_vector ((mantissa_size+char_size)-1 downto 0);
        final2           : in std_logic_vector ((mantissa_size+char_size)-1 downto 0);
        mem_in_wr_data  : out std_logic_vector(C_MEM_IN_WIDTH-1 downto 0);
        mem_in_wr_addr  : out std_logic_vector(C_MEM_ADDR_WIDTH-1 downto 0);
        mem_in_wr_en    : out std_logic;
        mem_out_rd_data : in  std_logic_vector(C_MEM_OUT_WIDTH-1 downto 0);
        mem_out_rd_addr : out std_logic_vector(C_MEM_ADDR_WIDTH-1 downto 0)
        );
end memory_map;

architecture BHV of memory_map is

    signal reg_go      : std_logic;
    signal reg_size    : std_logic_vector(C_MEM_ADDR_WIDTH downto 0);
    signal reg_rd_data : std_logic_vector(C_MMAP_DATA_WIDTH-1 downto 0);
    signal rd_data_sel : std_logic;
    signal reg_final0 : std_logic_vector(C_MMAP_DATA_WIDTH-1 downto 0);
    signal reg_final1 : std_logic_vector(C_MMAP_DATA_WIDTH-1 downto 0);
    signal reg_final2 : std_logic_vector(C_MMAP_DATA_WIDTH-1 downto 0);

    constant C_RD_DATA_SEL_REG     : std_logic := '0';
    constant C_RD_DATA_SEL_MEM_OUT : std_logic := '1';
begin

    mem_in_wr_data <= wr_data(mem_in_wr_data'range);
    mem_in_wr_addr <= wr_addr(mem_in_wr_addr'range);
    mem_in_wr_en   <= '1' when wr_en = '1' and unsigned(wr_addr) >= unsigned(C_MEM_START_ADDR) and unsigned(wr_addr) <= unsigned(C_MEM_END_ADDR) else '0';

    mem_out_rd_addr <= rd_addr(mem_out_rd_addr'range);

    process(clk, rst)
    begin
        if (rst = '1') then
            reg_go   <= '0';
            reg_size <= (others => '0');
            rd_data_sel <= '0';
            reg_rd_data <= (others => '0');

        elsif (rising_edge(clk)) then

            reg_go <= '0';

            if (wr_en = '1') then

            end if;

            if (rd_en = '1') then

                rd_data_sel <= C_RD_DATA_SEL_REG;
                reg_rd_data <= (others => '0');

                -- check if rd_addr corresponds to memory or registers
                if (unsigned(rd_addr) > unsigned(C_MEM_END_ADDR)) then
                    rd_data_sel <= C_RD_DATA_SEL_REG;
                else
                    rd_data_sel <= C_RD_DATA_SEL_MEM_OUT;
                end if;

                -- select the appropriate register for a read				
                case rd_addr is
                    when C_FINAL_0_ADDR =>
                        reg_rd_data <= std_logic_vector(to_unsigned(0, C_MMAP_DATA_WIDTH)) and reg_final0;
                    when C_FINAL_1_ADDR =>						
						reg_rd_data <= std_logic_vector(to_unsigned(0, C_MMAP_DATA_WIDTH)) and reg_final1;
                    when C_FINAL_2_ADDR =>
                        reg_rd_data <= std_logic_vector(to_unsigned(0, C_MMAP_DATA_WIDTH)) and reg_final2;
                    when others => null;
                end case;
            end if;

        end if;
    end process;


    -- mux that defines dout based on where the read data come from
    process(rd_data_sel, reg_rd_data, mem_out_rd_data)
    begin
        rd_data <= (others => '0');

        case rd_data_sel is
            when C_RD_DATA_SEL_MEM_OUT =>
                rd_data(mem_out_rd_data'range) <= mem_out_rd_data;
            when C_RD_DATA_SEL_REG =>
                rd_data <= reg_rd_data;
            when others => null;
        end case;
    end process;

end BHV;
