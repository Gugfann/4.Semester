----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:37:48 04/25/2016 
-- Design Name: 
-- Module Name:    hs_latch - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity hs_latch is
    Port ( clk : in  STD_LOGIC;
           show_hs : in  STD_LOGIC;
			  reset : in STD_LOGIC;
           enable : in  STD_LOGIC;
           bcd_in : in  STD_LOGIC_VECTOR (15 downto 0);
           bcd_out : out  STD_LOGIC_VECTOR (15 downto 0));
end hs_latch;

architecture Behavioral of hs_latch is

signal edge_detect : std_logic_vector (1 downto 0) := "00";
signal highscore : std_logic_vector (15 downto 0) := X"0000";

begin

bcd_out <= bcd_in when show_hs = '0' else highscore;

compare_hs: process(clk,reset)
begin

	if reset = '1' then
		highscore <= X"0000";
	elsif rising_edge(clk) then

		edge_detect <= edge_detect(0) & enable;
		
		if edge_detect = "10" then
			
			if highscore = X"0000" or highscore > bcd_in then
				highscore <= bcd_in;			
			end if;		
		end if;
	end if;
end process;




end Behavioral;

