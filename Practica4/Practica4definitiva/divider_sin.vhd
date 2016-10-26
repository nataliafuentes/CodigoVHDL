----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:14:59 11/25/2015 
-- Design Name: 
-- Module Name:    divider_sin - Behavioral 
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

entity divider_sin is
	port (clk, reset: in std_logic;
			dividend: in std_logic_vector(5 downto 0);
			divisor: in std_logic_vector(2 downto 0);
			start: in std_logic;
			ready: out std_logic;
			quotient: out std_logic_vector(5 downto 0);
			clk_out: out std_logic);
end divider_sin;

architecture estructural of divider_sin is
	component controller
		port(clk, reset, start: in std_logic;
				msb, comp: in std_logic;
				control: out std_logic_vector(7 downto 0);
				ready: out std_logic);
	end component controller;
	
	component data_path
		port(clk, reset: in std_logic;
				dividend: in std_logic_vector(5 downto 0);
				divisor: in std_logic_vector(2 downto 0);
				control: in std_logic_vector(7 downto 0);
				msb, comp: out std_logic;
				quotient: out std_logic_vector(5 downto 0));
	end component data_path;
signal msb_i, comp_i, ready_i: std_logic;
signal control_i: std_logic_vector(7 downto 0);
signal quotient_i: std_logic_vector(5 downto 0);

	signal clk_1Hz: std_logic;
	--Descomentar para implementacion
	--component divisor_i is
	--port(reset, clk_entrada: in std_logic;
				--clk_salida: out std_logic);
	--end component;

begin
	--Descomentar para implementacion
	--Nuevo_reloj: divisor_i port map (reset, clk, clk_1Hz);
	--clk_out <= clk_1Hz;
	--Comentar para la implementacion
	clk_1Hz <= clk;

	controlador: controller port map(clk_1Hz, reset, start, msb_i, comp_i, control_i, ready_i);
	ruta_datos: data_path port map(clk_1Hz, reset, dividend, divisor, control_i, msb_i, comp_i, quotient_i);
	ready <= ready_i;
	quotient <= quotient_i;

end estructural;