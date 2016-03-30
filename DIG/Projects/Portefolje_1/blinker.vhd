----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:27:18 03/22/2016 
-- Design Name: 
-- Module Name:    blinker - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity blinker is
    Port ( start_stop : in  STD_LOGIC;
           lap_time : in  STD_LOGIC;
           half_sec : in  STD_LOGIC;
           dp : out  STD_LOGIC_VECTOR (3 downto 0));
end blinker;

architecture Behavioral of blinker is

begin

--dp <= half_sec & half_sec & half_sec & half_sec when lap_time = '1' and start_stop = '1' else
--		"1111";

process(start_stop,lap_time,half_sec)
begin
	dp <= "0100";
	if lap_time = '1' and start_stop = '1' then
		dp <= half_sec & half_sec & half_sec & half_sec;
	end if;
end process;

end Behavioral;

