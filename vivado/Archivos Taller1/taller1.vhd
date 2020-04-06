library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity taller1 is
    Port (
        entradaA   : in  STD_LOGIC;
        entradaB : in  STD_LOGIC;
        entradaC : in  STD_LOGIC;
        entradaD : in  STD_LOGIC;
        salida   : out STD_LOGI
     );
end taller1;

architecture Behavioral of taller1 is

-- Declaración de los componentes

component entity_and is
    Port (
        entrada1   : in  STD_LOGIC;
        entrada2 : in  STD_LOGIC;
        salida   : out STD_LOGIC
     );
end component;

signal signal_salida1 : STD_LOGIC;
signal signal_salida2 : STD_LOGIC;


begin

salida <= signal_salida1 or signal_salida2;

-- Declaración de instancias y comportamientos

inst_and1: entity_and port map(
		entrada1 => entradaA,
		entrada1 => entradaB,
		salida => signal_salida1

	);

inst_and2: entity_and port map(
		entrada1 => entradaC,
		entrada1 => entradaD,
		salida => signal_salida2

	);


end Behavioral;