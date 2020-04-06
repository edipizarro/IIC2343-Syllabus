library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Basys3 is
    Port (
        sw          : in   std_logic_vector (2 downto 0);  -- Señales de entrada de los interruptores -- Arriba   = '1'   -- Los 3 swiches de la derecha: 2, 1 y 0.
        btn         : in   std_logic_vector (4 downto 0);  -- Señales de entrada de los botones       -- Apretado = '1'   -- 0 central, 1 arriba, 2 izquierda, 3 derecha y 4 abajo.
        led         : out  std_logic_vector (4 downto 0);  -- Señales de salida  a  los leds          -- Prendido = '1'   -- Los 4 leds de la derecha: 3, 2, 1 y 0.
        clk         : in   std_logic;                      -- No Tocar - Señal de entrada del clock   -- Frecuencia = 100Mhz.
        disA            : out std_logic_vector(3 downto 0);  -- Señales de salida al display A.    
        disB            :  out std_logic_vector(3 downto 0);  -- Señales de salida al display B.     
        disC            : out std_logic_vector(3 downto 0);  -- Señales de salida al display C.    
        disD            : out std_logic_vector(3 downto 0)  -- Señales de salida al display D.  
          );
end Basys3;

architecture Behavioral of Basys3 is

-- Inicio de la declaración de los componentes.

component Reg
    Port (
        clock       : in    std_logic;
        load        : in    std_logic;
        up          : in    std_logic;
        down        : in    std_logic;
        datain      : in    std_logic_vector (15 downto 0);
        dataout     : out   std_logic_vector (15 downto 0)
          );
    end component;
    
    
-- Fin de la declaración de los componentes.

-- Inicio de la declaración de señales.               
signal reg_a : std_logic_vector (15 downto 0);

-- Fin de la declaración de los señales.

begin


-- Inicio de declaración de comportamientos.


disA <= reg_a(3 downto 0);
disB <= reg_a(7 downto 4);
disC <= reg_a(11 downto 8);
disD <= reg_a(15 downto 12);



-- Inicio de declaración de instancias.

inst_Reg_A: Reg port map(
    clock      =>clk,
    load       =>'0',
    up         =>btn(0),
    down       =>btn(1),
    datain     =>"1111000011110000",
    dataout    =>reg_a
    );

-- Fin de declaración de instancias.

-- Fin de declaración de comportamientos.
  
end Behavioral;
