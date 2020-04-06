----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.03.2020 13:50:33
-- Design Name: 
-- Module Name: main_save_info - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity comp_ejer1 is
    Port ( --A : in STD_LOGIC_VECTOR (3 downto 0);
           entrada1: in STD_LOGIC;
           entrada2: in STD_LOGIC;
           entrada3: in STD_LOGIC;
           entrada4: in STD_LOGIC;
           B : out STD_LOGIC);
end comp_ejer1;

architecture Behavioral of comp_ejer1 is

component comp_and is
    Port ( input : in STD_LOGIC_VECTOR (1 downto 0);
           output : out STD_LOGIC);
end component;
component comp_or
    Port ( input : in STD_LOGIC_VECTOR (1 downto 0);
           output : out STD_LOGIC);
end component;

signal separ_A_01 : STD_LOGIC_VECTOR (1 downto 0);
signal separ_A_23 : STD_LOGIC_VECTOR (1 downto 0);
signal out_and1 : STD_LOGIC;
signal out_and2 : STD_LOGIC;
begin
--separ_A_01<=A(1 downto 0);
--separ_A_23<=A(3 downto 2);
separ_A_01(0)<=entrada1;
separ_A_01(1)<=entrada2;
separ_A_23(0)<=entrada3;
separ_A_23(1)<=entrada4;
conex_and1: comp_and port map(input=>separ_A_01,output=>out_and1);
conex_and2: comp_and port map(input=>separ_A_23,output=>out_and2);
B<= out_and1 or out_and2;



end Behavioral;
