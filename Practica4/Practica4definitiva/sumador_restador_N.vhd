----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:12:57 11/25/2015 
-- Design Name: 
-- Module Name:    sumador_restador_N - Behavioral 
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

entity sumador_restador_N is
	generic(n : natural := 6);
	port(sum: in std_logic;
			A, B: in unsigned(n downto 0);
			C: out unsigned(n downto 0));
end sumador_restador_N;

architecture Behavioral of sumador_restador_N is

begin
	C <= (A - B) when sum = '1' else (A + B);
end Behavioral;

