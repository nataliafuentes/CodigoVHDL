--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:37:57 12/15/2015
-- Design Name:   
-- Module Name:   C:/Xilinx/Practica5/simdata_path.vhd
-- Project Name:  Practica5
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
         reset : IN  std_logic;
         control : IN  std_logic_vector(3 downto 0);
         carta : OUT  std_logic;
         punt : OUT  std_logic_vector(1 downto 0);
         carta_act : OUT  std_logic_vector(3 downto 0);
         punt1 : OUT  std_logic_vector(6 downto 0);
         punt2 : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal control : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal carta : std_logic;
   signal punt : std_logic_vector(1 downto 0);
   signal carta_act : std_logic_vector(3 downto 0);
   signal punt1 : std_logic_vector(6 downto 0);
   signal punt2 : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: data_path PORT MAP (
          clk => clk,
          reset => reset,
          control => control,
          carta => carta,
          punt => punt,
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
		control <= "0000";
      wait for 50 ns;
		reset <= '0';
		control <= "0000";
      wait for 50 ns;
		reset <= '0';
		control <= "1010";
      wait for 50 ns;
		reset <= '0';
		control <= "0001";
      wait for 50 ns;
		reset <= '0';
		control <= "0110";
      wait for 50 ns;

      wait for clk_period*10;
      wait;
   end process;

END;
