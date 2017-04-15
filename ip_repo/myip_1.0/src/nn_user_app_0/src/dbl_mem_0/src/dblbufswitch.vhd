-- Name: Matthew Griessler
-- Block Name: DblBufSwitch - Double Buffer Switch
-- Description: Used to switch between two memories used for one double buffered memory based on a trigger
library ieee;
use ieee.std_logic_1164.all;

entity dblbufswitch is
    port (
        trigger, rst : in std_logic;
        rselect, wselect : out std_logic);
end dblBufSwitch;

    --if rst = 1 then rselect = 0, wselect = 1
    --else if trigger rising edge then rselect = rselect xor 1 wselect = wselect xor 1
architecture BHV of dblBufSwitch is
begin
    process(trigger, rst)
    variable tmp_rselect : std_logic := '0';
    variable tmp_wselect : std_logic := '1';
    begin
        IF rst = '1' THEN
            tmp_rselect := '0';
            tmp_wselect := '1';
        ELSIF rising_edge(trigger) THEN
            tmp_rselect := tmp_rselect XOR '1';
            tmp_wselect := tmp_wselect XOR '1';
        END IF;
        rselect <= tmp_rselect;
        wselect <= tmp_wselect;
    end process;
end BHV;