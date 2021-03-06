----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:03:29 12/13/2015 
-- Design Name: 
-- Module Name:    black_jack - Behavioral 
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

entity black_jack is
	port(clk, reset: in std_logic;
			start, b_pc, b_pl: in std_logic;
			carta_inc, perder, ready: out std_logic;
			carta_act: out std_logic_vector(3 downto 0);
			punt1, punt2, fichas: out std_logic_vector(6 downto 0));
end black_jack;

architecture estructural of black_jack is

	component controller
		port(clk, reset: in std_logic;
				start, b_pc, b_pl: in std_logic;
				carta, punti, punto: in std_logic;
				control: out std_logic_vector(5 downto 0);
				ready, carta_inc_OK, perder_OK: out std_logic);
	end component controller;

	component data_path
		port(clk, reset: in std_logic;
				control: in std_logic_vector(5 downto 0);
				carta, punti, punto: out std_logic;
				carta_act: out std_logic_vector(3 downto 0);
				punt1, punt2, fichas: out std_logic_vector(6 downto 0));
	end component data_path;
	
	signal carta_i, ready_i, carta_inc_i, perder_i: std_logic;
	signal punti_i, punto_i: std_logic;
	signal carta_act_i: std_logic_vector(3 downto 0);
	signal punt1_i, punt2_i, fichas_i: std_logic_vector(6 downto 0);
	signal control_i: std_logic_vector(5 downto 0);

begin
	controlador: controller port map(clk, reset, start, b_pc, b_pl, carta_i, punti_i, punto_i, control_i, ready_i, carta_inc_i, perder_i);
	ruta_datos: data_path port map(clk, reset, control_i, carta_i, punti_i, punto_i, carta_act_i, punt1_i, punt2_i, fichas_i);
	carta_inc <= carta_inc_i;
	perder <= perder_i;
	ready <= ready_i;
	carta_act <= carta_act_i;
	punt1 <= punt1_i;
	punt2 <= punt2_i;
	fichas <= fichas_i;

end estructural;

