--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:08:45 12/14/2015
-- Design Name:   
-- Module Name:   C:/Xilinx/Practica5/simconversor.vhd
-- Project Name:  Practica5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: conversor
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
 
ENTITY simconversor IS
END simconversor;
 
ARCHITECTURE behavior OF simconversor IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT conversor
    PORT(
         A : IN  std_logic_vector(5 downto 0);
         punt1 : OUT  std_logic_vector(3 downto 0);
         punt2 : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal punt1 : std_logic_vector(3 downto 0);
   signal punt2 : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: conversor PORT MAP (
          A => A,
          punt1 => punt1,
          punt2 => punt2
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
		A <= "010101";
      wait for 50 ns;
		A <= "011110";
      wait for 50 ns;
		A <= "000000";
      wait for 50 ns;
      wait;
   end process;

END;
