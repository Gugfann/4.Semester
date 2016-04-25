<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="betty" />
        <signal name="seg(7:0)" />
        <signal name="An(3:0)" />
        <signal name="start" />
        <signal name="XLXN_27(3:0)" />
        <signal name="CLK" />
        <signal name="LED(7:0)" />
        <signal name="XLXN_69" />
        <signal name="XLXN_75" />
        <signal name="reset_game" />
        <signal name="highscore" />
        <signal name="res1" />
        <signal name="XLXN_85" />
        <signal name="XLXN_86(15:0)" />
        <signal name="XLXN_87(15:0)" />
        <signal name="XLXN_89" />
        <signal name="XLXN_90" />
        <signal name="show_hs" />
        <signal name="XLXN_96" />
        <signal name="XLXN_97" />
        <signal name="reset_hs" />
        <signal name="res2" />
        <signal name="XLXN_104" />
        <signal name="XLXN_105(31:0)" />
        <signal name="XLXN_106" />
        <signal name="clear" />
        <signal name="XLXN_109" />
        <signal name="XLXN_110" />
        <signal name="XLXN_112(12:0)" />
        <signal name="XLXN_113" />
        <signal name="XLXN_115(12:0)" />
        <signal name="XLXN_116" />
        <signal name="XLXN_117" />
        <signal name="XLXN_118" />
        <port polarity="Output" name="seg(7:0)" />
        <port polarity="Output" name="An(3:0)" />
        <port polarity="Input" name="start" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="LED(7:0)" />
        <port polarity="Input" name="reset_game" />
        <port polarity="Input" name="highscore" />
        <port polarity="Input" name="reset_hs" />
        <blockdef name="toggle_button">
            <timestamp>2016-4-23T12:23:52</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="mux_display">
            <timestamp>2016-4-23T12:24:2</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="clk_1khz">
            <timestamp>2016-4-23T12:24:46</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="bcd_cnt_4x1">
            <timestamp>2016-4-23T15:25:33</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="reaction_tester">
            <timestamp>2016-4-24T14:5:41</timestamp>
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-192" height="320" />
        </blockdef>
        <blockdef name="hs_latch">
            <timestamp>2016-4-25T18:54:21</timestamp>
            <rect width="288" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="352" y="-300" height="24" />
            <line x2="416" y1="-288" y2="-288" x1="352" />
        </blockdef>
        <blockdef name="randomizer">
            <timestamp>2016-4-25T19:21:9</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="mux_display" name="XLXI_4">
            <blockpin signalname="betty" name="clk" />
            <blockpin signalname="XLXN_87(15:0)" name="bcd(15:0)" />
            <blockpin signalname="XLXN_27(3:0)" name="dp(3:0)" />
            <blockpin signalname="seg(7:0)" name="segments(7:0)" />
            <blockpin signalname="An(3:0)" name="an(3:0)" />
        </block>
        <block symbolname="clk_1khz" name="XLXI_5">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="betty" name="clk_1khz" />
        </block>
        <block symbolname="toggle_button" name="XLXI_1">
            <blockpin signalname="betty" name="clk" />
            <blockpin signalname="start" name="btn" />
            <blockpin name="toggle" />
            <blockpin name="debounce" />
            <blockpin signalname="XLXN_69" name="pulse" />
        </block>
        <block symbolname="toggle_button" name="XLXI_2">
            <blockpin signalname="betty" name="clk" />
            <blockpin signalname="reset_game" name="btn" />
            <blockpin name="toggle" />
            <blockpin signalname="res1" name="debounce" />
            <blockpin name="pulse" />
        </block>
        <block symbolname="toggle_button" name="XLXI_3">
            <blockpin signalname="betty" name="clk" />
            <blockpin signalname="highscore" name="btn" />
            <blockpin name="toggle" />
            <blockpin signalname="show_hs" name="debounce" />
            <blockpin name="pulse" />
        </block>
        <block symbolname="constant" name="XLXI_13">
            <attr value="8" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_27(3:0)" name="O" />
        </block>
        <block symbolname="bcd_cnt_4x1" name="XLXI_19">
            <blockpin signalname="clear" name="clr" />
            <blockpin signalname="betty" name="clk" />
            <blockpin signalname="XLXN_89" name="enable" />
            <blockpin signalname="XLXN_86(15:0)" name="bcd(15:0)" />
        </block>
        <block symbolname="reaction_tester" name="XLXI_24">
            <blockpin signalname="betty" name="clk" />
            <blockpin signalname="XLXN_69" name="start" />
            <blockpin signalname="XLXN_112(12:0)" name="rand_no(12:0)" />
            <blockpin signalname="clear" name="reset_timer" />
            <blockpin signalname="XLXN_89" name="start_timer" />
            <blockpin signalname="LED(7:0)" name="LED(7:0)" />
            <blockpin signalname="res1" name="reset" />
        </block>
        <block symbolname="hs_latch" name="XLXI_25">
            <blockpin signalname="betty" name="clk" />
            <blockpin signalname="show_hs" name="show_hs" />
            <blockpin signalname="res2" name="reset" />
            <blockpin signalname="XLXN_89" name="enable" />
            <blockpin signalname="XLXN_86(15:0)" name="bcd_in(15:0)" />
            <blockpin signalname="XLXN_87(15:0)" name="bcd_out(15:0)" />
        </block>
        <block symbolname="toggle_button" name="XLXI_26">
            <blockpin signalname="betty" name="clk" />
            <blockpin signalname="reset_hs" name="btn" />
            <blockpin name="toggle" />
            <blockpin name="debounce" />
            <blockpin signalname="res2" name="pulse" />
        </block>
        <block symbolname="randomizer" name="XLXI_28">
            <blockpin signalname="betty" name="clk" />
            <blockpin signalname="XLXN_112(12:0)" name="rand_num(12:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="592" y="640" name="XLXI_1" orien="R0">
        </instance>
        <instance x="592" y="960" name="XLXI_2" orien="R0">
        </instance>
        <instance x="592" y="1280" name="XLXI_3" orien="R0">
        </instance>
        <branch name="seg(7:0)">
            <wire x2="3184" y1="320" y2="320" x1="2976" />
        </branch>
        <branch name="An(3:0)">
            <wire x2="3184" y1="448" y2="448" x1="2976" />
        </branch>
        <iomarker fontsize="28" x="3184" y="320" name="seg(7:0)" orien="R0" />
        <iomarker fontsize="28" x="3184" y="448" name="An(3:0)" orien="R0" />
        <branch name="start">
            <wire x2="592" y1="608" y2="608" x1="352" />
        </branch>
        <iomarker fontsize="28" x="352" y="608" name="start" orien="R180" />
        <branch name="XLXN_27(3:0)">
            <wire x2="2592" y1="448" y2="448" x1="2512" />
        </branch>
        <instance x="2592" y="480" name="XLXI_4" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="576" y1="160" y2="160" x1="352" />
            <wire x2="592" y1="160" y2="160" x1="576" />
        </branch>
        <branch name="betty">
            <wire x2="480" y1="320" y2="480" x1="480" />
            <wire x2="592" y1="480" y2="480" x1="480" />
            <wire x2="480" y1="480" y2="800" x1="480" />
            <wire x2="592" y1="800" y2="800" x1="480" />
            <wire x2="480" y1="800" y2="1120" x1="480" />
            <wire x2="592" y1="1120" y2="1120" x1="480" />
            <wire x2="480" y1="1120" y2="1440" x1="480" />
            <wire x2="592" y1="1440" y2="1440" x1="480" />
            <wire x2="480" y1="1440" y2="1840" x1="480" />
            <wire x2="592" y1="1840" y2="1840" x1="480" />
            <wire x2="1280" y1="320" y2="320" x1="480" />
            <wire x2="1728" y1="320" y2="320" x1="1280" />
            <wire x2="2592" y1="320" y2="320" x1="1728" />
            <wire x2="1728" y1="320" y2="736" x1="1728" />
            <wire x2="2096" y1="736" y2="736" x1="1728" />
            <wire x2="1280" y1="320" y2="1056" x1="1280" />
            <wire x2="1520" y1="1056" y2="1056" x1="1280" />
            <wire x2="1280" y1="1056" y2="1408" x1="1280" />
            <wire x2="1520" y1="1408" y2="1408" x1="1280" />
            <wire x2="1280" y1="160" y2="160" x1="976" />
            <wire x2="1280" y1="160" y2="320" x1="1280" />
        </branch>
        <branch name="LED(7:0)">
            <wire x2="2240" y1="1536" y2="1536" x1="1904" />
        </branch>
        <branch name="reset_game">
            <wire x2="592" y1="928" y2="928" x1="352" />
        </branch>
        <branch name="highscore">
            <wire x2="592" y1="1248" y2="1248" x1="352" />
        </branch>
        <iomarker fontsize="28" x="352" y="928" name="reset_game" orien="R180" />
        <iomarker fontsize="28" x="352" y="1248" name="highscore" orien="R180" />
        <branch name="res1">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="864" type="branch" />
            <wire x2="1040" y1="864" y2="864" x1="976" />
        </branch>
        <branch name="res1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="1664" type="branch" />
            <wire x2="1520" y1="1664" y2="1664" x1="1440" />
        </branch>
        <branch name="XLXN_86(15:0)">
            <wire x2="2096" y1="992" y2="992" x1="1904" />
        </branch>
        <branch name="XLXN_87(15:0)">
            <wire x2="2560" y1="736" y2="736" x1="2512" />
            <wire x2="2560" y1="384" y2="736" x1="2560" />
            <wire x2="2592" y1="384" y2="384" x1="2560" />
        </branch>
        <branch name="show_hs">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="800" type="branch" />
            <wire x2="2096" y1="800" y2="800" x1="2000" />
        </branch>
        <instance x="1520" y="1152" name="XLXI_19" orien="R0">
        </instance>
        <branch name="res2">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="864" type="branch" />
            <wire x2="2096" y1="864" y2="864" x1="2000" />
        </branch>
        <instance x="592" y="1600" name="XLXI_26" orien="R0">
        </instance>
        <branch name="reset_hs">
            <wire x2="592" y1="1568" y2="1568" x1="352" />
        </branch>
        <branch name="show_hs">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="1184" type="branch" />
            <wire x2="1040" y1="1184" y2="1184" x1="976" />
        </branch>
        <branch name="res2">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="1568" type="branch" />
            <wire x2="1040" y1="1568" y2="1568" x1="976" />
        </branch>
        <iomarker fontsize="28" x="352" y="1568" name="reset_hs" orien="R180" />
        <branch name="clear">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="992" type="branch" />
            <wire x2="1520" y1="992" y2="992" x1="1472" />
        </branch>
        <branch name="clear">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="1600" type="branch" />
            <wire x2="1984" y1="1600" y2="1600" x1="1904" />
        </branch>
        <instance x="2096" y="1024" name="XLXI_25" orien="R0">
        </instance>
        <branch name="XLXN_89">
            <wire x2="1440" y1="1120" y2="1200" x1="1440" />
            <wire x2="2000" y1="1200" y2="1200" x1="1440" />
            <wire x2="2000" y1="1200" y2="1408" x1="2000" />
            <wire x2="1520" y1="1120" y2="1120" x1="1440" />
            <wire x2="2000" y1="1408" y2="1408" x1="1904" />
            <wire x2="2000" y1="928" y2="1200" x1="2000" />
            <wire x2="2096" y1="928" y2="928" x1="2000" />
        </branch>
        <instance x="2368" y="416" name="XLXI_13" orien="R0">
        </instance>
        <branch name="XLXN_112(12:0)">
            <wire x2="1200" y1="1840" y2="1840" x1="976" />
            <wire x2="1200" y1="1536" y2="1840" x1="1200" />
            <wire x2="1520" y1="1536" y2="1536" x1="1200" />
        </branch>
        <instance x="1520" y="1568" name="XLXI_24" orien="R0">
        </instance>
        <branch name="XLXN_69">
            <wire x2="1200" y1="608" y2="608" x1="976" />
            <wire x2="1200" y1="608" y2="1472" x1="1200" />
            <wire x2="1520" y1="1472" y2="1472" x1="1200" />
        </branch>
        <iomarker fontsize="28" x="2240" y="1536" name="LED(7:0)" orien="R0" />
        <instance x="592" y="1872" name="XLXI_28" orien="R0">
        </instance>
        <instance x="592" y="192" name="XLXI_5" orien="R0">
        </instance>
        <iomarker fontsize="28" x="352" y="160" name="CLK" orien="R180" />
    </sheet>
</drawing>