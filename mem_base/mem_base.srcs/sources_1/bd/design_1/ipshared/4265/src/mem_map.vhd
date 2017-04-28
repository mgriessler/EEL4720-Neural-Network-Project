library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.config_pkg.all;

entity mem_map is
    port (
        --AXI
        clk     : in  std_logic;
        rst     : in  std_logic;
        wr_en   : in  std_logic;
        wr_addr : in  std_logic_vector(MMAP_ADDR_RANGE);
        wr_data : in  std_logic_vector(MMAP_DATA_RANGE);
        rd_en   : in  std_logic;
        rd_addr : in  std_logic_vector(MMAP_ADDR_RANGE);
        rd_data : out std_logic_vector(MMAP_DATA_RANGE);

        --control signals
        go : out std_logic;
        epoch_size : out std_logic_vector(C_MMAP_DATA_WIDTH-1 downto 0);
        done : in std_logic;
        backprop : out std_logic;
        init : out std_logic;
        
        input_0 : out std_logic_vector(MEM_DATA_WIDTH-1 downto 0);
        input_1 : out std_logic_vector(MEM_DATA_WIDTH-1 downto 0);
        input_2 : out std_logic_vector(MEM_DATA_WIDTH-1 downto 0);
        input_3 : out std_logic_vector(MEM_DATA_WIDTH-1 downto 0);
        final_0 : in std_logic_vector(MEM_DATA_WIDTH-1 downto 0);
        final_1 : in std_logic_vector(MEM_DATA_WIDTH-1 downto 0);
        final_2 : in std_logic_vector(MEM_DATA_WIDTH-1 downto 0);
        output : in std_logic_vector(MEM_DATA_WIDTH-1 downto 0)
    );
end mem_map;

architecture BHV of mem_map is
    signal reg_rd_data : std_logic_vector(C_MMAP_DATA_WIDTH-1 downto 0);
    signal rd_data_sel : std_logic_vector(2 downto 0);
    signal reg_go : std_logic;
    signal reg_epoch_size : std_logic_vector(C_MMAP_DATA_WIDTH-1 downto 0);
    signal reg_bp : std_logic;
    signal reg_init : std_logic;
    signal reg_input_0 : std_logic_vector(MEM_DATA_WIDTH-1 downto 0);
    signal reg_input_1 : std_logic_vector(MEM_DATA_WIDTH-1 downto 0);
    signal reg_input_2 : std_logic_vector(MEM_DATA_WIDTH-1 downto 0);
    signal reg_input_3 : std_logic_vector(MEM_DATA_WIDTH-1 downto 0);

    constant C_RD_DATA_SEL_REG     : std_logic_vector := "000";
    constant C_RD_DATA_SEL_MEMTEST_OUT : std_logic_vector := "001";
    constant C_RD_DATA_SEL_OUTPUT_OUT : std_logic_vector := "111";
begin
	process(clk, rst)
	begin
		if(rst = '1') then
            reg_go <= '0';
            reg_epoch_size <= (others => '0');
            reg_bp <= '0';
            reg_init <= '0';
            rd_data_sel <= (others => '0');
            reg_rd_data <= (others => '0');
            reg_input_0 <= (others => '0');
            reg_input_1 <= (others => '0');
            reg_input_2 <= (others => '0');
            reg_input_3 <= (others => '0');
		elsif(rising_edge(clk)) then
            --reg_go <= '0';
            
            if(wr_en = '1') then
                case wr_addr is
                    when C_GO_EPOCH_ADDR =>
                        reg_go <= wr_data(0);
                    when C_EPOCH_SIZE_ADDR =>
                        reg_epoch_size <= wr_data(epoch_size'range);
                    when C_BP_ADDR =>
                        reg_bp <= wr_data(0);
                    when C_INIT_ADDR =>
                        reg_init <= wr_data(0);
                    when C_INPUT_0_ADDR =>
                        reg_input_0 <= wr_data(input_0'range);
                    when C_INPUT_1_ADDR =>
                        reg_input_1 <= wr_data(input_1'range);
                    when C_INPUT_2_ADDR =>
                        reg_input_2 <= wr_data(input_2'range);
                    when C_INPUT_3_ADDR =>
                        reg_input_3 <= wr_data(input_3'range);
                    when others => null;                    
                end case;
            end if;

			if(rd_en='1') then
                rd_data_sel <= C_RD_DATA_SEL_REG;
                reg_rd_data <= (others => '0');
                
                case rd_addr is
                    when C_GO_EPOCH_ADDR =>
                        reg_rd_data <= std_logic_vector(to_unsigned(0, C_MMAP_DATA_WIDTH-1)) & reg_go;
                    when C_EPOCH_SIZE_ADDR =>
                        reg_rd_data <= (others => '0');
                        reg_rd_data(epoch_size'range) <= reg_epoch_size;
                    when C_DONE_ADDR =>
                        reg_rd_data <= std_logic_vector(to_unsigned(0, C_MMAP_DATA_WIDTH-1)) & done;
                    when C_BP_ADDR =>
                        reg_rd_data <= std_logic_vector(to_unsigned(0, C_MMAP_DATA_WIDTH-1)) & reg_bp;
                    when C_INIT_ADDR =>
                        reg_rd_data <= std_logic_vector(to_unsigned(0, C_MMAP_DATA_WIDTH-1)) & reg_init;
                    when C_INPUT_0_ADDR =>
                        reg_rd_data <= std_logic_vector(to_unsigned(0, C_MMAP_DATA_WIDTH-16)) & reg_input_0;
                    when C_INPUT_1_ADDR =>
                        reg_rd_data <= std_logic_vector(to_unsigned(0, C_MMAP_DATA_WIDTH-16)) & reg_input_1;
                    when C_INPUT_2_ADDR =>
                        reg_rd_data <= std_logic_vector(to_unsigned(0, C_MMAP_DATA_WIDTH-16)) & reg_input_2;
                    when C_INPUT_3_ADDR =>
                        reg_rd_data <= std_logic_vector(to_unsigned(0, C_MMAP_DATA_WIDTH-16)) & reg_input_3;
                    when C_FINAL_0_ADDR =>
                        reg_rd_data <= std_logic_vector(to_unsigned(0, C_MMAP_DATA_WIDTH-16)) & final_0;
                    when C_FINAL_1_ADDR =>
                        reg_rd_data <= std_logic_vector(to_unsigned(0, C_MMAP_DATA_WIDTH-16)) & final_1;
                    when C_FINAL_2_ADDR =>
                        reg_rd_data <= std_logic_vector(to_unsigned(0, C_MMAP_DATA_WIDTH-16)) & final_2;
                    when C_OUTPUT_ADDR =>
                        reg_rd_data <= std_logic_vector(to_unsigned(0, C_MMAP_DATA_WIDTH-16)) & output;
                    when others => null;
                end case;
			end if;
		end if;
	end process;
	
	go <= reg_go;
	epoch_size <= reg_epoch_size;
	backprop <= reg_bp;
	init <= reg_init;
	input_0 <= reg_input_0;
	input_1 <= reg_input_1;
	input_2 <= reg_input_2;
	input_3 <= reg_input_3;
	
    
	process(rd_data_sel, reg_rd_data)
	begin
        rd_data <= (others => '0');
	   
        case rd_data_sel is
            when C_RD_DATA_SEL_REG =>
                rd_data <= reg_rd_data;
            when others => null;
        end case;
    end process;
end BHV;

