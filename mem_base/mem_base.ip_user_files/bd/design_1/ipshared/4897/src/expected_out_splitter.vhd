library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.config_pkg.all;

entity expected_out_splitter is
    port (
        expected_output : in std_logic_vector(MEM_DATA_WIDTH-1 downto 0);
        expected_output_0 : out std_logic_vector(MEM_DATA_WIDTH-1 downto 0);
        expected_output_1 : out std_logic_vector(MEM_DATA_WIDTH-1 downto 0);
        expected_output_2 : out std_logic_vector(MEM_DATA_WIDTH-1 downto 0)
    );
end expected_out_splitter;

architecture BHV of expected_out_splitter is
    constant ONE : std_logic_vector(MEM_DATA_WIDTH-1 downto 0) := "0000000100000000";
    constant ZERO : std_logic_vector(MEM_DATA_WIDTH-1 downto 0) := (others => '0');
begin
    process(expected_output)
    begin
        case expected_output is
            when C_RES_OUTPUT_0 =>
                expected_output_0 <= ONE;
                expected_output_1 <= ZERO;
                expected_output_2 <= ZERO;
            when C_RES_OUTPUT_1 =>
                expected_output_0 <= ZERO;
                expected_output_1 <= ONE;
                expected_output_2 <= ZERO;
            when C_RES_OUTPUT_2 =>
                expected_output_0 <= ZERO;
                expected_output_1 <= ZERO;
                expected_output_2 <= ONE;
        when others => null;
        end case;
    end process;

end BHV;
