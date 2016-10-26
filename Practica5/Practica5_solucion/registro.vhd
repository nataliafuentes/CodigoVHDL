----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:47:10 12/14/2015 
-- Design Name: 
-- Module Name:    registro - Behavioral 
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

entity registro is
	port(clk, reset, load: in std_logic;
			D: in std_logic_vector(5 downto 0);
			Q: out std_logic_vector(5 downto 0));
end registro;

architecture Behavioral of registro is

begin
	process(clk, reset)
	begin
		if reset = '1' then
			Q <= (others => '0');
		elsif clk'event and clk = '1' then
			if load = '1' then
				Q <= D;
			end if;
		end if;
	end process;
end Behavioral;

