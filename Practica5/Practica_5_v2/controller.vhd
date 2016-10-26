----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:22:04 12/13/2015 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity controller is
	port(clk, reset: in std_logic;
			start, b_pc, b_pl: in std_logic;
			--direc: in std_logic_vector();
			carta: in std_logic;
			punt: in std_logic_vector(1 downto 0);
			control: out std_logic_vector(3 downto 0);
			ready, carta_inc, perder: out std_logic);
end controller;

architecture Behavioral of controller is
	type T_STATE is (S0, S1, S2, S3, S4, S5, S6);
	signal STATE, NEXT_STATE: T_STATE;
	
	signal control_aux: std_logic_vector(3 downto 0);
	alias load_contador: std_logic is control_aux(0);
	alias load_score: std_logic is control_aux(1);
	alias me: std_logic is control_aux(2);
	alias mux: std_logic is control_aux(3);
	
begin
	control <= control_aux;
	
	SYNC_STATE: process(clk, reset)
	begin
		if reset = '1' then 
				STATE <= S0;
		elsif clk'event and clk = '1' then
				STATE <= NEXT_STATE;
		end if;
	end process SYNC_STATE;
	
	COMB: process(STATE, start, b_pc, b_pl, carta, punt)
	begin
		load_contador <= '0';
		load_score <= '0';
		me <= '0';
		mux <= '0';
		ready <= '0';
		carta_inc <= '0';
		perder <= '0';
		case STATE is
			when S0 =>
				ready <= '1';
				load_score <= '1';
				mux <= '1';
				if (start = '1') then
						NEXT_STATE <= S1;
				else
						NEXT_STATE <= S0;
				end if;
			when S1 =>
				ready <= '0';
				if (b_pc = '1') then
					NEXT_STATE <= S2;
				elsif (b_pl = '1') then
					NEXT_STATE <= S0;
				else
					NEXT_STATE <= S1;
				end if;
			when S2 =>
				load_contador <= '1';
				NEXT_STATE <= S3;
			when S3 =>
				me <= '0';
				NEXT_STATE <= S4;
			when S4 =>
				if (carta = '0') then
					carta_inc <= '1';
					NEXT_STATE <= S1;
				else
					NEXT_STATE <= S5;
				end if;
			when S5 =>
				load_score <= '1';
				me <= '1';
				NEXT_STATE <= S6;
			when S6 =>
				if (punt = "00") then
					NEXT_STATE <= S1;
				elsif (punt = "01") then
					NEXT_STATE <= S1;
					load_score <= '1';
					mux <= '1';
				else
					perder <= '1';
					NEXT_STATE <= S0;
				end if;
		end case;
	end process COMB;


end Behavioral;

