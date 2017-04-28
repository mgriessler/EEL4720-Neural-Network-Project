-- Created by Nicholas Landy and Matthew Griessler
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
use work.config_pkg.all;

entity out_ctrl is
port(
    clk : in std_logic;
    rst : in std_logic;
    nn_new_output : in std_logic;
    inc : out std_logic;
    wr_en : out std_logic
);
end out_ctrl;

architecture cont of out_ctrl is
begin
    process(clk, rst, nn_new_output)
    begin
        inc <= '0';
        wr_en <= '0';
        if(rst = '1') then
            inc <= '0';
            wr_en <= '0';
        elsif(clk = '1') then
            if(nn_new_output = '1') then
                inc <= '1';
                wr_en <= '1';
            end if;
        end if;
    end process;
end cont;
