----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:05:34 04/23/2016 
-- Design Name: 
-- Module Name:    reaction_tester - Behavioral 
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

entity reaction_tester is
    Port ( clk : in  STD_LOGIC;
           rand_no : in  STD_LOGIC_VECTOR (12 downto 0);
			  reset : in STD_LOGIC;
           start : in  STD_LOGIC;
           LED : out  STD_LOGIC_VECTOR (7 downto 0);
			  reset_timer : out STD_LOGIC;
           start_timer : out  STD_LOGIC);
end reaction_tester;

architecture Behavioral of reaction_tester is

constant READY 			: std_logic_vector (2 downto 0) := "000";
constant INIT_CNT 		: std_logic_vector (2 downto 0) := "001";
constant LATCH				: std_logic_vector (2 downto 0) := "010";
constant RAND_CNT			: std_logic_vector (2 downto 0) := "011";
constant WAITING			: std_logic_vector (2 downto 0) := "100";
constant DISPLAY_SCORE 	: std_logic_vector (2 downto 0) := "101";
constant FUCK_NO			: std_logic_vector (2 downto 0) := "110";

signal state : std_logic_vector (2 downto 0) := "000";
signal counter : integer range 0 to 10000 := 1000; 

begin

reaction_states : process (clk)

begin
	if rising_edge(clk) then
		reset_timer <= '0';
		case state is
			when READY =>
				LED <= X"00";
				
				if start = '1' then
					LED <= X"FF";
					state <= INIT_CNT;
				end if;
				
			when INIT_CNT =>
				if start = '1' then
					state <= FUCK_NO;
				elsif counter = 0 then
					state <= LATCH;
				else
					counter <= counter - 1;
				end if;
				
			when LATCH =>
				if start = '1' then
					state <= FUCK_NO;
				else
					counter <= to_integer(unsigned(rand_no));
					state <= RAND_CNT;
				end if;
				
			when RAND_CNT =>
				if start = '1' then
					state <= FUCK_NO;
				
				elsif counter = 0 then
					state <= WAITING;
					LED <= X"00";
					start_timer <= '1';
				else
					counter <= counter - 1;
				end if;
				
			when WAITING =>
				if start = '1' then
					start_timer <= '0';
					state <= DISPLAY_SCORE;
				end if;
				
			when DISPLAY_SCORE =>
				if reset = '1' then
					state <= READY;
					counter <= 1000;
					reset_timer <= '1';
				end if;
				
			when FUCK_NO =>
				state <= READY;
				
			when others =>
				state <= READY;
				
		end case;
	
	end if;

end process;


end Behavioral;

