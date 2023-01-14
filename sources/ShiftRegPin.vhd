library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ShiftRegPin is
    Port(
        CLK : in std_logic;
        LOAD : in std_logic;
        Din : in std_logic_vector(7 downto 0);
        Dout : out std_logic
        );
end ShiftRegPin;

architecture Behavioral of ShiftRegPin is

signal temp: std_logic_vector(7 downto 0);

begin

process (CLK, LOAD, Din) begin
    if (rising_edge(CLK)) then
        if (LOAD = '1') then
            temp <= Din;
        else
            temp <= temp(6 downto 0) & '0';
        end if;
    end if;
end process;
        

Dout <= temp(7);

end Behavioral;
