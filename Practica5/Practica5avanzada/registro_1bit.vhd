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

entity registro_1bit is
	port(clk, reset, load: in std_logic;
			D: in std_logic;
			Q: out std_logic);
end registro_1bit;

architecture Behavioral of registro_1bit is

begin
	process(clk, reset)
	begin
		if reset = '1' then
			Q <= '0';
		elsif clk'event and clk = '1' then
			if load = '1' then
				Q <= D;
			end if;
		end if;
	end process;
end Behavioral;

