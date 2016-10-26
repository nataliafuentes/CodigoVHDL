--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:24:45 12/14/2015
-- Design Name:   
-- Module Name:   C:/Xilinx/Practica5/simcontroller.vhd
-- Project Name:  Practica5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: controller
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
 
ENTITY simcontroller IS
END simcontroller;
 
ARCHITECTURE behavior OF simcontroller IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT controller
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         start : IN  std_logic;
         b_pc : IN  std_logic;
         b_pl : IN  std_logic;
         carta : IN  std_logic;
         punt : IN  std_logic_vector(1 downto 0);
         control : OUT  std_logic_vector(3 downto 0);
         ready : OUT  std_logic;
         carta_inc : OUT  std_logic;
         perder : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal start : std_logic := '0';
   signal b_pc : std_logic := '0';
   signal b_pl : std_logic := '0';
   signal carta : std_logic := '0';
   signal punt : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal control : std_logic_vector(3 downto 0);
   signal ready : std_logic;
   signal carta_inc : std_logic;
   signal perder : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: controller PORT MAP (
          clk => clk,
          reset => reset,
          start => start,
          b_pc => b_pc,
          b_pl => b_pl,
          carta => carta,
          punt => punt,
          control => control,
          ready => ready,
          carta_inc => carta_inc,
          perder => perder
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
		start <= '0';
		b_pc <= '0';
		b_pl <= '0';
		carta <= '0';
		punt <= "00";
      wait for 50 ns;
		reset <= '0';
		start <= '0';
		b_pc <= '0';
		b_pl <= '0';
		carta <= '0';
		punt <= "00";
      wait for 50 ns;
		reset <= '0';
		start <= '1';
		b_pc <= '0';
		b_pl <= '0';
		carta <= '0';
		punt <= "00";
      wait for 50 ns;
		reset <= '0';
		start <= '0';
		b_pc <= '1';
		b_pl <= '0';
		carta <= '1';
		punt <= "00";
      wait for 50 ns;
		reset <= '0';
		start <= '1';
		b_pc <= '0';
		b_pl <= '1';
		carta <= '0';
		punt <= "00";
      wait for 50 ns;
		reset <= '0';
		start <= '0';
		b_pc <= '1';
		b_pl <= '1';
		carta <= '0';
		punt <= "01";
      wait for 50 ns;
		reset <= '0';
		start <= '0';
		b_pc <= '1';
		b_pl <= '1';
		carta <= '1';
		punt <= "01";
      wait for 50 ns;
		reset <= '0';
		start <= '0';
		b_pc <= '1';
		b_pl <= '1';
		carta <= '1';
		punt <= "10";
      wait for 50 ns;
		reset <= '0';
		start <= '0';
		b_pc <= '1';
		b_pl <= '1';
		carta <= '1';
		punt <= "10";
      wait for 50 ns;
		reset <= '0';
		start <= '0';
		b_pc <= '0';
		b_pl <= '1';
		carta <= '1';
		punt <= "10";
      wait for 50 ns;

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
