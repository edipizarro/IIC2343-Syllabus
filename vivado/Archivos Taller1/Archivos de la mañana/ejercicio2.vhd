library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ejercicio2 is
-- Declaracion de la entidad
    Port (       
        entradaA  : in STD_LOGIC;
        entradaB  : in STD_LOGIC;
        salida    : out STD_LOGIC
     );
end ejercicio2;


architecture Behavioral of ejercicio2 is
-- Declaracion de los componentes y señales

component entity_and is
    Port (
        entrada1 : in  STD_LOGIC;
        entrada2 : in  STD_LOGIC;
        salida   : out STD_LOGIC
     );
end component;

component entity_or is
    Port (
        entrada1 : in  STD_LOGIC;
        entrada2 : in  STD_LOGIC;
        salida   : out STD_LOGIC
     );
end component;

component entity_not is
    Port (
        entrada1 : in  STD_LOGIC;
        salida   : out STD_LOGIC
     );
end component;

signal salida_not1: STD_LOGIC;
signal salida_not2: STD_LOGIC;
signal salida_and1: STD_LOGIC;
signal salida_and2: STD_LOGIC;


begin
-- Declaracion de instancias y comportamientos

not_1: entity_not port map(
        entrada1 => entradaA,
        salida   => salida_not1        
);

not_2: entity_not port map(
        entrada1 => entradaB,
        salida   => salida_not2        
);

and_1: entity_and port map(
        entrada1 => salida_not1,
        entrada2 => entradaB,
        salida   => salida_and1        
);

and_2: entity_and port map(
        entrada1 => salida_not2,
        entrada2 => entradaA,
        salida   => salida_and2        
);

or_1: entity_or port map(
        entrada1 => salida_and1,
        entrada2 => salida_and2,
        salida   => salida    
);

end Behavioral;
