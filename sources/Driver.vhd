library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;


entity Driver is
  Port (
    sel : in std_logic_vector(1 downto 0); -- anode selector
    in_letter: in std_logic_vector(31 downto 0); 
    anode : out std_logic_vector(3 downto 0); 
    cathode: out std_logic_vector(6 downto 0)
   );
end Driver;

architecture Behavioral of Driver is


component Decoder
    Port (
        letter : in std_logic_vector(7 downto 0);
        cathode : out std_logic_vector(6 downto 0)
     );
end component;


signal letter: std_logic_vector(7 downto 0);

begin

D : decoder PORT MAP(letter=>letter, cathode=>cathode);

process (sel, in_letter) begin
    case sel is
        when "00" => 
            anode <= "0111"; -- 1st digit
            letter <= in_letter(31 downto 24); 
            
        when "01" => 
            anode <= "1011"; -- 2nd digit 
            letter <= in_letter(23 downto 16);
            
        when "10" => 
            anode <= "1101"; -- 3rd digit 
            letter <= in_letter(15 downto 8);
            
        when "11" => 
            anode <= "1110"; -- 4th digit 
            letter <= in_letter(7 downto 0);
            
        when others => anode <= "1111"; 
    end case;
end process;

end Behavioral;
