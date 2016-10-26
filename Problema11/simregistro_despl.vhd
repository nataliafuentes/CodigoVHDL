--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:10:33 12/23/2015
-- Design Name:   
-- Module Name:   C:/Xilinx/Problema11/simregistro_despl.vhd
-- Project Name:  Problema11
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: registro_despl
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
 
ENTITY simregistro_despl IS
END simregistro_despl;
 
ARCHITECTURE behavior OF simregistro_despl IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT registro_despl
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         load : IN  std_logic;
         despl : IN  std_logic;
         A : IN  std_logic;
         P : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal load : std_logic := '0';
   signal despl : std_logic := '0';
   signal A : std_logic := '0';

 	--Outputs
   signal P : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: registro_despl PORT MAP (
          clk => clk,
          reset => reset,
          load => load,
          despl => despl,
          A => A,
          P => P
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
		reset <= '1';
      wait for 10 ns;
		reset <= '0';
		load <= '1';
		despl <= '0';
		A <= '0';
		wait for 10 ns;
		load <= '0';
		despl <= '1';
		A <= '1';
		wait for 10 ns;
		load <= '1';
		wait for 10 ns;
		A <= '0';
		wait for 10 ns;
		A <= '1';
		wait for 40 ns;
		A <= '0';
		wait for 10 ns;
		A <= '1';
		wait for 10 ns;
		A <= '0';
		wait for 10 ns;
		A <= '1';
		wait for 10 ns;
      wait for clk_period*10;
      wait;
   end process;

END;
