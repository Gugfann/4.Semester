----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:44:53 04/23/2016 
-- Design Name: 
-- Module Name:    cnt9999 - Behavioral 
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

entity cnt9999 is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           en : in  STD_LOGIC;
           co : in  STD_LOGIC;
           bcd : out  STD_LOGIC_VECTOR (3 downto 0));
end cnt9999;

architecture Behavioral of cnt9999 is

	signal counter: integer range 0 to 99 := 0;

begin

count: process(clk,clr)
		variable next_bcd: unsigned (3 downto 0) := "0000";
		variable carry: std_logic := '0';
	begin
		if clr = '1' then
			next_bcd := "0000";
				
		elsif rising_edge(clk) then
			carry := '0';
			
			if en = '1' then
					 
					if next_bcd = "1001" then
							carry			:= '1';
							next_bcd 	:= "0000";
					else							
							next_bcd		:= next_bcd + 1;
					end if;

			end if;
		end if;
		
		bcd <= std_logic_vector(next_bcd);
		co <= carry;
	end process;

end Behavioral;



