library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ROMtext is
    Port (
        address : in std_logic_vector(5 downto 0);
        data : out std_logic_vector(7 downto 0)
     );
end ROMtext;

architecture Behavioral of ROMtext is
                        -- can change this size
type mem is array ( 0 to 33 ) of std_logic_vector(7 downto 0);

constant my_rom : mem := (
    0 => "0100001",
    1 => "0011101",
    2 => "0101101",
    3 => "1100111",
    4 => "0101001",
    5 => "0000001",
    6 => "1110010",
    7 => "1100001",
    8 => "0111101",
    9 => "0011000",
    10 => "0101101",
    11 => "1100010",
    12 => "0000011",
    13 => "1010001",
    14 => "1011110",
    15 => "1110011",
    16 => "0111010",
    17 => "1011011",
    18 => "1000100",
    19 => "0000110",
    20 => "1111011",
    21 => "0101101",
    22 => "1101010",
    23 => "1111001",
    24 => "0110000",
    25 => "1011011",
    26 => "1001100",
    27 => "0010010",
    28 => "0000011",
    29 => "0101101",
    30 => "1011110",
    31 => "1110011",
    32 => "0111010",
    33 => "1011011");

begin
    
process (address) begin
-- case address is
--     when "000000" => data <= my_rom(0);
--     when "000001" => data <= my_rom(1);
--     when "000010" => data <= my_rom(2);
--     when "000011" => data <= my_rom(3);
--     when "000100" => data <= my_rom(4);
--     when "000101" => data <= my_rom(5);
--     when "000110" => data <= my_rom(6);
--     when "000111" => data <= my_rom(7);
--     when "001000" => data <= my_rom(8);
--     when "001001" => data <= my_rom(9);
--     when "001010" => data <= my_rom(10);
--     when "001011" => data <= my_rom(11);
--     when "001100" => data <= my_rom(12);
--     when "001101" => data <= my_rom(13);
--     when "001110" => data <= my_rom(14);
--     when "001111" => data <= my_rom(15);
--     when "010000" => data <= my_rom(16);
--     when "010001" => data <= my_rom(17);
--     when "010010" => data <= my_rom(18);
--     when "010011" => data <= my_rom(19);
--     when "010100" => data <= my_rom(20);
--     when "010101" => data <= my_rom(21);
--     when "010110" => data <= my_rom(22);
--     when "010111" => data <= my_rom(23);
--     when "011000" => data <= my_rom(24);
--     when "011001" => data <= my_rom(25);
--     when "011010" => data <= my_rom(26);
--     when "011011" => data <= my_rom(27);
--     when "011100" => data <= my_rom(28);
--     when "011101" => data <= my_rom(29);
--     when "011110" => data <= my_rom(30);
--     when "011111" => data <= my_rom(31);
--     when "100000" => data <= my_rom(32);
--     when "100001" => data <= my_rom(33);
--     when others => data <= "01000001";
--end case;
    data <= my_rom(to_integer(unsigned(address)));

end process;

end Behavioral;