----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:40:12 12/23/2015 
-- Design Name: 
-- Module Name:    registro_despl - Behavioral 
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

entity registro_despl is
	port(clk, reset, load, despl: in std_logic;
			A: in std_logic;
			P: out std_logic_vector(3 downto 0));
end registro_despl;

architecture Behavioral of registro_despl is
	signal Q_i: unsigned(3 downto 0);

begin
	process(clk, reset)
	begin
		if reset = '1' then
			Q_i <= (others => '0');
		elsif clk'event and clk = '1' then
			if load = '1' then
				Q_i <= A & "000";
				if despl = '1' then
					Q_i <= A & Q_i(3 downto 1);
				end if;
			end if;
		end if;
	end process;
	
	P <= std_logic_vector(Q_i);


end Behavioral;

