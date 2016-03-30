--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : top_layer.vhf
-- /___/   /\     Timestamp : 03/23/2016 18:30:51
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "C:/Users/Kristian/Documents/Github/Repositories/4. Semester/Mit/DIG/Projects/Portefolje_1/top_layer.vhf" -w "C:/Users/Kristian/Documents/Github/Repositories/4. Semester/Mit/DIG/Projects/Portefolje_1/top_layer.sch"
--Design Name: top_layer
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

entity top_layer is
   port ( clear_time : in    std_logic; 
          clk        : in    std_logic; 
          lap        : in    std_logic; 
          start      : in    std_logic; 
          An         : out   std_logic_vector (3 downto 0); 
          LED        : out   std_logic_vector (7 downto 0); 
          segm       : out   std_logic_vector (7 downto 0));
end top_layer;

architecture BEHAVIORAL of top_layer is
   signal co_0       : std_logic;
   signal co_1       : std_logic;
   signal lap_time   : std_logic;
   signal start_stop : std_logic;
   signal teenth     : std_logic_vector (7 downto 0);
   signal XLXN_136   : std_logic;
   signal XLXN_175   : std_logic_vector (3 downto 0);
   signal XLXN_178   : std_logic_vector (7 downto 0);
   signal XLXN_179   : std_logic_vector (7 downto 0);
   signal XLXN_180   : std_logic_vector (15 downto 0);
   signal XLXN_197   : std_logic_vector (3 downto 0);
   signal XLXN_228   : std_logic;
   component clk_1khz
      port ( clk      : in    std_logic; 
             clk_1khz : out   std_logic);
   end component;
   
   component mux_display
      port ( clk      : in    std_logic; 
             bcd      : in    std_logic_vector (15 downto 0); 
             dp       : in    std_logic_vector (3 downto 0); 
             segments : out   std_logic_vector (7 downto 0); 
             an       : out   std_logic_vector (3 downto 0));
   end component;
   
   component lap_time_latch
      port ( latch   : in    std_logic; 
             bcd1_10 : in    std_logic_vector (7 downto 0); 
             bcd_sec : in    std_logic_vector (7 downto 0); 
             bcd_min : in    std_logic_vector (7 downto 0); 
             leds    : out   std_logic_vector (7 downto 0); 
             bcd     : out   std_logic_vector (15 downto 0));
   end component;
   
   component blinker
      port ( start_stop : in    std_logic; 
             lap_time   : in    std_logic; 
             half_sec   : in    std_logic; 
             dp         : out   std_logic_vector (3 downto 0));
   end component;
   
   component teenth_sec
      port ( bcd : in    std_logic_vector (3 downto 0); 
             led : out   std_logic_vector (7 downto 0));
   end component;
   
   component toggle_button
      port ( clk      : in    std_logic; 
             btn      : in    std_logic; 
             toggle   : out   std_logic; 
             debounce : out   std_logic; 
             pulse    : out   std_logic);
   end component;
   
   component cnt59
      port ( clk : in    std_logic; 
             clr : in    std_logic; 
             en  : in    std_logic; 
             co  : out   std_logic; 
             bcd : out   std_logic_vector (7 downto 0));
   end component;
   
   component cnt999
      port ( clk : in    std_logic; 
             clr : in    std_logic; 
             en  : in    std_logic; 
             co  : out   std_logic; 
             bcd : out   std_logic_vector (3 downto 0));
   end component;
   
begin
   XLXI_37 : clk_1khz
      port map (clk=>clk,
                clk_1khz=>XLXN_136);
   
   XLXI_50 : mux_display
      port map (bcd(15 downto 0)=>XLXN_180(15 downto 0),
                clk=>XLXN_136,
                dp(3 downto 0)=>XLXN_197(3 downto 0),
                an(3 downto 0)=>An(3 downto 0),
                segments(7 downto 0)=>segm(7 downto 0));
   
   XLXI_52 : lap_time_latch
      port map (bcd_min(7 downto 0)=>XLXN_179(7 downto 0),
                bcd_sec(7 downto 0)=>XLXN_178(7 downto 0),
                bcd1_10(7 downto 0)=>teenth(7 downto 0),
                latch=>lap_time,
                bcd(15 downto 0)=>XLXN_180(15 downto 0),
                leds(7 downto 0)=>LED(7 downto 0));
   
   XLXI_53 : blinker
      port map (half_sec=>teenth(4),
                lap_time=>lap_time,
                start_stop=>start_stop,
                dp(3 downto 0)=>XLXN_197(3 downto 0));
   
   XLXI_65 : teenth_sec
      port map (bcd(3 downto 0)=>XLXN_175(3 downto 0),
                led(7 downto 0)=>teenth(7 downto 0));
   
   XLXI_69 : toggle_button
      port map (btn=>start,
                clk=>XLXN_136,
                debounce=>open,
                pulse=>open,
                toggle=>start_stop);
   
   XLXI_70 : toggle_button
      port map (btn=>lap,
                clk=>XLXN_136,
                debounce=>open,
                pulse=>open,
                toggle=>lap_time);
   
   XLXI_71 : toggle_button
      port map (btn=>clear_time,
                clk=>XLXN_136,
                debounce=>open,
                pulse=>XLXN_228,
                toggle=>open);
   
   XLXI_72 : cnt59
      port map (clk=>XLXN_136,
                clr=>XLXN_228,
                en=>co_1,
                bcd(7 downto 0)=>XLXN_179(7 downto 0),
                co=>open);
   
   XLXI_73 : cnt59
      port map (clk=>XLXN_136,
                clr=>XLXN_228,
                en=>co_0,
                bcd(7 downto 0)=>XLXN_178(7 downto 0),
                co=>co_1);
   
   XLXI_74 : cnt999
      port map (clk=>XLXN_136,
                clr=>XLXN_228,
                en=>start_stop,
                bcd(3 downto 0)=>XLXN_175(3 downto 0),
                co=>co_0);
   
end BEHAVIORAL;


