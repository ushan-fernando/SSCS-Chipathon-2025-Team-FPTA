v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -220 -610 -220 -600 {lab=GND}
N -220 -680 -220 -670 {lab=#net1}
N -280 -680 -280 -660 {lab=#net1}
N -280 -680 -220 -680 {lab=#net1}
N -500 -480 -500 -460 {lab=#net2}
N -500 -400 -500 -380 {lab=GND}
N -440 -480 -440 -450 {lab=#net3}
N -400 -480 -400 -410 {lab=#net4}
N -360 -480 -360 -370 {lab=#net5}
N -320 -480 -320 -330 {lab=#net6}
N -280 -480 -280 -290 {lab=#net7}
N -200 -170 -200 -160 {lab=GND}
N -280 -230 -200 -230 {lab=out}
N -440 -230 -280 -230 {lab=out}
N -320 -270 -320 -230 {lab=out}
N -360 -310 -360 -230 {lab=out}
N -400 -350 -400 -230 {lab=out}
N -440 -390 -440 -230 {lab=out}
N -460 -230 -440 -230 {lab=out}
C {title.sym} -1100 -60 0 0 {name=l5 author="Ushan Fernando"}
C {devices/code_shown.sym} -1330 -610 0 0 {name=MODELS only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} -1330 -490 0 0 {name=SIMULATION only_toplevel=false 
value="
.control
    save all

    * Operating Point Analysis
    op
    show all > op.log

    * DC Sweep
    dc VOUT 0 3.3 10m
    plot i(viout1x) i(viout2x) i(viout4x) i(viout8x) i(viout16x) vs v(out)
.endc
"}
C {libs/core_current_mirror/pmos_current_mirror/pmos_current_mirror.sym} -380 -570 0 0 {name=X_PCM}
C {vsource.sym} -220 -640 0 0 {name=VDD value=3.3 savecurrent=false}
C {gnd.sym} -220 -600 0 0 {name=l2 lab=GND}
C {ammeter.sym} -440 -420 0 0 {name=Viout1x savecurrent=true spice_ignore=0}
C {isource.sym} -500 -430 0 1 {name=Ibias value=100u}
C {gnd.sym} -500 -380 0 0 {name=l1 lab=GND}
C {ammeter.sym} -400 -380 0 0 {name=Viout2x savecurrent=true spice_ignore=0}
C {ammeter.sym} -360 -340 0 0 {name=Viout4x savecurrent=true spice_ignore=0}
C {ammeter.sym} -280 -260 0 0 {name=Viout16x savecurrent=true spice_ignore=0}
C {ammeter.sym} -320 -300 0 0 {name=Viout8x savecurrent=true spice_ignore=0}
C {vsource.sym} -200 -200 0 0 {name=VOUT value=3.3 savecurrent=false}
C {gnd.sym} -200 -160 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -460 -230 2 1 {name=p1 sig_type=std_logic lab=out}
