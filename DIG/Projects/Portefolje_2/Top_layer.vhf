--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Top_layer.vhf
-- /___/   /\     Timestamp : 04/24/2016 16:08:38
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "C:/Users/Kristian/Documents/Github/Repositories/4. Semester/Mit/DIG/Projects/Portefolje_2/Top_layer.vhf" -w "C:/Users/Kristian/Documents/Github/Repositories/4. Semester/Mit/DIG/Projects/Portefolje_2/Top_layer.sch"
--Design Name: Top_layer
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity bcd_cnt_4x1_MUSER_Top_layer is
   port ( clk    : in    std_logic; 
          clr    : in    std_logic; 
          enable : in    std_logic; 
          bcd    : out   std_logic_vector (15 downto 0));
end bcd_cnt_4x1_MUSER_Top_layer;

architecture BEHAVIORAL of bcd_cnt_4x1_MUSER_Top_layer is
   signal XLXN_1 : std_logic;
   signal XLXN_2 : std_logic;
   signal XLXN_3 : std_logic;
   component cnt_bcd
      port ( clk : in    std_logic; 
             clr : in    std_logic; 
             en  : in    std_logic; 
             co  : out   std_logic; 
             bcd : out   std_logic_vector (3 downto 0));
   end component;
   
begin
   XLXI_1 : cnt_bcd
      port map (clk=>clk,
                clr=>clr,
                en=>enable,
                bcd(3 downto 0)=>bcd(3 downto 0),
                co=>XLXN_3);
   
   XLXI_2 : cnt_bcd
      port map (clk=>clk,
                clr=>clr,
                en=>XLXN_3,
                bcd(3 downto 0)=>bcd(7 downto 4),
                co=>XLXN_2);
   
   XLXI_3 : cnt_bcd
      port map (clk=>clk,
                clr=>clr,
                en=>XLXN_2,
                bcd(3 downto 0)=>bcd(11 downto 8),
                co=>XLXN_1);
   
   XLXI_4 : cnt_bcd
      port map (clk=>clk,
                clr=>clr,
                en=>XLXN_1,
                bcd(3 downto 0)=>bcd(15 downto 12),
                co=>open);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Top_layer is
   port ( CLK       : in    std_logic; 
          highscore : in    std_logic; 
          reset     : in    std_logic; 
          start     : in    std_logic; 
          An        : out   std_logic_vector (3 downto 0); 
          LED       : out   std_logic_vector (7 downto 0); 
          seg       : out   std_logic_vector (7 downto 0));
end Top_layer;

architecture BEHAVIORAL of Top_layer is
   signal betty     : std_logic;
   signal rand      : std_logic_vector (31 downto 0);
   signal res       : std_logic;
   signal XLXN_27   : std_logic_vector (3 downto 0);
   signal XLXN_56   : std_logic_vector (15 downto 0);
   signal XLXN_69   : std_logic;
   signal XLXN_75   : std_logic;
   signal XLXN_76   : std_logic;
   component toggle_button
      port ( clk      : in    std_logic; 
             btn      : in    std_logic; 
             toggle   : out   std_logic; 
             debounce : out   std_logic; 
             pulse    : out   std_logic);
   end component;
   
   component mux_display
      port ( clk      : in    std_logic; 
             bcd      : in    std_logic_vector (15 downto 0); 
             dp       : in    std_logic_vector (3 downto 0); 
             segments : out   std_logic_vector (7 downto 0); 
             an       : out   std_logic_vector (3 downto 0));
   end component;
   
   component clk_1khz
      port ( clk      : in    std_logic; 
             clk_1khz : out   std_logic);
   end component;
   
   component randomizer
      port ( clk      : in    std_logic; 
             rand_num : out   std_logic_vector (31 downto 0));
   end component;
   
   component bcd_cnt_4x1_MUSER_Top_layer
      port ( clr    : in    std_logic; 
             clk    : in    std_logic; 
             enable : in    std_logic; 
             bcd    : out   std_logic_vector (15 downto 0));
   end component;
   
   component reaction_tester
      port ( clk         : in    std_logic; 
             start       : in    std_logic; 
             rand_no     : in    std_logic_vector (12 downto 0); 
             reset_timer : out   std_logic; 
             start_timer : out   std_logic; 
             LED         : out   std_logic_vector (7 downto 0); 
             reset       : in    std_logic);
   end component;
   
begin
   XLXN_27(3 downto 0) <= x"8";
   XLXI_1 : toggle_button
      port map (btn=>start,
                clk=>betty,
                debounce=>open,
                pulse=>XLXN_69,
                toggle=>open);
   
   XLXI_2 : toggle_button
      port map (btn=>reset,
                clk=>betty,
                debounce=>res,
                pulse=>open,
                toggle=>open);
   
   XLXI_3 : toggle_button
      port map (btn=>highscore,
                clk=>betty,
                debounce=>open,
                pulse=>open,
                toggle=>open);
   
   XLXI_4 : mux_display
      port map (bcd(15 downto 0)=>XLXN_56(15 downto 0),
                clk=>betty,
                dp(3 downto 0)=>XLXN_27(3 downto 0),
                an(3 downto 0)=>An(3 downto 0),
                segments(7 downto 0)=>seg(7 downto 0));
   
   XLXI_5 : clk_1khz
      port map (clk=>CLK,
                clk_1khz=>betty);
   
   XLXI_16 : randomizer
      port map (clk=>betty,
                rand_num(31 downto 0)=>rand(31 downto 0));
   
   XLXI_19 : bcd_cnt_4x1_MUSER_Top_layer
      port map (clk=>betty,
                clr=>XLXN_76,
                enable=>XLXN_75,
                bcd(15 downto 0)=>XLXN_56(15 downto 0));
   
   XLXI_24 : reaction_tester
      port map (clk=>betty,
                rand_no(12 downto 0)=>rand(24 downto 12),
                reset=>res,
                start=>XLXN_69,
                LED(7 downto 0)=>LED(7 downto 0),
                reset_timer=>XLXN_76,
                start_timer=>XLXN_75);
   
end BEHAVIORAL;


