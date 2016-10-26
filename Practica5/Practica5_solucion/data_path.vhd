----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:26:03 12/14/2015 
-- Design Name: 
-- Module Name:    data_path - Behavioral 
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

entity data_path is
	port(clk, reset: in std_logic;
			control: in std_logic_vector(3 downto 0);
			carta: out std_logic;
			punt: out std_logic_vector(1 downto 0);
			carta_act: out std_logic_vector(3 downto 0);
			punt1, punt2: out std_logic_vector(6 downto 0));
end data_path;

architecture estructural of data_path is

	component registro
		port(clk, reset, load: in std_logic;
				D: in std_logic_vector(5 downto 0);
				Q: out std_logic_vector(5 downto 0));
	end component registro;
	
	component rams
		port(clk, we: in std_logic;
				addr: in std_logic_vector(5 downto 0);
				di: in std_logic_vector(3 downto 0);
				do: out std_logic_vector(3 downto 0));
	end component rams;
	
	component conversor
		port(A: in std_logic_vector(5 downto 0);
				punt1, punt2: out std_logic_vector(3 downto 0));
	end component conversor;
	
	component conv_7seg
		port(x: in std_logic_vector(3 downto 0);
				display: out std_logic_vector(6 downto 0));
	end component conv_7seg;
	
	component contador
		port(clk, reset, enable: in std_logic;
				B: out std_logic_vector(5 downto 0));
	end component contador;

	signal control_aux: std_logic_vector(3 downto 0);
	alias load_contador: std_logic is control_aux(0);
	alias load_score: std_logic is control_aux(1);
	alias me: std_logic is control_aux(2);
	alias mux: std_logic is control_aux(3);
	signal rcont_i, rcont_o, sum, rscore_i, rscore_o: std_logic_vector(5 downto 0);
	signal do_i, punt1_i, punt2_i: std_logic_vector(3 downto 0);
	signal punt1_o, punt2_o: std_logic_vector(6 downto 0);
	signal sum_i, rscore: unsigned(5 downto 0);
	signal do: unsigned(3 downto 0);

begin
	control_aux <= control;
	
	reg_contador: registro port map(clk, reset, load_contador, rcont_i, rcont_o);
	reg_score: registro port map(clk, reset, load_score, rscore_i, rscore_o);
	memoria: rams port map(clk, me, rcont_o, "0000", do_i);
	cont: contador port map(clk, reset, '1', rcont_i);
	converBCD: conversor port map(rscore_o, punt1_i, punt2_i);
	conver7seg1: conv_7seg port map(punt1_i, punt1_o);
	conver7seg2: conv_7seg port map(punt2_i, punt2_o);
	rscore <= unsigned(rscore_o);
	do <= unsigned(do_i);
	sum_i <= rscore + do;
	sum <= std_logic_vector(sum_i);
	punt1 <= punt1_o;
	punt2 <= punt2_o;
	with mux select rscore_i <= "000000" when '1', sum when others;
	CART: process (do_i)
	begin
		if (do_i = "0000") then
			carta <= '0';
			carta_act <= std_logic_vector(do_i);
		else
			carta <= '1';
			carta_act <= std_logic_vector(do_i);
		end if;
	end process CART;
	PUNTUA: process (rscore_o)
	begin
		if (rscore_o < "010101") then
			punt <= "00";
		elsif (rscore_o = "010101") then
			punt <= "01";
		else
			punt <= "10";
		end if;
	end process PUNTUA;


end estructural;

