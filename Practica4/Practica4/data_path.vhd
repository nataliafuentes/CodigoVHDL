----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:01:43 11/21/2015 
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
			dividend: in std_logic_vector(5 downto 0);
			divisor: in std_logic_vector(2 downto 0);
			control: in std_logic_vector(7 downto 0);
			msb, comp: out std_logic;
			quotient: out std_logic_vector(5 downto 0));
end data_path;

architecture estructural of data_path is
	component registro
		port(clk, reset, load: in std_logic;
				D: in unsigned(6 downto 0);
				Q: out unsigned(6 downto 0));
	end component registro;
	
	component sumador_restador
		port(sum: in std_logic;
				A, B: in unsigned(6 downto 0);
				C: out unsigned(6 downto 0));
	end component sumador_restador;
	
	component registro_des
		port(clk, reset, load, despl: in std_logic;
				D: in unsigned(6 downto 0);
				Q: out unsigned(6 downto 0));
	end component registro_des;
	
	component registro_coc
		port(clk, reset, load, despl, coc_i: in std_logic;
				D: in unsigned(6 downto 0);
				Q: out unsigned(6 downto 0));
	end component registro_coc;
	
	--component comparador
		--port(A: in unsigned(6 downto 0);
				--comp: out std_logic);
	--end component comparador;
	
	signal control_aux: std_logic_vector(7 downto 0);
	alias load_dividend: std_logic is control_aux(0);
	alias load_divisor: std_logic is control_aux(1);
	alias load_cociente: std_logic is control_aux(2);
	alias load_k: std_logic is control_aux(3);
	alias mux: std_logic is control_aux(4);
	alias sum: std_logic is control_aux(5);
	alias despl: std_logic is control_aux(6);
	alias coc_i: std_logic is control_aux(7);
	signal dividend_i, dividend_o, divisor_i, cociente_i, k_i, k_o, k_aux, sum_in, sum_out: unsigned(6 downto 0);
	signal reg_dividend, reg_divisor, reg_cociente, reg_k: unsigned(6 downto 0);
	--signal comp_i: std_logic;
	signal n, m, n_m: unsigned(6 downto 0);

begin
	control_aux <= control;
	dividend_i <= unsigned('0' & dividend);
	divisor_i <= unsigned('0' & divisor & "000");
	cociente_i <= (others => '0');
	k_i <= (others => '0');
	sum_in <= ("0000001");
	
	reg_divid: registro port map(clk, reset, load_dividend, dividend_o, reg_dividend);
	reg_div: registro_des port map(clk, reset, load_divisor, despl, divisor_i, reg_divisor);
	reg_coci: registro_coc port map(clk, reset, load_cociente, despl, coc_i, cociente_i, reg_cociente);
	registro_k: registro port map(clk, reset, load_k, k_o, reg_k);
	sum_res: sumador_restador port map(sum, reg_dividend, reg_divisor, sum_out);
	sum_k: sumador_restador port map(sum, reg_k, sum_in, k_aux);
	--compar: comparador port map(reg_k, comp_i);
	with mux select dividend_o <= sum_out when '1', dividend_i when others;
	with mux select k_o <= k_aux when '1', k_i when others;
	msb <= reg_dividend(6);
	quotient <= std_logic_vector(reg_cociente(5 downto 0));
	n <= "0000110";
	m <= "0000011";
	n_m <= n - m;
	process(reg_k, n_m)
	begin
		if (reg_k < n_m) or (reg_k = n_m) then
			comp <= '1';
		else
			comp <= '0';
		end if;
	end process;
	--comp <= comp_i;
end estructural;

