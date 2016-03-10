----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:24:48 03/10/2016 
-- Design Name: 
-- Module Name:    bus_connector - Behavioral 
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

entity bus_connector is
    Port ( low : in  STD_LOGIC_VECTOR (7 downto 0);
           high : in  STD_LOGIC_VECTOR (7 downto 0);
           combine : out  STD_LOGIC_VECTOR (15 downto 0));
end bus_connector;

architecture Behavioral of bus_connector is

begin

combine <= high & low;

end Behavioral;

