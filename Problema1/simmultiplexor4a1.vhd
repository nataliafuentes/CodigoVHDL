--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:03:01 10/21/2015
-- Design Name:   
-- Module Name:   C:/Xilinx/Problema1/simmultiplexor4a1.vhd
-- Project Name:  Problema1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Multiplexor4a1
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
 
ENTITY simmultiplexor4a1 IS
END simmultiplexor4a1;
 
ARCHITECTURE behavior OF simmultiplexor4a1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Multiplexor4a1
    PORT(
         E : IN  std_logic_vector(3 downto 0);
         C : IN  std_logic_vector(1 downto 0);
         S : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal E : std_logic_vector(3 downto 0) := (others => '0');
   signal C : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal S : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Multiplexor4a1 PORT MAP (
          E => E,
          C => C,
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
      E <= "1010";
		C <= "00";
      wait for 50 ns;
		E <= "1010";
		C <= "01";
      wait for 50 ns;
		E <= "1010";
		C <= "10";
      wait for 50 ns;
		E <= "1010";
		C <= "11";
      wait for 50 ns;
      wait;
   end process;

END;
