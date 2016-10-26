----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:51:14 01/13/2016 
-- Design Name: 
-- Module Name:    algorithmic - Behavioral 
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

entity algorithmic is
	port(clk: in std_logic;
			rst: in std_logic;
			init: in std_logic;
			n: in std_logic_vector(4 downto 0);
			x: in std_logic_vector(15 downto 0);
			y: out std_logic_vector(31 downto 0);
			fin: out std_logic;
			err: out std_logic);
end algorithmic;

architecture Behavioral of algorithmic is

	component controller
		port(clk, rst: in std_logic;
				init: in std_logic;
				num_n, num_x, num_k: in std_logic;
				control: out std_logic_vector(9 downto 0);
				err: out std_logic;
				fin: out std_logic);
	end component controller;
	
	component data_path
		port(clk, rst: in std_logic;
				n: in std_logic_vector(4 downto 0);
				x: in std_logic_vector(15 downto 0);
				control: in std_logic_vector(9 downto 0);
				num_n, num_x, num_k: out std_logic;
				y: out std_logic_vector(31 downto 0));
	end component data_path;
	
	signal n_aux, x_aux, k_aux, err_o, fin_o: std_logic;
	signal control_aux: std_logic_vector(9 downto 0);
	signal y_o: std_logic_vector(31 downto 0);

begin

	control: controller port map(clk, rst, init, n_aux, x_aux, k_aux, control_aux, err_o, fin_o);
	ruta_datos: data_path port map(clk, rst, n, x, control_aux, n_aux, x_aux, k_aux, y_o);
	fin <= fin_o;
	err <= err_o;
	y <= y_o;
end Behavioral;

