----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/03/2023 02:06:59 PM
-- Design Name: 
-- Module Name: a1a - Behavioral
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

entity MUX is
  Port (i1: in std_logic;
        i2: in std_logic;
        i3: in std_logic;
        i4: in std_logic;
        a_out1: out std_logic;
        a_out2: out std_logic;
        a_out3: out std_logic;
        a_out4: out std_logic; 
        c_out1: out std_logic;
        c_out2: out std_logic;
        c_out3: out std_logic;
        c_out4: out std_logic;
        c_out5: out std_logic;
        c_out6: out std_logic;
        c_out7: out std_logic
        );
end MUX;

architecture Behavioral of MUX is



begin



process(i1,i2,i3,i4) is
begin
     c_out1 <= ((not i1)and(not i2)and(not i3)and(i4))or((not i1)and(i2)and(not i3)and(not i4))or((i1)and(not i2)and(i3)and(i4))or((i1)and(i2)and(not i3)and(i4))or((i1)and(i2)and(not i3)and(not i4));
     c_out2 <= ((not i1)and(i2)and(not i3)and(i4))or((not i1)and(i2)and(i3)and(not i4))or((i1)and(not i2)and(i3)and(i4))or((i1)and(i2)and(i3)and(not i4))or((i1)and(i2)and(i3)and(i4));
     c_out3 <= ((not i1)and( not i2)and(i3)and( not i4))or((i1)and(i2)and(i3)and(not i4))or((i1)and(i2)and(i3)and(i4));
     c_out4 <= ((not i1)and(not i2)and(not i3)and(i4))or((not i1)and(i2)and(not i3)and(not i4))or((not i1)and(i2)and(i3)and(i4))or((i1)and(not i2)and(i3)and(not i4))or((i1)and(i2)and(i3)and(i4));
     c_out5<= ((not i1)and(not i2)and(not i3)and(i4))or((not i1)and(not i2)and(i3)and(i4))or((not i1)and(i2)and(not i3)and(not i4))or((not i1)and(i2)and(not i3)and(i4))or((not i1)and(i2)and(i3)and(i4))or((i1) and (not i2) and (not i3)and (i4));
     c_out6<= ((not i1)and(not i2)and(not i3)and(i4))or((not i1)and(not i2)and(i3)and(not i4))or((not i1)and(not i2)and(i3)and(i4))or((not i1)and(i2)and(i3)and(i4))or((i1)and(i2)and(not i3)and(i4));
    c_out7<= ((not i1)and(not i2)and(not i3)and(not i4))or((not i1)and(not i2)and(not i3)and(i4))or((not i1)and(i2)and(i3)and(i4))or((i1)and(i2)and(not i3)and(not i4));
    
    
    
    a_out1 <= '0';
    a_out2 <= '1';
    a_out3 <= '1';
    a_out4 <= '1';
    

end process;




end Behavioral;
