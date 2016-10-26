----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:35:08 10/23/2015 
-- Design Name: 
-- Module Name:    Tuneldelavado - Behavioral 
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

entity Tuneldelavado is
	port(clk, rst, start_stop, darcera: in std_logic;
			Salida_agua, Salida_aire, Mover_rollos,
			Salida_jabon, Encerar: out std_logic);
end Tuneldelavado;

architecture Behavioral of Tuneldelavado is
type ESTADOS is(inicial, enjabonar, rodillo1, rodillo2,
						agua, aire, cera1, cera2);
signal ESTADO, SIG_ESTADO: ESTADOS;

begin

SINCRONO: process(clk, rst)
begin
	if rst = '1' then
		ESTADO <= inicial;
	elsif clk'event and clk = '1' then
		ESTADO <= SIG_ESTADO;
	end if;
end process SINCRONO;

COMB: process(ESTADO, start_stop, darcera)
begin
	Salida_agua <= '0';
	Salida_aire <= '0';
	Mover_rollos <= '0';
	Salida_jabon <= '0';
	Encerar <= '0';
	case ESTADO is
		when inicial =>
						if (start_stop = '0') then
						SIG_ESTADO <= inicial;
						else
						SIG_ESTADO <= enjabonar;
						end if;
		when enjabonar =>
						Salida_jabon <= '1';
						if (start_stop = '0') then
						SIG_ESTADO <= inicial;
						else
						SIG_ESTADO <= rodillo1;
						end if;
		when rodillo1 =>
						Mover_rollos <= '1';
						if (start_stop = '0') then
						SIG_ESTADO <= inicial;
						else
						SIG_ESTADO <= rodillo2;
						end if;
		when rodillo2 =>
						Mover_rollos <= '1';
						if (start_stop = '0') then
						SIG_ESTADO <= inicial;
						else
						SIG_ESTADO <= agua;
						end if;
		when agua =>
						Salida_agua <= '1';
						if (start_stop = '0') then
						SIG_ESTADO <= inicial;
						else
						SIG_ESTADO <= aire;
						end if;
		when aire =>
						Salida_aire <= '1';
						if (start_stop = '0') then
						SIG_ESTADO <= inicial;
						elsif (darcera = '1') then
						SIG_ESTADO <= cera1;
						else
						SIG_ESTADO <= inicial;
						end if;
		when cera1 =>
						Encerar <= '1';
						if (start_stop = '0') then
						SIG_ESTADO <= inicial;
						else
						SIG_ESTADO <= cera2;
						end if;
		when cera2 =>
						Encerar <= '1';
						SIG_ESTADO <= inicial;
	end case;
end process COMB;

end Behavioral;

