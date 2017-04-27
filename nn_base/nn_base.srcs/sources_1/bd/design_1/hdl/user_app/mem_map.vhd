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
        epoch_size   : out std_logic_vector(MEM_ADDR_WIDTH-1 downto 0);
        input0, input1, input2, input3   : out NN_INPUT;
        output0, output1, output2 : in NN_OUTPUT;
        result       : in  std_logic_vector(RESULT_SIZE-1 downto 0);
        done         : in  std_logic;
        
        mem_in_addr : out DBL_ADDR;
        mem_out_addr : out DBL_ADDR;
        mem_in_data : out DBL_DATA;

        memtest_out_data : in DBL_DATA;
        memtest_wr_en : out std_logic;

        input_0_out_data : in DBL_DATA;
        input_0_wr_en : out std_logic;

        input_1_out_data : in DBL_DATA;
        input_1_wr_en : out std_logic;

        input_2_out_data : in DBL_DATA;
        input_2_wr_en : out std_logic;

        input_3_out_data : in DBL_DATA;
        input_3_wr_en : out std_logic;

        expected_output_out_data : in DBL_DATA;
        expected_output_wr_en : out std_logic;

        output_out_data : in DBL_DATA;
        output_wr_en : out std_logic

    );
end mem_map;

architecture BHV of mem_map is
    signal reg_go_epoch : std_logic;
    signal reg_epoch_size : std_logic_vector(MEM_ADDR_WIDTH-1 downto 0);
    signal reg_rd_data : std_logic_vector(C_MMAP_DATA_WIDTH-1 downto 0);
    signal rd_data_sel : std_logic_vector(2 downto 0);

    constant C_RD_DATA_SEL_REG     : std_logic_vector := "000";
    constant C_RD_DATA_SEL_MEMTEST_OUT : std_logic_vector := "001";
    constant C_RD_DATA_SEL_INPUT_0_OUT : std_logic_vector := "010";
    constant C_RD_DATA_SEL_INPUT_1_OUT : std_logic_vector := "011";
    constant C_RD_DATA_SEL_INPUT_2_OUT : std_logic_vector := "100";
    constant C_RD_DATA_SEL_INPUT_3_OUT : std_logic_vector := "101";
    constant C_RD_DATA_SEL_EXPECTED_OUTPUT_OUT : std_logic_vector := "110";
    constant C_RD_DATA_SEL_OUTPUT_OUT : std_logic_vector := "111";
