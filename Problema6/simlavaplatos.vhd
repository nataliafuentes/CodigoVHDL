--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:15:55 10/23/2015
-- Design Name:   
-- Module Name:   C:/Xilinx/Problema6/simlavaplatos.vhd
-- Project Name:  Problema6
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Lavaplatos
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
 
ENTITY simlavaplatos IS
END simlavaplatos;
 
ARCHITECTURE behavior OF simlavaplatos IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Lavaplatos
    PORT(
         clk : IN  std_logic;
			rst : IN std_logic;
         start_stop : IN  std_logic;
         ciclo_rapido : IN  std_logic;
         Entrar_agua : OUT  std_logic;
         Calentar_agua : OUT  std_logic;
         Mover_aspas : OUT  std_logic;
         Abrir_cajetin : OUT  std_logic;
         Secar : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
	signal rst : std_logic := '0';
   signal start_stop : std_logic := '0';
   signal ciclo_rapido : std_logic := '0';

 	--Outputs
   signal Entrar_agua : std_logic;
   signal Calentar_agua : std_logic;
   signal Mover_aspas : std_logic;
   signal Abrir_cajetin : std_logic;
   signal Secar : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Lavaplatos PORT MAP (
          clk => clk,
			 rst => rst,
          start_stop => start_stop,
          ciclo_rapido => ciclo_rapido,
          Entrar_agua => Entrar_agua,
          Calentar_agua => Calentar_agua,
          Mover_aspas => Mover_aspas,
          Abrir_cajetin => Abrir_cajetin,
          Secar => Secar
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
		ciclo_rapido <= '0';
		wait for 10 ns;
		rst <= '0';
		start_stop <= '0';
		ciclo_rapido <= '0';
      wait for 10 ns;
		rst <= '0';
		start_stop <= '1';
		ciclo_rapido <= '0';
      wait for 10 ns;
		rst <= '0';
		start_stop <= '1';
		ciclo_rapido <= '1';
      wait for 10 ns;
		rst <= '0';
		start_stop <= '1';
		ciclo_rapido <= '1';
      wait for 10 ns;
		rst <= '0';
		start_stop <= '1';
		ciclo_rapido <= '1';
      wait for 10 ns;
		rst <= '0';
		start_stop <= '1';
		ciclo_rapido <= '0';
      wait for 10 ns;
		rst <= '0';
		start_stop <= '1';
		ciclo_rapido <= '0';
      wait for 10 ns;
		rst <= '0';
		start_stop <= '1';
		ciclo_rapido <= '0';
      wait for 10 ns;
		rst <= '0';
		start_stop <= '1';
		ciclo_rapido <= '0';
      wait for 10 ns;
		rst <= '0';
		start_stop <= '1';
		ciclo_rapido <= '0';
      wait for 10 ns;
		rst <= '0';
		start_stop <= '1';
		ciclo_rapido <= '0';
      wait for 10 ns;
		rst <= '0';
		start_stop <= '1';
		ciclo_rapido <= '0';
      wait for 10 ns;
		rst <= '0';
		start_stop <= '1';
		ciclo_rapido <= '0';
      wait for 10 ns;
		rst <= '0';
		start_stop <= '1';
		ciclo_rapido <= '0';
      wait for 10 ns;
		rst <= '0';
		start_stop <= '1';
		ciclo_rapido <= '0';
      wait for 10 ns;
		rst <= '0';
		start_stop <= '0';
		ciclo_rapido <= '0';
      wait for 10 ns;
		
      wait for clk_period*10;

      wait;
   end process;

END;
