<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_4" />
        <signal name="toggle" />
        <signal name="XLXN_5" />
        <signal name="btn(3:0)" />
        <signal name="btn(0)" />
        <signal name="XLXN_16" />
        <signal name="XLXN_24" />
        <signal name="XLXN_62(15:0)" />
        <signal name="XLXN_83" />
        <signal name="XLXN_90(7:0)" />
        <signal name="XLXN_92(3:0)" />
        <signal name="XLXN_93" />
        <signal name="segm(7:0)" />
        <signal name="An(3:0)" />
        <signal name="XLXN_97(3:0)" />
        <signal name="XLXN_98(15:0)" />
        <signal name="clk" />
        <signal name="XLXN_100" />
        <signal name="btn(1)" />
        <signal name="latch" />
        <signal name="XLXN_106(7:0)" />
        <signal name="XLXN_107(7:0)" />
        <signal name="XLXN_108(15:0)" />
        <signal name="bcd_1_10(7:0)" />
        <signal name="LED(7:0)" />
        <port polarity="Output" name="toggle" />
        <port polarity="Input" name="btn(3:0)" />
        <port polarity="Output" name="segm(7:0)" />
        <port polarity="Output" name="An(3:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="LED(7:0)" />
        <blockdef name="clk_1khz">
            <timestamp>2016-3-9T21:2:32</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="toggle_button">
            <timestamp>2016-3-9T22:2:3</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="mux_display">
            <timestamp>2016-3-10T17:44:46</timestamp>
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
        <blockdef name="cnt999">
            <timestamp>2016-3-10T19:28:7</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="cnt59">
            <timestamp>2016-3-10T20:19:7</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="teenth_sec">
            <timestamp>2016-3-10T21:37:27</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="lap_time_latch">
            <timestamp>2016-3-10T22:15:57</timestamp>
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
        <block symbolname="toggle_button" name="XLXI_4">
            <blockpin signalname="XLXN_100" name="clk" />
            <blockpin signalname="btn(0)" name="btn" />
            <blockpin signalname="toggle" name="toggle" />
            <blockpin name="debounce" />
            <blockpin name="pulse" />
        </block>
        <block symbolname="cnt999" name="XLXI_7">
            <blockpin signalname="XLXN_100" name="clk" />
            <blockpin name="clr" />
            <blockpin signalname="toggle" name="en" />
            <blockpin signalname="XLXN_93" name="co" />
            <blockpin signalname="XLXN_92(3:0)" name="bcd(3:0)" />
        </block>
        <block symbolname="cnt59" name="XLXI_23">
            <blockpin signalname="XLXN_100" name="clk" />
            <blockpin name="clr" />
            <blockpin signalname="XLXN_93" name="en" />
            <blockpin signalname="XLXN_83" name="co" />
            <blockpin signalname="XLXN_107(7:0)" name="bcd(7:0)" />
        </block>
        <block symbolname="cnt59" name="XLXI_24">
            <blockpin signalname="XLXN_100" name="clk" />
            <blockpin name="clr" />
            <blockpin signalname="XLXN_83" name="en" />
            <blockpin name="co" />
            <blockpin signalname="XLXN_106(7:0)" name="bcd(7:0)" />
        </block>
        <block symbolname="teenth_sec" name="XLXI_26">
            <blockpin signalname="XLXN_92(3:0)" name="bcd(3:0)" />
            <blockpin signalname="bcd_1_10(7:0)" name="lcd(7:0)" />
        </block>
        <block symbolname="mux_display" name="XLXI_6">
            <blockpin signalname="XLXN_100" name="clk" />
            <blockpin signalname="XLXN_108(15:0)" name="bcd(15:0)" />
            <blockpin signalname="btn(3:0)" name="dp(3:0)" />
            <blockpin signalname="segm(7:0)" name="segments(7:0)" />
            <blockpin signalname="An(3:0)" name="an(3:0)" />
        </block>
        <block symbolname="clk_1khz" name="XLXI_3">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_100" name="clk_1khz" />
        </block>
        <block symbolname="toggle_button" name="XLXI_29">
            <blockpin signalname="XLXN_100" name="clk" />
            <blockpin signalname="btn(1)" name="btn" />
            <blockpin signalname="latch" name="toggle" />
            <blockpin name="debounce" />
            <blockpin name="pulse" />
        </block>
        <block symbolname="lap_time_latch" name="XLXI_30">
            <blockpin signalname="latch" name="latch" />
            <blockpin signalname="bcd_1_10(7:0)" name="bcd1_10(7:0)" />
            <blockpin signalname="XLXN_107(7:0)" name="bcd_sec(7:0)" />
            <blockpin signalname="XLXN_106(7:0)" name="bcd_min(7:0)" />
            <blockpin signalname="LED(7:0)" name="leds(7:0)" />
            <blockpin signalname="XLXN_108(15:0)" name="bcd(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1200" y="656" name="XLXI_4" orien="R0">
        </instance>
        <branch name="toggle">
            <wire x2="1680" y1="496" y2="496" x1="1584" />
        </branch>
        <iomarker fontsize="28" x="1680" y="496" name="toggle" orien="R0" />
        <branch name="btn(3:0)">
            <wire x2="2560" y1="976" y2="976" x1="2256" />
            <wire x2="2576" y1="976" y2="976" x1="2560" />
        </branch>
        <branch name="btn(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="624" type="branch" />
            <wire x2="1200" y1="624" y2="624" x1="1040" />
        </branch>
        <instance x="688" y="1696" name="XLXI_7" orien="R0">
        </instance>
        <branch name="toggle">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="1664" type="branch" />
            <wire x2="688" y1="1664" y2="1664" x1="576" />
        </branch>
        <instance x="1792" y="1696" name="XLXI_23" orien="R0">
        </instance>
        <instance x="1776" y="2064" name="XLXI_24" orien="R0">
        </instance>
        <branch name="XLXN_83">
            <wire x2="2192" y1="1760" y2="1760" x1="1696" />
            <wire x2="1696" y1="1760" y2="2032" x1="1696" />
            <wire x2="1776" y1="2032" y2="2032" x1="1696" />
            <wire x2="2192" y1="1536" y2="1536" x1="2176" />
            <wire x2="2192" y1="1536" y2="1760" x1="2192" />
        </branch>
        <branch name="XLXN_92(3:0)">
            <wire x2="1088" y1="1664" y2="1664" x1="1072" />
            <wire x2="1088" y1="1664" y2="1904" x1="1088" />
            <wire x2="1088" y1="1904" y2="1904" x1="1072" />
        </branch>
        <branch name="XLXN_93">
            <wire x2="1424" y1="1536" y2="1536" x1="1072" />
            <wire x2="1424" y1="1536" y2="1664" x1="1424" />
            <wire x2="1776" y1="1664" y2="1664" x1="1424" />
            <wire x2="1792" y1="1664" y2="1664" x1="1776" />
        </branch>
        <branch name="segm(7:0)">
            <wire x2="3104" y1="848" y2="848" x1="2960" />
        </branch>
        <branch name="An(3:0)">
            <wire x2="3104" y1="976" y2="976" x1="2960" />
        </branch>
        <instance x="2576" y="1008" name="XLXI_6" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3104" y="848" name="segm(7:0)" orien="R0" />
        <iomarker fontsize="28" x="3104" y="976" name="An(3:0)" orien="R0" />
        <instance x="272" y="528" name="XLXI_3" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="272" y1="496" y2="496" x1="176" />
        </branch>
        <iomarker fontsize="28" x="176" y="496" name="clk" orien="R180" />
        <iomarker fontsize="28" x="2256" y="976" name="btn(3:0)" orien="R180" />
        <instance x="2016" y="656" name="XLXI_29" orien="R0">
        </instance>
        <branch name="XLXN_100">
            <wire x2="1136" y1="1376" y2="1376" x1="608" />
            <wire x2="1728" y1="1376" y2="1376" x1="1136" />
            <wire x2="1728" y1="1376" y2="1536" x1="1728" />
            <wire x2="1728" y1="1536" y2="1904" x1="1728" />
            <wire x2="1776" y1="1904" y2="1904" x1="1728" />
            <wire x2="1792" y1="1536" y2="1536" x1="1728" />
            <wire x2="608" y1="1376" y2="1536" x1="608" />
            <wire x2="688" y1="1536" y2="1536" x1="608" />
            <wire x2="1136" y1="496" y2="496" x1="656" />
            <wire x2="1200" y1="496" y2="496" x1="1136" />
            <wire x2="1136" y1="496" y2="1024" x1="1136" />
            <wire x2="1136" y1="1024" y2="1376" x1="1136" />
            <wire x2="1856" y1="1024" y2="1024" x1="1136" />
            <wire x2="2016" y1="496" y2="496" x1="1856" />
            <wire x2="1856" y1="496" y2="848" x1="1856" />
            <wire x2="1856" y1="848" y2="1024" x1="1856" />
            <wire x2="2576" y1="848" y2="848" x1="1856" />
        </branch>
        <branch name="btn(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="624" type="branch" />
            <wire x2="2016" y1="624" y2="624" x1="2000" />
        </branch>
        <branch name="latch">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="496" type="branch" />
            <wire x2="2464" y1="496" y2="496" x1="2400" />
        </branch>
        <instance x="2752" y="2144" name="XLXI_30" orien="R0">
        </instance>
        <instance x="1072" y="1872" name="XLXI_26" orien="R180">
        </instance>
        <branch name="latch">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2704" y="1920" type="branch" />
            <wire x2="2736" y1="1920" y2="1920" x1="2704" />
            <wire x2="2752" y1="1920" y2="1920" x1="2736" />
        </branch>
        <branch name="XLXN_106(7:0)">
            <wire x2="2448" y1="2032" y2="2032" x1="2160" />
            <wire x2="2448" y1="2032" y2="2112" x1="2448" />
            <wire x2="2752" y1="2112" y2="2112" x1="2448" />
        </branch>
        <branch name="XLXN_107(7:0)">
            <wire x2="2464" y1="1664" y2="1664" x1="2176" />
            <wire x2="2464" y1="1664" y2="2048" x1="2464" />
            <wire x2="2752" y1="2048" y2="2048" x1="2464" />
        </branch>
        <branch name="XLXN_108(15:0)">
            <wire x2="2576" y1="912" y2="912" x1="2496" />
            <wire x2="2496" y1="912" y2="1088" x1="2496" />
            <wire x2="3200" y1="1088" y2="1088" x1="2496" />
            <wire x2="3200" y1="1088" y2="2112" x1="3200" />
            <wire x2="3200" y1="2112" y2="2112" x1="3136" />
        </branch>
        <branch name="bcd_1_10(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="656" y="1904" type="branch" />
            <wire x2="688" y1="1904" y2="1904" x1="656" />
        </branch>
        <branch name="bcd_1_10(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="1984" type="branch" />
            <wire x2="2752" y1="1984" y2="1984" x1="2720" />
        </branch>
        <branch name="LED(7:0)">
            <wire x2="3248" y1="1920" y2="1920" x1="3136" />
        </branch>
        <iomarker fontsize="28" x="3248" y="1920" name="LED(7:0)" orien="R0" />
    </sheet>
</drawing>