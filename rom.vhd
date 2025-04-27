----------------------------------------------------------------------------------
-- Engineer: Khawla BOUGHERARA
-- Create Date:    11:34:03 12/08/2024 
-- Module Name:    rom - Behavioral 
-- Project Name: Artificial-Neural-Network-FPGA-Design-in-VHDL
-- Target Devices: FPGA
-- Tool versions: XILINX ISE
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity rom is
    Port ( adress : in  STD_LOGIC_VECTOR (2 downto 0);
           data_out : out  STD_LOGIC_VECTOR (7 downto 0));
end rom;

architecture rom8 of rom is
type rom is array(7 downto 0) of std_logic_vector(7 downto 0);
signal h: rom:=("00000001","00000010","00000011","00000100","00000101","00000110","00000111","00001000");
begin
data_out <= h(conv_integer(adress));

end rom8;

