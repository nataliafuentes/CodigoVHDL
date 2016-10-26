--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:42:42 11/22/2015
-- Design Name:   
-- Module Name:   C:/Xilinx/Practica4/simregistro_coc.vhd
-- Project Name:  Practica4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: registro_coc
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
 
ENTITY simregistro_coc IS
END simregistro_coc;
 
ARCHITECTURE behavior OF simregistro_coc IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT registro_coc
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         load : IN  std_logic;
			shift : IN std_logic;
         coc_i : IN  std_logic;
         D : IN  unsigned(6 downto 0);
         Q : OUT  unsigned(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal load : std_logic := '0';
	signal shift : std_logic := '0';
   signal coc_i : std_logic := '0';
   signal D : unsigned(6 downto 0) := (others => '0');

 	--Outputs
   signal Q : unsigned(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: registro_coc PORT MAP (
          clk => clk,
          reset => reset,
          load => load,
			 shift => shift,
          coc_i => coc_i,
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
		D <= "0000000";
		wait for 50 ns;
		load <= '1';
		coc_i <= '1';
		wait for 50 ns;
		shift <= '1';
		wait for 50 ns;
		load <= '0';
		wait for 50 ns;
		load <= '1';
		wait for 50 ns;
		coc_i <= '0';
		wait for 50 ns;
      wait for clk_period*10;
      wait;
   end process;

END;
