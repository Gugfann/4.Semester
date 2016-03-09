----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:06:45 03/02/2016 
-- Design Name: 
-- Module Name:    bcd_counter - Behavioral 
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

entity bcd_counter is
    Port ( Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Enp : in  STD_LOGIC;
           Ent : in  STD_LOGIC;
           RCO : out  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0));
end bcd_counter;

architecture Behavioral of bcd_counter is

begin


end Behavioral;

