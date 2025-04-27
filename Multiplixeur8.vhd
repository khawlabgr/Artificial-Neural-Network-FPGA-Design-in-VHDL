----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:59:20 12/08/2024 
-- Design Name: 
-- Module Name:    Multiplixeur8 - Behavioral 
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

entity Multiplixeur8 is
    Port ( e0 : in  STD_LOGIC_VECTOR (7 downto 0);
           e1 : in  STD_LOGIC_VECTOR (7 downto 0);
           e2 : in  STD_LOGIC_VECTOR (7 downto 0);
           e3 : in  STD_LOGIC_VECTOR (7 downto 0);
           e4 : in  STD_LOGIC_VECTOR (7 downto 0);
           e5 : in  STD_LOGIC_VECTOR (7 downto 0);
           e6 : in  STD_LOGIC_VECTOR (7 downto 0);
           e7 : in  STD_LOGIC_VECTOR (7 downto 0);
           sel : in  STD_LOGIC_VECTOR (2 downto 0);
           s : out  STD_LOGIC_VECTOR (7 downto 0));
end Multiplixeur8;

architecture MUX8 of Multiplixeur8 is

begin
s <= e0 when sel="000" else
     e1 when sel="001" else
     e2 when sel="010" else
     e3 when sel="011" else
     e4 when sel="100" else
     e5 when sel="101" else
     e6 when sel="110" else
     e7 when sel="111";


end MUX8;

