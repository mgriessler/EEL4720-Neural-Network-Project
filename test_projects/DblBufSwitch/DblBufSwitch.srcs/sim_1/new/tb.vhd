library ieee;
use ieee.std_logic_1164.all;

entity tb is
end tb;

architecture TB of tb is
    component dblBufSwitch
        port (
            rst, trigger : in std_logic;
            rselect, wselect : out std_logic);
    end component;
    
    signal rst, trigger, rselect, wselect : std_logic;
begin

    U_DBLBUFSWITCH : dblBufSwitch
        port map(
            rst => rst,
            trigger => trigger,
            rselect => rselect,
            wselect => wselect);
            
    process
    begin
        report "*********************TESTING DOUBLE BUFFER SWITCH*********************";
        rst <= '0';
        trigger <= '0';
        wait for 10 ns;
        assert(rselect = '0') report "Error, input: rst = 0 and trigger = 0. rselect != 0" severity warning;
        assert(wselect = '1') report "Error, input: rst = 0 and trigger = 0. wselect != 1" severity warning;
        
        rst <= '1';
        trigger <= '0';
        wait for 10 ns;
        assert(rselect = '0') report "Error, input: rst = 1 and trigger = 0. rselect != 0" severity warning;
        assert(wselect = '1') report "Error, input: rst = 1 and trigger = 0. wselect != 1" severity warning;
    
        rst <= '0';
        trigger <= '1';
        wait for 10 ns;
        assert(rselect = '1') report "Error, input: rst = 0 and trigger = 1. rselect != 1" severity warning;
        assert(wselect = '0') report "Error, input: rst = 0 and trigger = 1. wselect != 0" severity warning;
    
        rst <= '0';
        trigger <= '0';
        wait for 10 ns;
        assert(rselect = '1') report "Error, input: rst = 0 and trigger = 0. rselect != 1" severity warning;
        assert(wselect = '0') report "Error, input: rst = 0 and trigger = 0. wselect != 0" severity warning;
    
        rst <= '0';
        trigger <= '1';
        wait for 10 ns;
        assert(rselect = '0') report "Error, input: rst = 0 and trigger = 1. rselect != 0" severity warning;
        assert(wselect = '1') report "Error, input: rst = 0 and trigger = 1. wselect != 1" severity warning;
    
        rst <= '0';
        trigger <= '0';
        wait for 10 ns;
        assert(rselect = '0') report "Error, input: rst = 0 and trigger = 0. rselect != 0" severity warning;
        assert(wselect = '1') report "Error, input: rst = 0 and trigger = 0. wselect != 1" severity warning;
    
        rst <= '0';
        trigger <= '1';
        wait for 10 ns;
        assert(rselect = '1') report "Error, input: rst = 0 and trigger = 1. rselect != 1" severity warning;
        assert(wselect = '0') report "Error, input: rst = 0 and trigger = 1. wselect != 0" severity warning;
    
        rst <= '1';
        trigger <= '1';
        wait for 10 ns;
        assert(rselect = '0') report "Error, input: rst = 1 and trigger = 1. rselect != 0" severity warning;
        assert(wselect = '1') report "Error, input: rst = 1 and trigger = 1. wselect != 1" severity warning;
        
        report "*********************TEST OVER DOUBLE BUFFER SWITCH*********************";
        wait;
    end process;
end TB;
    
