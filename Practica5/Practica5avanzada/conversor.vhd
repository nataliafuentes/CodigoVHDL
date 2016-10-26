----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:58:17 12/14/2015 
-- Design Name: 
-- Module Name:    conversor - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity conversor is
	port(A: in std_logic_vector(5 downto 0);
			punt1, punt2: out std_logic_vector(3 downto 0));
end conversor;

architecture Behavioral of conversor is


begin
	process (A)
	begin
		case A is
			when "000000" =>
				punt1 <= "0000";
				punt2 <= "0000";
			when "000001" =>
				punt1 <= "0001";
				punt2 <= "0000";
			when "000010" =>
				punt1 <= "0010";
				punt2 <= "0000";
			when "000011" =>
				punt1 <= "0011";
				punt2 <= "0000";
			when "000100" =>
				punt1 <= "0100";
				punt2 <= "0000";
			when "000101" =>
				punt1 <= "0101";
				punt2 <= "0000";
			when "000110" =>
				punt1 <= "0110";
				punt2 <= "0000";
			when "000111" =>
				punt1 <= "0111";
				punt2 <= "0000";
			when "001000" =>
				punt1 <= "1000";
				punt2 <= "0000";
			when "001001" =>
				punt1 <= "1001";
				punt2 <= "0000";
			when "001010" =>
				punt1 <= "0000";
				punt2 <= "0001";
			when "001011" =>
				punt1 <= "0001";
				punt2 <= "0001";
			when "001100" =>
				punt1 <= "0010";
				punt2 <= "0001";
			when "001101" =>
				punt1 <= "0011";
				punt2 <= "0001";
			when "001110" =>
				punt1 <= "0100";
				punt2 <= "0001";
			when "001111" =>
				punt1 <= "0101";
				punt2 <= "0001";
			when "010000" =>
				punt1 <= "0110";
				punt2 <= "0001";
			when "010001" =>
				punt1 <= "0111";
				punt2 <= "0001";
			when "010010" =>
				punt1 <= "1000";
				punt2 <= "0001";
			when "010011" =>
				punt1 <= "1001";
				punt2 <= "0001";
			when "010100" =>
				punt1 <= "0000";
				punt2 <= "0010";
			when "010101" =>
				punt1 <= "0001";
				punt2 <= "0010";
			when "010110" =>
				punt1 <= "0010";
				punt2 <= "0010";
			when "010111" =>
				punt1 <= "0011";
				punt2 <= "0010";
			when "011000" =>
				punt1 <= "0100";
				punt2 <= "0010";
			when "011001" =>
				punt1 <= "0101";
				punt2 <= "0010";
			when "011010" =>
				punt1 <= "0110";
				punt2 <= "0010";
			when "011011" =>
				punt1 <= "0111";
				punt2 <= "0010";
			when "011100" =>
				punt1 <= "1000";
				punt2 <= "0010";
			when "011101" =>
				punt1 <= "1001";
				punt2 <= "0010";
			when others =>
				punt1 <= "0000";
				punt2 <= "0011";
		end case;
	end process;


end Behavioral;

