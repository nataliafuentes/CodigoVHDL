--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:50:38 01/13/2016
-- Design Name:   
-- Module Name:   C:/Xilinx/Practica6/simmultiplicador.vhd
-- Project Name:  Practica6
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: multiplicador
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
 
ENTITY simmultiplicador IS
END simmultiplicador;
 
ARCHITECTURE behavior OF simmultiplicador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT multiplicador
    PORT(
         A : IN  std_logic_vector(15 downto 0);
         B : IN  std_logic_vector(15 downto 0);
			load : IN std_logic;
         C : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(15 downto 0) := (others => '0');
   signal B : std_logic_vector(15 downto 0) := (others => '0');
	signal load : std_logic := '0';

 	--Outputs
   signal C : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: multiplicador PORT MAP (
          A => A,
          B => B,
			 load => load,
          C => C
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
		A <= "0000000000000000";
		B <= "1001001010001010";
		load <= '0';
      wait for 50 ns;
		load <= '1';
		wait for 50 ns;
		A <= "0000000000000001";
      wait for 50 ns;
		A <= "1001001001010001";
      wait for 50 ns;
		A <= "0000000000000001";
		B <= "0000000000000001";
		load <= '0';
      wait for 50 ns;
		load <= '1';
		wait for 50 ns;
		load <= '0';
		wait for 50 ns;
      wait;
   end process;

END;
