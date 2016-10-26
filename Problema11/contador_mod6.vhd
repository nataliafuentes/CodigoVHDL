----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:39:31 12/23/2015 
-- Design Name: 
-- Module Name:    contador_mod6 - Behavioral 
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

entity contador_mod6 is
	port(clk, reset, enable: in std_logic;
			B: out std_logic_vector(2 downto 0));
end contador_mod6;

architecture Behavioral of contador_mod6 is
	signal B_i: unsigned(2 downto 0);

begin
	process (clk, reset)
	begin
		if reset = '1' then
			B_i <= (others => '0');
		elsif clk'event and clk = '1' then
			if enable = '1' then
				if (B_i = "101") then
					B_i <= "000";
				else
					B_i <= B_i + "001";
				end if;
			end if;
		end if;
	end process;
	B <= std_logic_vector(B_i);
end Behavioral;

