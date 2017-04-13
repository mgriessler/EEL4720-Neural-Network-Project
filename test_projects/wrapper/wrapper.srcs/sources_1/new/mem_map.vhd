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
        done         : in  std_logic
    );
end memory_map;

architecture BHV of mem_map is
begin
	process(clk, rst)
	begin
        input0 <= x"0080"; -- 0.5
        input1 <= x"0040"; -- 0.25
        input2 <= x"FF9A"; -- -0.4
        input3 <= x"FF40"; -- 0.75
		if(rst = '1') then
			go_epoch <= '0';
			epoch_size <= (others => '0');
		elsif(clk'event and clk='1') then
			if(wr_en='1') then
			    --map inputs
			    --4 inputs
			end if;
			
			if(rd_en='1') then
			    --map outputs
				if(rd_addr = std_logic_vector(to_unsigned(C_OUTPUT0_ADDR,C_MMAP_ADDR_WIDTH))) then
                    rd_data <= output0;
                elsif(rd_addr = std_logic_vector(to_unsigned(C_OUTPUT1_ADDR,C_MMAP_ADDR_WIDTH))) then
                    rd_data <= output1;
                elsif(rd_addr = std_logic_vector(to_unsigned(C_OUTPUT2_ADDR,C_MMAP_ADDR_WIDTH))) then
                    rd_data <= output2;
                end if;
			end if;
		end if;
	end process;
end BHV;

