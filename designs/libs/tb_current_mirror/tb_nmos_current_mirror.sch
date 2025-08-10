v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -570 -400 -570 -390 {lab=GND}
N -250 -200 -250 -190 {lab=GND}
N -470 -400 -470 -380 {lab=#net1}
N -570 -470 -570 -460 {lab=#net2}
N -570 -470 -470 -470 {lab=#net2}
N -470 -470 -470 -460 {lab=#net2}
N -80 -310 -80 -300 {lab=GND}
N -410 -450 -410 -380 {lab=#net3}
N -410 -550 -410 -450 {lab=#net3}
N -370 -510 -370 -380 {lab=#net4}
N -330 -470 -330 -380 {lab=#net5}
N -290 -430 -290 -380 {lab=#net6}
N -250 -390 -250 -380 {lab=#net7}
N -410 -610 -400 -610 {lab=out}
N -370 -570 -360 -570 {lab=out}
N -330 -530 -320 -530 {lab=out}
N -290 -490 -280 -490 {lab=out}
N -250 -450 -240 -450 {lab=out}
N -80 -380 -80 -370 {lab=out}
N -80 -610 -80 -380 {lab=out}
N -400 -610 -80 -610 {lab=out}
N -360 -570 -80 -570 {lab=out}
N -320 -530 -80 -530 {lab=out}
N -280 -490 -80 -490 {lab=out}
N -240 -450 -80 -450 {lab=out}
N -80 -610 -60 -610 {lab=out}
C {title.sym} -1100 -60 0 0 {name=l5 author="Ushan Fernando"}
C {devices/code_shown.sym} -1320 -500 0 0 {name=MODELS only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} -1320 -380 0 0 {name=SIMULATION only_toplevel=false 
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
C {libs/core_current_mirror/nmos_current_mirror/nmos_current_mirror.sym} -360 -290 0 0 {name=X_NCM}
C {vsource.sym} -570 -430 0 0 {name=VDD value=3.3 savecurrent=false}
C {gnd.sym} -570 -390 0 0 {name=l2 lab=GND}
C {gnd.sym} -250 -190 0 0 {name=l1 lab=GND}
C {isource.sym} -470 -430 0 0 {name=Ibias value=100u}
C {vsource.sym} -80 -340 0 0 {name=VOUT value=3.3 savecurrent=false}
C {gnd.sym} -80 -300 0 0 {name=l3 lab=GND}
C {ammeter.sym} -410 -580 0 0 {name=Viout1x savecurrent=true spice_ignore=0}
C {ammeter.sym} -370 -540 0 0 {name=Viout2x savecurrent=true spice_ignore=0}
C {ammeter.sym} -330 -500 0 0 {name=Viout4x savecurrent=true spice_ignore=0}
C {ammeter.sym} -250 -420 0 0 {name=Viout16x savecurrent=true spice_ignore=0}
C {ammeter.sym} -290 -460 0 0 {name=Viout8x savecurrent=true spice_ignore=0}
C {lab_pin.sym} -60 -610 2 0 {name=p2 sig_type=std_logic lab=out}
