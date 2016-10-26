--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:15:01 10/21/2015
-- Design Name:   
-- Module Name:   C:/Xilinx/Problema3/simmultiplicarx3.vhd
-- Project Name:  Problema3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Multiplicarx3
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
 
ENTITY simmultiplicarx3 IS
END simmultiplicarx3;
 
ARCHITECTURE behavior OF simmultiplicarx3 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Multiplicarx3
    PORT(
         X : IN  std_logic_vector(2 downto 0);
         Z : OUT  std_logic_vector(3 downto 0);
			D : OUT std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal Z : std_logic_vector(3 downto 0);
	signal D : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Multiplicarx3 PORT MAP (
          X => X,
          Z => Z,
			 D => D
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
		X <= "000";
      wait for 50 ns;
		X <= "001";
      wait for 50 ns;
		X <= "010";
      wait for 50 ns;
		X <= "011";
      wait for 50 ns;
		X <= "100";
      wait for 50 ns;
		X <= "101";
      wait for 50 ns;
		X <= "110";
      wait for 50 ns;
		X <= "111";
      wait for 50 ns;
      wait;
   end process;

END;
