----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:33:58 04/23/2016 
-- Design Name: 
-- Module Name:    randomizer - Behavioral 
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

entity randomizer is
    generic (width : integer :=  16); 
port (
      clk : in std_logic;
      rand_num : out std_logic_vector (31 downto 0)   --output vector            
    );
end randomizer;

architecture Behavioral of randomizer is
		signal counter : integer range 0 to 13 := 0;
begin
	process(clk)
		variable rand_temp : std_logic_vector(31 downto 0):= "10111010101010101100110111000100";
		variable temp : std_logic := '0';
	begin
		if rising_edge(clk) then
			--if counter = 13 then
				temp := rand_temp(31) xor rand_temp(30);
				rand_temp(31 downto 1) := rand_temp(30 downto 0);
				rand_temp(0) := temp;
				--counter <= 0;
		--	else 
				--counter <= counter + 1;
			--end if;
		end if;
	rand_num <= rand_temp;
	end process;
	
end Behavioral;