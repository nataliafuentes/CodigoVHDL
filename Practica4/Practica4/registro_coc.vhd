----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:12:31 11/22/2015 
-- Design Name: 
-- Module Name:    registro_coc - Behavioral 
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

entity registro_coc is
	port(clk, reset, load, despl, coc_i: in std_logic;
			D: in unsigned(6 downto 0);
			Q: out unsigned(6 downto 0));
end registro_coc;

architecture Behavioral of registro_coc is

signal Q_i: unsigned(6 downto 0);

begin
	process(clk, reset)
	begin
		if reset = '1' then
			Q_i <= (others => '0');
		elsif clk'event and clk = '1' then
			if load = '1' then
				Q_i <= D;
				if despl = '1' then
					Q_i <= Q_i(5 downto 0) & coc_i;
				end if;
			end if;
		end if;
	end process;

	Q <= Q_i;

end Behavioral;

