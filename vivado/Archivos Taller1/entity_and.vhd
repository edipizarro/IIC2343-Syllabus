library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity entity_and is
    Port (
        entrada1   : in  STD_LOGIC;
        entrada2 : in  STD_LOGIC;
        salida   : out STD_LOGIC
     );
end entity_and;

architecture Behavioral of entity_and is

-- Declaración de los componentes

begin

-- Declaración de instancias y comportamientos

salida <= entrada1 and entrada2;


end Behavioral;