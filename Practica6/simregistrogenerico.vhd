--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:21:26 01/13/2016
-- Design Name:   
-- Module Name:   C:/Xilinx/Practica6/simregistrogenerico.vhd
-- Project Name:  Practica6
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: registrogenerico
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
 
ENTITY simregistrogenerico IS
END simregistrogenerico;
 
ARCHITECTURE behavior OF simregistrogenerico IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT registrogenerico
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         load : IN  std_logic;
         D : IN  std_logic_vector(4 downto 0);
         Q : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal load : std_logic := '0';
   signal D : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal Q : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: registrogenerico PORT MAP (
          clk => clk,
          rst => rst,
          load => load,
          D => D,
          Q => Q
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin
		rst <= '1';
      wait for 10 ns;
		rst <= '0';
		load <= '0';
		D <= "11001";
		wait for 10 ns;
		load <= '1';
		wait for 10 ns;
		D <= "01011";
		wait for 10 ns;
		load <= '0';
		D <= "11111";
		wait for 10 ns;
		load <= '1';
		wait for 10 ns;
		load <= '0';
		wait for 10 ns;
      wait for clk_period*10;
      wait;
   end process;

END;
