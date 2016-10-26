----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:07:42 11/21/2015 
-- Design Name: 
-- Module Name:    sumador_restador - Behavioral 
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

entity sumador_restador is
	port(sum: in std_logic;
			A, B: in unsigned(6 downto 0);
			C: out unsigned(6 downto 0));
end sumador_restador;

architecture Behavioral of sumador_restador is

begin
	C <= (A - B) when sum = '1' else (A + B);
end Behavioral;

