----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:10:18 01/13/2016 
-- Design Name: 
-- Module Name:    registrogenerico - Behavioral 
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

entity registrogenerico is
	generic(m: integer := 5);
	port(clk, rst, load: in std_logic;
			D: in std_logic_vector(m-1 downto 0);
			Q: out std_logic_vector(m-1 downto 0));
end registrogenerico;

architecture Behavioral of registrogenerico is

begin
	process(clk, rst)
	begin
		if (rst = '1') then
			Q <= (others => '0');
		elsif clk'event and clk = '1' then
			if (load = '1') then
				Q <= D;
			end if;
		end if;
	end process;
end Behavioral;

