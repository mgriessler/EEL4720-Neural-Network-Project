library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
library work;
use work.fixed_pkg.all;

USE work.heap_arr_pkg.all;

entity neural_network is
generic(
num_inputs : integer := input_layer_size;
num_hid : integer := hidden_layer_size;
num_outputs : integer := output_layer_size
);
port(
        input : in array_stdvec (num_inputs-1 downto 0);
        weights_hid : in array_stdvec4 (num_hid-1 downto 0);
        weights_out : in array_stdvec15 (num_outputs-1 downto 0);
        b_hid : in array_stdvec(num_hid-1 downto 0);
        b_out : in array_stdvec(num_outputs-1 downto 0);
        
        hid : out array_stdvec(num_hid-1 downto 0);
        final : out array_stdvec(num_outputs-1 downto 0);
        final_prime_hid : out array_stdvec(num_hid-1 downto 0);
        final_prime_out: out array_stdvec(num_outputs-1 downto 0);
        clk : in std_logic;
        en : in std_logic;
        pipeline : in std_logic;
        new_output : out std_logic := '0'
        
    );
end neural_network;
 
architecture net of neural_network is

component neural_layer is
generic(
num_inputs : integer := 10;
num_outputs : integer := 3
);
port(
        input : in array_stdvec (num_inputs-1 downto 0);
        weights : in array_stdvec15 (num_outputs-1 downto 0);
        b : in array_stdvec(num_outputs-1 downto 0);
        final : out array_stdvec(num_outputs-1 downto 0);
        finalprime : out array_stdvec(num_outputs-1 downto 0)
        
    );
end component;

component hidden_layer is
generic(
num_inputs : integer := 4;
num_outputs : integer := 10
);
port(
        input :in  array_stdvec (num_inputs-1 downto 0);
        weights : in array_stdvec4 (num_outputs-1 downto 0);
        b : in array_stdvec(num_outputs-1 downto 0);
        final : out array_stdvec(num_outputs-1 downto 0);
        finalprime : out array_stdvec(num_outputs-1 downto 0)
        
    );
end component;

signal in_vector: array_stdvec(num_inputs-1 downto 0);
signal hid_vector, hid_out : array_stdvec(num_hid-1 downto 0);
signal out_vector, out_out : array_stdvec(num_outputs-1 downto 0);
signal state : integer := 0;
begin

hid_layer: hidden_layer
           generic map(num_inputs => num_inputs, num_outputs => num_hid)
           port map(input => in_vector, weights => weights_hid,b => b_hid, final => hid_out, finalprime => final_prime_hid);
out_layer: neural_layer
           generic map(num_inputs => num_hid, num_outputs => num_outputs)
           port map(input => hid_vector, weights => weights_out, b => b_out, final => out_out, finalprime => final_prime_out);

process(clk, en, pipeline)

begin
if(pipeline'event and pipeline = '0') then
state <= 0;
end if;

if(clk'event and clk = '1') then
    if(pipeline = '1' and en = '1') then
    in_vector <= input;
    hid_vector <= hid_out;
    out_vector <= out_out;
    state <= state +1;
    
    
    
    
    elsif (pipeline = '0' and en = '1') then
    
    if(state = 0) then
    in_vector <= input;
    state <= state + 1;
    new_output <= '0';
    elsif(state = 1) then
    hid_vector <= hid_out;
    state <= state + 1;
    new_output <= '0';
    elsif(state = 2) then
    out_vector <= out_out;
    new_output <= '1';
    state <= state + 1;
    elsif(state = 3) then
    state <= state + 1;
    new_output <= '0';
    else
    state <= 0;
    new_output <= '0';
    end if;
    
    
    end if;
    
    if((state > 2 and en = '1' and pipeline = '1') or (state = 2 and en = '1' and pipeline = '0')) then 
    new_output <= '1';
    else new_output <= '0';
    end if;
end if;

end process;

final <= out_vector;
hid <= hid_vector;



end net;
