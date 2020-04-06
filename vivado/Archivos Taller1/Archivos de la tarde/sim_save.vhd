---------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.03.2020 18:12:54
-- Design Name: 
-- Module Name: sim_save - Behavioral
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
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity comp_ejer1_tb is
end;

architecture bench of comp_ejer1_tb is

  component comp_ejer1
      Port (
             entrada1: in STD_LOGIC;
             entrada2: in STD_LOGIC;
             entrada3: in STD_LOGIC;
             entrada4: in STD_LOGIC;
             B : out STD_LOGIC);
  end component;

  signal entrada1: STD_LOGIC;
  signal entrada2: STD_LOGIC;
  signal entrada3: STD_LOGIC;
  signal entrada4: STD_LOGIC;
  signal B: STD_LOGIC;

begin

  uut: comp_ejer1 port map ( entrada1 => entrada1,
                             entrada2 => entrada2,
                             entrada3 => entrada3,
                             entrada4 => entrada4,
                             B        => B );

  stimulus: process
  begin
  
    -- Put initialisation code here
    entrada1 <= '1';--
    entrada2 <= '0';--
    entrada3 <= '1';--
    entrada4 <= '0';--
     
    wait for 10 ns;

    -- Put test bench stimulus code here

    wait;
  end process;


end;