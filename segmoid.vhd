----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:43:35 12/08/2024 
-- Design Name: 
-- Module Name:    segmoid - Behavioral 
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

entity segmoid is
    Port ( adress : in  STD_LOGIC_VECTOR (4 downto 0);
           data : out  STD_LOGIC_VECTOR (7 downto 0));
end segmoid;

architecture Msegmoid of segmoid is

type rom is array (0 to 31) of STD_LOGIC_VECTOR (7 downto 0);-- 32 registres de 8 bits
signal lut:rom:=("00000000","00000000","00000000","00000000","00000000","00000000",
                "00000001","00000001","00000010","00000100","00000111","00001011",
					 "00010010","00011010","00100101","00110010","00111110","01001001",
					 "01010001","01011000","01011100","01011111","01100001","01100010",
					 "01100010","01100011","01100011","01100011","01100011","01100011",
					 "01100011","01100011");
begin
data <= lut(conv_integer(adress));  

end Msegmoid;

