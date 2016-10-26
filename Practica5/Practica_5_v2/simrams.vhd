--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:53:30 12/14/2015
-- Design Name:   
-- Module Name:   C:/Xilinx/Practica5/simrams.vhd
-- Project Name:  Practica5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: rams
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY simrams IS
END simrams;
 
ARCHITECTURE behavior OF simrams IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT rams
    PORT(
         clk : IN  std_logic;
         we : IN  std_logic;
         addr : IN  std_logic_vector(5 downto 0);
         di : IN  std_logic_vector(3 downto 0);
         do : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal we : std_logic := '0';
   signal addr : std_logic_vector(5 downto 0) := (others => '0');
   signal di : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal do : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: rams PORT MAP (
          clk => clk,
          we => we,
          addr => addr,
          di => di,
          do => do
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
		we <= '0';
		addr <= "000100";
		di <= "0000";
      wait for 50 ns;
		we <= '0';
		addr <= "010110";
		di <= "0000";
      wait for 50 ns;
		we <= '1';
		addr <= "000100";
		di <= "0000";
      wait for 50 ns;
		we <= '1';
		addr <= "010110";
		di <= "0000";
      wait for 50 ns;
		we <= '0';
		addr <= "000100";
		di <= "0000";
      wait for 50 ns;
		we <= '0';
		addr <= "010110";
		di <= "0000";
      wait for 50 ns;

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
