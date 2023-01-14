library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity LiFi is
    Port (
        CLK_main : in std_logic;
        S_in_main : in std_logic;
        sel_main  : in std_logic;
        buzzer_out_main : out std_logic;
        anode_main : out std_logic_vector(3 downto 0); 
        cathode_main: out std_logic_vector(6 downto 0);
        k: out std_logic;
        L_out_main : out std_logic
    );
end LiFi;

architecture Behavioral of LiFi is

signal fCLK_main : std_logic := '0';
signal sCLK_main : std_logic := '0';

component Receiver
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
end component;

component Transmitter
    Port (
        fCLK : in std_logic;
        sCLK : in std_logic;
        sel : in std_logic;
        L_out : out std_logic
     );
end component;

component fClock
    Port ( 
        CLK : in std_logic;
        oCLK : out std_logic
    );
end component;

component sClock
    Port ( 
        CLK : in std_logic;
        oCLK : out std_logic
    );
end component;


begin

TRAN: Transmitter PORT MAP (
    fCLK  => fCLK_main,
    sCLK  => sCLK_main,
    sel   => sel_main,
    L_out => L_out_main
);

RECI: Receiver PORT MAP (
    CLK  => CLK_main,
    fCLK => fCLK_main,
    sCLK => sCLK_main,
    S_in => S_in_main,
    sel  => sel_main,
    buzzer_out => buzzer_out_main,
    anode => anode_main,
    cathode => cathode_main
);

-- generate fCLK sCLK
fCLK: fClock PORT MAP (
    CLK => CLK_main,
    oCLK => fCLK_main
);

sCLK: sClock PORT MAP (
    CLK => fCLK_main,
    oCLK => sCLK_main
);

k<=S_in_main;

end Behavioral;
