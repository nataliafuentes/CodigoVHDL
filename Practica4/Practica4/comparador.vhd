----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:24:22 11/23/2015 
-- Design Name: 
-- Module Name:    comparador - Behavioral 
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

entity comparador is
	port(A: in unsigned(6 downto 0);
			comp: out std_logic);
end comparador;

architecture Behavioral of comparador is

signal n, m, n_m: unsigned(6 downto 0);

begin
	n <= "0000110";
	m <= "0000011";
	n_m <= n - m;
	process(A, n_m)
	begin
		if (A < n_m) or (A = n_m) then
			comp <= '1';
		else
			comp <= '0';
		end if;
	end process;


end Behavioral;

