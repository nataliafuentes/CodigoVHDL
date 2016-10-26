--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:55:01 10/23/2015
-- Design Name:   
-- Module Name:   C:/Xilinx/Problema2/simnumeroprimo.vhd
-- Project Name:  Problema2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Numeroprimo
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
 
ENTITY simnumeroprimo IS
END simnumeroprimo;
 
ARCHITECTURE behavior OF simnumeroprimo IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Numeroprimo
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Z : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Numeroprimo PORT MAP (
          A => A,
          Z => Z
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
		A <= "0000";
      wait for 50 ns;
		A <= "0001";
      wait for 50 ns;
		A <= "0010";
      wait for 50 ns;
		A <= "0011";
      wait for 50 ns;
		A <= "0100";
      wait for 50 ns;
		A <= "0101";
      wait for 50 ns;
		A <= "0110";
      wait for 50 ns;
		A <= "0111";
      wait for 50 ns;
		A <= "1000";
      wait for 50 ns;
		A <= "1001";
      wait for 50 ns;
		A <= "1010";
      wait for 50 ns;
		A <= "1011";
      wait for 50 ns;
		A <= "1100";
      wait for 50 ns;
		A <= "1101";
      wait for 50 ns;
		A <= "1110";
      wait for 50 ns;
		A <= "1111";
      wait for 50 ns;
      wait;
   end process;

END;
