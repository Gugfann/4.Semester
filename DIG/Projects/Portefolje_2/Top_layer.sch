<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
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
        <block symbolname="toggle_button" name="XLXI_1">
            <blockpin name="clk" />
            <blockpin name="btn" />
            <blockpin name="toggle" />
            <blockpin name="debounce" />
            <blockpin name="pulse" />
        </block>
        <block symbolname="toggle_button" name="XLXI_2">
            <blockpin name="clk" />
            <blockpin name="btn" />
            <blockpin name="toggle" />
            <blockpin name="debounce" />
            <blockpin name="pulse" />
        </block>
        <block symbolname="toggle_button" name="XLXI_3">
            <blockpin name="clk" />
            <blockpin name="btn" />
            <blockpin name="toggle" />
            <blockpin name="debounce" />
            <blockpin name="pulse" />
        </block>
        <block symbolname="mux_display" name="XLXI_4">
            <blockpin name="clk" />
            <blockpin name="bcd(15:0)" />
            <blockpin name="dp(3:0)" />
            <blockpin name="segments(7:0)" />
            <blockpin name="an(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="464" y="400" name="XLXI_1" orien="R0">
        </instance>
        <instance x="464" y="720" name="XLXI_2" orien="R0">
        </instance>
        <instance x="480" y="1072" name="XLXI_3" orien="R0">
        </instance>
        <instance x="2624" y="464" name="XLXI_4" orien="R0">
        </instance>
    </sheet>
</drawing>