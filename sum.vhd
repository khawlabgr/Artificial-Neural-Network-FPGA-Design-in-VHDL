----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:41:33 12/08/2024 
-- Design Name: 
-- Module Name:    sum - Behavioral 
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
use IEEE.STD_LOGIC_SIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

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

