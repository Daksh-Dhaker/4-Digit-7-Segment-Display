----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/03/2023 03:04:47 PM
-- Design Name: 
-- Module Name: testbench1 - Behavioral
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

entity testbench1 is
--  Port ( );
end testbench1;

architecture Behavioral of testbench1 is
component MUX
Port(i1: in std_logic;
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
 end component;
 signal i1: std_logic;
 signal i2: std_logic;
 signal i3: std_logic;
 signal i4: std_logic;
 signal a_out1: std_logic;
         signal a_out2:  std_logic;
          signal a_out3:  std_logic;
         signal a_out4:  std_logic; 
         signal c_out1:  std_logic;
       signal   c_out2:  std_logic;
       signal   c_out3:  std_logic;
     signal     c_out4: std_logic;
       signal   c_out5:  std_logic;
       signal  c_out6:  std_logic;
         signal c_out7:  std_logic;
         
begin
UUT : MUX port map (i1=>i1 ,i2=>i2,i3=>i3,i4=>i4,
                    a_out1 => a_out1,
                     a_out2 => a_out2,
                      a_out3 => a_out3,
                       a_out4 => a_out4,
                       c_out1 => c_out1,
                      c_out2 => c_out2,
                       c_out3 => c_out3,
                       c_out4 => c_out4,
                        c_out5 => c_out5,
                         c_out6 => c_out6,
                          c_out7 => c_out7  );
                    i1<='0' ,'1' after 80 ns;
                    i2<='0', '1' after 40 ns, '0' after 80 ns, '1' after 120 ns;
                    i3<= '0', '1' after 20 ns,'0' after 40 ns, '1' after 60 ns, '0' after 80 ns,'1' after 100 ns,'0' after 120 ns,'1' after 140 ns;
                     i4<= '0','1' after 10 ns ,'0' after 20 ns ,'1' after 30 ns ,'0' after 40 ns, '1' after 50 ns, '0' after 60 ns ,'1' after 70 ns ,'0' after 80 ns ,'1' after 90 ns ,'0' after 100 ns ,'1' after 110 ns, '0' after 120 ns ,'1' after 130 ns ,'0' after 140 ns ;


end Behavioral;
