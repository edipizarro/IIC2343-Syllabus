library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity comp_xor_tb is
end;

architecture bench of comp_xor_tb is

  component comp_xor
      Port ( sw : in STD_LOGIC_VECTOR (1 downto 0);
             led : out STD_LOGIC_VECTOR (0 downto 0));
  end component;

  signal sw: STD_LOGIC_VECTOR (1 downto 0);
  signal led: STD_LOGIC_VECTOR (0 downto 0);

begin

  uut: comp_xor port map ( sw  => sw,
                           led => led );

  stimulus: process
  begin
  
    -- Put initialisation code here
    sw <= "10";-- 
    wait for 10 ns;
    sw <= "11";-- 
    wait for 10 ns;
    sw <= "00";-- 
    wait for 10 ns;
    sw <= "01";-- 
    wait for 10 ns;
    --formaa rapida
--    for i in 0 to 3 loop
--        sw <= std_logic_vector(to_unsigned(i, 2));
--        wait for 10ns;
--    end loop;
    

    -- Put test bench stimulus code here

    wait;
  end process;


end;