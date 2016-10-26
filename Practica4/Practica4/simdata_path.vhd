--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:03:32 11/23/2015
-- Design Name:   
-- Module Name:   C:/Xilinx/Practica4/simdata_path.vhd
-- Project Name:  Practica4
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
         dividend : IN  std_logic_vector(5 downto 0);
         divisor : IN  std_logic_vector(2 downto 0);
         control : IN  std_logic_vector(7 downto 0);
         msb : OUT  std_logic;
         comp : OUT  std_logic;
         quotient : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal dividend : std_logic_vector(5 downto 0) := (others => '0');
   signal divisor : std_logic_vector(2 downto 0) := (others => '0');
   signal control : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal msb : std_logic;
   signal comp : std_logic;
   signal quotient : std_logic_vector(5 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: data_path PORT MAP (
          clk => clk,
          reset => reset,
          dividend => dividend,
          divisor => divisor,
          control => control,
          msb => msb,
          comp => comp,
          quotient => quotient
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
		reset <=  '1';
      wait for 50 ns;
		reset <= '0';
		dividend <= "101101";
		divisor <= "101";
		control <= "00000000";
		wait for 50 ns;
		dividend <= "101101";
		divisor <= "101";
		control <= "00001111";
		wait for 50 ns;
		dividend <= "101101";
		divisor <= "101";
		control <= "00110001";
		wait for 50 ns;
		dividend <= "101101";
		divisor <= "101";
		control <= "10000000";
		wait for 50 ns;
		dividend <= "101101";
		divisor <= "101";
		control <= "00010101";
		wait for 50 ns;
		dividend <= "101101";
		divisor <= "101";
		control <= "00000100";
		wait for 50 ns;
		dividend <= "101101";
		divisor <= "101";
		control <= "01001010";
		wait for 50 ns;
      wait for clk_period*10;
      wait;
   end process;

END;
