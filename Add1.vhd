----------------------------------------------------------------------------------
-- Engineer: Khawla BOUGHERARA
-- Create Date:    11:34:03 12/08/2024 
-- Module Name:    Add1 - Behavioral 
-- Project Name: Artificial-Neural-Network-FPGA-Design-in-VHDL
-- Target Devices: FPGA
-- Tool versions: XILINX ISE
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity Add1 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Re : in  STD_LOGIC;
           S : out  STD_LOGIC;
           Rs : out  STD_LOGIC);
end Add1;

architecture MAdd1 of Add1 is

begin
S<= A xor B xor Re;
Rs<= ((A AND B)or(A AND Re)or(B AND Re));

end MAdd1;

