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
    num_epochs : in std_logic_vector(C_MMAP_DATA_WIDTH-1 downto 0);
    done : out std_logic;
    bp : in std_logic;
    
    --neural network control signals
    nn_bp : out std_logic;
    nn_en : out std_logic;
    
    --memory control signals
    input_mems_rd_addr_inc : out std_logic;
    output_mem_wr_addr_rst : out std_logic;
    input_mems_rd_addr_rst : out std_logic
    
);
end controller;

architecture cont of controller is
    type STATE_TYPE is (S_START, S_START_2, S_LOAD, S_FP, S_BP, S_FP_END_1, S_FP_END_2, S_DONE, S_BP_DELAY_1, S_BP_DELAY_2, S_BP_DELAY_3, S_BP_DELAY_4, S_BP_INITIAL_DELAY_1, S_BP_INITIAL_DELAY_2, S_BP_INITIAL_DELAY_3);
    signal state, next_state : STATE_TYPE;
    signal iterations, next_iterations : std_logic_vector(C_MMAP_DATA_WIDTH-1 downto 0) := (others => '0');
    signal epochs_comp : std_logic_vector(C_MMAP_DATA_WIDTH-1 downto 0) := (others => '0');

begin
    process(clk, rst)
    begin
        if(rst = '1') then
            state <= S_START;
            iterations <= (others => '0');
        elsif(rising_edge(clk)) then
            state <= next_state;
            if(next_state = S_BP or next_state = S_FP) then
                iterations <= std_logic_vector(unsigned(iterations) + 1);
            elsif(next_state = S_START_2) then
                iterations <= (others => '0');
            end if;
        end if;
    end process;
    process(state, bp, go, iterations)
        
        variable first : std_logic := '1';

    begin
        nn_en <= '0';
        input_mems_rd_addr_inc <= '0';
        output_mem_wr_addr_rst <= '0';
        input_mems_rd_addr_rst <= '0';
        done <= '0';
        nn_bp <= '0';
        case state is
            when S_START =>
                done <= '0';
                if(go = '1') then
                    next_state <= S_START_2;
                else
                    next_state <= S_START;
                end if;
            when S_START_2 =>
                output_mem_wr_addr_rst <= '1';
                input_mems_rd_addr_rst <= '1';
                if(bp = '1') then
                    next_state <= S_BP_INITIAL_DELAY_1;
                else
                    next_state <= S_FP;
                end if;
            when S_FP =>
                nn_en <= '1';                
                if(iterations >= epoch_size) then
                    next_state <= S_FP_END_1;
                else
                    next_state <= S_FP;
                end if;
                input_mems_rd_addr_inc <= '1';
            when S_BP_INITIAL_DELAY_1 =>
                nn_bp <= '1';
                nn_en <= '1';
                next_state <= S_BP_INITIAL_DELAY_2;
            when S_BP_INITIAL_DELAY_2 =>
                nn_bp <= '1';
                nn_en <= '1';
                next_state <= S_BP_INITIAL_DELAY_3;
            when S_BP_INITIAL_DELAY_3 =>
                nn_bp <= '1';
                nn_en <= '1';
                next_state <= S_BP;
            when S_BP =>
                nn_bp <= '1';
                nn_en <= '1';
                if(iterations >= epoch_size) then
                    if(epochs_comp < num_epochs) then
                    next_state <= S_START_2;
                    epochs_comp <= std_logic_vector(unsigned(epochs_comp)+1);
                    else
                    next_state <= S_FP_END_1;
                    end if;
                else
                    next_state <= S_BP_DELAY_1;
                end if;
                input_mems_rd_addr_inc <= '1';
            when S_BP_DELAY_1 =>
                nn_bp <= '1';
                nn_en <= '1';
                next_state <= S_BP_DELAY_2;
            when S_BP_DELAY_2 =>
                nn_bp <= '1';
                nn_en <= '1';
                next_state <= S_BP_DELAY_3;
            when S_BP_DELAY_3 =>
                nn_bp <= '1';
                nn_en <= '1';
                next_state <= S_BP_DELAY_4;
            when S_BP_DELAY_4 =>
                nn_bp <= '1';
                nn_en <= '1';
                next_state <= S_BP;
            when S_FP_END_1 =>
                if(bp = '1') then
                    nn_bp <= '1';
                end if;
                nn_en <= '1';
                next_state <= S_FP_END_2;
            when S_FP_END_2 =>
                if(bp = '1') then
                    nn_bp <= '1';
                end if;
                nn_en <= '1';
                next_state <= S_DONE;
            when S_DONE =>
                done <= '1';
                if(go = '0') then
                    next_state <= S_START;
                else
                    next_state <= S_DONE;
                end if;
            when others =>
                next_state <= S_START;
        end case;
    end process;
end cont;
