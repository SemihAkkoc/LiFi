library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use ieee.numeric_std.all;

entity fClock is
    Port ( 
        CLK : in std_logic;
        oCLK : out std_logic
    );
end fClock;

architecture Behavioral of fClock is

signal fCounter : integer range 0 to 16777216 := 0; -- in order to get 10 million -> 0.1s
signal fCLK_main : std_logic := '0';

begin

-- clock with 0.1s  
process (CLK) begin
    if (rising_edge(CLK)) then
        if (fCounter = 10000000) then
            fCounter <= 0;
        else
            fCounter <= fCounter + 1;
        end if;
    end if;
end process;

fCLK_main <= '1' when fCounter >= 5000000 else '0'; -- until 5 million

oCLK <= fCLK_main;


end Behavioral;
