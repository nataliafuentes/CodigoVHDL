----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:02:09 12/21/2015 
-- Design Name: 
-- Module Name:    secuencia_aaa_bbb - Behavioral 
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

entity secuencia_aaa_bbb is
	port(clk, reset, X: in std_logic;
			Z: out std_logic);
end secuencia_aaa_bbb;

architecture Behavioral of secuencia_aaa_bbb is
	type ESTADOS is (S0, S1, S2, S3, S4, S5, S6);
	signal ESTADO, SIG_ESTADO: ESTADOS;

begin
	SINCRONO: process(clk, reset)
	begin
		if reset = '1' then
			ESTADO <= S0;
		elsif clk'event and clk = '1' then
			ESTADO <= SIG_ESTADO;
		end if;
	end process SINCRONO;
	
	COMB: process(ESTADO, X)
	begin
		case ESTADO is
			when S0 =>
						if (X = '0') then
							SIG_ESTADO <= S1;
							Z <= '0';
						else
							SIG_ESTADO <= S4;
							Z <= '0';
						end if;
			when S1 =>
						if (X = '0') then
							SIG_ESTADO <= S2;
							Z <= '0';
						else
							SIG_ESTADO <= S4;
							Z <= '0';
						end if;
			when S2 =>
						if (X = '0') then
							SIG_ESTADO <= S3;
							Z <= '1';
						else
							SIG_ESTADO <= S4;
							Z <= '0';
						end if;
			when S3 =>
						if (X = '0') then
							SIG_ESTADO <= S3;
							Z <= '1';
						else
							SIG_ESTADO <= S4;
							Z <= '0';
						end if;
			when S4 =>
						if (X = '0') then
							SIG_ESTADO <= S1;
							Z <= '0';
						else
							SIG_ESTADO <= S5;
							Z <= '0';
						end if;
			when S5 =>
						if (X = '0') then
							SIG_ESTADO <= S1;
							Z <= '0';
						else
							SIG_ESTADO <= S6;
							Z <= '1';
						end if;
			when S6 =>
						if (X = '0') then
							SIG_ESTADO <= S1;
							Z <= '0';
						else
							SIG_ESTADO <= S6;
							Z <= '1';
						end if;
		end case;
	end process COMB;

end Behavioral;

