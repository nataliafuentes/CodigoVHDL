--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:42:22 12/21/2015
-- Design Name:   
-- Module Name:   C:/Xilinx/Problema8/simsecuencia_aaa_bbb.vhd
-- Project Name:  Problema8
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: secuencia_aaa_bbb
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
 
ENTITY simsecuencia_aaa_bbb IS
END simsecuencia_aaa_bbb;
 
ARCHITECTURE behavior OF simsecuencia_aaa_bbb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT secuencia_aaa_bbb
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         X : IN  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal X : std_logic := '0';

 	--Outputs
   signal Z : std_logic;

   -- Clock period definitions
   constant clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: secuencia_aaa_bbb PORT MAP (
          clk => clk,
          reset => reset,
          X => X,
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
		reset <= '1';
		X <= '0';
      wait for 50 ns;
		reset <= '0';
		X <= '1';
      wait for 50 ns;
		reset <= '0';
		X <= '1';
      wait for 100 ns;
		reset <= '0';
		X <= '1';
      wait for 50 ns;
		reset <= '0';
		X <= '0';
      wait for 25 ns;
		reset <= '0';
		X <= '1';
      wait for 25 ns;
		reset <= '0';
		X <= '1';
      wait for 55 ns;
		reset <= '0';
		X <= '0';
      wait for 45 ns;
		reset <= '0';
		X <= '0';
      wait for 100 ns;
		reset <= '0';
		X <= '0';
      wait for 55 ns;
		reset <= '0';
		X <= '1';
      wait for 45 ns;

      wait for clk_period*10;
      wait;
   end process;

END;
