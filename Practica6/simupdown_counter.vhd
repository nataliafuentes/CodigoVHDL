--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:22:14 01/13/2016
-- Design Name:   
-- Module Name:   C:/Xilinx/Practica6/simupdown_counter.vhd
-- Project Name:  Practica6
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: updown_counter
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
 
ENTITY simupdown_counter IS
END simupdown_counter;
 
ARCHITECTURE behavior OF simupdown_counter IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT updown_counter
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         load : IN  std_logic;
         cu : IN  std_logic;
         cd : IN  std_logic;
         din : IN  std_logic_vector(4 downto 0);
         dout : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal load : std_logic := '0';
   signal cu : std_logic := '0';
   signal cd : std_logic := '0';
   signal din : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal dout : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: updown_counter PORT MAP (
          clk => clk,
          rst => rst,
          load => load,
          cu => cu,
          cd => cd,
          din => din,
          dout => dout
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
		load <= '1';
		din <= "10010";
		wait for 10 ns;
		load <= '0';
		cu <= '1';
		wait for 10 ns;
		load <= '1';
		wait for 10 ns;
		cu <= '0';
		cd <= '1';
		wait for 10 ns;
		load <= '0';
		wait for 10 ns;
		load <= '1';
		wait for 10 ns;
		load <= '0';
		wait for 10 ns;
      wait for clk_period*10;
      wait;
   end process;

END;
