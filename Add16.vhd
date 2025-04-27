----------------------------------------------------------------------------------
-- Engineer: Khawla BOUGHERARA
-- Create Date:    11:34:03 12/08/2024 
-- Module Name:    Add16 - Behavioral 
-- Project Name: Artificial-Neural-Network-FPGA-Design-in-VHDL
-- Target Devices: FPGA
-- Tool versions: XILINX ISE
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity Add16 is
    Port ( a : in  STD_LOGIC_VECTOR (15 downto 0);
           b : in  STD_LOGIC_VECTOR (15 downto 0);
           re : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (15 downto 0);
           rs : out  STD_LOGIC);
end Add16;

architecture MAdd16 of Add16 is
component Add1 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Re : in  STD_LOGIC;
           S : out  STD_LOGIC;
           Rs : out  STD_LOGIC);
end component Add1;
signal x: std_logic_vector(16 downto 0);
begin
u1: for i in 0 to 15 generate
u0: Add1 port map(a(i),b(i),x(i),s(i),x(i+1));
end generate;
x(0)<=re;
rs<=x(16);

end MAdd16;

