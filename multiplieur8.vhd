----------------------------------------------------------------------------------
-- Engineer: Khawla BOUGHERARA
-- Create Date:    11:34:03 12/08/2024 
-- Module Name:    multiplieur8 - Behavioral 
-- Project Name: Artificial-Neural-Network-FPGA-Design-in-VHDL
-- Target Devices: FPGA
-- Tool versions: XILINX ISE
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity multiplieur8 is
    Port ( a : in  STD_LOGIC_VECTOR (7 downto 0);
           b : in  STD_LOGIC_VECTOR (7 downto 0);
           s : out  STD_LOGIC_VECTOR (15 downto 0));
end multiplieur8;

architecture Behavioral of multiplieur8 is

begin

s<= A*B;
end Behavioral;

