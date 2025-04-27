----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:30:58 12/02/2024 
-- Design Name: 
-- Module Name:    compteur - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity compteur is
    Port ( clk : in  STD_LOGIC;
	        L: out STD_LOGIC;
           cout : out  STD_LOGIC_VECTOR (2 downto 0));
end compteur;

architecture Mcompteur of compteur is

signal y: STD_LOGIC_VECTOR (2 downto 0) := "000";

begin
process(clk)
begin
   if y = "111" then
       y <= "000";
		 L <= '0';
	else if clk='1' and clk' event then
	y <= y+1;
   if (y <"111") then
	L <= '1';
	end if;
	end if;
	end if;
	cout <= y;
	
end process;

end Mcompteur;

