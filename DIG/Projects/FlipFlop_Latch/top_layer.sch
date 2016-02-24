<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_32" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="XLXN_43" />
        <signal name="XLXN_47" />
        <signal name="XLXN_49" />
        <signal name="XLXN_50" />
        <signal name="XLXN_55" />
        <signal name="XLXN_57" />
        <signal name="XLXN_59" />
        <signal name="XLXN_60" />
        <signal name="btn0" />
        <signal name="Din(7:0)" />
        <signal name="Qout(7:0)" />
        <port polarity="Input" name="btn0" />
        <port polarity="Input" name="Din(7:0)" />
        <port polarity="Output" name="Qout(7:0)" />
        <blockdef name="ifd8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="64" x="320" y="-268" height="24" />
            <rect width="64" x="0" y="-268" height="24" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-128" y2="-140" x1="84" />
            <line x2="84" y1="-116" y2="-128" x1="64" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <block symbolname="ifd8" name="XLXI_35">
            <blockpin signalname="btn0" name="C" />
            <blockpin signalname="Din(7:0)" name="D(7:0)" />
            <blockpin signalname="Qout(7:0)" name="Q(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1552" y="1168" name="XLXI_35" orien="R0" />
        <branch name="btn0">
            <wire x2="1392" y1="1040" y2="1040" x1="1376" />
            <wire x2="1552" y1="1040" y2="1040" x1="1392" />
        </branch>
        <branch name="Din(7:0)">
            <wire x2="1392" y1="912" y2="912" x1="1376" />
            <wire x2="1552" y1="912" y2="912" x1="1392" />
        </branch>
        <branch name="Qout(7:0)">
            <wire x2="1968" y1="912" y2="912" x1="1936" />
            <wire x2="1984" y1="912" y2="912" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="1376" y="912" name="Din(7:0)" orien="R180" />
        <iomarker fontsize="28" x="1376" y="1040" name="btn0" orien="R180" />
        <iomarker fontsize="28" x="1984" y="912" name="Qout(7:0)" orien="R0" />
    </sheet>
</drawing>