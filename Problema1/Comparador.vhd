----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:24:35 10/21/2015 
-- Design Name: 
-- Module Name:    Comparador - Behavioral 
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

entity Comparador is
	port(A, B: in std_logic_vector(3 downto 0);
			S: out std_logic);
end Comparador;

architecture Behavioral of Comparador is

begin
	process(A, B)
	begin
		if A = B then S <= '1';
		else S <= '0';
		end if;
	end process;
end Behavioral;

