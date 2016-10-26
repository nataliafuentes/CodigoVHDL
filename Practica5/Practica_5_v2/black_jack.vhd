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
			carta_act, punt1, punt2: out std_logic_vector(3 downto 0));
end black_jack;

architecture estructural of black_jack is
	component controller
		port(clk, reset: in std_logic;
				start, b_pc, b_pl: in std_logic;
				carta: in std_logic;
				punt: in std_logic_vector(1 downto 0);
				control: out std_logic_vector(3 downto 0);
				ready, carta_inc, perder: out std_logic);
	end component controller;
	component data_path
		port(clk, reset: in std_logic;
				control: in std_logic_vector(3 downto 0);
				carta: out std_logic;
				punt: out std_logic_vector(1 downto 0);
				carta_act, punt1, punt2: out std_logic_vector(3 downto 0));
	end component data_path;

begin


end Behavioral;

