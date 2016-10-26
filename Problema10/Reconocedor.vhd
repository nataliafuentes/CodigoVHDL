----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:51:17 10/27/2015 
-- Design Name: 
-- Module Name:    Reconocedor - Behavioral 
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

entity Reconocedor is
	port(clk, rst, entrada: in std_logic;
			salida: out std_logic);
end Reconocedor;

architecture Behavioral of Reconocedor is
type ESTADOS is (S0, S1, S2, S3);
signal ESTADO, SIG_ESTADO: ESTADOS;

begin

SINCRONO: process(clk, rst)
begin
	if rst = '1' then
		ESTADO <= S0;
	elsif clk'event and clk = '1' then
		ESTADO <= SIG_ESTADO;
	end if;
end process SINCRONO;

COMB: process(ESTADO, entrada)
begin
	case ESTADO is
	when S0 =>
				if (entrada = '0') then
					SIG_ESTADO <= S0;
					salida <= '0';
				else
					SIG_ESTADO <= S1;
					salida <= '0';
				end if;
	when S1 =>
				if (entrada = '0') then
					SIG_ESTADO <= S2;
					salida <= '0';
				else
					SIG_ESTADO <= S1;
					salida <= '0';
				end if;
	when S2 =>
				if (entrada = '0') then
					SIG_ESTADO <= S0;
					salida <= '0';
				else
					SIG_ESTADO <= S3;
					salida <= '0';
				end if;
	when S3 =>
				if (entrada = '0') then
					SIG_ESTADO <= S2;
					salida <= '1';
				else
					SIG_ESTADO <= S1;
					salida <= '0';
				end if;
	end case;
end process COMB;

end Behavioral;

