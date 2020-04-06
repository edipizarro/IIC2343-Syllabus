library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ejercicio2_normal is
-- Declaracion de la entidad
    Port (
        entradaA  : in  STD_LOGIC;
        entradaB  : in  STD_LOGIC;
        salida    : out STD_LOGIC
     );
end ejercicio2_normal;


architecture Behavioral of ejercicio2_normal is
-- Declaracion de los componentes y señales

signal salida_not1: STD_LOGIC;
signal salida_not2: STD_LOGIC;
signal salida_and1: STD_LOGIC;
signal salida_and2: STD_LOGIC;


begin
-- Declaracion de instancias y comportamientos

salida_not1 <= not entradaA;
salida_not2 <= not entradaB;

salida_and1 <= entradaB and salida_not1;
salida_and2 <= entradaA and salida_not2;

salida <= salida_and1 or salida_and2;

--TODO JUNTO--
--salida <= (entradaB and not entradaA) or (entradaA and not entradaB);
--TODO JUNTO--

end Behavioral;
