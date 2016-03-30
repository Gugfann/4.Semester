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

entity ALU is
		GENERIC (N: INTEGER := 8);
		Port ( a : in  STD_LOGIC_VECTOR (N-1 downto 0);
				 b : in  STD_LOGIC_VECTOR (N-1 downto 0);
				 cin : in  STD_LOGIC;
				 opcode : in  STD_LOGIC_VECTOR (3 downto 0);
				 y : out  STD_LOGIC_VECTOR (N-1 downto 0));
end ALU;

architecture Behavioral of ALU is

signal logic_y: std_logic_vector (N-1 downto 0);
signal arith_y: signed (N-1 downto 0);
signal a_sig: signed (N-1 downto 0);
signal b_sig: signed (N-1 downto 0);
signal cin_int: integer range 0 to 1;

begin

y <= logic_y when opcode(3) = '0' else std_logic_vector(arith_y);
	  
with opcode(2 downto 0) select
	logic_y <= 	not a 		when "000",
					not b 		when "001",
					a and b 		when "010",
					a or b		when "011",
					a nand b 	when "100",
					a nor b		when "101",
					a xor b		when "110",
					a xnor b 	when others;
			
a_sig <= signed(a);
b_sig <= signed(b);
cin_int <= 1 when cin = '1' else 0;
			
with opcode (2 downto 0) select
	arith_y <=	a_sig							when "000",
					b_sig							when "001",
					a_sig + 1					when "010",
					b_sig + 1					when "011",
					a_sig - 1					when "100",
					b_sig - 1 					when "101",
					a_sig + b_sig				when "110",
					a_sig + b_sig + cin_int	when others;


end Behavioral;

