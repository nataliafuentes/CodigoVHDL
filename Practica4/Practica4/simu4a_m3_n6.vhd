LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY simu4b_3_6 IS
	 GENERIC (n : natural := 6;
				 m : natural := 3);
END simu4b_3_6;
 
ARCHITECTURE behavior OF simu4b_3_6 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT divider
	 GENERIC (n : natural;
				 m : natural);
    PORT(
       clk : IN  std_logic;
	    reset : IN  std_logic;
		 dividend : IN  std_logic_vector(n-1 downto 0);
       divisor : IN  std_logic_vector(m-1 downto 0);
		 start : IN  std_logic;
	    ready : OUT  std_logic;
		 quotient : OUT  std_logic_vector(n-1 downto 0)
    );
    END COMPONENT;
    

   --Inputs
   signal dividend : std_logic_vector(n-1 downto 0) := (others => '0');
   signal divisor : std_logic_vector(m-1 downto 0) := (others => '0');
   signal start : std_logic := '0';
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal quotient : std_logic_vector(n-1 downto 0);
   signal ready: std_logic;

   -- Clock period definitions
   constant clk_period : time := 80 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: divider GENERIC MAP(
						n => n,
						m => m
					 )
	PORT MAP (
	       clk => clk,
          reset => reset,
          dividend => dividend,
          divisor => divisor,
			 start => start,
	       ready => ready,
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
      reset<='1';
		wait for 80 ns;
		
		--61/5=12
		reset<='0';	
		start<='1';
		dividend<="111101";
		divisor<="101";
      wait for 2*clk_period;
		
		start<='0';
		wait for 20*clk_period;

		reset<='1';
      wait for 100 ns;

		--61/15=4
		reset <= '0';
		start<='1';
		dividend<="111101";
		divisor<="111";
		wait for 2*clk_period;
		
		start<='0';
		wait for 20*clk_period;

		reset<='1';
      wait for 100 ns;

		--29/3=9
		reset <= '0';		
		start<='1';
		dividend<="011101";
		divisor<="011";
		wait for 2*clk_period;
		
		start<='0';
		wait for 20*clk_period;

		reset<='1';
      wait for 100 ns;

		--41/3=13
		reset <= '0';		
		start<='1';
		dividend<="101001";
		divisor<="011";
		wait for 2*clk_period;
		
		start<='0';
		wait for 20*clk_period;

		reset<='1';
      wait for 100 ns;

		--35/3=11
		reset <= '0';		
		start<='1';
		dividend<="100011";
		divisor<="011";
		wait for 2*clk_period;
		
		start<='0';
      wait;

   end process;

END;
