--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:46:56 12/15/2015
-- Design Name:   
-- Module Name:   C:/Xilinx/Practica5/simblack_jack.vhd
-- Project Name:  Practica5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: black_jack
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
 
ENTITY simblack_jack IS
END simblack_jack;
 
ARCHITECTURE behavior OF simblack_jack IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT black_jack
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         start : IN  std_logic;
         b_pc : IN  std_logic;
         b_pl : IN  std_logic;
         carta_inc : OUT  std_logic;
         perder : OUT  std_logic;
         ready : OUT  std_logic;
         carta_act : OUT  std_logic_vector(3 downto 0);
         punt1 : OUT  std_logic_vector(6 downto 0);
         punt2 : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal start : std_logic := '0';
   signal b_pc : std_logic := '0';
   signal b_pl : std_logic := '0';

 	--Outputs
   signal carta_inc : std_logic;
   signal perder : std_logic;
   signal ready : std_logic;
   signal carta_act : std_logic_vector(3 downto 0);
   signal punt1 : std_logic_vector(6 downto 0);
   signal punt2 : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: black_jack PORT MAP (
          clk => clk,
          reset => reset,
          start => start,
          b_pc => b_pc,
          b_pl => b_pl,
          carta_inc => carta_inc,
          perder => perder,
          ready => ready,
          carta_act => carta_act,
          punt1 => punt1,
          punt2 => punt2
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
      wait for 50 ns;
		reset <= '0';
		start <= '0';
		b_pc <= '0';
		b_pl <= '0';
      wait for 50 ns;
		reset <= '0';
		start <= '1';
		b_pc <= '0';
		b_pl <= '0';
      wait for 50 ns;
		reset <= '0';
		start <= '0';
		b_pc <= '0';
		b_pl <= '1';
      wait for 50 ns;
		reset <= '0';
		start <= '1';
		b_pc <= '0';
		b_pl <= '0';
      wait for 50 ns;
		reset <= '0';
		start <= '0';
		b_pc <= '1';
		b_pl <= '0';
      wait for 50 ns;
		reset <= '0';
		start <= '0';
		b_pc <= '0';
		b_pl <= '0';
      wait for 50 ns;
		reset <= '0';
		start <= '0';
		b_pc <= '1';
		b_pl <= '0';
      wait for 50 ns;

      wait for clk_period*10;
      wait;
   end process;

END;
