library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.config_pkg.all;

entity mem_map is
    port (
        clk     : in  std_logic;
        rst     : in  std_logic;
        wr_en   : in  std_logic;
        wr_addr : in  std_logic_vector(MMAP_ADDR_RANGE);
        wr_data : in  std_logic_vector(MMAP_DATA_RANGE);
        rd_en   : in  std_logic;
        rd_addr : in  std_logic_vector(MMAP_ADDR_RANGE);
        rd_data : out std_logic_vector(MMAP_DATA_RANGE);

        -- application-specific I/O
        go_epoch     : out std_logic;
        epoch_size   : out std_logic_vector(MAX_EPOCH_SIZE-1 downto 0);
        input0, input1, input2, input3   : out NN_INPUT;
        output0, output1, output2 : in NN_OUTPUT;
        result       : in  std_logic_vector(RESULT_SIZE-1 downto 0);
        done         : in  std_logic;
        
        memtest_in_addr : out DBL_ADDR;
        memtest_out_addr : out DBL_ADDR;
        memtest_in_data : out DBL_DATA;
        memtest_out_data : in DBL_DATA;
        memtest_wr_en : out std_logic

    );
end mem_map;

architecture BHV of mem_map is
    signal reg_rd_data : std_logic_vector(C_MMAP_DATA_WIDTH-1 downto 0);
    signal rd_data_sel : std_logic;

    constant C_RD_DATA_SEL_REG     : std_logic := '0';
    constant C_RD_DATA_SEL_MEMTEST_OUT : std_logic := '1';
begin
    memtest_in_data <= wr_data(memtest_in_data'range);
    memtest_in_addr <= wr_addr(memtest_in_addr'range);
    memtest_wr_en   <= '1' when wr_en = '1' and unsigned(wr_addr) >= unsigned(C_MEMTEST_START_ADDR) and unsigned(wr_addr) <= unsigned(C_MEMTEST_END_ADDR) else '0';
    memtest_out_addr <= rd_addr(memtest_out_addr'range);

	process(clk, rst)
	begin
        input0 <= x"0080"; -- 0.5
        input1 <= x"0040"; -- 0.25
        input2 <= x"FF9A"; -- -0.4
        input3 <= x"FF40"; -- 0.75
		if(rst = '1') then
			go_epoch <= '0';
			epoch_size <= (others => '0');
		elsif(rising_edge(clk)) then
			if(wr_en='1') then
                case wr_addr is
                    when others => null;
                end case;
			end if;
			
			if(rd_en='1') then
                rd_data_sel <= C_RD_DATA_SEL_REG;
                reg_rd_data <= (others => '0');
                
                if(unsigned(rd_addr) > unsigned(C_MEMTEST_END_ADDR)) then
                    rd_data_sel <= C_RD_DATA_SEL_REG;
                else
                    rd_data_sel <= C_RD_DATA_SEL_MEMTEST_OUT;
                end if;
                
                case rd_addr is
                    when C_OUTPUT0_ADDR =>
                        reg_rd_data <= std_logic_vector(to_unsigned(0,C_MMAP_DATA_WIDTH-16)) & output0;
                    when C_OUTPUT1_ADDR =>
                        reg_rd_data <= std_logic_vector(to_unsigned(0,C_MMAP_DATA_WIDTH-16)) & output1;
                    when C_OUTPUT2_ADDR =>
                        reg_rd_data <= std_logic_vector(to_unsigned(0,C_MMAP_DATA_WIDTH-16)) & output2;
                    when others => null;
                end case;
			end if;
		end if;
	end process;
	
	process(rd_data_sel, reg_rd_data, memtest_out_data)
	begin
        rd_data <= (others => '0');
	   
        case rd_data_sel is
            when C_RD_DATA_SEL_MEMTEST_OUT =>
                rd_data(memtest_out_data'range) <= memtest_out_data;
            when C_RD_DATA_SEL_REG =>
                rd_data <= reg_rd_data;
            when others => null;
        end case;
    end process;
end BHV;

