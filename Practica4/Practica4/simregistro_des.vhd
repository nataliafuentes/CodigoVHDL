--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:59:21 11/22/2015
-- Design Name:   
-- Module Name:   C:/Xilinx/Practica4/simregistro_des.vhd
-- Project Name:  Practica4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: registro_des
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
use IEEE.NUMERIC_STD.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY simregistro_des IS
END simregistro_des;
 
ARCHITECTURE behavior OF simregistro_des IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT registro_des
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         load : IN  std_logic;
         despl : IN  std_logic;
         D : IN  unsigned(6 downto 0);
         Q : OUT  unsigned(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal load : std_logic := '0';
   signal despl : std_logic := '0';
   signal D : unsigned(6 downto 0) := (others => '0');

 	--Outputs
   signal Q : unsigned(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: registro_des PORT MAP (
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
      wait for 50 ns;
		reset <= '0';
		load <= '1';
		D <= "0101000";
		wait for 50 ns;
		despl <= '1';
		wait for 50 ns;
		despl <= '1';
		load <='0';
		wait for 50 ns;
		despl <= '1';
		load <= '1';
		wait for 50 ns;
		despl <= '0';
		wait for 50 ns;
		despl <= '1';
		wait for 50 ns;
		reset <= '1';
		wait for 50 ns;
      wait for clk_period*10;
      wait;
   end process;

END;
