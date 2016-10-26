--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:19:44 10/23/2015
-- Design Name:   
-- Module Name:   C:/Xilinx/Problema7/simtuneldelavado.vhd
-- Project Name:  Problema7
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Tuneldelavado
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
 
ENTITY simtuneldelavado IS
END simtuneldelavado;
 
ARCHITECTURE behavior OF simtuneldelavado IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Tuneldelavado
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         start_stop : IN  std_logic;
         darcera : IN  std_logic;
         Salida_agua : OUT  std_logic;
         Salida_aire : OUT  std_logic;
         Mover_rollos : OUT  std_logic;
         Salida_jabon : OUT  std_logic;
         Encerar : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal start_stop : std_logic := '0';
   signal darcera : std_logic := '0';

 	--Outputs
   signal Salida_agua : std_logic;
   signal Salida_aire : std_logic;
   signal Mover_rollos : std_logic;
   signal Salida_jabon : std_logic;
   signal Encerar : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Tuneldelavado PORT MAP (
          clk => clk,
          rst => rst,
          start_stop => start_stop,
          darcera => darcera,
          Salida_agua => Salida_agua,
          Salida_aire => Salida_aire,
          Mover_rollos => Mover_rollos,
          Salida_jabon => Salida_jabon,
          Encerar => Encerar
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
		start_stop <= '0';
		darcera <= '0';
      wait for 10 ns;
		rst <= '0';
		start_stop <= '0';
		darcera <= '0';
      wait for 10 ns;
		rst <= '0';
		start_stop <= '1';
		darcera <= '0';
      wait for 10 ns;
		rst <= '0';
		start_stop <= '1';
		darcera <= '0';
      wait for 10 ns;
		rst <= '0';
		start_stop <= '1';
		darcera <= '0';
      wait for 10 ns;
		rst <= '0';
		start_stop <= '1';
		darcera <= '0';
      wait for 10 ns;
		rst <= '0';
		start_stop <= '1';
		darcera <= '1';
      wait for 10 ns;
		rst <= '0';
		start_stop <= '1';
		darcera <= '1';
      wait for 10 ns;
		rst <= '0';
		start_stop <= '1';
		darcera <= '0';
      wait for 10 ns;
		rst <= '0';
		start_stop <= '1';
		darcera <= '0';
      wait for 10 ns;
		rst <= '0';
		start_stop <= '1';
		darcera <= '0';
      wait for 10 ns;
		rst <= '0';
		start_stop <= '0';
		darcera <= '0';
      wait for 10 ns;

      wait for clk_period*10;

      wait;
   end process;

END;
