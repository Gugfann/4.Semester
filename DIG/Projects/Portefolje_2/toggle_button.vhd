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

entity toggle_button is
    Port ( clk : in  STD_LOGIC;
           btn : in  STD_LOGIC;
           toggle : out  STD_LOGIC;
           debounce : out  STD_LOGIC;
           pulse : out  STD_LOGIC);
end toggle_button;

architecture Behavioral of toggle_button is

signal state: std_logic_vector (2 downto 0) := "000";
signal s_reg: std_logic_vector (9 downto 0) := "0000000000";

		
begin

btn_states: process(clk)
	begin
		if rising_edge(clk) then
	
			s_reg <= s_reg(8 downto 0) & btn;
			
			case state is
				when "000" => 
					if btn = '1' and s_reg = "0000000000" then
						state(2)	<= '1';
						state(1) <= '1';
						state(0) <= '1';
					end if;
				
				when "111" =>
						state(0) <= '0';
				
				when "110" =>
					if btn = '0' and s_reg = "1111111111" then
						state(1)	<= '0';
					end if;
				
				when "100" =>
					if btn = '1' and s_reg = "0000000000" then
						state(2) <= '0';
						state(1) <= '1';
						state(0) <= '1';
					end if;
				
				when "011" =>
						state(0) <= '0';
						
				when "010" =>		
					if btn = '0' and s_reg = "1111111111" then
						state(1)	<= '0';
					end if;
					 
				when others =>
						state(2) <= '0';
						state(1) <= '0';
						state(0)	<= '0';
					
			end case;
		end if;
	end process;

toggle 	<= state(2);
debounce <= state(1);
pulse		<= state(0);

end Behavioral;

