----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:31:27 12/24/2015 
-- Design Name: 
-- Module Name:    reg_des_izq - Behavioral 
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

entity reg_des_izq is
	port(clk, reset, load: in std_logic;
			despl: in std_logic_vector(2 downto 0);
			D: in std_logic_vector(7 downto 0);
			Q: out std_logic_vector(7 downto 0));
end reg_des_izq;

architecture Behavioral of reg_des_izq is
	signal Q_i, D_i: unsigned(7 downto 0);

begin
	process(clk, reset, D)
	begin
		D_i <= unsigned(D);
		if (reset = '1') then
			Q_i <= (others => '0');
		elsif (clk'event and clk = '1') then
			if (load = '1') then
				if (despl = "000") then
					Q_i <= D_i;
				elsif (despl = "001") then
					Q_i <= D_i(6 downto 0) & '0';
				elsif (despl = "010") then
					Q_i <= D_i(5 downto 0) & "00";
				elsif (despl = "011") then
					Q_i <= D_i(4 downto 0) & "000";
				elsif (despl = "100") then
					Q_i <= D_i(3 downto 0) & "0000";
				elsif (despl = "101") then
					Q_i <= D_i(2 downto 0) & "00000";
				elsif (despl = "110") then
					Q_i <= D_i(1 downto 0) & "000000";
				else
					Q_i <= D_i(0) & "0000000";
				end if;
			end if;
		end if;
	end process;
	
	Q <= std_logic_vector(Q_i);


end Behavioral;

