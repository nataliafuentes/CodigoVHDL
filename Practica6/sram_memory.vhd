----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:23:54 01/13/2016 
-- Design Name: 
-- Module Name:    sram_memory - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sram_memory is
	port(clk: in std_logic;
			we: in std_logic;
			addr: in std_logic_vector(3 downto 0);
			din: in std_logic_vector(31 downto 0);
			dout: out std_logic_vector(31 downto 0));
end sram_memory;

architecture Behavioral of sram_memory is
type ram_type is array (0 to 15) of std_logic_vector(31 downto 0);
--falta rellenar la memoria
	signal RAM: ram_type := (X"00020003", X"00040005", X"00060007", X"00080009", X"000A000B", X"000C000D", X"000E000F", X"00100011", 
        X"00120013", X"00140015", X"00160017", X"00180019", X"001A001B", X"001C001D", X"001E001F", X"00200021");
begin

	puerto: process (clk)
	begin
		if rising_edge(clk) then
			if we = '1' then
				RAM(conv_integer(addr)) <= din;
			end if;
			dout <= RAM(conv_integer(addr));
		end if;
	end process puerto;
end Behavioral;

