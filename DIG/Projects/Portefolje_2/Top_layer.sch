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
        <signal name="rand(31:0)" />
        <signal name="XLXN_56(15:0)" />
        <signal name="CLK" />
        <signal name="rand(24:12)" />
        <signal name="LED(7:0)" />
        <signal name="XLXN_69" />
        <signal name="XLXN_75" />
        <signal name="XLXN_76" />
        <signal name="reset" />
        <signal name="highscore" />
        <signal name="res" />
        <port polarity="Output" name="seg(7:0)" />
        <port polarity="Output" name="An(3:0)" />
        <port polarity="Input" name="start" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="LED(7:0)" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="highscore" />
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
        <blockdef name="randomizer">
            <timestamp>2016-4-23T19:25:54</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
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
        <block symbolname="mux_display" name="XLXI_4">
            <blockpin signalname="betty" name="clk" />
            <blockpin signalname="XLXN_56(15:0)" name="bcd(15:0)" />
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
            <blockpin signalname="reset" name="btn" />
            <blockpin name="toggle" />
            <blockpin signalname="res" name="debounce" />
            <blockpin name="pulse" />
        </block>
        <block symbolname="toggle_button" name="XLXI_3">
            <blockpin signalname="betty" name="clk" />
            <blockpin signalname="highscore" name="btn" />
            <blockpin name="toggle" />
            <blockpin name="debounce" />
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
        <block symbolname="randomizer" name="XLXI_16">
            <blockpin signalname="betty" name="clk" />
            <blockpin signalname="rand(31:0)" name="rand_num(31:0)" />
        </block>
        <block symbolname="bcd_cnt_4x1" name="XLXI_19">
            <blockpin signalname="XLXN_76" name="clr" />
            <blockpin signalname="betty" name="clk" />
            <blockpin signalname="XLXN_75" name="enable" />
            <blockpin signalname="XLXN_56(15:0)" name="bcd(15:0)" />
        </block>
        <block symbolname="reaction_tester" name="XLXI_24">
            <blockpin signalname="betty" name="clk" />
            <blockpin signalname="XLXN_69" name="start" />
            <blockpin signalname="rand(24:12)" name="rand_no(12:0)" />
            <blockpin signalname="XLXN_76" name="reset_timer" />
            <blockpin signalname="XLXN_75" name="start_timer" />
            <blockpin signalname="LED(7:0)" name="LED(7:0)" />
            <blockpin signalname="res" name="reset" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="592" y="640" name="XLXI_1" orien="R0">
        </instance>
        <instance x="592" y="960" name="XLXI_2" orien="R0">
        </instance>
        <instance x="592" y="1280" name="XLXI_3" orien="R0">
        </instance>
        <instance x="592" y="240" name="XLXI_5" orien="R0">
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
        <instance x="2368" y="416" name="XLXI_13" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="592" y1="208" y2="208" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="208" name="CLK" orien="R180" />
        <branch name="XLXN_56(15:0)">
            <wire x2="2176" y1="960" y2="960" x1="2048" />
            <wire x2="2176" y1="384" y2="960" x1="2176" />
            <wire x2="2592" y1="384" y2="384" x1="2176" />
        </branch>
        <instance x="288" y="1616" name="XLXI_16" orien="R0">
        </instance>
        <branch name="rand(31:0)">
            <wire x2="976" y1="1584" y2="1584" x1="672" />
            <wire x2="976" y1="1488" y2="1536" x1="976" />
            <wire x2="976" y1="1536" y2="1584" x1="976" />
        </branch>
        <bustap x2="1072" y1="1536" y2="1536" x1="976" />
        <branch name="rand(24:12)">
            <wire x2="1648" y1="1536" y2="1536" x1="1072" />
        </branch>
        <branch name="betty">
            <wire x2="208" y1="1376" y2="1584" x1="208" />
            <wire x2="288" y1="1584" y2="1584" x1="208" />
            <wire x2="480" y1="1376" y2="1376" x1="208" />
            <wire x2="480" y1="320" y2="480" x1="480" />
            <wire x2="592" y1="480" y2="480" x1="480" />
            <wire x2="480" y1="480" y2="800" x1="480" />
            <wire x2="592" y1="800" y2="800" x1="480" />
            <wire x2="480" y1="800" y2="1120" x1="480" />
            <wire x2="592" y1="1120" y2="1120" x1="480" />
            <wire x2="480" y1="1120" y2="1376" x1="480" />
            <wire x2="1280" y1="320" y2="320" x1="480" />
            <wire x2="1728" y1="320" y2="320" x1="1280" />
            <wire x2="2592" y1="320" y2="320" x1="1728" />
            <wire x2="1280" y1="320" y2="1024" x1="1280" />
            <wire x2="1280" y1="1024" y2="1408" x1="1280" />
            <wire x2="1648" y1="1408" y2="1408" x1="1280" />
            <wire x2="1664" y1="1024" y2="1024" x1="1280" />
            <wire x2="1728" y1="208" y2="208" x1="976" />
            <wire x2="1728" y1="208" y2="320" x1="1728" />
        </branch>
        <branch name="LED(7:0)">
            <wire x2="3056" y1="1536" y2="1536" x1="2032" />
        </branch>
        <iomarker fontsize="28" x="3056" y="1536" name="LED(7:0)" orien="R0" />
        <branch name="XLXN_69">
            <wire x2="1200" y1="608" y2="608" x1="976" />
            <wire x2="1200" y1="608" y2="1472" x1="1200" />
            <wire x2="1648" y1="1472" y2="1472" x1="1200" />
        </branch>
        <instance x="1664" y="1120" name="XLXI_19" orien="R0">
        </instance>
        <branch name="XLXN_75">
            <wire x2="1664" y1="1088" y2="1088" x1="1584" />
            <wire x2="1584" y1="1088" y2="1200" x1="1584" />
            <wire x2="2096" y1="1200" y2="1200" x1="1584" />
            <wire x2="2096" y1="1200" y2="1408" x1="2096" />
            <wire x2="2096" y1="1408" y2="1408" x1="2032" />
        </branch>
        <branch name="XLXN_76">
            <wire x2="1584" y1="800" y2="960" x1="1584" />
            <wire x2="1664" y1="960" y2="960" x1="1584" />
            <wire x2="2480" y1="800" y2="800" x1="1584" />
            <wire x2="2480" y1="800" y2="1600" x1="2480" />
            <wire x2="2480" y1="1600" y2="1600" x1="2032" />
        </branch>
        <branch name="reset">
            <wire x2="592" y1="928" y2="928" x1="352" />
        </branch>
        <branch name="highscore">
            <wire x2="592" y1="1248" y2="1248" x1="352" />
        </branch>
        <iomarker fontsize="28" x="352" y="928" name="reset" orien="R180" />
        <iomarker fontsize="28" x="352" y="1248" name="highscore" orien="R180" />
        <instance x="1648" y="1568" name="XLXI_24" orien="R0">
        </instance>
        <branch name="res">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="864" type="branch" />
            <wire x2="1040" y1="864" y2="864" x1="976" />
        </branch>
        <branch name="res">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="1664" type="branch" />
            <wire x2="1648" y1="1664" y2="1664" x1="1600" />
        </branch>
    </sheet>
</drawing>