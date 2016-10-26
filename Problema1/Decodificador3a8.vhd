----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:16:14 10/21/2015 
-- Design Name: 
-- Module Name:    Decodificador3a8 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Decodificador3a8 is
	port(E: in std_logic_vector(2 downto 0);
			S: out std_logic_vector(7 downto 0));
end Decodificador3a8;

architecture Behavioral of Decodificador3a8 is

begin
	with E select
		S <= "00000001" when "000",
			  "00000010" when "001",
			  "00000100" when "010",
			  "00001000" when "011",
			  "00010000" when "100",
			  "00100000" when "101",
			  "01000000" when "110",
		     "10000000" when others;
end Behavioral;

