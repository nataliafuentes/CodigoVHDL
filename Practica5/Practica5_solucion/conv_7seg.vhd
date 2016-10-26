----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:00:08 12/15/2015 
-- Design Name: 
-- Module Name:    conv_7seg - Behavioral 
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

entity conv_7seg is
	port(x: in std_logic_vector(3 downto 0);
			display: out std_logic_vector(6 downto 0));
end conv_7seg;

architecture Behavioral of conv_7seg is

begin

	with x select
			display <= "0000110" when "0001",
						  "1011011" when "0010",
						  "1001111" when "0011",
						  "1100110" when "0100",
						  "1101101" when "0101",
						  "1111101" when "0110",
						  "0000111" when "0111",
						  "1111111" when "1000",
						  "1101111" when "1001",
						  "0111111" when others;
end Behavioral;

