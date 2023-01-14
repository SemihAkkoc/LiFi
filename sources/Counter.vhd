library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use ieee.numeric_std.all;


entity Counter is
    Port ( 
        CLK: in std_logic; -- clock input
        -- RST: in std_logic;
        q: out std_logic_vector(5 downto 0) -- output 4-bit counter
     );
end Counter;

architecture Behavioral of Counter is

--signal counter_up: std_logic_vector(2 downto 0) := (others => '0');
--signal counter_up2: std_logic_vector(2 downto 0) := (others => '0');

signal counter_up : integer range 0 to 8 := 0; 

begin

process (CLK) begin
    if (rising_edge(CLK)) then
        if (counter_up = 8) then
            counter_up <= 0;
        else
            counter_up <= counter_up + 1;
        end if;
    end if;
end process;


-- counter_up <= (others => '0') when counter_up = "111111" else (others => '1'); -- to reset

q <= std_logic_vector(to_unsigned(counter_up, q'length));

end Behavioral;

