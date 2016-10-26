----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:38:03 10/24/2015 
-- Design Name: 
-- Module Name:    Muneca - Behavioral 
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

entity Muneca is
	port(clk, rst, R, C: in std_logic;
			G, L: out std_logic);
end Muneca;

architecture Behavioral of Muneca is
type ESTADOS is (tranquila, habla, dormida, asustada);
signal ESTADO, SIG_ESTADO: ESTADOS;

begin

SINCRONO: process(clk, rst)
begin
	if rst = '1' then
		ESTADO <= tranquila;
	elsif clk'event and clk = '1' then
		ESTADO <= SIG_ESTADO;
	end if;
end process SINCRONO;

COMB: process(ESTADO, R, C)
begin
	G <= '0';
	L <= '0';
	case ESTADO is
		when tranquila =>
							if (R = '1') then
								SIG_ESTADO <= habla;
							elsif (C = '1') then
								SIG_ESTADO <= dormida;
							else
								SIG_ESTADO <= tranquila;
							end if;
		when habla =>
							G <= '1';
							if (C = '1') then
								SIG_ESTADO <= dormida;
							else
								SIG_ESTADO <= habla;
							end if;
		when dormida =>
							if ((R = '1') and (C = '0')) then
								SIG_ESTADO <= asustada;
							else
								SIG_ESTADO <= dormida;
							end if;
		when asustada =>
							G <= '1';
							L <= '1';
							if (R = '1') then
								SIG_ESTADO <= asustada;
							elsif (C = '1') then
								SIG_ESTADO <= dormida;
							else
								SIG_ESTADO <= tranquila;
							end if;
	end case;
end process COMB;
end Behavioral;

