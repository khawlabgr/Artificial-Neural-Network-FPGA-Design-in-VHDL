----------------------------------------------------------------------------------
-- Engineer: Khawla BOUGHERARA
-- Create Date:    11:34:03 12/08/2024 
-- Module Name:    registre - Behavioral 
-- Project Name: Artificial-Neural-Network-FPGA-Design-in-VHDL
-- Target Devices: FPGA
-- Tool versions: XILINX ISE
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity registre is
    Port ( data_in : in  STD_LOGIC_VECTOR (15 downto 0);
           w : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           data_out : out  STD_LOGIC_VECTOR (15 downto 0));
end registre;

architecture Mregistre16 of registre is

begin
process(clk)
begin
   if(clk)='1' and clk'event then 
	   if w= '1' then 
		   data_out <= data_in;
			end if;
		end if;
end  process;

end Mregistre16;

