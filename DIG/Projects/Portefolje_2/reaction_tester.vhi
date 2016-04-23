
-- VHDL Instantiation Created from source file reaction_tester.vhd -- 23:10:11 04/23/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT reaction_tester
	PORT(
		clk : IN std_logic;
		rand_no : IN std_logic_vector(12 downto 0);
		start : IN std_logic;          
		LED : OUT std_logic_vector(7 downto 0);
		reset_timer : OUT std_logic;
		start_timer : OUT std_logic
		);
	END COMPONENT;

	Inst_reaction_tester: reaction_tester PORT MAP(
		clk => ,
		rand_no => ,
		start => ,
		LED => ,
		reset_timer => ,
		start_timer => 
	);


