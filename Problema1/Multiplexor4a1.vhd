----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:03:08 10/20/2015 
-- Design Name: 
-- Module Name:    Multiplexor4a1 - Behavioral 
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

entity Multiplexor4a1 is
	port(E: in  std_logic_vector(3 downto 0);
			C: in std_logic_vector(1 downto 0);
			S: out std_logic);
end Multiplexor4a1;

architecture Behavioral of Multiplexor4a1 is

begin
		with C select
			S <= E(0) when "00",
				  E(1) when "01",
				  E(2) when "10",
				  E(3) when others;
end Behavioral;

