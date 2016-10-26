----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:17:39 10/23/2015 
-- Design Name: 
-- Module Name:    Numeroprimo - Behavioral 
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

entity Numeroprimo is
	port(A: in std_logic_vector(3 downto 0);
			Z: out std_logic);
end Numeroprimo;

architecture Behavioral of Numeroprimo is

begin
	process(A)
	begin
	case A is
		when "0000" => Z <= '1';
		when "0010" => Z <= '1';
		when "0011" => Z <= '1';
		when "0101" => Z <= '1';
		when "0111" => Z <= '1';
		when "1001" => Z <= '1';
		when "1011" => Z <= '1';
		when "1101" => Z <= '1';
		when "1111" => Z <= '1';
		when others => Z <= '0';
	end case;
	end process;
end Behavioral;

