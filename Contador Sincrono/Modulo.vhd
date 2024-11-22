----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:13:44 10/26/2022 
-- Design Name: 
-- Module Name:    Modulo - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Modulo is
    Port ( clock : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           output : buffer integer range 0 to 7
         );
end Modulo;

architecture Behavioral of Modulo is

begin
  process(clock, reset) 
begin

   if(reset = '1') then 
	    output <= 0;
		
	elsif rising_edge(clock) then
	  if output = 0 then
		   output <= 5;
    elsif output = 5 then
       output <= 4;
    elsif output = 4 then
		   output <= 2;
    elsif output = 2 then
		   output <= 6;
    elsif output = 6 then
		   output <= 3;
    elsif output = 3 then
		   output <= 1;
    elsif output = 1 then
		   output <= 0;
    elsif output = 7 then
		   output <= 0;
    
		end if; 
		
	elsif falling_edge(clock) then
	    output <= output;
		 
	end if;

end process; 

end Behavioral;
