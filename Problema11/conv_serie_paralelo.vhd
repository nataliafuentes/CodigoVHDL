----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:48:17 12/22/2015 
-- Design Name: 
-- Module Name:    conv_serie_paralelo - Behavioral 
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

entity conv_serie_paralelo is
	port(clk, reset: in std_logic;
			activa: in std_logic;
			A: in std_logic;
			P: out std_logic_vector(3 downto 0));
end conv_serie_paralelo;

architecture Behavioral of conv_serie_paralelo is

	component registro_despl
		port(clk, reset, load, despl: in std_logic;
				A: in std_logic;
				P: out std_logic_vector(3 downto 0));
	end component registro_despl;
	
	component contador_mod6
		port(clk, reset, enable: in std_logic;
				B: out std_logic_vector(2 downto 0));
	end component contador_mod6;
	
	signal B_i: std_logic_vector(2 downto 0);
	signal P_i: std_logic_vector(3 downto 0);
	signal load_i, despl_i, enable_i: std_logic;

begin
	reg: registro_despl port map(clk, reset, load_i, despl_i, A, P_i);
	cont: contador_mod6 port map(clk, reset, enable_i, B_i);
	process(B_i, activa)
	begin
		if (activa = '1') then
			if (B_i > "011") then
				load_i <= '0';
				despl_i <= '0';
				enable_i <= '1';
			else
				load_i <= '1';
				despl_i <= '1';
				enable_i <= '1';
			end if;
		else
			load_i <= '0';
			despl_i <= '0';
			enable_i <= '0';
		end if;
	end process;
	P <= P_i;
end Behavioral;

