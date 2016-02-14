<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="en0" />
        <signal name="en1" />
        <signal name="en2" />
        <signal name="en3" />
        <signal name="sw(1)">
        </signal>
        <signal name="sw(0)">
        </signal>
        <signal name="sw(2)">
        </signal>
        <signal name="sw(3)">
        </signal>
        <signal name="not_sw3" />
        <signal name="XLXN_55" />
        <signal name="XLXN_52" />
        <signal name="XLXN_54" />
        <signal name="XLXN_98" />
        <signal name="XLXN_108" />
        <signal name="not_sw2" />
        <signal name="XLXN_138" />
        <signal name="XLXN_139" />
        <signal name="XLXN_140" />
        <signal name="XLXN_141" />
        <signal name="XLXN_142" />
        <signal name="XLXN_164" />
        <signal name="XLXN_168" />
        <signal name="XLXN_175" />
        <signal name="XLXN_176" />
        <signal name="XLXN_177" />
        <signal name="XLXN_178" />
        <signal name="XLXN_191" />
        <signal name="XLXN_192" />
        <signal name="XLXN_194" />
        <signal name="XLXN_193" />
        <signal name="not_sw1" />
        <signal name="not_sw0" />
        <signal name="XLXN_196" />
        <signal name="XLXN_198" />
        <signal name="XLXN_199" />
        <signal name="btn0" />
        <signal name="seg(7)">
        </signal>
        <signal name="XLXN_202" />
        <signal name="XLXN_203" />
        <signal name="XLXN_204" />
        <signal name="XLXN_205" />
        <signal name="led0" />
        <signal name="led1" />
        <signal name="led2" />
        <signal name="led3" />
        <signal name="XLXN_219" />
        <signal name="XLXN_220" />
        <signal name="XLXN_221" />
        <signal name="XLXN_226" />
        <signal name="sw(7:0)" />
        <signal name="sw(5)" />
        <signal name="sw(6)" />
        <signal name="sw(7)" />
        <signal name="sw(4)" />
        <signal name="XLXN_254" />
        <signal name="XLXN_255" />
        <signal name="seg(0)" />
        <signal name="seg(7:0)" />
        <signal name="XLXN_258" />
        <signal name="XLXN_259" />
        <signal name="XLXN_260" />
        <signal name="XLXN_261" />
        <signal name="XLXN_262" />
        <signal name="XLXN_263" />
        <signal name="seg(1)" />
        <signal name="seg(2)" />
        <signal name="seg(3)" />
        <signal name="seg(4)" />
        <signal name="seg(5)" />
        <signal name="seg(6)" />
        <port polarity="Output" name="en0" />
        <port polarity="Output" name="en1" />
        <port polarity="Output" name="en2" />
        <port polarity="Output" name="en3" />
        <port polarity="Input" name="btn0" />
        <port polarity="Output" name="led0" />
        <port polarity="Output" name="led1" />
        <port polarity="Output" name="led2" />
        <port polarity="Output" name="led3" />
        <port polarity="Input" name="sw(7:0)" />
        <port polarity="Output" name="seg(7:0)" />
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="inv4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="160" y1="-96" y2="-96" x1="224" />
            <line x2="160" y1="-160" y2="-160" x1="224" />
            <line x2="160" y1="-224" y2="-224" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-96" y2="-96" x1="0" />
            <line x2="64" y1="-160" y2="-160" x1="0" />
            <line x2="64" y1="-224" y2="-224" x1="0" />
            <line x2="128" y1="-256" y2="-224" x1="64" />
            <line x2="64" y1="-224" y2="-192" x1="128" />
            <line x2="64" y1="-192" y2="-256" x1="64" />
            <circle r="16" cx="144" cy="-32" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="128" y1="-128" y2="-96" x1="64" />
            <line x2="64" y1="-96" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="-128" x1="64" />
            <circle r="16" cx="144" cy="-96" />
            <line x2="128" y1="-192" y2="-160" x1="64" />
            <line x2="64" y1="-160" y2="-128" x1="128" />
            <line x2="64" y1="-128" y2="-192" x1="64" />
            <circle r="16" cx="144" cy="-160" />
            <circle r="16" cx="144" cy="-224" />
        </blockdef>
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <blockdef name="or5">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="72" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="48" y1="-320" y2="-320" x1="0" />
            <line x2="192" y1="-192" y2="-192" x1="256" />
            <arc ex="192" ey="-192" sx="112" sy="-144" r="88" cx="116" cy="-232" />
            <line x2="48" y1="-240" y2="-240" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <line x2="48" y1="-64" y2="-144" x1="48" />
            <line x2="48" y1="-320" y2="-240" x1="48" />
            <arc ex="112" ey="-240" sx="192" sy="-192" r="88" cx="116" cy="-152" />
            <arc ex="48" ey="-240" sx="48" sy="-144" r="56" cx="16" cy="-192" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="and4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="buf" name="XLXI_1">
            <blockpin signalname="sw(4)" name="I" />
            <blockpin signalname="en0" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_2">
            <blockpin signalname="sw(5)" name="I" />
            <blockpin signalname="en1" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_3">
            <blockpin signalname="sw(6)" name="I" />
            <blockpin signalname="en2" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_4">
            <blockpin signalname="sw(7)" name="I" />
            <blockpin signalname="en3" name="O" />
        </block>
        <block symbolname="inv4" name="XLXI_5">
            <blockpin signalname="sw(3)" name="I0" />
            <blockpin signalname="sw(2)" name="I1" />
            <blockpin signalname="sw(1)" name="I2" />
            <blockpin signalname="sw(0)" name="I3" />
            <blockpin signalname="not_sw3" name="O0" />
            <blockpin signalname="not_sw2" name="O1" />
            <blockpin signalname="not_sw1" name="O2" />
            <blockpin signalname="not_sw0" name="O3" />
        </block>
        <block symbolname="and2" name="XLXI_13">
            <blockpin signalname="sw(1)" name="I0" />
            <blockpin signalname="not_sw3" name="I1" />
            <blockpin signalname="XLXN_52" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_16">
            <blockpin signalname="not_sw1" name="I0" />
            <blockpin signalname="not_sw2" name="I1" />
            <blockpin signalname="sw(3)" name="I2" />
            <blockpin signalname="XLXN_54" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_14">
            <blockpin signalname="sw(0)" name="I0" />
            <blockpin signalname="sw(2)" name="I1" />
            <blockpin signalname="not_sw3" name="I2" />
            <blockpin signalname="XLXN_55" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_15">
            <blockpin signalname="not_sw0" name="I0" />
            <blockpin signalname="not_sw1" name="I1" />
            <blockpin signalname="not_sw2" name="I2" />
            <blockpin signalname="XLXN_98" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_18">
            <blockpin signalname="not_sw1" name="I0" />
            <blockpin signalname="not_sw2" name="I1" />
            <blockpin signalname="XLXN_199" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_19">
            <blockpin signalname="not_sw0" name="I0" />
            <blockpin signalname="not_sw1" name="I1" />
            <blockpin signalname="not_sw3" name="I2" />
            <blockpin signalname="XLXN_196" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_20">
            <blockpin signalname="sw(0)" name="I0" />
            <blockpin signalname="sw(1)" name="I1" />
            <blockpin signalname="not_sw3" name="I2" />
            <blockpin signalname="XLXN_198" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_17">
            <blockpin signalname="not_sw2" name="I0" />
            <blockpin signalname="not_sw3" name="I1" />
            <blockpin signalname="XLXN_108" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_22">
            <blockpin signalname="not_sw1" name="I0" />
            <blockpin signalname="not_sw2" name="I1" />
            <blockpin signalname="XLXN_205" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_23">
            <blockpin signalname="sw(2)" name="I0" />
            <blockpin signalname="not_sw3" name="I1" />
            <blockpin signalname="XLXN_203" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_24">
            <blockpin signalname="sw(0)" name="I0" />
            <blockpin signalname="not_sw3" name="I1" />
            <blockpin signalname="XLXN_204" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_21">
            <blockpin signalname="not_sw1" name="I0" />
            <blockpin signalname="not_sw3" name="I1" />
            <blockpin signalname="XLXN_202" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_25">
            <blockpin signalname="not_sw0" name="I0" />
            <blockpin signalname="not_sw1" name="I1" />
            <blockpin signalname="not_sw2" name="I2" />
            <blockpin signalname="XLXN_139" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_26">
            <blockpin signalname="sw(1)" name="I0" />
            <blockpin signalname="not_sw2" name="I1" />
            <blockpin signalname="not_sw3" name="I2" />
            <blockpin signalname="XLXN_138" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_27">
            <blockpin signalname="not_sw1" name="I0" />
            <blockpin signalname="not_sw2" name="I1" />
            <blockpin signalname="sw(3)" name="I2" />
            <blockpin signalname="XLXN_140" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_28">
            <blockpin signalname="not_sw0" name="I0" />
            <blockpin signalname="sw(1)" name="I1" />
            <blockpin signalname="not_sw3" name="I2" />
            <blockpin signalname="XLXN_141" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_29">
            <blockpin signalname="sw(0)" name="I0" />
            <blockpin signalname="not_sw1" name="I1" />
            <blockpin signalname="sw(2)" name="I2" />
            <blockpin signalname="not_sw3" name="I3" />
            <blockpin signalname="XLXN_142" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_31">
            <blockpin signalname="not_sw0" name="I0" />
            <blockpin signalname="sw(1)" name="I1" />
            <blockpin signalname="not_sw3" name="I2" />
            <blockpin signalname="XLXN_168" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_30">
            <blockpin signalname="not_sw0" name="I0" />
            <blockpin signalname="not_sw1" name="I1" />
            <blockpin signalname="not_sw2" name="I2" />
            <blockpin signalname="XLXN_164" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_32">
            <blockpin signalname="not_sw0" name="I0" />
            <blockpin signalname="not_sw1" name="I1" />
            <blockpin signalname="not_sw3" name="I2" />
            <blockpin signalname="XLXN_175" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_33">
            <blockpin signalname="not_sw1" name="I0" />
            <blockpin signalname="sw(2)" name="I1" />
            <blockpin signalname="not_sw3" name="I2" />
            <blockpin signalname="XLXN_176" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_34">
            <blockpin signalname="not_sw1" name="I0" />
            <blockpin signalname="not_sw2" name="I1" />
            <blockpin signalname="sw(3)" name="I2" />
            <blockpin signalname="XLXN_177" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_35">
            <blockpin signalname="not_sw0" name="I0" />
            <blockpin signalname="sw(2)" name="I1" />
            <blockpin signalname="not_sw3" name="I2" />
            <blockpin signalname="XLXN_178" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_36">
            <blockpin signalname="not_sw1" name="I0" />
            <blockpin signalname="sw(2)" name="I1" />
            <blockpin signalname="not_sw3" name="I2" />
            <blockpin signalname="XLXN_191" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_37">
            <blockpin signalname="not_sw0" name="I0" />
            <blockpin signalname="sw(1)" name="I1" />
            <blockpin signalname="not_sw3" name="I2" />
            <blockpin signalname="XLXN_192" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_38">
            <blockpin signalname="not_sw1" name="I0" />
            <blockpin signalname="not_sw2" name="I1" />
            <blockpin signalname="sw(3)" name="I2" />
            <blockpin signalname="XLXN_194" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_39">
            <blockpin signalname="sw(1)" name="I0" />
            <blockpin signalname="not_sw2" name="I1" />
            <blockpin signalname="not_sw3" name="I2" />
            <blockpin signalname="XLXN_193" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_40">
            <blockpin signalname="btn0" name="I" />
            <blockpin signalname="seg(7)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_45">
            <blockpin signalname="sw(0)" name="I" />
            <blockpin signalname="led0" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_46">
            <blockpin signalname="sw(1)" name="I" />
            <blockpin signalname="led1" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_47">
            <blockpin signalname="sw(2)" name="I" />
            <blockpin signalname="led2" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_48">
            <blockpin signalname="sw(3)" name="I" />
            <blockpin signalname="led3" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_49">
            <blockpin signalname="XLXN_98" name="I0" />
            <blockpin signalname="XLXN_55" name="I1" />
            <blockpin signalname="XLXN_54" name="I2" />
            <blockpin signalname="XLXN_52" name="I3" />
            <blockpin signalname="XLXN_255" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_50">
            <blockpin signalname="XLXN_199" name="I0" />
            <blockpin signalname="XLXN_198" name="I1" />
            <blockpin signalname="XLXN_196" name="I2" />
            <blockpin signalname="XLXN_108" name="I3" />
            <blockpin signalname="XLXN_263" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_51">
            <blockpin signalname="XLXN_205" name="I0" />
            <blockpin signalname="XLXN_204" name="I1" />
            <blockpin signalname="XLXN_203" name="I2" />
            <blockpin signalname="XLXN_202" name="I3" />
            <blockpin signalname="XLXN_262" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_52">
            <blockpin signalname="XLXN_178" name="I0" />
            <blockpin signalname="XLXN_177" name="I1" />
            <blockpin signalname="XLXN_176" name="I2" />
            <blockpin signalname="XLXN_175" name="I3" />
            <blockpin signalname="XLXN_259" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_53">
            <blockpin signalname="XLXN_194" name="I0" />
            <blockpin signalname="XLXN_193" name="I1" />
            <blockpin signalname="XLXN_192" name="I2" />
            <blockpin signalname="XLXN_191" name="I3" />
            <blockpin signalname="XLXN_258" name="O" />
        </block>
        <block symbolname="or5" name="XLXI_54">
            <blockpin signalname="XLXN_142" name="I0" />
            <blockpin signalname="XLXN_141" name="I1" />
            <blockpin signalname="XLXN_140" name="I2" />
            <blockpin signalname="XLXN_138" name="I3" />
            <blockpin signalname="XLXN_139" name="I4" />
            <blockpin signalname="XLXN_261" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_55">
            <blockpin signalname="XLXN_168" name="I0" />
            <blockpin signalname="XLXN_164" name="I1" />
            <blockpin signalname="XLXN_260" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_57">
            <blockpin signalname="XLXN_255" name="I" />
            <blockpin signalname="seg(0)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_58">
            <blockpin signalname="XLXN_263" name="I" />
            <blockpin signalname="seg(1)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_59">
            <blockpin signalname="XLXN_262" name="I" />
            <blockpin signalname="seg(2)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_60">
            <blockpin signalname="XLXN_261" name="I" />
            <blockpin signalname="seg(3)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_61">
            <blockpin signalname="XLXN_260" name="I" />
            <blockpin signalname="seg(4)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_62">
            <blockpin signalname="XLXN_259" name="I" />
            <blockpin signalname="seg(5)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_63">
            <blockpin signalname="XLXN_258" name="I" />
            <blockpin signalname="seg(6)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="256" y="2640" name="XLXI_4" orien="R0" />
        <instance x="256" y="2544" name="XLXI_3" orien="R0" />
        <instance x="256" y="2448" name="XLXI_2" orien="R0" />
        <instance x="256" y="2352" name="XLXI_1" orien="R0" />
        <branch name="en0">
            <wire x2="512" y1="2320" y2="2320" x1="480" />
        </branch>
        <iomarker fontsize="28" x="512" y="2320" name="en0" orien="R0" />
        <branch name="en1">
            <wire x2="512" y1="2416" y2="2416" x1="480" />
        </branch>
        <iomarker fontsize="28" x="512" y="2416" name="en1" orien="R0" />
        <branch name="en2">
            <wire x2="512" y1="2512" y2="2512" x1="480" />
        </branch>
        <iomarker fontsize="28" x="512" y="2512" name="en2" orien="R0" />
        <branch name="en3">
            <wire x2="512" y1="2608" y2="2608" x1="480" />
        </branch>
        <iomarker fontsize="28" x="512" y="2608" name="en3" orien="R0" />
        <instance x="336" y="336" name="XLXI_5" orien="R0" />
        <branch name="not_sw0">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="656" y="112" type="branch" />
            <wire x2="656" y1="112" y2="112" x1="560" />
        </branch>
        <branch name="not_sw1">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="656" y="176" type="branch" />
            <wire x2="656" y1="176" y2="176" x1="560" />
        </branch>
        <branch name="not_sw2">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="656" y="240" type="branch" />
            <wire x2="656" y1="240" y2="240" x1="560" />
        </branch>
        <branch name="not_sw3">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="656" y="304" type="branch" />
            <wire x2="656" y1="304" y2="304" x1="560" />
        </branch>
        <branch name="XLXN_55">
            <wire x2="2048" y1="304" y2="320" x1="2048" />
            <wire x2="2240" y1="304" y2="304" x1="2048" />
            <wire x2="2240" y1="240" y2="304" x1="2240" />
            <wire x2="2624" y1="240" y2="240" x1="2240" />
        </branch>
        <branch name="XLXN_52">
            <wire x2="2624" y1="96" y2="96" x1="2528" />
            <wire x2="2624" y1="96" y2="112" x1="2624" />
        </branch>
        <instance x="2272" y="192" name="XLXI_13" orien="R0" />
        <branch name="not_sw3">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="64" type="branch" />
            <wire x2="2272" y1="64" y2="64" x1="2208" />
        </branch>
        <branch name="sw(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="128" type="branch" />
            <wire x2="2272" y1="128" y2="128" x1="2208" />
        </branch>
        <branch name="sw(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1712" y="32" type="branch" />
            <wire x2="1792" y1="32" y2="32" x1="1712" />
        </branch>
        <branch name="not_sw2">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1712" y="96" type="branch" />
            <wire x2="1792" y1="96" y2="96" x1="1712" />
        </branch>
        <branch name="not_sw1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1712" y="160" type="branch" />
            <wire x2="1792" y1="160" y2="160" x1="1712" />
        </branch>
        <instance x="1792" y="448" name="XLXI_14" orien="R0" />
        <instance x="2272" y="480" name="XLXI_15" orien="R0" />
        <branch name="XLXN_98">
            <wire x2="2624" y1="352" y2="352" x1="2528" />
            <wire x2="2624" y1="304" y2="352" x1="2624" />
        </branch>
        <branch name="not_sw2">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="288" type="branch" />
            <wire x2="2272" y1="288" y2="288" x1="2256" />
        </branch>
        <branch name="not_sw1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="352" type="branch" />
            <wire x2="2272" y1="352" y2="352" x1="2256" />
        </branch>
        <branch name="not_sw0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="416" type="branch" />
            <wire x2="2272" y1="416" y2="416" x1="2256" />
        </branch>
        <branch name="not_sw3">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1712" y="256" type="branch" />
            <wire x2="1792" y1="256" y2="256" x1="1712" />
        </branch>
        <branch name="sw(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1712" y="320" type="branch" />
            <wire x2="1792" y1="320" y2="320" x1="1712" />
        </branch>
        <branch name="sw(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1712" y="384" type="branch" />
            <wire x2="1792" y1="384" y2="384" x1="1712" />
        </branch>
        <instance x="2272" y="832" name="XLXI_18" orien="R0" />
        <branch name="XLXN_108">
            <wire x2="2640" y1="528" y2="528" x1="2528" />
        </branch>
        <instance x="1792" y="672" name="XLXI_19" orien="R0" />
        <instance x="1792" y="896" name="XLXI_20" orien="R0" />
        <instance x="2272" y="624" name="XLXI_17" orien="R0" />
        <branch name="not_sw3">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="496" type="branch" />
            <wire x2="2272" y1="496" y2="496" x1="2256" />
        </branch>
        <branch name="not_sw2">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="560" type="branch" />
            <wire x2="2272" y1="560" y2="560" x1="2256" />
        </branch>
        <branch name="not_sw2">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="704" type="branch" />
            <wire x2="2272" y1="704" y2="704" x1="2256" />
        </branch>
        <branch name="not_sw1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="768" type="branch" />
            <wire x2="2272" y1="768" y2="768" x1="2256" />
        </branch>
        <branch name="not_sw3">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="480" type="branch" />
            <wire x2="1792" y1="480" y2="480" x1="1776" />
        </branch>
        <branch name="not_sw1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="544" type="branch" />
            <wire x2="1792" y1="544" y2="544" x1="1776" />
        </branch>
        <branch name="not_sw0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="608" type="branch" />
            <wire x2="1792" y1="608" y2="608" x1="1776" />
        </branch>
        <branch name="not_sw3">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="704" type="branch" />
            <wire x2="1792" y1="704" y2="704" x1="1776" />
        </branch>
        <branch name="sw(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="768" type="branch" />
            <wire x2="1792" y1="768" y2="768" x1="1776" />
        </branch>
        <branch name="sw(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="832" type="branch" />
            <wire x2="1792" y1="832" y2="832" x1="1776" />
        </branch>
        <instance x="2272" y="1184" name="XLXI_22" orien="R0" />
        <instance x="1152" y="448" name="XLXI_23" orien="R0" />
        <instance x="1152" y="704" name="XLXI_24" orien="R0" />
        <instance x="2272" y="976" name="XLXI_21" orien="R0" />
        <branch name="not_sw3">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="320" type="branch" />
            <wire x2="1152" y1="320" y2="320" x1="1136" />
        </branch>
        <branch name="sw(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="384" type="branch" />
            <wire x2="1152" y1="384" y2="384" x1="1136" />
        </branch>
        <branch name="not_sw3">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="576" type="branch" />
            <wire x2="1152" y1="576" y2="576" x1="1136" />
        </branch>
        <branch name="sw(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="640" type="branch" />
            <wire x2="1152" y1="640" y2="640" x1="1136" />
        </branch>
        <branch name="not_sw3">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="848" type="branch" />
            <wire x2="2272" y1="848" y2="848" x1="2256" />
        </branch>
        <branch name="not_sw1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="912" type="branch" />
            <wire x2="2272" y1="912" y2="912" x1="2256" />
        </branch>
        <branch name="not_sw2">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="1056" type="branch" />
            <wire x2="2272" y1="1056" y2="1056" x1="2256" />
        </branch>
        <branch name="not_sw1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="1120" type="branch" />
            <wire x2="2272" y1="1120" y2="1120" x1="2256" />
        </branch>
        <instance x="2272" y="1392" name="XLXI_25" orien="R0" />
        <instance x="1792" y="1264" name="XLXI_26" orien="R0" />
        <branch name="XLXN_138">
            <wire x2="2112" y1="1136" y2="1136" x1="2048" />
            <wire x2="2112" y1="1136" y2="1376" x1="2112" />
            <wire x2="2544" y1="1376" y2="1376" x1="2112" />
            <wire x2="2560" y1="1328" y2="1328" x1="2544" />
            <wire x2="2544" y1="1328" y2="1376" x1="2544" />
        </branch>
        <branch name="XLXN_139">
            <wire x2="2560" y1="1264" y2="1264" x1="2528" />
        </branch>
        <branch name="XLXN_140">
            <wire x2="2560" y1="1392" y2="1392" x1="2048" />
        </branch>
        <instance x="1792" y="1520" name="XLXI_27" orien="R0" />
        <instance x="1152" y="1184" name="XLXI_28" orien="R0" />
        <branch name="XLXN_141">
            <wire x2="1440" y1="1056" y2="1056" x1="1408" />
            <wire x2="1440" y1="1056" y2="1504" x1="1440" />
            <wire x2="2560" y1="1504" y2="1504" x1="1440" />
            <wire x2="2560" y1="1456" y2="1504" x1="2560" />
        </branch>
        <instance x="1152" y="1456" name="XLXI_29" orien="R0" />
        <branch name="XLXN_142">
            <wire x2="1408" y1="1296" y2="1520" x1="1408" />
            <wire x2="2560" y1="1520" y2="1520" x1="1408" />
        </branch>
        <branch name="not_sw2">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="1200" type="branch" />
            <wire x2="2272" y1="1200" y2="1200" x1="2256" />
        </branch>
        <branch name="not_sw1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="1264" type="branch" />
            <wire x2="2272" y1="1264" y2="1264" x1="2256" />
        </branch>
        <branch name="not_sw0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="1328" type="branch" />
            <wire x2="2272" y1="1328" y2="1328" x1="2256" />
        </branch>
        <branch name="sw(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="1328" type="branch" />
            <wire x2="1792" y1="1328" y2="1328" x1="1776" />
        </branch>
        <branch name="not_sw2">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="1392" type="branch" />
            <wire x2="1792" y1="1392" y2="1392" x1="1776" />
        </branch>
        <branch name="not_sw1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="1456" type="branch" />
            <wire x2="1792" y1="1456" y2="1456" x1="1776" />
        </branch>
        <branch name="not_sw3">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="1072" type="branch" />
            <wire x2="1792" y1="1072" y2="1072" x1="1776" />
        </branch>
        <branch name="not_sw2">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="1136" type="branch" />
            <wire x2="1792" y1="1136" y2="1136" x1="1776" />
        </branch>
        <branch name="sw(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="1200" type="branch" />
            <wire x2="1792" y1="1200" y2="1200" x1="1776" />
        </branch>
        <branch name="not_sw3">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="992" type="branch" />
            <wire x2="1152" y1="992" y2="992" x1="1136" />
        </branch>
        <branch name="sw(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1056" type="branch" />
            <wire x2="1152" y1="1056" y2="1056" x1="1136" />
        </branch>
        <branch name="not_sw0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1120" type="branch" />
            <wire x2="1152" y1="1120" y2="1120" x1="1136" />
        </branch>
        <branch name="not_sw3">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1200" type="branch" />
            <wire x2="1152" y1="1200" y2="1200" x1="1136" />
        </branch>
        <branch name="sw(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1264" type="branch" />
            <wire x2="1152" y1="1264" y2="1264" x1="1136" />
        </branch>
        <branch name="not_sw1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1328" type="branch" />
            <wire x2="1152" y1="1328" y2="1328" x1="1136" />
        </branch>
        <branch name="sw(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1392" type="branch" />
            <wire x2="1152" y1="1392" y2="1392" x1="1136" />
        </branch>
        <instance x="1792" y="1776" name="XLXI_31" orien="R0" />
        <instance x="2272" y="1776" name="XLXI_30" orien="R0" />
        <branch name="XLXN_164">
            <wire x2="2544" y1="1648" y2="1648" x1="2528" />
            <wire x2="2544" y1="1648" y2="1696" x1="2544" />
            <wire x2="2560" y1="1696" y2="1696" x1="2544" />
        </branch>
        <branch name="XLXN_168">
            <wire x2="2048" y1="1648" y2="1760" x1="2048" />
            <wire x2="2560" y1="1760" y2="1760" x1="2048" />
        </branch>
        <branch name="not_sw3">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="1584" type="branch" />
            <wire x2="1792" y1="1584" y2="1584" x1="1776" />
        </branch>
        <branch name="sw(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="1648" type="branch" />
            <wire x2="1792" y1="1648" y2="1648" x1="1776" />
        </branch>
        <branch name="not_sw0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="1712" type="branch" />
            <wire x2="1792" y1="1712" y2="1712" x1="1776" />
        </branch>
        <branch name="not_sw2">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="1584" type="branch" />
            <wire x2="2272" y1="1584" y2="1584" x1="2256" />
        </branch>
        <branch name="not_sw1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="1648" type="branch" />
            <wire x2="2272" y1="1648" y2="1648" x1="2256" />
        </branch>
        <branch name="not_sw0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="1712" type="branch" />
            <wire x2="2272" y1="1712" y2="1712" x1="2256" />
        </branch>
        <instance x="2272" y="2016" name="XLXI_32" orien="R0" />
        <instance x="1792" y="2016" name="XLXI_33" orien="R0" />
        <instance x="2272" y="2256" name="XLXI_34" orien="R0" />
        <instance x="1792" y="2256" name="XLXI_35" orien="R0" />
        <branch name="XLXN_175">
            <wire x2="2576" y1="1888" y2="1888" x1="2528" />
            <wire x2="2576" y1="1888" y2="2000" x1="2576" />
        </branch>
        <branch name="XLXN_176">
            <wire x2="2048" y1="1888" y2="2016" x1="2048" />
            <wire x2="2560" y1="2016" y2="2016" x1="2048" />
            <wire x2="2560" y1="2016" y2="2064" x1="2560" />
            <wire x2="2576" y1="2064" y2="2064" x1="2560" />
        </branch>
        <branch name="XLXN_177">
            <wire x2="2576" y1="2128" y2="2128" x1="2528" />
        </branch>
        <branch name="XLXN_178">
            <wire x2="2048" y1="2128" y2="2256" x1="2048" />
            <wire x2="2560" y1="2256" y2="2256" x1="2048" />
            <wire x2="2576" y1="2192" y2="2192" x1="2560" />
            <wire x2="2560" y1="2192" y2="2256" x1="2560" />
        </branch>
        <branch name="sw(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="2064" type="branch" />
            <wire x2="2272" y1="2064" y2="2064" x1="2256" />
        </branch>
        <branch name="not_sw2">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="2128" type="branch" />
            <wire x2="2272" y1="2128" y2="2128" x1="2256" />
        </branch>
        <branch name="not_sw1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="2192" type="branch" />
            <wire x2="2272" y1="2192" y2="2192" x1="2256" />
        </branch>
        <branch name="not_sw3">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="1824" type="branch" />
            <wire x2="2272" y1="1824" y2="1824" x1="2256" />
        </branch>
        <branch name="not_sw1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="1888" type="branch" />
            <wire x2="2272" y1="1888" y2="1888" x1="2256" />
        </branch>
        <branch name="not_sw0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="1952" type="branch" />
            <wire x2="2272" y1="1952" y2="1952" x1="2256" />
        </branch>
        <branch name="not_sw3">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="2064" type="branch" />
            <wire x2="1792" y1="2064" y2="2064" x1="1776" />
        </branch>
        <branch name="sw(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="2128" type="branch" />
            <wire x2="1792" y1="2128" y2="2128" x1="1776" />
        </branch>
        <branch name="not_sw0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="2192" type="branch" />
            <wire x2="1792" y1="2192" y2="2192" x1="1776" />
        </branch>
        <branch name="not_sw3">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="1824" type="branch" />
            <wire x2="1792" y1="1824" y2="1824" x1="1776" />
        </branch>
        <branch name="sw(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="1888" type="branch" />
            <wire x2="1792" y1="1888" y2="1888" x1="1776" />
        </branch>
        <branch name="not_sw1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="1952" type="branch" />
            <wire x2="1792" y1="1952" y2="1952" x1="1776" />
        </branch>
        <instance x="2272" y="2512" name="XLXI_36" orien="R0" />
        <instance x="1792" y="2512" name="XLXI_37" orien="R0" />
        <branch name="XLXN_191">
            <wire x2="2576" y1="2384" y2="2384" x1="2528" />
            <wire x2="2576" y1="2384" y2="2400" x1="2576" />
        </branch>
        <branch name="XLXN_192">
            <wire x2="2048" y1="2384" y2="2496" x1="2048" />
            <wire x2="2576" y1="2496" y2="2496" x1="2048" />
            <wire x2="2576" y1="2464" y2="2496" x1="2576" />
        </branch>
        <branch name="XLXN_194">
            <wire x2="2560" y1="2608" y2="2608" x1="2528" />
            <wire x2="2576" y1="2592" y2="2592" x1="2560" />
            <wire x2="2560" y1="2592" y2="2608" x1="2560" />
        </branch>
        <branch name="not_sw3">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="2320" type="branch" />
            <wire x2="1792" y1="2320" y2="2320" x1="1776" />
        </branch>
        <branch name="sw(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="2384" type="branch" />
            <wire x2="1792" y1="2384" y2="2384" x1="1776" />
        </branch>
        <branch name="not_sw0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="2448" type="branch" />
            <wire x2="1792" y1="2448" y2="2448" x1="1776" />
        </branch>
        <branch name="not_sw3">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="2320" type="branch" />
            <wire x2="2272" y1="2320" y2="2320" x1="2256" />
        </branch>
        <instance x="2272" y="2736" name="XLXI_38" orien="R0" />
        <instance x="1792" y="2736" name="XLXI_39" orien="R0" />
        <branch name="XLXN_193">
            <wire x2="2048" y1="2512" y2="2608" x1="2048" />
            <wire x2="2576" y1="2512" y2="2512" x1="2048" />
            <wire x2="2576" y1="2512" y2="2528" x1="2576" />
        </branch>
        <branch name="not_sw3">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="2544" type="branch" />
            <wire x2="1792" y1="2544" y2="2544" x1="1776" />
        </branch>
        <branch name="not_sw2">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="2608" type="branch" />
            <wire x2="1792" y1="2608" y2="2608" x1="1776" />
        </branch>
        <branch name="sw(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="2672" type="branch" />
            <wire x2="1792" y1="2672" y2="2672" x1="1776" />
        </branch>
        <branch name="sw(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="2384" type="branch" />
            <wire x2="2272" y1="2384" y2="2384" x1="2256" />
        </branch>
        <branch name="not_sw1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="2448" type="branch" />
            <wire x2="2272" y1="2448" y2="2448" x1="2256" />
        </branch>
        <branch name="sw(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="2544" type="branch" />
            <wire x2="2272" y1="2544" y2="2544" x1="2256" />
        </branch>
        <branch name="not_sw2">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="2608" type="branch" />
            <wire x2="2272" y1="2608" y2="2608" x1="2256" />
        </branch>
        <branch name="not_sw1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="2672" type="branch" />
            <wire x2="2272" y1="2672" y2="2672" x1="2256" />
        </branch>
        <branch name="XLXN_199">
            <wire x2="2640" y1="736" y2="736" x1="2528" />
            <wire x2="2640" y1="720" y2="736" x1="2640" />
        </branch>
        <branch name="btn0">
            <wire x2="304" y1="1824" y2="1824" x1="208" />
        </branch>
        <instance x="304" y="1856" name="XLXI_40" orien="R0" />
        <branch name="seg(7)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="1824" type="branch" />
            <wire x2="576" y1="1824" y2="1824" x1="528" />
        </branch>
        <branch name="XLXN_202">
            <wire x2="2560" y1="880" y2="880" x1="2528" />
            <wire x2="2560" y1="880" y2="896" x1="2560" />
        </branch>
        <branch name="XLXN_203">
            <wire x2="1424" y1="352" y2="352" x1="1408" />
            <wire x2="1424" y1="352" y2="960" x1="1424" />
            <wire x2="2560" y1="960" y2="960" x1="1424" />
        </branch>
        <branch name="XLXN_204">
            <wire x2="1504" y1="608" y2="608" x1="1408" />
            <wire x2="1504" y1="608" y2="1024" x1="1504" />
            <wire x2="2560" y1="1024" y2="1024" x1="1504" />
        </branch>
        <branch name="XLXN_205">
            <wire x2="2560" y1="1088" y2="1088" x1="2528" />
        </branch>
        <branch name="XLXN_54">
            <wire x2="2048" y1="96" y2="112" x1="2048" />
            <wire x2="2256" y1="112" y2="112" x1="2048" />
            <wire x2="2256" y1="112" y2="176" x1="2256" />
            <wire x2="2624" y1="176" y2="176" x1="2256" />
        </branch>
        <instance x="1792" y="224" name="XLXI_16" orien="R0" />
        <instance x="320" y="1216" name="XLXI_45" orien="R0" />
        <instance x="320" y="1280" name="XLXI_46" orien="R0" />
        <instance x="320" y="1344" name="XLXI_47" orien="R0" />
        <instance x="320" y="1408" name="XLXI_48" orien="R0" />
        <branch name="sw(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="1184" type="branch" />
            <wire x2="320" y1="1184" y2="1184" x1="304" />
        </branch>
        <branch name="sw(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="1248" type="branch" />
            <wire x2="320" y1="1248" y2="1248" x1="304" />
        </branch>
        <branch name="sw(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="1312" type="branch" />
            <wire x2="320" y1="1312" y2="1312" x1="304" />
        </branch>
        <branch name="sw(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="1376" type="branch" />
            <wire x2="320" y1="1376" y2="1376" x1="304" />
        </branch>
        <branch name="led0">
            <wire x2="576" y1="1184" y2="1184" x1="544" />
        </branch>
        <branch name="led1">
            <wire x2="576" y1="1248" y2="1248" x1="544" />
        </branch>
        <branch name="led2">
            <wire x2="576" y1="1312" y2="1312" x1="544" />
        </branch>
        <branch name="led3">
            <wire x2="576" y1="1376" y2="1376" x1="544" />
        </branch>
        <iomarker fontsize="28" x="576" y="1184" name="led0" orien="R0" />
        <iomarker fontsize="28" x="576" y="1248" name="led1" orien="R0" />
        <iomarker fontsize="28" x="576" y="1312" name="led2" orien="R0" />
        <iomarker fontsize="28" x="576" y="1376" name="led3" orien="R0" />
        <instance x="2624" y="368" name="XLXI_49" orien="R0" />
        <instance x="2560" y="1152" name="XLXI_51" orien="R0" />
        <instance x="2576" y="2256" name="XLXI_52" orien="R0" />
        <instance x="2576" y="2656" name="XLXI_53" orien="R0" />
        <instance x="2560" y="1584" name="XLXI_54" orien="R0" />
        <instance x="2560" y="1824" name="XLXI_55" orien="R0" />
        <instance x="2640" y="784" name="XLXI_50" orien="R0" />
        <branch name="XLXN_196">
            <wire x2="2064" y1="544" y2="544" x1="2048" />
            <wire x2="2064" y1="544" y2="592" x1="2064" />
            <wire x2="2640" y1="592" y2="592" x1="2064" />
        </branch>
        <branch name="XLXN_198">
            <wire x2="2064" y1="768" y2="768" x1="2048" />
            <wire x2="2640" y1="656" y2="656" x1="2064" />
            <wire x2="2064" y1="656" y2="768" x1="2064" />
        </branch>
        <branch name="sw(7:0)">
            <wire x2="48" y1="64" y2="112" x1="48" />
            <wire x2="48" y1="112" y2="176" x1="48" />
            <wire x2="48" y1="176" y2="240" x1="48" />
            <wire x2="48" y1="240" y2="304" x1="48" />
            <wire x2="48" y1="304" y2="640" x1="48" />
            <wire x2="48" y1="640" y2="1024" x1="48" />
            <wire x2="48" y1="1024" y2="2320" x1="48" />
            <wire x2="48" y1="2320" y2="2416" x1="48" />
            <wire x2="48" y1="2416" y2="2512" x1="48" />
            <wire x2="48" y1="2512" y2="2608" x1="48" />
            <wire x2="48" y1="2608" y2="2688" x1="48" />
            <wire x2="144" y1="1024" y2="1024" x1="48" />
        </branch>
        <bustap x2="144" y1="2320" y2="2320" x1="48" />
        <bustap x2="144" y1="2416" y2="2416" x1="48" />
        <branch name="sw(5)">
            <wire x2="256" y1="2416" y2="2416" x1="144" />
        </branch>
        <bustap x2="144" y1="2512" y2="2512" x1="48" />
        <branch name="sw(6)">
            <wire x2="256" y1="2512" y2="2512" x1="144" />
        </branch>
        <bustap x2="144" y1="2608" y2="2608" x1="48" />
        <branch name="sw(7)">
            <wire x2="256" y1="2608" y2="2608" x1="144" />
        </branch>
        <branch name="sw(4)">
            <wire x2="256" y1="2320" y2="2320" x1="144" />
        </branch>
        <iomarker fontsize="28" x="144" y="1024" name="sw(7:0)" orien="R0" />
        <instance x="3008" y="240" name="XLXI_57" orien="R0" />
        <branch name="XLXN_255">
            <wire x2="3008" y1="208" y2="208" x1="2880" />
        </branch>
        <branch name="seg(0)">
            <wire x2="3328" y1="208" y2="208" x1="3232" />
        </branch>
        <branch name="seg(7:0)">
            <wire x2="3424" y1="128" y2="208" x1="3424" />
            <wire x2="3424" y1="208" y2="624" x1="3424" />
            <wire x2="3424" y1="624" y2="992" x1="3424" />
            <wire x2="3424" y1="992" y2="1392" x1="3424" />
            <wire x2="3424" y1="1392" y2="1728" x1="3424" />
            <wire x2="3424" y1="1728" y2="2096" x1="3424" />
            <wire x2="3424" y1="2096" y2="2496" x1="3424" />
            <wire x2="3424" y1="2496" y2="2624" x1="3424" />
        </branch>
        <instance x="3008" y="656" name="XLXI_58" orien="R0" />
        <instance x="3008" y="1024" name="XLXI_59" orien="R0" />
        <instance x="3008" y="1424" name="XLXI_60" orien="R0" />
        <instance x="3008" y="1760" name="XLXI_61" orien="R0" />
        <instance x="3024" y="2128" name="XLXI_62" orien="R0" />
        <instance x="3024" y="2528" name="XLXI_63" orien="R0" />
        <branch name="XLXN_258">
            <wire x2="3024" y1="2496" y2="2496" x1="2832" />
        </branch>
        <branch name="XLXN_259">
            <wire x2="3024" y1="2096" y2="2096" x1="2832" />
        </branch>
        <branch name="XLXN_260">
            <wire x2="3008" y1="1728" y2="1728" x1="2816" />
        </branch>
        <branch name="XLXN_261">
            <wire x2="3008" y1="1392" y2="1392" x1="2816" />
        </branch>
        <branch name="XLXN_262">
            <wire x2="3008" y1="992" y2="992" x1="2816" />
        </branch>
        <branch name="XLXN_263">
            <wire x2="3008" y1="624" y2="624" x1="2896" />
        </branch>
        <bustap x2="3328" y1="208" y2="208" x1="3424" />
        <branch name="seg(1)">
            <wire x2="3328" y1="624" y2="624" x1="3232" />
        </branch>
        <bustap x2="3328" y1="624" y2="624" x1="3424" />
        <branch name="seg(2)">
            <wire x2="3328" y1="992" y2="992" x1="3232" />
        </branch>
        <branch name="seg(3)">
            <wire x2="3328" y1="1392" y2="1392" x1="3232" />
        </branch>
        <branch name="seg(4)">
            <wire x2="3328" y1="1728" y2="1728" x1="3232" />
        </branch>
        <branch name="seg(5)">
            <wire x2="3328" y1="2096" y2="2096" x1="3248" />
        </branch>
        <branch name="seg(6)">
            <wire x2="3328" y1="2496" y2="2496" x1="3248" />
        </branch>
        <bustap x2="3328" y1="2496" y2="2496" x1="3424" />
        <bustap x2="3328" y1="2096" y2="2096" x1="3424" />
        <bustap x2="3328" y1="1728" y2="1728" x1="3424" />
        <bustap x2="3328" y1="1392" y2="1392" x1="3424" />
        <bustap x2="3328" y1="992" y2="992" x1="3424" />
        <iomarker fontsize="28" x="3424" y="128" name="seg(7:0)" orien="R270" />
        <iomarker fontsize="28" x="208" y="1824" name="btn0" orien="R180" />
        <branch name="sw(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="288" y="112" type="branch" />
            <wire x2="336" y1="112" y2="112" x1="288" />
        </branch>
        <branch name="sw(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="288" y="176" type="branch" />
            <wire x2="336" y1="176" y2="176" x1="288" />
        </branch>
        <branch name="sw(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="288" y="240" type="branch" />
            <wire x2="336" y1="240" y2="240" x1="288" />
        </branch>
        <branch name="sw(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="288" y="304" type="branch" />
            <wire x2="336" y1="304" y2="304" x1="288" />
        </branch>
    </sheet>
</drawing>