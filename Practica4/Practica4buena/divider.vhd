----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:24:45 11/23/2015 
-- Design Name: 
-- Module Name:    divider - Behavioral 
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

entity divider is
	port(clk, reset: in std_logic;
			dividend: in std_logic_vector(5 downto 0);
			divisor: in std_logic_vector(2 downto 0);
			start: in std_logic;
			ready: out std_logic;
			quotient: out std_logic_vector(5 downto 0));
end divider;

architecture Behavioral of divider is
type T_STATE is (S0, S1, S2, S3, S4, S5, S6, S7);
signal STATE, NEXT_STATE: T_STATE;
signal reg_dividend, reg_divisor, reg_cociente, reg_k: unsigned(6 downto 0);
signal aux_dividend, aux_divisor, aux_cociente, aux_k: unsigned(6 downto 0);

begin
SYNC_REG: process(clk, reset, STATE)
begin
	if reset = '1' then
		reg_dividend <= unsigned('0' & dividend);
		reg_divisor <= unsigned('0' & divisor & "000");
		reg_cocinete <= (others => '0');
		reg_k <= (others = > '0');
	elsif clk'event and clk = '1' then
		if STATE = S2 then
			reg_dividend <= aux_dividend;
		elsif STATE = S4 then
			reg_cociente <= aux_cociente;
			reg_dividend <= aux_dividend;
		elsif STATE = S5 then
			reg_cociente <= aux_cociente;
		elsif STATE = S6 then
			reg_divisor <= aux_divisor;
			reg_k <= aux_k;
		end if;
	end if;
end process SYNC_REG;
BSYNC_REG: process(STATE, )
		

end Behavioral;

