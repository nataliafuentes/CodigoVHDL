--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:57:36 12/23/2015
-- Design Name:   
-- Module Name:   C:/Xilinx/Problema11/simconv_serie_paralelo.vhd
-- Project Name:  Problema11
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: conv_serie_paralelo
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
 
ENTITY simconv_serie_paralelo IS
END simconv_serie_paralelo;
 
ARCHITECTURE behavior OF simconv_serie_paralelo IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT conv_serie_paralelo
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         activa : IN  std_logic;
         A : IN  std_logic;
         P : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal activa : std_logic := '0';
   signal A : std_logic := '0';

 	--Outputs
   signal P : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: conv_serie_paralelo PORT MAP (
          clk => clk,
          reset => reset,
          activa => activa,
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
		activa <= '1';
		A <= '0';
		wait for 10 ns;
		A <= '1';
		wait for 10 ns;
		A <= '0';
		wait for 10 ns;
		A <= '1';
		wait for 30 ns;
		activa <= '0';
		wait for 10 ns;
		activa <= '1';
		wait for 60 ns;
		A <= '0';
		wait for 10 ns;
		A <= '1';
		wait for 10 ns;
		A <= '0';
		wait for 10 ns;
		A <= '1';
		wait for 10 ns;
		activa <= '0';
		wait for 10 ns;
      wait for clk_period*10;
      wait;
   end process;

END;
