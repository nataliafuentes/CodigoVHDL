--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:16:40 01/18/2016
-- Design Name:   
-- Module Name:   C:/Xilinx/Practica6/simdata_path.vhd
-- Project Name:  Practica6
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: data_path
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
 
ENTITY simdata_path IS
END simdata_path;
 
ARCHITECTURE behavior OF simdata_path IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT data_path
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         n : IN  std_logic_vector(3 downto 0);
         x : IN  std_logic_vector(15 downto 0);
         control : IN  std_logic_vector(7 downto 0);
         num_n : OUT  std_logic;
         num_x : OUT  std_logic;
         y : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal n : std_logic_vector(3 downto 0) := (others => '0');
   signal x : std_logic_vector(15 downto 0) := (others => '0');
   signal control : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal num_n : std_logic;
   signal num_x : std_logic;
   signal y : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: data_path PORT MAP (
          clk => clk,
          rst => rst,
          n => n,
          x => x,
          control => control,
          num_n => num_n,
          num_x => num_x,
          y => y
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
		n <= "0010";
		x <= "0000000000010001";
		control <= "00000011";
		wait for 100 ns;
		control <= "00010000";
		wait for 100 ns;
      wait for clk_period*10;
      wait;
   end process;

END;