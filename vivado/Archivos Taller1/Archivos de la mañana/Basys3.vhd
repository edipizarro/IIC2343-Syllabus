library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Basys3 is
    Port (
        sw    : in  STD_LOGIC_VECTOR (1 downto 0);
        led   : out STD_LOGIC
     );
end Basys3;

architecture Behavioral of Basys3 is

component ejercicio2_normal is
    Port (
        entradaA : in  STD_LOGIC;
        entradaB : in  STD_LOGIC;
        salida   : out STD_LOGIC
     );
end component;

begin

componente: ejercicio2_normal port map(
        entradaA => sw(0),
        entradaB => sw(1),
        salida   => led        
);


end Behavioral;