begin
    mem_in_data <= wr_data(mem_in_data'range);
    mem_in_addr <= wr_addr(mem_in_addr'range);
    mem_out_addr <= rd_addr(mem_out_addr'range);

    memtest_wr_en   <= '1' when wr_en = '1' and unsigned(wr_addr) >= unsigned(C_MEMTEST_START_ADDR) and unsigned(wr_addr) <= unsigned(C_MEMTEST_END_ADDR) else '0';
    input_0_wr_en   <= '1' when wr_en = '1' and unsigned(wr_addr) >= unsigned(C_INPUT_0_START_ADDR) and unsigned(wr_addr) <= unsigned(C_INPUT_0_END_ADDR) else '0';
    input_1_wr_en   <= '1' when wr_en = '1' and unsigned(wr_addr) >= unsigned(C_INPUT_1_START_ADDR) and unsigned(wr_addr) <= unsigned(C_INPUT_1_END_ADDR) else '0';
    input_2_wr_en   <= '1' when wr_en = '1' and unsigned(wr_addr) >= unsigned(C_INPUT_2_START_ADDR) and unsigned(wr_addr) <= unsigned(C_INPUT_2_END_ADDR) else '0';
    input_3_wr_en   <= '1' when wr_en = '1' and unsigned(wr_addr) >= unsigned(C_INPUT_3_START_ADDR) and unsigned(wr_addr) <= unsigned(C_INPUT_3_END_ADDR) else '0';
    expected_output_wr_en   <= '1' when wr_en = '1' and unsigned(wr_addr) >= unsigned(C_EXPECTED_OUTPUT_START_ADDR) and unsigned(wr_addr) <= unsigned(C_EXPECTED_OUTPUT_END_ADDR) else '0';
    output_wr_en   <= '1' when wr_en = '1' and unsigned(wr_addr) >= unsigned(C_OUTPUT_START_ADDR) and unsigned(wr_addr) <= unsigned(C_OUTPUT_END_ADDR) else '0';

	process(clk, rst)
	begin
        input0 <= x"0080"; -- 0.5
        input1 <= x"0040"; -- 0.25
        input2 <= x"FF9A"; -- -0.4
        input3 <= x"FF40"; -- 0.75
		if(rst = '1') then
			reg_go_epoch <= '0';
			reg_epoch_size <= (others => '0');
            rd_data_sel <= (others => '0');
            reg_rd_data <= (others => '0');
		elsif(rising_edge(clk)) then
            reg_go_epoch <= '0';
			if(wr_en='1') then
                case wr_addr is
                    when C_GO_EPOCH_ADDR =>
                        reg_go_epoch <= wr_data(0);
                    when C_EPOCH_SIZE_ADDR =>
                        reg_epoch_size <= wr_data(reg_epoch_size'range);
                    when others => null;
                end case;
			end if;
			
			if(rd_en='1') then
                rd_data_sel <= C_RD_DATA_SEL_REG;
                reg_rd_data <= (others => '0');
                
                if((unsigned(rd_addr) >= unsigned(C_MEMTEST_START_ADDR)) and (unsigned(rd_addr) <= unsigned(C_MEMTEST_END_ADDR))) then
                    rd_data_sel <= C_RD_DATA_SEL_MEMTEST_OUT;
                elsif((unsigned(rd_addr) >= unsigned(C_INPUT_0_START_ADDR)) and (unsigned(rd_addr) <= unsigned(C_INPUT_0_END_ADDR))) then
                    rd_data_sel <= C_RD_DATA_SEL_INPUT_0_OUT;
                elsif((unsigned(rd_addr) >= unsigned(C_INPUT_1_START_ADDR)) and (unsigned(rd_addr) <= unsigned(C_INPUT_1_END_ADDR))) then
                    rd_data_sel <= C_RD_DATA_SEL_INPUT_1_OUT;
                elsif((unsigned(rd_addr) >= unsigned(C_INPUT_2_START_ADDR)) and (unsigned(rd_addr) <= unsigned(C_INPUT_2_END_ADDR))) then
                    rd_data_sel <= C_RD_DATA_SEL_INPUT_2_OUT;
                elsif((unsigned(rd_addr) >= unsigned(C_INPUT_3_START_ADDR)) and (unsigned(rd_addr) <= unsigned(C_INPUT_3_END_ADDR))) then
                    rd_data_sel <= C_RD_DATA_SEL_INPUT_3_OUT;
                elsif((unsigned(rd_addr) >= unsigned(C_EXPECTED_OUTPUT_START_ADDR)) and (unsigned(rd_addr) <= unsigned(C_EXPECTED_OUTPUT_END_ADDR))) then
                    rd_data_sel <= C_RD_DATA_SEL_EXPECTED_OUTPUT_OUT;
                elsif((unsigned(rd_addr) >= unsigned(C_OUTPUT_START_ADDR)) and (unsigned(rd_addr) <= unsigned(C_OUTPUT_END_ADDR))) then
                    rd_data_sel <= C_RD_DATA_SEL_OUTPUT_OUT;
                else
                    rd_data_sel <= C_RD_DATA_SEL_REG;
                end if;
                
                case rd_addr is
                    when C_OUTPUT0_ADDR =>
                        reg_rd_data <= std_logic_vector(to_unsigned(0,C_MMAP_DATA_WIDTH-16)) & output0;
                    when C_OUTPUT1_ADDR =>
                        reg_rd_data <= std_logic_vector(to_unsigned(0,C_MMAP_DATA_WIDTH-16)) & output1;
                    when C_OUTPUT2_ADDR =>
                        reg_rd_data <= std_logic_vector(to_unsigned(0,C_MMAP_DATA_WIDTH-16)) & output2;
                    when C_GO_EPOCH_ADDR =>
                        reg_rd_data <= std_logic_vector(to_unsigned(0,C_MMAP_DATA_WIDTH-1)) & reg_go_epoch;
                    when C_EPOCH_SIZE_ADDR =>
                        reg_rd_data <= (others => '0');
                        reg_rd_data(reg_epoch_size'range) <= reg_epoch_size;
                    when C_DONE_ADDR =>
                        reg_rd_data <= std_logic_vector(to_unsigned(0,C_MMAP_DATA_WIDTH-1)) & done;
                    when others => null;
                end case;
			end if;
		end if;
	end process;
    
    go_epoch <= reg_go_epoch;
    epoch_size <= reg_epoch_size;
	
	process(rd_data_sel, reg_rd_data, memtest_out_data, input_0_out_data, input_1_out_data, input_2_out_data, input_3_out_data, expected_output_out_data, output_out_data)
	begin
        rd_data <= (others => '0');
	   
        case rd_data_sel is
            when C_RD_DATA_SEL_MEMTEST_OUT =>
                rd_data(memtest_out_data'range) <= memtest_out_data;
            when C_RD_DATA_SEL_INPUT_0_OUT =>
                rd_data(input_0_out_data'range) <= input_0_out_data;
            when C_RD_DATA_SEL_INPUT_1_OUT =>
                rd_data(input_1_out_data'range) <= input_1_out_data;
            when C_RD_DATA_SEL_INPUT_2_OUT =>
                rd_data(input_2_out_data'range) <= input_2_out_data;
            when C_RD_DATA_SEL_INPUT_3_OUT =>
                rd_data(input_3_out_data'range) <= input_3_out_data;
            when C_RD_DATA_SEL_EXPECTED_OUTPUT_OUT =>
                rd_data(expected_output_out_data'range) <= expected_output_out_data;
            when C_RD_DATA_SEL_OUTPUT_OUT =>
                rd_data(output_out_data'range) <= output_out_data;
            when C_RD_DATA_SEL_REG =>
                rd_data <= reg_rd_data;
            when others => null;
        end case;
    end process;
end BHV;

