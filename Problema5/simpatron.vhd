--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:49:18 10/23/2015
-- Design Name:   
-- Module Name:   C:/Xilinx/Problema5/simpatron.vhd
-- Project Name:  Problema5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Patron
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
 
ENTITY simpatron IS
END simpatron;
 
ARCHITECTURE behavior OF simpatron IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Patron
    PORT(
         rst : IN  std_logic;
         X : IN  std_logic;
         clk : IN  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal rst : std_logic := '0';
   signal X : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal Z : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Patron PORT MAP (
          rst => rst,
          X => X,
          clk => clk,
          Z => Z
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
		X <= '0';
      wait for 10 ns;
		rst <= '0';
		X <= '1';
      wait for 10 ns;
		rst <= '0';
		X <= '0';
      wait for 10 ns;
		rst <= '0';
		X <= '1';
      wait for 10 ns;
		rst <= '0';
		X <= '0';
      wait for 10 ns;
		rst <= '0';
		X <= '0';
      wait for 10 ns;
		rst <= '0';
		X <= '0';
      wait for 10 ns;
		rst <= '0';
		X <= '1';
      wait for 10 ns;
		rst <= '0';
		X <= '0';
      wait for 10 ns;
		rst <= '0';
		X <= '0';
      wait for 10 ns;
		rst <= '0';
		X <= '1';
      wait for 10 ns;
		rst <= '0';
		X <= '1';
      wait for 10 ns;

      wait for clk_period*10;

      wait;
   end process;

END;
