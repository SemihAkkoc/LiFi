library ieee;
use ieee.std_logic_1164.all;

entity ShiftReg is
    Port (
        CLK, S_in : in std_logic;
        Pout : out std_logic_vector(7 downto 0)
    );
end ShiftReg;

architecture Behavorial of ShiftReg is

signal temp: std_logic_vector(7 downto 0);

begin

process (CLK) begin
    if (rising_edge(CLK)) then
        temp <= temp(6 downto 0) & S_in; -- 6 downto 0
    end if ;
end process;

Pout <= temp;
end Behavorial;