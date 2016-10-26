--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:20:21 12/15/2015
-- Design Name:   
-- Module Name:   C:/Xilinx/Practica5/simconv_7seg.vhd
-- Project Name:  Practica5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: conv_7seg
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
 
ENTITY simconv_7seg IS
END simconv_7seg;
 
ARCHITECTURE behavior OF simconv_7seg IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT conv_7seg
    PORT(
         x : IN  std_logic_vector(3 downto 0);
         display : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal display : std_logic_vector(6 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: conv_7seg PORT MAP (
          x => x,
          display => display
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
		x <= "0000";
      wait for 50 ns;
		x <= "0001";
      wait for 50 ns;
		x <= "0010";
      wait for 50 ns;
		x <= "0011";
      wait for 50 ns;
		x <= "0100";
      wait for 50 ns;
		x <= "0101";
      wait for 50 ns;
		x <= "0110";
      wait for 50 ns;
		x <= "0111";
      wait for 50 ns;
		x <= "1000";
      wait for 50 ns;
		x <= "1001";
      wait for 50 ns;
      wait;
   end process;

END;
