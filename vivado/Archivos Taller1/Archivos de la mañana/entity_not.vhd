library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity entity_not is
    Port (
        entrada1 : in  STD_LOGIC;
        salida   : out STD_LOGIC
     );
end entity_not;

architecture Behavioral of entity_not is
-- Declaracion de los componentes

begin
-- Declaracion de instancias y comportamientos

salida <= not entrada1;

end Behavioral;
