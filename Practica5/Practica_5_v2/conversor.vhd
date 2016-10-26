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
			punt1, punt2: out std_logic_vector(6 downto 0));
end conversor;

--REHACERLO ENTERO
architecture Behavioral of conversor is

	signal A_i: unsigned(7 downto 0);
	signal sum, P: unsigned(7 downto 0);
	--signal punt1_i, punt2_i: std_logic_vector(3 downto 0);

begin
	
	process (A, A_i, sum)
	begin
	A_i <= unsigned("00" & A);
	P <= "00000110";
	sum <= A_i;
	--punt1_i <= A_i(3 downto 0);
	--punt2_i <= A_i(7 downto 4);
	if (A_i(3 downto 0) > "1001") then
	ciclo: while (sum(3 downto 0) > "1001") loop
		sum <= A_i + P;
		punt1 <= std_logic_vector(sum(3 downto 0));
		punt2 <= std_logic_vector(sum(7 downto 4));
	end loop;
	else
		punt1 <= std_logic_vector(A_i(3 downto 0));
		punt2 <= std_logic_vector(A_i(7 downto 4));
	end if;
	end process;


end Behavioral;

