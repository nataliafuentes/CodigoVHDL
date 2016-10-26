--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:32:35 11/23/2015
-- Design Name:   
-- Module Name:   C:/Xilinx/Practica4/simcomparador.vhd
-- Project Name:  Practica4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: comparador
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
use IEEE.NUMERIC_STD.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY simcomparador IS
END simcomparador;
 
ARCHITECTURE behavior OF simcomparador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT comparador
    PORT(
         A : IN  unsigned(6 downto 0);
         comp : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : unsigned(6 downto 0) := (others => '0');

 	--Outputs
   signal comp : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: comparador PORT MAP (
          A => A,
          comp => comp
        );

   -- Clock process definitions
   --<clock>_process :process
   --begin
		--<clock> <= '0';
		--wait for <clock>_period/2;
		--<clock> <= '1';
		--wait for <clock>_period/2;
   --end process;
 

   -- Stimulus process
   stim_proc: process
   begin
		A <= "0000000";
      wait for 50 ns;
		A <= "0000011";
		wait for 50 ns;
		A <= "0000010";
		wait for 50 ns;
		A <= "0000100";
		wait for 50 ns;
		A <= "0000110";
		wait for 50 ns;
      wait;
   end process;

END;
