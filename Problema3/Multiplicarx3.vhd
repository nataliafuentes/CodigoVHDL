----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:41:13 10/21/2015 
-- Design Name: 
-- Module Name:    Multiplicarx3 - Behavioral 
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

entity Multiplicarx3 is
	port(X: in std_logic_vector(2 downto 0);
			Z: out std_logic_vector(3 downto 0);
			D: out std_logic);
end Multiplicarx3;

architecture Behavioral of Multiplicarx3 is

begin
	process(X)
	begin
	case X is
		when "000" =>
						Z <= "0000";
						D <= '0';
		when "001" =>
						Z <= "0011";
						D <= '0';
		when "010" =>
						Z <= "0110";
						D <= '0';
		when "011" =>
						Z <= "1001";
						D <= '0';
		when "100" =>
						Z <= "1100";
						D <= '0';
		when "101" =>
						Z <= "1111";
						D <= '0';
		when "110" =>
						Z <= "0010";
						D <= '1';
		when others =>
						Z <= "0101";
						D <= '1';
	end case;
	end process;
end Behavioral;

