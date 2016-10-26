--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:13:33 10/22/2015
-- Design Name:   
-- Module Name:   C:/Xilinx/Problema4/simpuertaxor2.vhd
-- Project Name:  Problema4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Puertaxor2
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
 
ENTITY simpuertaxor2 IS
END simpuertaxor2;
 
ARCHITECTURE behavior OF simpuertaxor2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Puertaxor2
    PORT(
         I : IN  std_logic_vector(1 downto 0);
         O : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal O : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Puertaxor2 PORT MAP (
          I => I,
          O => O
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
		I <= "00";
      wait for 50 ns;
		I <= "01";
      wait for 50 ns;
		I <= "10";
      wait for 50 ns;
		I <= "11";
      wait for 50 ns;
      wait;
   end process;

END;
