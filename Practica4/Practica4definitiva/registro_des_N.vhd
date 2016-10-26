----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:11:06 11/25/2015 
-- Design Name: 
-- Module Name:    registro_des_N - Behavioral 
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

entity registro_des_N is
	generic(n : natural := 6);
	port(clk, reset, load, despl: in std_logic;
			D: in unsigned(n downto 0);
			Q: out unsigned(n downto 0));
end registro_des_N;

architecture Behavioral of registro_des_N is

signal Q_i: unsigned(n downto 0);

begin
	process(clk, reset)
	begin
		if reset = '1' then
			Q_i <= (others => '0');
		elsif clk'event and clk = '1' then
			if load = '1' then
				Q_i <= D;
				if despl = '1' then
					Q_i <= '0' & Q_i(n + 1 downto 1);
				end if;
			end if;
		end if;
	end process;
	
	Q <= Q_i;
	
end Behavioral;

