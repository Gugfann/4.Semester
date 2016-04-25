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
      rand_num : out std_logic_vector (12 downto 0)   --output vector            
    );
end randomizer;

architecture Behavioral of randomizer is
begin
	process(clk)
		variable rand_temp : std_logic_vector(12 downto 0):= "1011101010100";
		variable temp : std_logic := '0';
	begin
		if rising_edge(clk) then
				temp := rand_temp(12) xor rand_temp(11);
				rand_temp(12 downto 1) := rand_temp(11 downto 0);
				rand_temp(0) := temp;
		end if;
	rand_num <= rand_temp;
	end process;
	
end Behavioral;