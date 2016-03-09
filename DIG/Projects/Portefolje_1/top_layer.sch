<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="btn" />
        <signal name="XLXN_4" />
        <signal name="toggle" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="btn" />
        <port polarity="Output" name="toggle" />
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
        <block symbolname="clk_1khz" name="XLXI_3">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_4" name="clk_1khz" />
        </block>
        <block symbolname="toggle_button" name="XLXI_4">
            <blockpin signalname="XLXN_4" name="clk" />
            <blockpin signalname="btn" name="btn" />
            <blockpin signalname="toggle" name="toggle" />
            <blockpin name="debounce" />
            <blockpin name="pulse" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="656" y="528" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1200" y="656" name="XLXI_4" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="656" y1="496" y2="496" x1="560" />
        </branch>
        <branch name="btn">
            <wire x2="1200" y1="624" y2="624" x1="560" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1200" y1="496" y2="496" x1="1040" />
        </branch>
        <branch name="toggle">
            <wire x2="1680" y1="496" y2="496" x1="1584" />
        </branch>
        <iomarker fontsize="28" x="560" y="496" name="clk" orien="R180" />
        <iomarker fontsize="28" x="560" y="624" name="btn" orien="R180" />
        <iomarker fontsize="28" x="1680" y="496" name="toggle" orien="R0" />
    </sheet>
</drawing>