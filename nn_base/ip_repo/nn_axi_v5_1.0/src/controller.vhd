-- Created by Nicholas Landy and Matthew Griessler
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
use work.config_pkg.all;


entity controller is
port(
    clk : in std_logic;
    rst : in std_logic;
    
    go : in std_logic;
    size : in DBL_ADDR;
    done : out std_logic;
    
    
    gen0_en : out std_logic;
    gen1_en : out std_logic;
    gen2_en : out std_logic;
    gen3_en : out std_logic;
    gen4_en : out std_logic;
    gen5_en : out std_logic;
    gen6_en : out std_logic;
    
    dp_en : out std_logic;
    
    memtest_wr_en_o0 : out std_logic;
    memtest_wr_en_o1 : out std_logic;
    memtest_wr_en_o2 : out std_logic
    
);
end controller;

architecture cont of controller is
signal state : std_logic_vector(2 downto 0);
signal count : integer := 0;
begin

process(clk, rst)
begin
if(rst = '1') then
    state <= "000";
elsif(clk = '1' and clk'event) then
    if(state = "000") then
        if(go = '1') then
        state <= "001";
        else
        state <= "000";
        end if;
    end if;
    
    if(state = "001") then
        if(count < 3) then
            state <= "001";
        else
            state <= "010";
        end if;
        count <= count +1;
    end if;
    
    if(state = "010") then
        if(count < unsigned(size)) then
            state <= "010";
        else
            state <= "011";
        end if;
        count <= count +1;
    end if;
    
    if(state = "011") then
        if(count < (3 + unsigned(size))) then
            state <= "011";
        else
            state <= "100";
        end if;
        count <= count +1;
    end if;
    
    if(state = "100") then
        state <= "100";
    end if;
end if;
end process;

done <= '1' when state = "100" else '0';
gen0_en <= '1' when state = "001" or state = "010" else '0';
gen1_en <= '1' when state = "001" or state = "010" else '0';
gen2_en <= '1' when state = "001" or state = "010" else '0';
gen3_en <= '1' when state = "001" or state = "010" else '0';
gen4_en <= '1' when state = "010" or state = "011" else '0';
gen5_en <= '1' when state = "010" or state = "011" else '0';
gen6_en <= '1' when state = "010" or state = "011" else '0';
dp_en <= '1' when state = "001" or state = "010" else '0';
memtest_wr_en_o0 <= '1' when state = "001" or state = "010" else '0';
memtest_wr_en_o1 <= '1' when state = "001" or state = "010" else '0';
memtest_wr_en_o2 <= '1' when state = "001" or state = "010" else '0';
end cont;

