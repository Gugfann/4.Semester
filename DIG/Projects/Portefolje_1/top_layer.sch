<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_136" />
        <signal name="start" />
        <signal name="lap" />
        <signal name="clear_time" />
        <signal name="start_stop" />
        <signal name="lap_time" />
        <signal name="co_0" />
        <signal name="co_1" />
        <signal name="XLXN_175(3:0)" />
        <signal name="teenth(7:0)" />
        <signal name="XLXN_178(7:0)" />
        <signal name="XLXN_179(7:0)" />
        <signal name="XLXN_180(15:0)" />
        <signal name="LED(7:0)" />
        <signal name="segm(7:0)" />
        <signal name="An(3:0)" />
        <signal name="clk" />
        <signal name="teenth(4)" />
        <signal name="XLXN_197(3:0)" />
        <signal name="XLXN_206" />
        <signal name="XLXN_207" />
        <signal name="XLXN_209" />
        <signal name="XLXN_210" />
        <signal name="XLXN_212" />
        <signal name="XLXN_213" />
        <signal name="XLXN_216" />
        <signal name="XLXN_217" />
        <signal name="XLXN_220" />
        <signal name="XLXN_221" />
        <signal name="XLXN_223(3:0)" />
        <signal name="XLXN_224(3:0)" />
        <signal name="XLXN_225(3:0)" />
        <signal name="XLXN_226" />
        <signal name="XLXN_227" />
        <signal name="XLXN_228" />
        <port polarity="Input" name="start" />
        <port polarity="Input" name="lap" />
        <port polarity="Input" name="clear_time" />
        <port polarity="Output" name="LED(7:0)" />
        <port polarity="Output" name="segm(7:0)" />
        <port polarity="Output" name="An(3:0)" />
        <port polarity="Input" name="clk" />
        <blockdef name="clk_1khz">
            <timestamp>2016-3-22T22:16:53</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="mux_display">
            <timestamp>2016-3-22T22:17:21</timestamp>
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
        <blockdef name="lap_time_latch">
            <timestamp>2016-3-22T22:17:14</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="blinker">
            <timestamp>2016-3-22T20:35:26</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="teenth_sec">
            <timestamp>2016-3-23T17:8:44</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-64" height="128" />
        </blockdef>
        <blockdef name="toggle_button">
            <timestamp>2016-3-23T17:27:23</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="cnt59">
            <timestamp>2016-3-23T17:30:6</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="cnt999">
            <timestamp>2016-3-23T17:30:18</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="clk_1khz" name="XLXI_37">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_136" name="clk_1khz" />
        </block>
        <block symbolname="mux_display" name="XLXI_50">
            <blockpin signalname="XLXN_136" name="clk" />
            <blockpin signalname="XLXN_180(15:0)" name="bcd(15:0)" />
            <blockpin signalname="XLXN_197(3:0)" name="dp(3:0)" />
            <blockpin signalname="segm(7:0)" name="segments(7:0)" />
            <blockpin signalname="An(3:0)" name="an(3:0)" />
        </block>
        <block symbolname="lap_time_latch" name="XLXI_52">
            <blockpin signalname="lap_time" name="latch" />
            <blockpin signalname="teenth(7:0)" name="bcd1_10(7:0)" />
            <blockpin signalname="XLXN_178(7:0)" name="bcd_sec(7:0)" />
            <blockpin signalname="XLXN_179(7:0)" name="bcd_min(7:0)" />
            <blockpin signalname="LED(7:0)" name="leds(7:0)" />
            <blockpin signalname="XLXN_180(15:0)" name="bcd(15:0)" />
        </block>
        <block symbolname="blinker" name="XLXI_53">
            <blockpin signalname="start_stop" name="start_stop" />
            <blockpin signalname="lap_time" name="lap_time" />
            <blockpin signalname="teenth(4)" name="half_sec" />
            <blockpin signalname="XLXN_197(3:0)" name="dp(3:0)" />
        </block>
        <block symbolname="teenth_sec" name="XLXI_65">
            <blockpin signalname="XLXN_175(3:0)" name="bcd(3:0)" />
            <blockpin signalname="teenth(7:0)" name="led(7:0)" />
        </block>
        <block symbolname="toggle_button" name="XLXI_69">
            <blockpin signalname="XLXN_136" name="clk" />
            <blockpin signalname="start" name="btn" />
            <blockpin signalname="start_stop" name="toggle" />
            <blockpin name="debounce" />
            <blockpin name="pulse" />
        </block>
        <block symbolname="toggle_button" name="XLXI_70">
            <blockpin signalname="XLXN_136" name="clk" />
            <blockpin signalname="lap" name="btn" />
            <blockpin signalname="lap_time" name="toggle" />
            <blockpin name="debounce" />
            <blockpin name="pulse" />
        </block>
        <block symbolname="toggle_button" name="XLXI_71">
            <blockpin signalname="XLXN_136" name="clk" />
            <blockpin signalname="clear_time" name="btn" />
            <blockpin name="toggle" />
            <blockpin name="debounce" />
            <blockpin signalname="XLXN_228" name="pulse" />
        </block>
        <block symbolname="cnt59" name="XLXI_72">
            <blockpin signalname="XLXN_136" name="clk" />
            <blockpin signalname="XLXN_228" name="clr" />
            <blockpin signalname="co_1" name="en" />
            <blockpin name="co" />
            <blockpin signalname="XLXN_179(7:0)" name="bcd(7:0)" />
        </block>
        <block symbolname="cnt59" name="XLXI_73">
            <blockpin signalname="XLXN_136" name="clk" />
            <blockpin signalname="XLXN_228" name="clr" />
            <blockpin signalname="co_0" name="en" />
            <blockpin signalname="co_1" name="co" />
            <blockpin signalname="XLXN_178(7:0)" name="bcd(7:0)" />
        </block>
        <block symbolname="cnt999" name="XLXI_74">
            <blockpin signalname="XLXN_136" name="clk" />
            <blockpin signalname="XLXN_228" name="clr" />
            <blockpin signalname="start_stop" name="en" />
            <blockpin signalname="co_0" name="co" />
            <blockpin signalname="XLXN_175(3:0)" name="bcd(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="224" y="320" name="XLXI_37" orien="R0">
        </instance>
        <branch name="XLXN_136">
            <wire x2="640" y1="288" y2="288" x1="608" />
            <wire x2="640" y1="288" y2="480" x1="640" />
            <wire x2="640" y1="480" y2="800" x1="640" />
            <wire x2="640" y1="800" y2="1120" x1="640" />
            <wire x2="672" y1="1120" y2="1120" x1="640" />
            <wire x2="672" y1="800" y2="800" x1="640" />
            <wire x2="672" y1="480" y2="480" x1="640" />
            <wire x2="1248" y1="288" y2="288" x1="640" />
            <wire x2="1248" y1="288" y2="480" x1="1248" />
            <wire x2="1424" y1="480" y2="480" x1="1248" />
            <wire x2="1248" y1="480" y2="800" x1="1248" />
            <wire x2="1424" y1="800" y2="800" x1="1248" />
            <wire x2="1248" y1="800" y2="1120" x1="1248" />
            <wire x2="1424" y1="1120" y2="1120" x1="1248" />
            <wire x2="2848" y1="288" y2="288" x1="1248" />
            <wire x2="2848" y1="288" y2="672" x1="2848" />
            <wire x2="2864" y1="672" y2="672" x1="2848" />
        </branch>
        <branch name="start">
            <wire x2="672" y1="608" y2="608" x1="544" />
        </branch>
        <branch name="lap">
            <wire x2="672" y1="928" y2="928" x1="544" />
        </branch>
        <branch name="clear_time">
            <wire x2="672" y1="1248" y2="1248" x1="544" />
        </branch>
        <branch name="start_stop">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="480" type="branch" />
            <wire x2="1072" y1="480" y2="480" x1="1056" />
        </branch>
        <branch name="lap_time">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="800" type="branch" />
            <wire x2="1072" y1="800" y2="800" x1="1056" />
        </branch>
        <branch name="co_0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="928" type="branch" />
            <wire x2="1424" y1="928" y2="928" x1="1408" />
        </branch>
        <branch name="start_stop">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="608" type="branch" />
            <wire x2="1424" y1="608" y2="608" x1="1408" />
        </branch>
        <branch name="co_0">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="480" type="branch" />
            <wire x2="1824" y1="480" y2="480" x1="1808" />
        </branch>
        <branch name="co_1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="1248" type="branch" />
            <wire x2="1424" y1="1248" y2="1248" x1="1408" />
        </branch>
        <branch name="co_1">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="800" type="branch" />
            <wire x2="1824" y1="800" y2="800" x1="1808" />
        </branch>
        <branch name="XLXN_175(3:0)">
            <wire x2="1856" y1="608" y2="608" x1="1808" />
            <wire x2="1904" y1="544" y2="544" x1="1856" />
            <wire x2="1856" y1="544" y2="608" x1="1856" />
        </branch>
        <instance x="2400" y="768" name="XLXI_52" orien="R0">
        </instance>
        <instance x="2864" y="832" name="XLXI_50" orien="R0">
        </instance>
        <branch name="teenth(7:0)">
            <wire x2="2400" y1="608" y2="608" x1="2288" />
        </branch>
        <branch name="XLXN_178(7:0)">
            <wire x2="1968" y1="928" y2="928" x1="1808" />
            <wire x2="1968" y1="672" y2="928" x1="1968" />
            <wire x2="2400" y1="672" y2="672" x1="1968" />
        </branch>
        <branch name="XLXN_179(7:0)">
            <wire x2="2032" y1="1248" y2="1248" x1="1808" />
            <wire x2="2032" y1="736" y2="1248" x1="2032" />
            <wire x2="2400" y1="736" y2="736" x1="2032" />
        </branch>
        <branch name="XLXN_180(15:0)">
            <wire x2="2864" y1="736" y2="736" x1="2784" />
        </branch>
        <branch name="LED(7:0)">
            <wire x2="3296" y1="544" y2="544" x1="2784" />
        </branch>
        <branch name="segm(7:0)">
            <wire x2="3296" y1="672" y2="672" x1="3248" />
        </branch>
        <branch name="An(3:0)">
            <wire x2="3296" y1="800" y2="800" x1="3248" />
        </branch>
        <branch name="lap_time">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2384" y="544" type="branch" />
            <wire x2="2400" y1="544" y2="544" x1="2384" />
        </branch>
        <branch name="clk">
            <wire x2="224" y1="288" y2="288" x1="208" />
        </branch>
        <iomarker fontsize="28" x="208" y="288" name="clk" orien="R180" />
        <iomarker fontsize="28" x="544" y="608" name="start" orien="R180" />
        <iomarker fontsize="28" x="544" y="928" name="lap" orien="R180" />
        <iomarker fontsize="28" x="544" y="1248" name="clear_time" orien="R180" />
        <instance x="2400" y="1168" name="XLXI_53" orien="R0">
        </instance>
        <branch name="teenth(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2384" y="1136" type="branch" />
            <wire x2="2400" y1="1136" y2="1136" x1="2384" />
        </branch>
        <branch name="lap_time">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2384" y="1072" type="branch" />
            <wire x2="2400" y1="1072" y2="1072" x1="2384" />
        </branch>
        <branch name="start_stop">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2384" y="1008" type="branch" />
            <wire x2="2400" y1="1008" y2="1008" x1="2384" />
        </branch>
        <branch name="XLXN_197(3:0)">
            <wire x2="2816" y1="1008" y2="1008" x1="2784" />
            <wire x2="2816" y1="800" y2="1008" x1="2816" />
            <wire x2="2864" y1="800" y2="800" x1="2816" />
        </branch>
        <iomarker fontsize="28" x="3296" y="800" name="An(3:0)" orien="R0" />
        <iomarker fontsize="28" x="3296" y="672" name="segm(7:0)" orien="R0" />
        <iomarker fontsize="28" x="3296" y="544" name="LED(7:0)" orien="R0" />
        <instance x="1904" y="576" name="XLXI_65" orien="R0">
        </instance>
        <branch name="XLXN_228">
            <wire x2="1200" y1="1248" y2="1248" x1="1056" />
            <wire x2="1200" y1="544" y2="864" x1="1200" />
            <wire x2="1200" y1="864" y2="1184" x1="1200" />
            <wire x2="1200" y1="1184" y2="1248" x1="1200" />
            <wire x2="1424" y1="1184" y2="1184" x1="1200" />
            <wire x2="1424" y1="864" y2="864" x1="1200" />
            <wire x2="1424" y1="544" y2="544" x1="1200" />
        </branch>
        <instance x="672" y="640" name="XLXI_69" orien="R0">
        </instance>
        <instance x="672" y="960" name="XLXI_70" orien="R0">
        </instance>
        <instance x="672" y="1280" name="XLXI_71" orien="R0">
        </instance>
        <instance x="1424" y="1280" name="XLXI_72" orien="R0">
        </instance>
        <instance x="1424" y="960" name="XLXI_73" orien="R0">
        </instance>
        <instance x="1424" y="640" name="XLXI_74" orien="R0">
        </instance>
    </sheet>
</drawing>