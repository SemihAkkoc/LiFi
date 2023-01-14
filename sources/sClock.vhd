library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sClock is
    Port (
        CLK : in std_logic;
        oCLK : out std_logic
     );
end sClock;

architecture Behavioral of sClock is

signal sCounter : std_logic_vector(2 downto 0) := (others => '0');  -- second fake clk -> 0.8s
signal sCLK_main : std_logic := '0';

begin

-- clock with 0.8s 
process (CLK) begin
    if (rising_edge(CLK)) then
        if (sCounter = "111") then
            sCounter <= (others => '0');
        else
            sCounter <= sCounter + '1';
        end if;
    end if;
end process;

sCLK_main <= '1' when sCounter >= "100" else '0'; -- until 4 

oCLK <= sCLK_main;

end Behavioral;
