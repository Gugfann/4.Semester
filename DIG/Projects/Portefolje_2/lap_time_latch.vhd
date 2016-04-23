library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity lap_time_latch is
    Port ( latch : in  STD_LOGIC;
           bcd1_10 : in  STD_LOGIC_VECTOR (7 downto 0);
           bcd_sec : in  STD_LOGIC_VECTOR (7 downto 0);
           bcd_min : in  STD_LOGIC_VECTOR (7 downto 0);
           leds : out  STD_LOGIC_VECTOR (7 downto 0);
           bcd : out  STD_LOGIC_VECTOR (15 downto 0));
end lap_time_latch;

architecture Behavioral of lap_time_latch is

begin

	bcd 	<= bcd_min & bcd_sec when latch = '0'; 			
	leds 	<= bcd1_10 when latch = '0';		
	
end Behavioral;

