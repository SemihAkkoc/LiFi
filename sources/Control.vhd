library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Receiver is
    Port (
    CLK  : in std_logic;
    fCLK : in std_logic;
    sCLK : in std_logic;
    S_in : in std_logic;
    sel  : in std_logic;
    buzzer_out: out std_logic;
    anode : out std_logic_vector(3 downto 0); 
    cathode: out std_logic_vector(6 downto 0)
    );
end Receiver;

architecture Behavioral of Receiver is
-- how to sel??

component ShiftReg
    Port (
        CLK  : in std_logic;
        S_in : in std_logic;
        Pout : out std_logic_vector(7 downto 0)
    );
end component;

component Reg
    Port(
        CLK : in std_logic;
        D: in std_logic_vector(7 downto 0);
        Q: out std_logic_vector(7 downto 0)
    ); 
end component;

component Driver
    Port (
        sel : in std_logic_vector(1 downto 0); -- anode selector
        in_letter: in std_logic_vector(31 downto 0); 
        anode : out std_logic_vector(3 downto 0); 
        cathode: out std_logic_vector(6 downto 0)
     );
end component;

component rCounter
    Port(
        CLK: in std_logic; -- clock input
        -- RST: in std_logic;
        refresh: out std_logic_vector(1 downto 0) -- output 4-bit counter
    );
end component;

signal reset: std_logic := '0';
signal temp_read: std_logic_vector (7 downto 0);

-- signal d1in : std_logic_vector (7 downto 0) := "00000000";
-- signal d2in : std_logic_vector (7 downto 0) := "00000000";
-- signal d3in : std_logic_vector (7 downto 0) := "00000000";
-- signal d4in : std_logic_vector (7 downto 0) := "00000000";

signal d1out : std_logic_vector (7 downto 0); -- do zero zero zero 00000
signal d2out : std_logic_vector (7 downto 0);
signal d3out : std_logic_vector (7 downto 0);
signal d4out : std_logic_vector (7 downto 0);

signal in_letter: std_logic_vector(31 downto 0); 

signal crossbar_switch: std_logic;
signal refresh_counter: std_logic_vector(1 downto 0);
 

begin

SREG : ShiftReg PORT MAP(
    CLK=>fCLK, 
    S_in=>crossbar_switch, 
    Pout=>temp_read
);

D1REG : Reg PORT MAP(
    CLK=>sCLK, 
    D=>temp_read, 
    Q=>d1out
);

D2REG : Reg PORT MAP(
    CLK=>sCLK, 
    D=>d1out, 
    Q=>d2out
);

D3REG : Reg PORT MAP(
    CLK=>sCLK, 
    D=>d2out, 
    Q=>d3out
);

D4REG : Reg PORT MAP(
    CLK=>sCLK, 
    D=>d3out, 
    Q=>d4out
);

DRIV: Driver PORT MAP(
    sel=>refresh_counter, 
    in_letter=>in_letter, 
    anode=>anode, 
    cathode=>cathode
); -- something might go wrong with reset

REFC: rCounter PORT MAP(
    CLK=>CLK,
    -- RST=>reset,
    refresh=>refresh_counter
);

-- process (refresh_counter) begin
--     if (refresh_counter = "11") then
--         reset <= '1';
--     else
--         reset <= '0';
--     end if;
-- end process;

process (sel, S_in) begin
    if (sel = '0') then
        buzzer_out <= '0';
    elsif (sel = '1') then
        buzzer_out <= S_in;
    end if;
end process;

process (sel, S_in) begin
    if (sel = '0') then
        crossbar_switch <= S_in;
    elsif (sel = '1') then
        crossbar_switch <= '0';
    end if;
end process;


-- refresh_counter <= (others => '0') when refresh_counter = "11111111111111111111" else (others => '1'); -- to reset

--in_letter(31 downto 24) <= d4out;
--in_letter(23 downto 16) <= d3out;
--in_letter(15 downto 8) <= d2out;
--in_letter(7 downto 0) <= d1out;

 in_letter <= d4out & d3out & d2out & d1out;

end Behavioral;
