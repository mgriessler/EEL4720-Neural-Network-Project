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
        epoch_size   : out DBL_ADDR;
        --input0, input1, input2, input3   : out NN_INPUT;
        --output0, output1, output2 : in NN_OUTPUT;
        result       : in  std_logic_vector(RESULT_SIZE-1 downto 0);
        done         : in  std_logic;
        
        memtest_in_addr : out DBL_ADDR;
        memtest_out_addr : out DBL_ADDR;
        memtest_in_data : out DBL_DATA;
        memtest_out_data0 : in DBL_DATA;
        memtest_out_data1 : in DBL_DATA;
        memtest_out_data2 : in DBL_DATA;
        memtest_wr_en0 : out std_logic;
        memtest_wr_en1 : out std_logic;
        memtest_wr_en2 : out std_logic;
        memtest_wr_en3 : out std_logic
        --memtest_wr_en_o0 : out std_logic;
        --memtest_wr_en_o1 : out std_logic;
        --memtest_wr_en_o2 : out std_logic
        
        

    );
end mem_map;

architecture BHV of mem_map is
begin
memtest_out_addr <= rd_addr(15 downto 0);
memtest_in_addr <=  wr_addr(15 downto 0);
memtest_in_data <= wr_data(15 downto 0);
memtest_wr_en0 <= '1' when (wr_en = '1' and rd_en = '0' and (unsigned(wr_addr) <= to_unsigned(C_MEMTEST0_END_ADDR, C_MMAP_ADDR_WIDTH) and unsigned(wr_addr) >= to_unsigned(C_MEMTEST0_START_ADDR, C_MMAP_ADDR_WIDTH))) else '0';
memtest_wr_en1 <= '1' when (wr_en = '1' and rd_en = '0' and (unsigned(wr_addr) <= to_unsigned(C_MEMTEST1_END_ADDR, C_MMAP_ADDR_WIDTH) and unsigned(wr_addr) >= to_unsigned(C_MEMTEST1_START_ADDR, C_MMAP_ADDR_WIDTH))) else '0';
memtest_wr_en2 <= '1' when (wr_en = '1' and rd_en = '0' and (unsigned(wr_addr) <= to_unsigned(C_MEMTEST2_END_ADDR, C_MMAP_ADDR_WIDTH) and unsigned(wr_addr) >= to_unsigned(C_MEMTEST2_START_ADDR, C_MMAP_ADDR_WIDTH))) else '0';
memtest_wr_en3 <= '1' when (wr_en = '1' and rd_en = '0' and (unsigned(wr_addr) <= to_unsigned(C_MEMTEST3_END_ADDR, C_MMAP_ADDR_WIDTH) and unsigned(wr_addr) >= to_unsigned(C_MEMTEST3_START_ADDR, C_MMAP_ADDR_WIDTH))) else '0';
--memtest_wr_en_o0 <= '1' when (wr_en = '1' and rd_en = '0' and (unsigned(wr_addr) <= to_unsigned(C_MEMTEST4_END_ADDR, C_MMAP_ADDR_WIDTH) and unsigned(wr_addr) >= to_unsigned(C_MEMTEST4_START_ADDR, C_MMAP_ADDR_WIDTH))) else '0';
--memtest_wr_en_o1 <= '1' when (wr_en = '1' and rd_en = '0' and (unsigned(wr_addr) <= to_unsigned(C_MEMTEST5_END_ADDR, C_MMAP_ADDR_WIDTH) and unsigned(wr_addr) >= to_unsigned(C_MEMTEST5_START_ADDR, C_MMAP_ADDR_WIDTH))) else '0';
--memtest_wr_en_o2 <= '1' when (wr_en = '1' and rd_en = '0' and (unsigned(wr_addr) <= to_unsigned(C_MEMTEST6_END_ADDR, C_MMAP_ADDR_WIDTH) and unsigned(wr_addr) >= to_unsigned(C_MEMTEST6_START_ADDR, C_MMAP_ADDR_WIDTH))) else '0';

	process(clk, rst)
	begin
