----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:22:21 10/22/2015 
-- Design Name: 
-- Module Name:    Circuitoxor3 - Behavioral 
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

entity Circuitoxor3 is
	port(A: in std_logic_vector(3 downto 0);
			odd: out std_logic);
end Circuitoxor3;

architecture Behavioral of Circuitoxor3 is
	component Puertaxor2
		port(I: in std_logic_vector(1 downto 0);
				O: out std_logic);
	end component;
	signal sig: std_logic_vector(1 downto 0);
	signal od: std_logic;
begin
	unit_10: Puertaxor2 port map(A(1 downto 0), sig(0));
	unit_11: Puertaxor2 port map(A(3 downto 2), sig(1));
	unit_2: Puertaxor2 port map(sig, od);
	odd <= od;
end Behavioral;

