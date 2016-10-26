----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:23:17 01/13/2016 
-- Design Name: 
-- Module Name:    updown_counter - Behavioral 
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

entity updown_counter is
	generic(m: integer := 5);
	port(clk: in std_logic;
			rst: in std_logic;
			load: in std_logic;
			cu: in std_logic;
			cd: in std_logic;
			din: in std_logic_vector(m-1 downto 0);
			dout: out std_logic_vector(m-1 downto 0));
end updown_counter;

architecture Behavioral of updown_counter is

	signal di, do: unsigned(m-1 downto 0);

begin
	di <= unsigned(din);
	process(clk, rst)
	begin
		if (rst = '1') then
			do <= (others => '0');
		elsif clk'event and clk = '1' then
			if (load = '1') then
				do <= di;
			elsif (cu = '1') then
				do <= di + 1;
			elsif (cd = '1') then
				do <= di - 1;
			end if;
		end if;
	end process;
	dout <= std_logic_vector(do);
end Behavioral;

