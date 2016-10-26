--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:00:40 11/25/2015
-- Design Name:   
-- Module Name:   C:/Xilinx/Practica4definitiva/simcontroller.vhd
-- Project Name:  Practica4definitiva
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: controller
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
 
ENTITY simcontroller IS
END simcontroller;
 
ARCHITECTURE behavior OF simcontroller IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT controller
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         start : IN  std_logic;
         msb : IN  std_logic;
         comp : IN  std_logic;
         control : OUT  std_logic_vector(7 downto 0);
         ready : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal start : std_logic := '0';
   signal msb : std_logic := '0';
   signal comp : std_logic := '0';

 	--Outputs
   signal control : std_logic_vector(7 downto 0);
   signal ready : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: controller PORT MAP (
          clk => clk,
          reset => reset,
          start => start,
          msb => msb,
          comp => comp,
          control => control,
          ready => ready
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
		start <= '0';
      wait for 50 ns;
		start <= '1';
		wait for 50 ns;
		msb <= '1';
		wait for 50 ns;
		comp <= '0';
		wait for 50 ns;
      wait for clk_period*10;
      wait;
   end process;

END;
