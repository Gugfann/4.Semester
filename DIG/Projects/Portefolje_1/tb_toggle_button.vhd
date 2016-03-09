LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_toggle_button IS
END tb_toggle_button;
 
ARCHITECTURE behavior OF tb_toggle_button IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT toggle_button
    PORT(
         clk : IN  std_logic;
         btn : IN  std_logic;
         toggle : OUT  std_logic;
         debounce : OUT  std_logic;
         pulse : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal btn : std_logic := '0';

 	--Outputs
   signal toggle : std_logic;
   signal debounce : std_logic;
   signal pulse : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: toggle_button PORT MAP (
          clk => clk,
          btn => btn,
          toggle => toggle,
          debounce => debounce,
          pulse => pulse
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;
		
		btn <= '1';
		wait for clk_period;
		btn <= '0';
		wait for clk_period;
		btn <= '1';
		wait for clk_period;
		btn <= '0';
		wait for clk_period;
		btn <= '1';
		wait for clk_period;
		btn <= '0';
		wait for clk_period;
		btn <= '1';
		
		wait for 500 ns;
		
		btn <= '0';
		wait for clk_period;
		btn <= '1';
		wait for clk_period;
		btn <= '0';
		wait for clk_period;
		btn <= '1';
		wait for clk_period;
		btn <= '0';
		wait for clk_period;
		btn <= '1';
		wait for clk_period;
		btn <= '0';
		wait for clk_period;
		btn <= '1';
		wait for clk_period;
		btn <= '0';
		
		wait for 500 ns;
		
		btn <= '1';
		
		wait for 1500 ns;
      -- insert stimulus here 

      wait;
   end process;

END;
