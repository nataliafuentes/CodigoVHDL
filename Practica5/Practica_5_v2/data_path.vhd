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
			carta_act, punt1, punt2: out std_logic_vector(3 downto 0));
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

	signal control_aux: std_logic_vector(3 downto 0);
	alias load_contador: std_logic is control_aux(0);
	alias load_score: std_logic is control_aux(1);
	alias me: std_logic is control_aux(2);
	alias mux: std_logic is control_aux(3);
	signal rcont_o, sum_i, rscore_i, rscore_o: std_logic_vector(5 downto 0);
	signal do_i: std_logic_vector(3 downto 0);

begin
	control_aux <= control;
	
	reg_contador: registro port map(clk, reset, load_contador, D, rcont_o);
	reg_score: registro port map(clk, reset, load_score, rscore_i, rscore_o);
	memoria: rams port map(clk, me, rcont_o, "0000", do_i);
	sum_i <= rscore_o + do_i;
	with mux select rscore_i <= "000000" when '1', sum_i when others;
	
	--2 process distintos
	process (do_i, rscore_o)
	begin
		if (do_i = "0000") then
			carta <= '0';
			--carta_act??
		else
			carta <= '1';
			carta_act <= do_i;
		end if;
		
		if (rscore_o < "010101") then
			punt <= "00";
		elsif (rscore_o = "010101") then
			punt <= "01";
		else
			punt <= "10";
		end if;
	end process;


end estructural;

