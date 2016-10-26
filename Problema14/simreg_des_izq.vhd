--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:31:23 12/24/2015
-- Design Name:   
-- Module Name:   C:/Xilinx/Problema14/simreg_des_izq.vhd
-- Project Name:  Problema14
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: reg_des_izq
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
 
ENTITY simreg_des_izq IS
END simreg_des_izq;
 
ARCHITECTURE behavior OF simreg_des_izq IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT reg_des_izq
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         load : IN  std_logic;
         despl : IN  std_logic_vector(2 downto 0);
         D : IN  std_logic_vector(7 downto 0);
         Q : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal load : std_logic := '0';
   signal despl : std_logic_vector(2 downto 0) := (others => '0');
   signal D : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Q : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: reg_des_izq PORT MAP (
          clk => clk,
          reset => reset,
          load => load,
          despl => despl,
          D => D,
          Q => Q
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
		despl <= "000";
		D <= "11000101";
		wait for 10 ns;
		despl <= "001";
		wait for 10 ns;
		despl <= "010";
		wait for 10 ns;
		despl <= "011";
		wait for 10 ns;
		despl <= "100";
		wait for 10 ns;
		despl <= "101";
		wait for 10 ns;
		despl <= "110";
		wait for 10 ns;
		despl <= "111";
		wait for 10 ns;
		load <= '0';
		despl <= "100";
		wait for 10 ns;
		load <= '1';
		wait for 10 ns;
		load <= '0';
		wait for 10 ns;
      wait for clk_period*10;
      wait;
   end process;

END;
