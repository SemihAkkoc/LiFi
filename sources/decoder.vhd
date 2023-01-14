
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decoder is
    Port (
        letter : in std_logic_vector(7 downto 0);
        cathode : out std_logic_vector(6 downto 0)
     );
end Decoder;

architecture Behavioral of Decoder is

begin

process(letter) begin
    -- report "letter: " & std_logic'image(letter(0)) & std_logic'image(letter(1)) & std_logic'image(letter(2)) & std_logic'image(letter(3)) & std_logic'image(letter(4)) & std_logic'image(letter(5)) & std_logic'image(letter(6)) & std_logic'image(letter(7)) ;
    case letter is
        when "00100000" => cathode <= "1111111"; -- /* (space) */
        when "00100001" => cathode <= "1001111"; -- /* ! */
        when "00100010" => cathode <= "1011101"; -- /* " */
        when "00100011" => cathode <= "1000000"; -- /* # */
        when "00100100" => cathode <= "0100100"; -- /* $ */
        when "00100101" => cathode <= "1011010"; -- /* % */
        when "00100110" => cathode <= "1001110"; -- /* & */
        when "00100111" => cathode <= "1111101"; -- /* ' */
        when "00101000" => cathode <= "0110101"; -- /* ( */
        when "00101001" => cathode <= "0010111"; -- /* ) */
        when "00101010" => cathode <= "0111101"; -- /* * */
        when "00101011" => cathode <= "1111000"; -- /* + */
        when "00101100" => cathode <= "1111011"; -- /* , */
        when "00101101" => cathode <= "1111110"; -- /* - */
        when "00101110" => cathode <= "1111111"; -- /* . */
        when "00101111" => cathode <= "1011010"; -- /* / */
        when "00110000" => cathode <= "0000001"; -- /* 0 */
        when "00110001" => cathode <= "1001111"; -- /* 1 */
        when "00110010" => cathode <= "0010010"; -- /* 2 */
        when "00110011" => cathode <= "0000110"; -- /* 3 */
        when "00110100" => cathode <= "1001100"; -- /* 4 */
        when "00110101" => cathode <= "0100100"; -- /* 5 */
        when "00110110" => cathode <= "0100000"; -- /* 6 */
        when "00110111" => cathode <= "0001111"; -- /* 7 */
        when "00111000" => cathode <= "0000000"; -- /* 8 */
        when "00111001" => cathode <= "0000100"; -- /* 9 */
        when "00111010" => cathode <= "0110111"; -- /* : */
        when "00111011" => cathode <= "0100111"; -- /* ; */
        when "00111100" => cathode <= "0111100"; -- /* < */
        when "00111101" => cathode <= "1110110"; -- /* = */
        when "00111110" => cathode <= "0011110"; -- /* > */
        when "00111111" => cathode <= "0011010"; -- /* ? */
        when "01000000" => cathode <= "0000010"; -- /* @ */
        when "01000001" => cathode <= "0001000"; -- /* A */
        when "01000010" => cathode <= "1100000"; -- /* B */
        when "01000011" => cathode <= "0110001"; -- /* C */
        when "01000100" => cathode <= "1000010"; -- /* D */
        when "01000101" => cathode <= "0110000"; -- /* E */
        when "01000110" => cathode <= "0111000"; -- /* F */
        when "01000111" => cathode <= "0100001"; -- /* G */
        when "01001000" => cathode <= "1001000"; -- /* H */
        when "01001001" => cathode <= "1111001"; -- /* I */
        when "01001010" => cathode <= "1000011"; -- /* J */
        when "01001011" => cathode <= "0101000"; -- /* K */
        when "01001100" => cathode <= "1110001"; -- /* L */
        when "01001101" => cathode <= "0101011"; -- /* M */
        when "01001110" => cathode <= "0001001"; -- /* N */
        when "01001111" => cathode <= "0000001"; -- /* O */
        when "01010000" => cathode <= "0011000"; -- /* P */
        when "01010001" => cathode <= "0010100"; -- /* Q */
        when "01010010" => cathode <= "0011001"; -- /* R */
        when "01010011" => cathode <= "0100100"; -- /* S */
        when "01010100" => cathode <= "1110000"; -- /* T */
        when "01010101" => cathode <= "1000001"; -- /* U */
        when "01010110" => cathode <= "1000001"; -- /* V */
        when "01010111" => cathode <= "1010101"; -- /* W */
        when "01011000" => cathode <= "1001000"; -- /* X */
        when "01011001" => cathode <= "1000100"; -- /* Y */
        when "01011010" => cathode <= "0010010"; -- /* Z */
        when "01011011" => cathode <= "0110001"; -- /* [ */
        when "01011100" => cathode <= "1101100"; -- /* \ */
        when "01011101" => cathode <= "0000111"; -- /* ] */
        when "01011110" => cathode <= "0011101"; -- /* ^ */
        when "01011111" => cathode <= "1110111"; -- /* _ */
        when "01100000" => cathode <= "1011111"; -- /* ` */
        when "01100001" => cathode <= "0000010"; -- /* a */
        when "01100010" => cathode <= "1100000"; -- /* b */
        when "01100011" => cathode <= "1110010"; -- /* c */
        when "01100100" => cathode <= "1000010"; -- /* d */
        when "01100101" => cathode <= "0010000"; -- /* e */
        when "01100110" => cathode <= "0111000"; -- /* f */
        when "01100111" => cathode <= "0000100"; -- /* g */
        when "01101000" => cathode <= "1101000"; -- /* h */
        when "01101001" => cathode <= "1111011"; -- /* i */
        when "01101010" => cathode <= "1100111"; -- /* j */
        when "01101011" => cathode <= "0101000"; -- /* k */
        when "01101100" => cathode <= "1111001"; -- /* l */
        when "01101101" => cathode <= "1101011"; -- /* m */
        when "01101110" => cathode <= "1101010"; -- /* n */
        when "01101111" => cathode <= "1100010"; -- /* o */
        when "01110000" => cathode <= "0011000"; -- /* p */
        when "01110001" => cathode <= "0001100"; -- /* q */
        when "01110010" => cathode <= "1111010"; -- /* r */
        when "01110011" => cathode <= "0100100"; -- /* s */
        when "01110100" => cathode <= "1110000"; -- /* t */
        when "01110101" => cathode <= "1100011"; -- /* u */
        when "01110110" => cathode <= "1100011"; -- /* v */
        when "01110111" => cathode <= "1101011"; -- /* w */
        when "01111000" => cathode <= "1001000"; -- /* x */
        when "01111001" => cathode <= "1000100"; -- /* y */
        when "01111010" => cathode <= "0010010"; -- /* z */
        when "01111011" => cathode <= "1001110"; -- /* { */
        when "01111100" => cathode <= "1111001"; -- /* | */
        when "01111101" => cathode <= "1111000"; -- /* } */
        when "01111110" => cathode <= "0111111"; -- /* ~ */
        when "01111111" => cathode <= "1111111"; -- /* (del) */
        when others => cathode <= "1111111"; --off
    end case;
end process;

end Behavioral;
