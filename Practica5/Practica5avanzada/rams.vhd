----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:25:05 12/14/2015 
-- Design Name: 
-- Module Name:    rams - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity rams is
	--generic (M: natural := 6; N: natural := 4);
	port(clk, we: in std_logic;
			addr: in std_logic_vector(5 downto 0);
			di: in std_logic_vector(3 downto 0);
			do: out std_logic_vector(3 downto 0));
end rams;

architecture circuito of rams is
	type ram_type is array (0 to 63) of std_logic_vector(3 downto 0);
	signal RAM: ram_type := (X"1", X"2", X"3", X"4", X"5", X"6", X"7", X"8", X"9", X"A", X"A", X"A", X"A",
X"1", X"2", X"3", X"4", X"5", X"6", X"7", X"8", X"9", X"A", X"A", X"A", X"A",
X"1", X"2", X"3", X"4", X"5", X"6", X"7", X"8", X"9", X"A", X"A", X"A", X"A",
X"1", X"2", X"3", X"4", X"5", X"6", X"7", X"8", X"9", X"A", X"A", X"A", X"A", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0");
begin

	puerto: process (clk)
	begin
		if rising_edge(clk) then
			if we = '1' then
				RAM(conv_integer(addr)) <= di;
			end if;
			do <= RAM(conv_integer(addr));
		end if;
	end process puerto;
	
end circuito;

