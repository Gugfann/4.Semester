--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : top_layer_drc.vhf
-- /___/   /\     Timestamp : 03/22/2016 22:37:06
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Kristian\Programmer\Xilinx\14.7\ISE_DS\ISE\bin\nt64\unwrapped\sch2hdl.exe -intstyle ise -family spartan3e -flat -suppress -vhdl top_layer_drc.vhf -w "C:/Users/Kristian/Documents/Github/Repositories/4. Semester/Mit/DIG/Projects/Portefolje_1/top_layer.sch"
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
   port ( btn  : in    std_logic_vector (3 downto 0); 
          clk  : in    std_logic; 
          An   : out   std_logic_vector (3 downto 0); 
          LED  : out   std_logic_vector (7 downto 0); 
          segm : out   std_logic_vector (7 downto 0));
end top_layer;

architecture BEHAVIORAL of top_layer is
   signal bcd_1_10   : std_logic_vector (7 downto 0);
   signal clear      : std_logic;
   signal lap        : std_logic;
   signal start_stop : std_logic;
   signal XLXN_83    : std_logic;
   signal XLXN_92    : std_logic_vector (3 downto 0);
   signal XLXN_93    : std_logic;
   signal XLXN_106   : std_logic_vector (7 downto 0);
   signal XLXN_107   : std_logic_vector (7 downto 0);
   signal XLXN_108   : std_logic_vector (15 downto 0);
   signal XLXN_109   : std_logic;
   component clk_1khz
      port ( clk      : in    std_logic; 
             clk_1khz : out   std_logic);
   end component;
   
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
   
   component cnt999
      port ( clk : in    std_logic; 
             clr : in    std_logic; 
             en  : in    std_logic; 
             co  : out   std_logic; 
             bcd : out   std_logic_vector (3 downto 0));
   end component;
   
   component cnt59
      port ( clk : in    std_logic; 
             clr : in    std_logic; 
             en  : in    std_logic; 
             co  : out   std_logic; 
             bcd : out   std_logic_vector (7 downto 0));
   end component;
   
   component teenth_sec
      port ( bcd : in    std_logic_vector (3 downto 0); 
             lcd : out   std_logic_vector (7 downto 0));
   end component;
   
   component lap_time_latch
      port ( latch   : in    std_logic; 
             bcd1_10 : in    std_logic_vector (7 downto 0); 
             bcd_sec : in    std_logic_vector (7 downto 0); 
             bcd_min : in    std_logic_vector (7 downto 0); 
             leds    : out   std_logic_vector (7 downto 0); 
             bcd     : out   std_logic_vector (15 downto 0));
   end component;
   
begin
   XLXI_3 : clk_1khz
      port map (clk=>clk,
                clk_1khz=>XLXN_109);
   
   XLXI_4 : toggle_button
      port map (btn=>btn(0),
                clk=>XLXN_109,
                debounce=>open,
                pulse=>open,
                toggle=>start_stop);
   
   XLXI_6 : mux_display
      port map (bcd(15 downto 0)=>XLXN_108(15 downto 0),
                clk=>XLXN_109,
                dp(3 downto 0)=>btn(3 downto 0),
                an(3 downto 0)=>An(3 downto 0),
                segments(7 downto 0)=>segm(7 downto 0));
   
   XLXI_7 : cnt999
      port map (clk=>XLXN_109,
                clr=>clear,
                en=>start_stop,
                bcd(3 downto 0)=>XLXN_92(3 downto 0),
                co=>XLXN_93);
   
   XLXI_23 : cnt59
      port map (clk=>XLXN_109,
                clr=>clear,
                en=>XLXN_93,
                bcd(7 downto 0)=>XLXN_107(7 downto 0),
                co=>XLXN_83);
   
   XLXI_24 : cnt59
      port map (clk=>XLXN_109,
                clr=>clear,
                en=>XLXN_83,
                bcd(7 downto 0)=>XLXN_106(7 downto 0),
                co=>open);
   
   XLXI_26 : teenth_sec
      port map (bcd(3 downto 0)=>XLXN_92(3 downto 0),
                lcd(7 downto 0)=>bcd_1_10(7 downto 0));
   
   XLXI_29 : toggle_button
      port map (btn=>btn(1),
                clk=>XLXN_109,
                debounce=>open,
                pulse=>open,
                toggle=>lap);
   
   XLXI_30 : lap_time_latch
      port map (bcd_min(7 downto 0)=>XLXN_106(7 downto 0),
                bcd_sec(7 downto 0)=>XLXN_107(7 downto 0),
                bcd1_10(7 downto 0)=>bcd_1_10(7 downto 0),
                latch=>lap,
                bcd(15 downto 0)=>XLXN_108(15 downto 0),
                leds(7 downto 0)=>LED(7 downto 0));
   
   XLXI_31 : toggle_button
      port map (btn=>btn(2),
                clk=>XLXN_109,
                debounce=>open,
                pulse=>clear,
                toggle=>open);
   
end BEHAVIORAL;


