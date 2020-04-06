library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity entity_or is
    Port (
        entrada1 : in  STD_LOGIC;
        entrada2 : in  STD_LOGIC;
        salida   : out STD_LOGIC
     );
end entity_or;

architecture Behavioral of entity_or is
-- Declaracion de los componentes

begin
-- Declaracion de instancias y comportamientos

salida <= entrada1 or entrada2;

end Behavioral;