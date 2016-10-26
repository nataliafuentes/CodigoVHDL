----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:06:19 11/23/2015 
-- Design Name: 
-- Module Name:    divider_N - Behavioral 
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

entity divider_N is
	generic(n : natural := 8;
				m : natural := 4);
	port(clk, reset: in std_logic;
			dividend: in std_logic_vector(n - 1 downto 0);
			divisor: in std_logic_vector(m - 1 downto 0);
			start: in std_logic;
			ready: out std_logic;
			quotient: out std_logic_vector(n - 1 downto 0));
end divider_N;

architecture estructural of divider_N is
	component controller
		port(clk, reset, start: in std_logic;
				msb, comp: in std_logic;
				control: out std_logic_vector(7 downto 0);
				ready: out std_logic);
	end component controller;
	component data_path_N
		port(clk, reset: in std_logic;
				dividend: in std_logic_vector(n -1 downto 0);
				divisor: in std_logic_vector(m - 1 downto 0);
				control: in std_logic_vector(7 downto 0);
				msb, comp: out std_logic;
				quotient: out std_logic_vector(n - 1 downto 0));
	end component data_path_N;
signal msb_i, comp_i, ready_i: std_logic;
signal control_i: std_logic_vector(7 downto 0);
signal quotient_i: std_logic_vector(n - 1 downto 0);

begin
	controlador: controller port map(clk, reset, start, msb_i, comp_i, control_i, ready_i);
	ruta_datos: data_path_N port map(clk, reset, dividend, divisor, control_i, msb_i, comp_i, quotient_i);
	ready <= ready_i;
	quotient <= quotient_i;

end estructural;

