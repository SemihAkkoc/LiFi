library ieee;
use ieee.std_logic_1164.all;

entity Reg is
    Port(
    CLK : in std_logic;
    D: in std_logic_vector(7 downto 0);
    Q: out std_logic_vector(7 downto 0)
    ); 
end Reg;

architecture Behavioral of Reg is

begin

process (CLK) begin
    if (rising_edge(CLK)) then
        Q <= D;
    end if;
end process;

end Behavioral;