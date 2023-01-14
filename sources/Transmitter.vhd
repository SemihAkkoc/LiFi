library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Transmitter is
    Port (
        fCLK : in std_logic;
        sCLK : in std_logic;
        sel : in std_logic;
        L_out : out std_logic
     );
end Transmitter;

architecture Behavioral of Transmitter is

component ShiftRegPin
    Port(
        CLK : in std_logic;
        LOAD : in std_logic;
        Din : in std_logic_vector(7 downto 0);
        Dout : out std_logic
        );
end component;

component ROMtext
    Port (
        address : in std_logic_vector(5 downto 0);
        data : out std_logic_vector(7 downto 0)
     );
end component;

component ROMsound
    Port (
        address : in std_logic_vector(5 downto 0);
        data : out std_logic_vector(7 downto 0)
     );
end component;

component Counter
    Port ( 
        CLK: in std_logic; -- clock input
        -- RST: in std_logic;
        q: out std_logic_vector(5 downto 0) -- output 4-bit counter
     );
end component;

signal count_add : std_logic_vector(5 downto 0);

signal temp_text : std_logic_vector(7 downto 0) := (others => '0');
signal temp_sound : std_logic_vector(7 downto 0) := (others => '0');
signal temp : std_logic_vector(7 downto 0) := (others => '1');
signal reset : std_logic := '0';

begin

-- tentative counter for text
COUNT: Counter PORT MAP (
    CLK=>sCLK,
    -- RST=>reset,
    q=>count_add
);

-- process (count_add) begin
--     if (count_add = "111111") then
--         reset <= '1';
--     else
--         reset <= '0';
--     end if;
-- end process;

TEXTROM: ROMtext PORT MAP (
    address=>count_add,
    data=>temp_text
);

SOUNDROM: ROMsound PORT MAP (
    address=>count_add,
    data=>temp_sound
);

SREG: ShiftRegPin PORT MAP (
    CLK => fCLK,
    LOAD => sCLK, -- not sure about this think
    Din => temp,
    Dout => L_out
);
-- may need to add some process for sCLK in shiftreg

process (sel, temp_text, temp_sound) begin
    if (sel = '0') then
        temp <= temp_text;
    elsif (sel = '1') then
        temp <= temp_sound;
    end if;
end process;

end Behavioral;
