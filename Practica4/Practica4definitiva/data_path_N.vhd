----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:08:51 11/25/2015 
-- Design Name: 
-- Module Name:    data_path_N - Behavioral 
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

entity data_path_N is
	generic(n : natural := 6;
				m : natural := 3);
	port(clk, reset: in std_logic;
			dividend: in std_logic_vector(n - 1 downto 0);
			divisor: in std_logic_vector(m - 1 downto 0);
			control: in std_logic_vector(7 downto 0);
			msb, comp: out std_logic;
			quotient: out std_logic_vector(n - 1 downto 0));
end data_path_N;

architecture estructural of data_path_N is
	component registro_N
		generic(n : natural := 6);
		port(clk, reset, load: in std_logic;
				D: in unsigned(n downto 0);
				Q: out unsigned(n downto 0));
	end component registro_N;
	
	component sumador_restador_N
		port(sum: in std_logic;
				A, B: in unsigned(n downto 0);
				C: out unsigned(n downto 0));
	end component sumador_restador_N;
	
	component registro_des_N
		generic(n : natural := 6);
		port(clk, reset, load, despl: in std_logic;
				D: in unsigned(n downto 0);
				Q: out unsigned(n downto 0));
	end component registro_des_N;
	
	component registro_coc_N
		generic(n : natural := 6);
		port(clk, reset, load, despl, coc_i: in std_logic;
				D: in unsigned(n downto 0);
				Q: out unsigned(n downto 0));
	end component registro_coc_N;
	
	signal control_aux: std_logic_vector(7 downto 0);
	alias load_dividend: std_logic is control_aux(0);
	alias load_divisor: std_logic is control_aux(1);
	alias load_cociente: std_logic is control_aux(2);
	alias load_k: std_logic is control_aux(3);
	alias mux: std_logic is control_aux(4);
	alias sum: std_logic is control_aux(5);
	alias despl: std_logic is control_aux(6);
	alias coc_i: std_logic is control_aux(7);
	signal dividend_i, dividend_o, divisor_i, cociente_i, k_i, k_o, k_aux, sum_in, sum_out: unsigned(n downto 0);
	signal reg_dividend, reg_divisor, reg_cociente, reg_k: unsigned(n downto 0);
	signal n_i, m_i, n_m_i: unsigned(n downto 0);

begin
	control_aux <= control;
	dividend_i <= unsigned('0' & dividend);
	divisor_i <= unsigned('0' & divisor & "000");
	cociente_i <= (others => '0');
	k_i <= (others => '0');
	sum_in <= "000000001";
	
	reg_divid: registro_N port map(clk, reset, load_dividend, dividend_o, reg_dividend);
	reg_div: registro_des_N port map(clk, reset, load_divisor, despl, divisor_i, reg_divisor);
	reg_coci: registro_coc_N port map(clk, reset, load_cociente, despl, coc_i, cociente_i, reg_cociente);
	registro_k: registro_N port map(clk, reset, load_k, k_o, reg_k);
	sum_res: sumador_restador_N port map(sum, reg_dividend, reg_divisor, sum_out);
	sum_k: sumador_restador_N port map(sum, reg_k, sum_in, k_aux);
	with mux select dividend_o <= sum_out when '1', dividend_i when others;
	with mux select k_o <= k_aux when '1', k_i when others;
	msb <= reg_dividend(n);
	quotient <= std_logic_vector(reg_cociente(n - 1 downto 0));
	n_i <= to_unsigned(n, dividend'length);
	m_i <= to_unsigned(m, divisor'length);
	n_m_i <= n_i - m_i;
	comp <= '1' when k_o < n_m_i or k_o = n_m_i else '0';


end estructural;

