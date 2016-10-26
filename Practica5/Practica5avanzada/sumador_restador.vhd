----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:08:49 12/16/2015 
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
			A, B: in std_logic_vector(3 downto 0);
			C: out std_logic_vector(3 downto 0));
end sumador_restador;

architecture Behavioral of sumador_restador is
	signal A_i, B_i, C_i: unsigned(3 downto 0);

begin
	A_i <= unsigned(A);
	B_i <= unsigned(B);
	C_i <= (A_i - B_i) when sum = '1' else (A_i + B_i);
	C <= std_logic_vector(C_i);
end Behavioral;

