--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:52:24 10/27/2015
-- Design Name:   
-- Module Name:   C:/Xilinx/Problema13/simparidad.vhd
-- Project Name:  Problema13
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Paridad
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
 
ENTITY simparidad IS
END simparidad;
 
ARCHITECTURE behavior OF simparidad IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Paridad
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         entrada : IN  std_logic;
         salida : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal entrada : std_logic := '0';

 	--Outputs
   signal salida : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Paridad PORT MAP (
          clk => clk,
          rst => rst,
          entrada => entrada,
          salida => salida
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
		rst <= '1';
		entrada <= '0';
      wait for 10 ns;
		rst <= '0';
		entrada <= '0';
      wait for 10 ns;
		rst <= '0';
		entrada <= '1';
      wait for 10 ns;
		rst <= '0';
		entrada <= '1';
      wait for 10 ns;
		rst <= '0';
		entrada <= '0';
      wait for 10 ns;
		rst <= '0';
		entrada <= '0';
      wait for 10 ns;
		rst <= '0';
		entrada <= '1';
      wait for 10 ns;
		rst <= '0';
		entrada <= '1';
      wait for 10 ns;
		rst <= '0';
		entrada <= '0';
      wait for 10 ns;
		rst <= '0';
		entrada <= '1';
      wait for 10 ns;
		rst <= '0';
		entrada <= '0';
      wait for 10 ns;

      wait for clk_period*10;

      wait;
   end process;

END;
