----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:06:43 10/23/2015 
-- Design Name: 
-- Module Name:    Lavaplatos - Behavioral 
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

entity Lavaplatos is
	port(clk, rst, start_stop, ciclo_rapido: in std_logic;
			Entrar_agua, Calentar_agua, Mover_aspas, Abrir_cajetin,
			Secar: out std_logic);
end Lavaplatos;

architecture Behavioral of Lavaplatos is
type ESTADOS is (inicial, lavado1, lavado2, lavado3, lavado4,
						aclarado1, aclarado2, secado);
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

COMB: process(ESTADO, ciclo_rapido, start_stop)
begin
	Entrar_agua <= '0';
	Calentar_agua <= '0';
	Mover_aspas <= '0';
	Abrir_cajetin <= '0';
	Secar <= '0';
	case ESTADO is
		when inicial =>
						if (start_stop = '0') then
						SIG_ESTADO <= inicial;
						else
						SIG_ESTADO <= lavado1;
						end if;
		when lavado1 =>
						Entrar_agua <= '1';
						Calentar_agua <= '1';
						Mover_aspas <= '1';
						if (start_stop = '0') then
						SIG_ESTADO <= inicial;
						else
						SIG_ESTADO <= lavado2;
						end if;
		when lavado2 =>
						Mover_aspas <= '1';
						Abrir_cajetin <= '1';
						if (start_stop = '0') then
						SIG_ESTADO <= inicial;
						elsif (ciclo_rapido = '1') then 
						SIG_ESTADO <= aclarado1;
						else 
						SIG_ESTADO <= lavado3;
						end if;
		when lavado3 =>
						Mover_aspas <= '1';
						if (start_stop = '0') then
						SIG_ESTADO <= inicial;
						else
						SIG_ESTADO <= lavado4;
						end if;
		when lavado4 =>
						Mover_aspas <= '1';
						if (start_stop = '0') then
						SIG_ESTADO <= inicial;
						else
						SIG_ESTADO <= aclarado1;
						end if;
		when aclarado1 =>
						Entrar_agua <= '1';
						Mover_aspas <= '1';
						if (start_stop = '0') then
						SIG_ESTADO <= inicial;
						elsif (ciclo_rapido = '1') then 
						SIG_ESTADO <= secado;
						else
						SIG_ESTADO <= aclarado2;
						end if;
		when aclarado2 =>
						Mover_aspas <= '1';
						if (start_stop = '0') then
						SIG_ESTADO <= inicial;
						else
						SIG_ESTADO <= secado;
						end if;
		when secado =>
						Secar <= '1';
						SIG_ESTADO <= inicial;
	end case;
end process COMB;

end Behavioral;

