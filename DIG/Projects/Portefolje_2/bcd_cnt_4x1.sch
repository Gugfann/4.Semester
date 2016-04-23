<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="clr" />
        <signal name="clk" />
        <signal name="enable" />
        <signal name="bcd(3:0)" />
        <signal name="bcd(15:0)" />
        <signal name="bcd(7:4)" />
        <signal name="bcd(11:8)" />
        <signal name="bcd(15:12)" />
        <port polarity="Input" name="clr" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="enable" />
        <port polarity="Output" name="bcd(15:0)" />
        <blockdef name="cnt_bcd">
            <timestamp>2016-4-23T15:1:23</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="cnt_bcd" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="clr" name="clr" />
            <blockpin signalname="enable" name="en" />
            <blockpin signalname="XLXN_3" name="co" />
            <blockpin signalname="bcd(3:0)" name="bcd(3:0)" />
        </block>
        <block symbolname="cnt_bcd" name="XLXI_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="clr" name="clr" />
            <blockpin signalname="XLXN_3" name="en" />
            <blockpin signalname="XLXN_2" name="co" />
            <blockpin signalname="bcd(7:4)" name="bcd(3:0)" />
        </block>
        <block symbolname="cnt_bcd" name="XLXI_3">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="clr" name="clr" />
            <blockpin signalname="XLXN_2" name="en" />
            <blockpin signalname="XLXN_1" name="co" />
            <blockpin signalname="bcd(11:8)" name="bcd(3:0)" />
        </block>
        <block symbolname="cnt_bcd" name="XLXI_4">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="clr" name="clr" />
            <blockpin signalname="XLXN_1" name="en" />
            <blockpin name="co" />
            <blockpin signalname="bcd(15:12)" name="bcd(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1520" y="992" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1520" y="1392" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1520" y="1792" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1440" y1="1520" y2="1760" x1="1440" />
            <wire x2="1520" y1="1760" y2="1760" x1="1440" />
            <wire x2="2000" y1="1520" y2="1520" x1="1440" />
            <wire x2="2000" y1="1232" y2="1232" x1="1904" />
            <wire x2="2000" y1="1232" y2="1520" x1="2000" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1440" y1="1120" y2="1360" x1="1440" />
            <wire x2="1520" y1="1360" y2="1360" x1="1440" />
            <wire x2="2000" y1="1120" y2="1120" x1="1440" />
            <wire x2="2000" y1="832" y2="832" x1="1904" />
            <wire x2="2000" y1="832" y2="1120" x1="2000" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1440" y1="720" y2="960" x1="1440" />
            <wire x2="1520" y1="960" y2="960" x1="1440" />
            <wire x2="1984" y1="720" y2="720" x1="1440" />
            <wire x2="1984" y1="432" y2="432" x1="1904" />
            <wire x2="1984" y1="432" y2="720" x1="1984" />
        </branch>
        <branch name="bcd(15:0)">
            <wire x2="2400" y1="432" y2="560" x1="2400" />
            <wire x2="2400" y1="560" y2="960" x1="2400" />
            <wire x2="2400" y1="960" y2="1360" x1="2400" />
            <wire x2="2400" y1="1360" y2="1760" x1="2400" />
            <wire x2="2560" y1="432" y2="432" x1="2400" />
        </branch>
        <bustap x2="2304" y1="960" y2="960" x1="2400" />
        <bustap x2="2304" y1="1360" y2="1360" x1="2400" />
        <bustap x2="2304" y1="1760" y2="1760" x1="2400" />
        <instance x="1520" y="592" name="XLXI_1" orien="R0">
        </instance>
        <branch name="enable">
            <wire x2="1520" y1="560" y2="560" x1="1120" />
        </branch>
        <branch name="bcd(3:0)">
            <wire x2="2304" y1="560" y2="560" x1="1904" />
        </branch>
        <bustap x2="2304" y1="560" y2="560" x1="2400" />
        <branch name="bcd(7:4)">
            <wire x2="2304" y1="960" y2="960" x1="1904" />
        </branch>
        <branch name="bcd(11:8)">
            <wire x2="2304" y1="1360" y2="1360" x1="1904" />
        </branch>
        <branch name="bcd(15:12)">
            <wire x2="2304" y1="1760" y2="1760" x1="1904" />
        </branch>
        <branch name="clr">
            <wire x2="1280" y1="496" y2="496" x1="1120" />
            <wire x2="1520" y1="496" y2="496" x1="1280" />
            <wire x2="1280" y1="496" y2="896" x1="1280" />
            <wire x2="1520" y1="896" y2="896" x1="1280" />
            <wire x2="1280" y1="896" y2="1296" x1="1280" />
            <wire x2="1520" y1="1296" y2="1296" x1="1280" />
            <wire x2="1280" y1="1296" y2="1696" x1="1280" />
            <wire x2="1520" y1="1696" y2="1696" x1="1280" />
        </branch>
        <branch name="clk">
            <wire x2="1360" y1="432" y2="432" x1="1120" />
            <wire x2="1520" y1="432" y2="432" x1="1360" />
            <wire x2="1360" y1="432" y2="832" x1="1360" />
            <wire x2="1520" y1="832" y2="832" x1="1360" />
            <wire x2="1360" y1="832" y2="1232" x1="1360" />
            <wire x2="1360" y1="1232" y2="1632" x1="1360" />
            <wire x2="1520" y1="1632" y2="1632" x1="1360" />
            <wire x2="1520" y1="1232" y2="1232" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1120" y="432" name="clk" orien="R180" />
        <iomarker fontsize="28" x="1120" y="496" name="clr" orien="R180" />
        <iomarker fontsize="28" x="1120" y="560" name="enable" orien="R180" />
        <iomarker fontsize="28" x="2560" y="432" name="bcd(15:0)" orien="R0" />
    </sheet>
</drawing>