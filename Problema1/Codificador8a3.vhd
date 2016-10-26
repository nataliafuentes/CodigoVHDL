----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:09:33 10/21/2015 
-- Design Name: 
-- Module Name:    Codificador8a3 - Behavioral 
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

entity Codificador8a3 is
	port(E: in std_logic_vector(7 downto 0);
			S: out std_logic_vector(2 downto 0));
end Codificador8a3;

architecture Behavioral of Codificador8a3 is

begin
	S <= "000" when E(0) = '1' else
		  "001" when E(1) = '1' else
		  "010" when E(2) = '1' else
		  "011" when E(3) = '1' else
		  "100" when E(4) = '1' else
		  "101" when E(5) = '1' else
		  "110" when E(6) = '1' else
		  "111" when E(7) = '1' else
		  "---";
end Behavioral;

