--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:01:56 10/21/2015
-- Design Name:   
-- Module Name:   C:/Xilinx/Problema1/simdecodificador3a8.vhd
-- Project Name:  Problema1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Decodificador3a8
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
 
ENTITY simdecodificador3a8 IS
END simdecodificador3a8;
 
ARCHITECTURE behavior OF simdecodificador3a8 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Decodificador3a8
    PORT(
         E : IN  std_logic_vector(2 downto 0);
         S : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal E : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal S : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Decodificador3a8 PORT MAP (
          E => E,
          S => S
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
		E <= "000";
      wait for 50 ns;
		E <= "001";
      wait for 50 ns;
		E <= "010";
      wait for 50 ns;
		E <= "011";
      wait for 50 ns;
		E <= "100";
      wait for 50 ns;
		E <= "101";
      wait for 50 ns;
		E <= "110";
      wait for 50 ns;
		E <= "111";
      wait for 50 ns;
      wait;
   end process;

END;
