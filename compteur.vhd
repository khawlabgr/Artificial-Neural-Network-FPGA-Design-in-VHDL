----------------------------------------------------------------------------------
-- Engineer: Khawla BOUGHERARA
-- Create Date:    11:34:03 12/08/2024 
-- Module Name:    Compteur - Behavioral 
-- Project Name: Artificial-Neural-Network-FPGA-Design-in-VHDL
-- Target Devices: FPGA
-- Tool versions: XILINX ISE
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



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

