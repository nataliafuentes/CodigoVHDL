--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:55:47 11/25/2015
-- Design Name:   
-- Module Name:   C:/Xilinx/Practica4definitiva/simsumador_restador.vhd
-- Project Name:  Practica4definitiva
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sumador_restador
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
 
ENTITY simsumador_restador IS
END simsumador_restador;
 
ARCHITECTURE behavior OF simsumador_restador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sumador_restador
    PORT(
         sum : IN  std_logic;
         A : IN  unsigned(6 downto 0);
         B : IN  unsigned(6 downto 0);
         C : OUT  unsigned(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal sum : std_logic := '0';
   signal A : unsigned(6 downto 0) := (others => '0');
   signal B : unsigned(6 downto 0) := (others => '0');

 	--Outputs
   signal C : unsigned(6 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sumador_restador PORT MAP (
          sum => sum,
          A => A,
          B => B,
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
		sum <= '1';
		A <= "0111111";
		B <= "0000001";
      wait for 100 ns;
		sum <= '0';
		A <= "0111111";
		B <= "0000001";
      wait for 100 ns;
		sum <= '1';
		A <= "0100110";
		B <= "0010011";
      wait for 100 ns;
		sum <= '0';
		A <= "0110111";
		B <= "0110001";
      wait for 100 ns;
      wait;
   end process;

END;