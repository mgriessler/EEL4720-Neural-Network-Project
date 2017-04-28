--Matthew Griessler
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/27/2017 02:47:21 AM
-- Design Name: 
-- Module Name: 2_1_mux - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_2_1 is
    generic (
        WIDTH: positive := 8
    );
    port (
        x0, x1 : in std_logic_vector(WIDTH-1 downto 0);
        y : out std_logic_vector(WIDTH-1 downto 0);
        sel : in std_logic
    );
end mux_2_1;

architecture BHV of mux_2_1 is
begin
    with sel select
        y <= x0 when '0',
            x1 when others;

end BHV;
