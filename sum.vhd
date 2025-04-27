----------------------------------------------------------------------------------
-- Engineer: Khawla BOUGHERARA
-- Create Date:    11:34:03 12/08/2024 
-- Module Name:   sum - Behavioral 
-- Project Name: Artificial-Neural-Network-FPGA-Design-in-VHDL
-- Target Devices: FPGA
-- Tool versions: XILINX ISE
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;



entity sum is
    Port ( sem : in  STD_LOGIC_VECTOR (15 downto 0);
           adress : out  STD_LOGIC_VECTOR (4 downto 0));
end sum;

architecture Msum of sum is
signal x:integer;
signal y:integer;
begin
x<= conv_integer(sem);
y<= 0 when (x<=(-8))else
    31 when (x>=8) else
	 ((8+x)*2);
adress<= conv_std_logic_vector(y,5);
end Msum;

