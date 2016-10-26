----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:55:07 12/26/2015 
-- Design Name: 
-- Module Name:    controller - Behavioral 
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

entity controller is
	port(clk, rst: in std_logic;
			init: in std_logic;
			num_n, num_x, num_k: in std_logic;
			control: out std_logic_vector(9 downto 0);
			err: out std_logic;
			fin: out std_logic);
end controller;

architecture Behavioral of controller is
	type T_STATE is (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9);
	signal STATE, NEXT_STATE: T_STATE;
	
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

begin
	control <= control_aux;
	
	SYNC_STATE: process(clk, rst)
	begin
		if rst = '1' then 
				STATE <= S0;
		elsif clk'event and clk = '1' then
				STATE <= NEXT_STATE;
		end if;
	end process SYNC_STATE;
	
	COMB: process(STATE, init, num_n, num_x, num_k)
	begin
		load_regn <= '0';
		load_regx <= '0';
		load_regdout <= '0';
		load_contar <= '0';
		load_regy <= '0';
		error <= '0';
		sel1 <= '0';
		sel2 <= '0';
		rst_controller <= '0';
		cu_in <= '0';
		err <= '0';
		fin <= '0';
		case STATE is
			when S0 =>
					fin <= '1';
					rst_controller <= '1';
					if (init = '1') then
						NEXT_STATE <= S1;
					else
						NEXT_STATE <= S0;
					end if;
			when S1 =>
					load_regn <= '1';
					load_regx <= '1';
					NEXT_STATE <= S2;
			when S2 =>
					if (num_n = '0') then
						NEXT_STATE <= S3;
					elsif (num_x = '1') then
						NEXT_STATE <= S4;
					else
						NEXT_STATE <= S3;
					end if;
			when S3 =>
					err <= '1';
					error <= '1';
					NEXT_STATE <= S0;
			when S4 =>
					cu_in <= '1';
					load_regdout <= '1';
					NEXT_STATE <= S5;
			when S5 =>
					load_regn <= '1';
					load_regy <= '1';
					NEXT_STATE <= S6;
			when S6 =>
					if (num_k = '0') then
						NEXT_STATE <= S9;
					else
						load_regx <= '1';
						sel2 <= '1';
						cu_in <= '1';
						NEXT_STATE <= S7;
					end if;
			when S7 =>
					load_regn <= '1';
					load_regy <= '1';
					sel1 <= '1';
					NEXT_STATE <= S8;
			when S8 =>
					if (num_k = '0') then
						NEXT_STATE <= S9;
					else
						load_regx <= '1';
						sel1 <= '1';
						sel2 <= '1';
						NEXT_STATE <= S4;
					end if;
			when S9 =>
					NEXT_STATE <= S0;
		end case;
	end process COMB;
end Behavioral;
