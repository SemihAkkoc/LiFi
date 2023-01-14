library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity semi is
--  Port ( );
end semi;

architecture Behavioral of semi is

component Counter
    Port (
        CLK, RST : in std_logic;
        q : out std_logic_vector(5 downto 0)
    );
end component;

signal CLK: std_logic := '0';
signal RST: std_logic := '0';
signal q: std_logic_vector(5 downto 0); -- output 4-bit counter

begin

UUT: Counter PORT MAP(CLK, RST, q);
c:process
begin
CLK <= '0';
wait for 1us;
CLK <= '1';
wait for 1us;
end process;

r:process
begin
RST <= '0';
wait for 100us;
RST <= '1';
wait for 100us;
RST <= '0';
wait;
end process;

-- t: process
-- begin
-- S_in <= '0';
-- wait for 10ns;
-- S_in <= '1';
-- wait for 1ns;
-- S_in <= '1';
-- wait for 10ns;
-- S_in <= '0';
-- wait for 10ns;
-- S_in <= '1';
-- wait for 10ns;
-- S_in <= '1';
-- wait for 10ns;
-- S_in <= '0';
-- wait for 10ns;
-- S_in <= '1';
-- wait;
-- end process;

end Behavioral;
