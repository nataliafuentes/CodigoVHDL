--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:08:20 01/15/2016
-- Design Name:   
-- Module Name:   C:/Xilinx/Practica6/simsram_memory.vhd
-- Project Name:  Practica6
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sram_memory
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY simsram_memory IS
END simsram_memory;
 
ARCHITECTURE behavior OF simsram_memory IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sram_memory
    PORT(
         clk : IN  std_logic;
         we : IN  std_logic;
         addr : IN  std_logic_vector(3 downto 0);
         din : IN  std_logic_vector(31 downto 0);
         dout : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal we : std_logic := '0';
   signal addr : std_logic_vector(3 downto 0) := (others => '0');
   signal din : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal dout : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sram_memory PORT MAP (
          clk => clk,
          we => we,
          addr => addr,
          din => din,
          dout => dout
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin
		we <= '1';
		addr <= "0100";
		din <= "00000000000010100000000000000010";
      wait for 10 ns;
		we <= '0';
		wait for 10 ns;
		addr <= "1000";
		wait for 10 ns;
		addr <= "1111";
		wait for 10 ns;
      wait for clk_period*10;
      wait;
   end process;

END;
