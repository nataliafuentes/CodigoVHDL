----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:20:03 11/25/2015 
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
	port(clk, reset, start: in std_logic;
			msb, comp: in std_logic;
			control: out std_logic_vector(7 downto 0);
			ready: out std_logic);
end controller;

architecture Behavioral of controller is
	type T_STATE is (S0, S1, S2, S3, S4, S5, S6, S7);
	signal STATE, NEXT_STATE: T_STATE;
	
	signal control_aux: std_logic_vector(7 downto 0);
	alias load_dividend: std_logic is control_aux(0);
	alias load_divisor: std_logic is control_aux(1);
	alias load_cociente: std_logic is control_aux(2);
	alias load_k: std_logic is control_aux(3);
	alias mux: std_logic is control_aux(4);
	alias sum: std_logic is control_aux(5);
	alias despl: std_logic is control_aux(6);
	alias coc_i: std_logic is control_aux(7);

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
	
	COMB: process (STATE, msb, comp, start)
	begin
		load_dividend <= '0';
		load_divisor <= '0';
		load_cociente <= '0';
		load_k <= '0';
		mux <= '0';
		sum <= '0';
		despl <= '0';
		coc_i <= '0';
		ready <= '0';
		case STATE is
			when S0 =>
					ready <= '1';
					if (start = '1') then
							NEXT_STATE <= S1;
					else
							NEXT_STATE <= S0;
					end if;
			when S1 =>
					load_dividend <= '1';
					load_divisor <= '1';
					load_cociente <= '1';
					load_k <= '1';
					ready <= '0';
					NEXT_STATE <= S2;
			when S2 =>
					load_dividend <= '1';
					mux <= '1';
					sum <= '1';
					NEXT_STATE <= S3;
			when S3 =>
					if (msb = '1') then
							NEXT_STATE <= S4;
							coc_i <= '0';
					else
							NEXT_STATE <= S5;
							coc_i <= '1';
					end if;
			when S4 =>
					load_cociente <= '1';
					load_dividend <= '1';
					despl <= '1';
					mux <= '1';
					sum <= '0';
					NEXT_STATE <= S6;
			when S5 =>
					load_cociente <= '1';
					despl <= '1';
					coc_i <= '1';
					NEXT_STATE <= S6;
			when S6 =>
					load_divisor <= '1';
					load_k <= '1';
					despl <= '1';
					mux <= '1';
					sum <= '0';
					despl <= '1';
					NEXT_STATE <= S7;
			when S7 =>
					if (comp = '1') then
							NEXT_STATE <= S2;
					else
							NEXT_STATE <= S0;
					end if;
		end case;
	end process COMB;


end Behavioral;