--        input0 <= x"0080"; -- 0.5
--        input1 <= x"0040"; -- 0.25
--        input2 <= x"FF9A"; -- -0.4
--        input3 <= x"FF40"; -- 0.75
		if(rst = '1') then
			go_epoch <= '0';
			epoch_size <= (others => '0');
		elsif(clk'event and clk='1') then
			if(wr_en='1') then
                case wr_addr is
                    when std_logic_vector(to_unsigned(C_GO_ADDR, wr_addr'length)) =>
                        go_epoch <= wr_data(0);
                    when std_logic_vector(to_unsigned(C_SIZE_ADDR, wr_addr'length)) =>
                        epoch_size <= wr_data(epoch_size'range);
                    when others => null;
                end case;
                
			    --map inputs
			    --4 inputs
			end if;
			
--			if(rd_en='1') then
--			    --map outputs
--                if(rd_addr = std_logic_vector(to_unsigned(C_DONE_ADDR, rd_addr'length))) then
--                rd_data <= std_logic_vector(to_unsigned(0, rd_data'length-1)) & done;
--                end if;
--                if(unsigned(rd_addr) <= to_unsigned(C_MEMTEST4_END_ADDR, C_MMAP_ADDR_WIDTH) and unsigned(rd_addr) >= to_unsigned(C_MEMTEST4_START_ADDR, C_MMAP_ADDR_WIDTH)) then
                    
--                    rd_data(15 downto 0) <= memtest_out_data0;
--                    rd_data(31 downto 16) <= (others => '0');
--                end if;
--                if(unsigned(rd_addr) <= to_unsigned(C_MEMTEST5_END_ADDR, C_MMAP_ADDR_WIDTH) and unsigned(rd_addr) >= to_unsigned(C_MEMTEST5_START_ADDR, C_MMAP_ADDR_WIDTH)) then
                                    
--                    rd_data(15 downto 0) <= memtest_out_data1;
--                    rd_data(31 downto 16) <= (others => '0');
--                end if;
--                if(unsigned(rd_addr) <= to_unsigned(C_MEMTEST6_END_ADDR, C_MMAP_ADDR_WIDTH) and unsigned(rd_addr) >= to_unsigned(C_MEMTEST6_START_ADDR, C_MMAP_ADDR_WIDTH)) then
                                                    
--                    rd_data(15 downto 0) <= memtest_out_data2;
--                    rd_data(31 downto 16) <= (others => '0');
--                end if;
--			end if;
		end if;
	end process;
	
	rd_data <= std_logic_vector(to_unsigned(0, rd_data'length-1)) & done when (rd_addr = std_logic_vector(to_unsigned(C_DONE_ADDR, rd_addr'length))) else
	        "0000000000000000" & memtest_out_data0 when (unsigned(rd_addr) <= to_unsigned(C_MEMTEST4_END_ADDR, C_MMAP_ADDR_WIDTH) and unsigned(rd_addr) >= to_unsigned(C_MEMTEST4_START_ADDR, C_MMAP_ADDR_WIDTH)) else
	        "0000000000000000" & memtest_out_data1 when (unsigned(rd_addr) <= to_unsigned(C_MEMTEST5_END_ADDR, C_MMAP_ADDR_WIDTH) and unsigned(rd_addr) >= to_unsigned(C_MEMTEST5_START_ADDR, C_MMAP_ADDR_WIDTH)) else
	        "0000000000000000" & memtest_out_data2 when (unsigned(rd_addr) <= to_unsigned(C_MEMTEST6_END_ADDR, C_MMAP_ADDR_WIDTH) and unsigned(rd_addr) >= to_unsigned(C_MEMTEST6_START_ADDR, C_MMAP_ADDR_WIDTH)) else (others => '0');
end BHV;

