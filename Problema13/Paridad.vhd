----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:34:29 10/27/2015 
-- Design Name: 
-- Module Name:    Paridad - Behavioral 
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

entity Paridad is
	port(clk, rst, entrada: in std_logic;
			salida: out std_logic);
end Paridad;

architecture Behavioral of Paridad is
type ESTADOS is(par, impar);
signal ESTADO, SIG_ESTADO: ESTADOS;

begin

SINCRONO: process(clk, rst)
begin
	if rst = '1' then
		ESTADO <= par;
	elsif clk'event and clk = '1' then
		ESTADO <= SIG_ESTADO;
	end if;
end process SINCRONO;

COMB: process(ESTADO, entrada)
begin
	case ESTADO is
	when par =>
				salida <= '0';
				if (entrada = '0') then
				SIG_ESTADO <= par;
				else
				SIG_ESTADO <= impar;
				end if;
	when impar =>
				salida <= '1';
				if (entrada = '0') then
				SIG_ESTADO <= impar;
				else
				SIG_ESTADO <= par;
				end if;
	end case;
end process COMB;

end Behavioral;

