library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use ieee.numeric_std.all;

entity rCounter is
    Port(
        CLK: in std_logic; -- clock input
        -- RST: in std_logic;
        refresh: out std_logic_vector(1 downto 0) -- output 4-bit counter
    );
end rCounter;

architecture Behavioral of rCounter is

signal rc : integer range 0 to 1048576 := 0;
signal t: std_logic_vector(19 downto 0);

begin

-- display refresher signal
process (CLK) begin
    if (rising_edge(CLK)) then
        if (rc = 1048576) then
            rc <= 0;
        else
            rc <= rc + 1;
        end if;
    end if;
end process;

t <= std_logic_vector(to_unsigned(rc, t'length));
refresh <= t(19 downto 18);

end Behavioral;
