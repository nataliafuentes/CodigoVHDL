--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:02:50 11/25/2015
-- Design Name:   
-- Module Name:   C:/Xilinx/Practica4definitiva/simdivider_sin.vhd
-- Project Name:  Practica4definitiva
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: divider_sin
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
 
ENTITY simdivider_sin IS
END simdivider_sin;
 
ARCHITECTURE behavior OF simdivider_sin IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT divider_sin
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         dividend : IN  std_logic_vector(5 downto 0);
         divisor : IN  std_logic_vector(2 downto 0);
         start : IN  std_logic;
         ready : OUT  std_logic;
         quotient : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal dividend : std_logic_vector(5 downto 0) := (others => '0');
   signal divisor : std_logic_vector(2 downto 0) := (others => '0');
   signal start : std_logic := '0';

 	--Outputs
   signal ready : std_logic;
   signal quotient : std_logic_vector(5 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: divider_sin PORT MAP (
          clk => clk,
          reset => reset,
          dividend => dividend,
          divisor => divisor,
          start => start,
          ready => ready,
          quotient => quotient
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
      wait for 50 ns;
		reset <= '0';
		dividend <= "101101";
		divisor <= "101";
		start <= '0';
		wait for 50 ns;
		dividend <= "101101";
		divisor <= "101";
		start <= '1';
		wait for 50 ns;
		start <= '0';
		wait for 50 ns;
      wait for clk_period*10;
      wait;
   end process;

END;