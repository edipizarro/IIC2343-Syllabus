----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.03.2020 22:34:58
-- Design Name: 
-- Module Name: comp_xor - Behavioral
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


entity comp_xor is
    Port ( sw : in STD_LOGIC_VECTOR (1 downto 0);
           led : out STD_LOGIC_VECTOR (0 downto 0));
end comp_xor;

architecture Behavioral of comp_xor is

component comp_ejer1 is
    Port ( --A : in STD_LOGIC_VECTOR (3 downto 0);
           entrada1: in STD_LOGIC;
           entrada2: in STD_LOGIC;
           entrada3: in STD_LOGIC;
           entrada4: in STD_LOGIC;
           B : out STD_LOGIC);
end component;

signal sw0_neg : STD_LOGIC;
signal sw1_neg : STD_LOGIC;

begin
--sw(0)->A
--sw(1)->B
sw0_neg<=not sw(0);
sw1_neg<=not sw(1);
conect_ejer1: comp_ejer1 port map(entrada1=>sw(0),entrada2=>sw1_neg,entrada3=>sw(1),entrada4=>sw0_neg,B=>led(0));
--led(0) <= (not sw(0) and sw(1)) or (not sw(1) and sw(0));
end Behavioral;
