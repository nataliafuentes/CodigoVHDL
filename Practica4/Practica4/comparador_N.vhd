----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:09:33 11/24/2015 
-- Design Name: 
-- Module Name:    comparador_N - Behavioral 
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

entity comparador_N is
	generic(n : natural := 8;
				m : natural := 4);
	port(A: in unsigned(n + 1 downto 0);
			comp: out std_logic);
end comparador_N;

architecture Behavioral of comparador_N is

signal n_i, m_i, n_m_i: unsigned(n + 1 downto 0);

begin
	n_i <= to_unsigned(n);
	m_i <= to_unsigned(m);
	n_m_i <= n_i - m_i;
	process(A, n_m_i)
	begin
		if (A < n_m_i) or (A = n_m_i) then
			comp <= '1';
		else
			comp <= '0';
		end if;
	end process;


end Behavioral;


