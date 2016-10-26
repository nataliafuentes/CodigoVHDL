----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:07:50 10/23/2015 
-- Design Name: 
-- Module Name:    Patron - Behavioral 
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

entity Patron is
	port(rst, X, clk: in std_logic;
			Z: out std_logic);
end Patron;

architecture Behavioral of Patron is
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

COMB: process(ESTADO, X)
begin
	case ESTADO is
		when S0 =>
					if (X = '0') then
						Z <= '0';
						SIG_ESTADO <= S1;
					else 
						Z <= '0';
						SIG_ESTADO <= S0;
					end if;
		when S1 =>
					if (X = '0') then
						Z <= '0';
						SIG_ESTADO <= S2;
					else 
						Z <= '0';
						SIG_ESTADO <= S0;
					end if;
		when S2 =>
					if (X = '0') then
						Z <= '0';
						SIG_ESTADO <= S2;
					else 
						Z <= '0';
						SIG_ESTADO <= S3;
					end if;
		when S3 =>
					if (X = '0') then
						Z <= '0';
						SIG_ESTADO <= S1;
					else 
						Z <= '1';
						SIG_ESTADO <= S0;
					end if;
	end case;
end process COMB;
end Behavioral;

