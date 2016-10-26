----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:32:53 01/13/2016 
-- Design Name: 
-- Module Name:    multiplicador - Behavioral 
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

entity multiplicador is
	port(A, B: in std_logic_vector(15 downto 0);
			C: out std_logic_vector(31 downto 0));
end multiplicador;

architecture Behavioral of multiplicador is

	signal A_i, B_i: unsigned(15 downto 0);
	signal C_i: unsigned(31 downto 0);

begin
	A_i <= unsigned(A);
	B_i <= unsigned(B);
	C_i <= A_i * B_i;
	C <= std_logic_vector(C_i);
end Behavioral;

