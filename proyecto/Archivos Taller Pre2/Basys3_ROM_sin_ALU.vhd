library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity Basys3 is
    Port (
        sw          : in   std_logic_vector (2 downto 0);  -- Se�ales de entrada de los interruptores -- Arriba   = '1'   -- Los 3 swiches de la derecha: 2, 1 y 0.
        btn         : in   std_logic_vector (4 downto 0);  -- Se�ales de entrada de los botones       -- Apretado = '1'   -- 0 central, 1 arriba, 2 izquierda, 3 derecha y 4 abajo.
        led         : out  std_logic_vector (3 downto 0);  -- Se�ales de salida  a  los leds          -- Prendido = '1'   -- Los 4 leds de la derecha: 3, 2, 1 y 0.
        clk         : in   std_logic;
        disA       : out    std_logic_vector (3 downto 0);
        disB       : out    std_logic_vector (3 downto 0);
        disC       : out    std_logic_vector (3 downto 0);
        disD       : out    std_logic_vector (3 downto 0)                     -- No Tocar - Se�al de entrada del clock   -- Frecuencia = 100Mhz.
        );
end Basys3;

architecture Behavioral of Basys3 is

-- Inicio de la declaraci�n de los componentes.

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
    
component ROM
    Port (  
        address     : in    std_logic_vector (11 downto 0);
        dataout     : out   std_logic_vector (32 downto 0)
          );
    end component;


-- Fin de la declaraci�n de los componentes.

-- Inicio de la declaraci�n de se�ales.

signal load_a           : std_logic;
signal load_b           : std_logic;
signal mux_select_b     : std_logic;

signal reg_a            : std_logic_vector(15 downto 0);
signal reg_b            : std_logic_vector(15 downto 0);
signal mux_b            : std_logic_vector(15 downto 0);

signal alu_sop          : std_logic_vector(2 downto 0);
signal alu_result       : std_logic_vector(15 downto 0);
signal alu_c            : std_logic;
signal alu_z            : std_logic;
signal alu_n            : std_logic;


signal rom_address      : std_logic_vector(11 downto 0);
signal word             : std_logic_vector(32 downto 0);


-- Fin de la declaraci�n de los se�ales.

begin

-- Inicio de declaraci�n de comportamientos.

rom_address(2 downto 0) <= sw(2 downto 0);
rom_address(11 downto 3) <= "000000000";

disA  <= reg_a(7 downto 4);
disB  <= reg_a(3 downto 0);
disC  <= reg_b(7 downto 4);
disD  <= reg_b(3 downto 0);

load_a <= word(0);
load_b <= word(1);
mux_select_b <= word(2);
alu_sop <= word(5 downto 3);

with mux_select_b select
    mux_b <=    reg_b when '1',
                word(32 downto 17) when others;


-- Inicio de declaraci�n de instancias.
inst_Reg_A: Reg port map(
    clock       => clk,
    load        => load_a,
    up          => '0',
    down        => '0',
    datain      => alu_result,
    dataout     => reg_a
    );

inst_Reg_B: Reg port map(
    clock       => clk,
    load        => load_b,
    up          => '0',
    down        => '0',
    datain      => alu_result,
    dataout     => reg_b
    );   

inst_ROM: ROM port map(
    address     => rom_address,
    dataout     => word
    );

