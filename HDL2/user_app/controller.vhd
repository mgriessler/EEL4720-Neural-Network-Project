-- Created by Nicholas Landy and Matthew Griessler
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
use work.config_pkg.all;

entity controller is
port(
    clk : in std_logic;
    rst : in std_logic;

    --cpp control signals    
    go : in std_logic;
    epoch_size : in std_logic_vector(C_MMAP_DATA_WIDTH-1 downto 0);
    done : out std_logic;
    
    --neural network control signals
    nn_bp : in std_logic;
    nn_init : out std_logic;
    nn_en : out std_logic;
    
    --memory control signals
    input_mems_rd_addr_inc : out std_logic;
    output_mem_wr_addr_rst : out std_logic;
    input_mems_rd_addr_rst : out std_logic
    
);
end controller;

architecture cont of controller is
    type STATE_TYPE is (S_START, S_START_2, S_LOAD, S_FP, S_BP, S_FP_END_1, S_FP_END_2, S_DONE);
    signal state, next_state : STATE_TYPE;
signal count : integer := 0;
begin
    process(clk, rst)
    begin
        if(rst = '1') then
            state <= S_START;
        elsif(rising_edge(clk)) then
            state <= next_state;
        end if;
    end process;
    
    process(state, nn_bp, go)
        variable iterations : natural := 0;
        variable first : std_logic := '1';

    begin
        nn_init <= '0';
        nn_en <= '0';
        input_mems_rd_addr_inc <= '0';
        output_mem_wr_addr_rst <= '0';
        input_mems_rd_addr_rst <= '0';
        done <= '0';
        case state is
            when S_START =>
                if(go = '1') then
                    next_state <= S_START_2;
                else
                    next_state <= S_START;
                end if;
            when S_START_2 =>
                output_mem_wr_addr_rst <= '1';
                input_mems_rd_addr_rst <= '1';
                nn_init <= '1';
                iterations := 0;
                next_state <= S_FP;
            when S_FP =>
                nn_en <= '1';                
                iterations := iterations + 1;
                if(iterations = unsigned(epoch_size)) then
                    next_state <= S_FP_END_1;
                else
                    next_state <= S_FP;
                end if;
                input_mems_rd_addr_inc <= '1';
            when S_BP =>
                nn_en <= '1';                
                -- do back prop
                next_state <= S_DONE; --temp
            when S_FP_END_1 =>
                nn_en <= '1';
                next_state <= S_FP_END_2;
            when S_FP_END_2 =>
                nn_en <= '1';
                next_state <= S_DONE;
            when S_DONE =>
                done <= '1';
                if(go = '0') then
                    next_state <= S_START;
                else
                    next_state <= S_DONE;
                end if;
            end case;
    end process;
end cont;
