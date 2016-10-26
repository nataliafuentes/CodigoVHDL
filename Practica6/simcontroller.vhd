--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:14:43 01/18/2016
-- Design Name:   
-- Module Name:   C:/Xilinx/Practica6/simcontroller.vhd
-- Project Name:  Practica6
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
         rst : IN  std_logic;
         init : IN  std_logic;
         num_n : IN  std_logic;
         num_x : IN  std_logic;
         control : OUT  std_logic_vector(7 downto 0);
         err : OUT  std_logic;
         fin : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal init : std_logic := '0';
   signal num_n : std_logic := '0';
   signal num_x : std_logic := '0';

 	--Outputs
   signal control : std_logic_vector(7 downto 0);
   signal err : std_logic;
   signal fin : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: controller PORT MAP (
          clk => clk,
          rst => rst,
          init => init,
          num_n => num_n,
          num_x => num_x,
          control => control,
          err => err,
          fin => fin
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
      wait for 10 ns;
		rst <= '0';
		init <= '0';
		wait for 10 ns;
		init <= '1';
		num_n <= '0';
		num_x <= '0';
		wait for 50 ns;
		num_n <= '1';
		wait for 50 ns;
		num_x <= '1';
		wait for 150 ns;
		num_n <= '0';
		wait for 50 ns;
		init <= '0';
		wait for 10 ns;
      wait for clk_period*10;
      wait;
   end process;

END;
