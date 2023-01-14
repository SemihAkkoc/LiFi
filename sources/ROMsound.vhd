library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ROMsound is
    Port (
        address : in std_logic_vector(5 downto 0);
        data : out std_logic_vector(7 downto 0)
     );
end ROMsound;

architecture Behavioral of ROMsound is

type mem is array ( 0 to 61 ) of std_logic_vector(7 downto 0);

constant my_rom : mem := (
    0 => "0100111",
    1 => "0011011",
    2 => "1101110",
    3 => "1000010",
    4 => "0000011",
    5 => "1010001",
    6 => "1010000",
    7 => "1100001",
    8 => "0111010",
    9 => "0001000",
    10 => "0001101",
    11 => "0000110",
    12 => "0001011",
    13 => "1001001",
    14 => "1100110",
    15 => "1101000",
    16 => "0010000",
    17 => "0011000",
    18 => "1001110",
    19 => "1010111",
    20 => "0100001",
    21 => "0000001",
    22 => "1100110",
    23 => "1101111",
    24 => "0110110",
    25 => "1011001",
    26 => "0101110",
    27 => "1000110",
    28 => "1000011",
    29 => "0100101",
    30 => "1011100",
    31 => "1100111",
    32 => "0010000",
    33 => "0011010",
    34 => "0101101",
    35 => "1010111",
    36 => "0000011",
    37 => "0111101",
    38 => "1100100",
    39 => "1110100",
    40 => "0110000",
    41 => "1011011",
    42 => "1001110",
    43 => "1000010",
    44 => "0000010",
    45 => "0100100",
    46 => "1000000",
    47 => "1100111",
    48 => "0111010",
    49 => "1011001",
    50 => "0101110",
    51 => "0110111",
    52 => "0011001",
    53 => "0000001",
    54 => "1110010",
    55 => "1110101",
    56 => "0111001",
    57 => "1011101",
    58 => "0101100",
    59 => "1100010",
    60 => "0000001",
    61 => "1110000");

begin
    
process (address) begin
case address is
    when "000000" => data <= my_rom(0);
    when "000001" => data <= my_rom(1);
    when "000010" => data <= my_rom(2);
    when "000011" => data <= my_rom(3);
    when "000100" => data <= my_rom(4);
    when "000101" => data <= my_rom(5);
    when "000110" => data <= my_rom(6);
    when "000111" => data <= my_rom(7);
    when "001000" => data <= my_rom(8);
    when "001001" => data <= my_rom(9);
    when "001010" => data <= my_rom(10);
    when "001011" => data <= my_rom(11);
    when "001100" => data <= my_rom(12);
    when "001101" => data <= my_rom(13);
    when "001110" => data <= my_rom(14);
    when "001111" => data <= my_rom(15);
    when "010000" => data <= my_rom(16);
    when "010001" => data <= my_rom(17);
    when "010010" => data <= my_rom(18);
    when "010011" => data <= my_rom(19);
    when "010100" => data <= my_rom(20);
    when "010101" => data <= my_rom(21);
    when "010110" => data <= my_rom(22);
    when "010111" => data <= my_rom(23);
    when "011000" => data <= my_rom(24);
    when "011001" => data <= my_rom(25);
    when "011010" => data <= my_rom(26);
    when "011011" => data <= my_rom(27);
    when "011100" => data <= my_rom(28);
    when "011101" => data <= my_rom(29);
    when "011110" => data <= my_rom(30);
    when "011111" => data <= my_rom(31);
    when "100000" => data <= my_rom(32);
    when "100001" => data <= my_rom(33);
    when "100010" => data <= my_rom(34);
    when "100011" => data <= my_rom(35);
    when "100100" => data <= my_rom(36);
    when "100101" => data <= my_rom(37);
    when "100110" => data <= my_rom(38);
    when "100111" => data <= my_rom(39);
    when "101000" => data <= my_rom(40);
    when "101001" => data <= my_rom(41);
    when "101010" => data <= my_rom(42);
    when "101011" => data <= my_rom(43);
    when "101100" => data <= my_rom(44);
    when "101101" => data <= my_rom(45);
    when "101110" => data <= my_rom(46);
    when "101111" => data <= my_rom(47);
    when "110000" => data <= my_rom(48);
    when "110001" => data <= my_rom(49);
    when "110010" => data <= my_rom(50);
    when "110011" => data <= my_rom(51);
    when "110100" => data <= my_rom(52);
    when "110101" => data <= my_rom(53);
    when "110110" => data <= my_rom(54);
    when "110111" => data <= my_rom(55);
    when "111000" => data <= my_rom(56);
    when "111001" => data <= my_rom(57);
    when "111010" => data <= my_rom(58);
    when "111011" => data <= my_rom(59);
    when "111100" => data <= my_rom(60);
    when "111101" => data <= my_rom(61);
    when others => data <= "01000001";
end case;

end process;

end Behavioral;
