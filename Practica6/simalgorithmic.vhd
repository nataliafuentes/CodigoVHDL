--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:21:25 01/18/2016
-- Design Name:   
-- Module Name:   C:/Xilinx/Practica6/simalgorithmic.vhd
-- Project Name:  Practica6
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: algorithmic
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
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity tb_alg is
end tb_alg;
 
architecture behavior of tb_alg is 
    -- component declaration for the unit under test (uut)
    component algorithmic
    port(
        clk :    in  std_logic;
        rst :  in  std_logic;
        init : in  std_logic;
        n :      in  std_logic_vector(4 downto 0);
        x :      in  std_logic_vector(15 downto 0);
        y :      out  std_logic_vector(31 downto 0);
        fin :    out  std_logic;
        err :  out  std_logic );
    end component;
    
    --inputs
    signal clk :    std_logic := '0';
    signal rst :  std_logic := '1';
    signal init : std_logic := '0';
    signal n :      std_logic_vector(4 downto 0) := (others => '0');
    signal x :      std_logic_vector(15 downto 0) := (others => '0');

    --outputs
    signal y :      std_logic_vector(31 downto 0);
    signal fin :    std_logic;
    signal err :    std_logic;

   -- clock period definitions
   constant clk_period : time := 10 ns;
 
begin
 
    -- instantiate the unit under test (uut)
    uut: algorithmic port map (
        clk    => clk,
        rst  => rst,
        init => init,
        n      => n,
        x      => x,
        y      => y,
        fin    => fin,
        err  => err );

    -- clock process definitions
    clk_process :process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;
    
    stim_proc: process
    variable v_n : natural := 0;
    variable v_x : natural := 0;
    variable v_a : natural := 0;
    variable v_i : natural := 0;
    begin        

        -- Reset
        rst <= '1';
        wait until falling_edge(clk);
        rst  <= '0';

        n_loop : for v_n in 1 to 31 loop 
            n <= std_logic_vector(to_unsigned(v_n, 5));
            x_loop : for v_x in 1 to 5 loop 
                x <= std_logic_vector(to_unsigned(v_x, 16));
                wait until falling_edge(clk);
                init <= '1';
                wait until falling_edge(clk);
                init <= '0';
					 
					 --Esperar a que termine
                wait until fin = '1';
                
                --Test (n+1)!*x (La RAM tiene V(0)=2, V(1)=3 ...)
                v_a := v_x;
                test_loop : for v_i in 2 to (v_n+1) loop
                    v_a := v_a * v_i;
                end loop test_loop;

					 --Comprobar si el resultado coincide y mostrar error en caso contrario
                assert std_logic_vector(to_unsigned(v_a,y'length)) = y
                    report "Error with n: " & integer'IMAGE(v_n) & " and x: " & integer'IMAGE(v_x) & " got " & integer'IMAGE(v_a)
                    severity error;

            end loop x_loop;
        end loop n_loop;

        wait;
   end process;
end;

