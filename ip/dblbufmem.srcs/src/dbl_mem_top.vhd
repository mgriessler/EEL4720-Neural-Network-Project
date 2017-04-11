----------------------------------------------------------------------------------
-- Matthew Griessler
--Double Buffer Memory
--Description: TODO
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dbl_mem_top is
    Port ( 
        in_addr, out_addr : in std_logic_vector(31 downto 0);
        in_data : in std_logic_vector(31 downto 0);
        trigger, rst, clk, wren : in std_logic;
        out_data : out std_logic_vector(31 downto 0)
    );
end dbl_mem_top;

architecture STR of dbl_mem_top is
    signal rselect, wselect : std_logic;
    signal memA_data_out, memB_data_out : std_logic_vector(31 downto 0);
    signal tmp_mema_we, tmp_memb_we : std_logic_vector(3 downto 0);
begin
    U_SWITCH : entity work.dblBufSwitch(BHV)
    port map (
        trigger => trigger,
        rst => rst,
        rselect => rselect,
        wselect => wselect
    );
    
    U_RMUX : entity work.mux_2_1(BHV)
    generic map (
        width => 32)
    port map (
        input1 => memA_data_out,
        input2 => memB_data_out,
        output => out_data,
        sel => rselect
    );
    
    U_MEM : entity work.design_1_wrapper(STRUCTURE)
    port map (
        MEMA_PORTA_addr => in_addr,
        MEMA_PORTA_clk => clk,
        MEMA_PORTA_din => in_data,
        MEMA_PORTA_dout => memA_data_out,
        MEMA_PORTA_en => '1',
        MEMA_PORTA_rst => rst,
        MEMA_PORTA_we => tmp_mema_we,
        
        MEMB_PORTA_addr => in_addr,
        MEMB_PORTA_clk => clk,
        MEMB_PORTA_din => in_data,
        MEMB_PORTA_dout => memB_data_out,
        MEMB_PORTA_en => '1',
        MEMB_PORTA_rst => rst,
        MEMB_PORTA_we => tmp_memb_we
    );
    
    process(wselect, wren)
    begin
        IF(wselect = '0') THEN
            tmp_mema_we <= "0000";
            IF(wren = '1') THEN
                tmp_memb_we <= "1111";
            ELSE
                tmp_memb_we <= "0000";
            END IF;
        ELSE
            IF(wren = '1') THEN
                tmp_mema_we <= "1111";
            ELSE
                tmp_mema_we <= "0000";
            END IF;
            tmp_memb_we <= "0000";
        END IF;
    end process;
end STR;
