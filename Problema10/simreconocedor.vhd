--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:17:33 10/27/2015
-- Design Name:   
-- Module Name:   C:/Xilinx/Problema10/simreconocedor.vhd
-- Project Name:  Problema10
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Reconocedor
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
 
ENTITY simreconocedor IS
END simreconocedor;
 
ARCHITECTURE behavior OF simreconocedor IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Reconocedor
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
   constant clk_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Reconocedor PORT MAP (
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
      wait for 50 ns;
		rst <= '0';
		entrada <= '0';
      wait for 60 ns;
		entrada <= '1';
      wait for 80 ns;
		entrada <= '0';
      wait for 50 ns;
		entrada <= '1';
      wait for 70 ns;
		entrada <= '0';
      wait for 30 ns;
		entrada <= '1';
      wait for 50 ns;
		entrada <= '0';
      wait for 50 ns;

      wait for clk_period*10;

      wait;
   end process;

END;
