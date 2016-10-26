----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:16:28 01/15/2016 
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
	port(clk, rst: in std_logic;
			n: in std_logic_vector(4 downto 0);
			x: in std_logic_vector(15 downto 0);
			control: in std_logic_vector(9 downto 0);
			num_n, num_x, num_k: out std_logic;
			y: out std_logic_vector(31 downto 0));
end data_path;

architecture estructural of data_path is

	component registrogenerico
		generic(m: integer);
		port(clk, rst, load: in std_logic;
				D: in std_logic_vector(m-1 downto 0);
				Q: out std_logic_vector(m-1 downto 0));
	end component registrogenerico;
	
	component multiplicador
		port(A, B: in std_logic_vector(15 downto 0);
				C: out std_logic_vector(31 downto 0));
	end component multiplicador;
	
	component sram_memory
		port(clk: in std_logic;
				we: in std_logic;
				addr: in std_logic_vector(3 downto 0);
				din: in std_logic_vector(31 downto 0);
				dout: out std_logic_vector(31 downto 0));
	end component sram_memory;
	
	component updown_counter
		generic(m: integer);
		port(clk: in std_logic;
				rst: in std_logic;
				load: in std_logic;
				cu: in std_logic;
				cd: in std_logic;
				din: in std_logic_vector(m-1 downto 0);
				dout: out std_logic_vector(m-1 downto 0));
	end component updown_counter;
	
	signal control_aux: std_logic_vector(9 downto 0);
	alias load_regn: std_logic is control_aux(0);
	alias load_regx: std_logic is control_aux(1);
	alias load_regdout: std_logic is control_aux(2);
	alias load_contar: std_logic is control_aux(3);
	alias load_regy: std_logic is control_aux(4);
	alias error: std_logic is control_aux(5);
	alias sel1: std_logic is control_aux(6);
	alias sel2: std_logic is control_aux(7);
	alias rst_controller: std_logic is control_aux(8);
	alias cu_in: std_logic is control_aux(9);
	
	signal x_in, x_out, x_en, A: std_logic_vector(15 downto 0);
	signal n_out, cont_out: std_logic_vector(4 downto 0);
	signal d_in, d_out, C, regy_out: std_logic_vector(31 downto 0);
	signal direccion, dos: std_logic_vector(3 downto 0);
	signal direccion_aux, direccion_aux2: unsigned(3 downto 0);
	signal rst2: std_logic;

begin
	control_aux <= control;
	x_en <= x;
	direccion_aux <= unsigned(n_out(3 downto 0));
	dos <= "0010";
	direccion_aux2 <= direccion_aux/unsigned(dos);
	direccion <= std_logic_vector(direccion_aux2);
	rst2 <= rst OR rst_controller;
	
	reg_n: registrogenerico generic map(5) port map(clk, rst2, load_regn, cont_out, n_out);
	reg_x: registrogenerico generic map(16) port map(clk, rst2, load_regx, x_in, x_out);
	reg_d: registrogenerico generic map(32) port map(clk, rst2, load_regdout, d_in, d_out);
	reg_y: registrogenerico generic map(32) port map(clk, rst2, load_regy, C, regy_out);
	multi: multiplicador port map(A, x_out, C);
	memoria: sram_memory port map(clk, '0', direccion, (others => '0'), d_in);
	contador: updown_counter generic map (5) port map(clk, rst2, load_contar, cu_in, '0', n_out, cont_out);
	
	with sel1 select A <= d_out(15 downto 0) when '1', d_out(31 downto 16) when others;
	with sel2 select x_in <= C(15 downto 0) when '1', x_en when others;
	
	process(n, x_out, error, regy_out, cont_out)
	begin
		if (n = "00000") then
			num_n <= '0';
		else
			num_n <= '1';
		end if;
		if (x_out = "0000000000000000") then
			num_x <= '0';
		else
			num_x <= '1';
		end if;
		if (error = '1') then
			y <= (others => '0');
		else
			y <= regy_out;
		end if;
		if (n = cont_out) then
			num_k <= '0';
		else
			num_k <= '1';
		end if;
	end process;

end estructural;

