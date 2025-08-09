v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -200 -360 -200 -350 {lab=#net1}
N -200 -280 -200 -270 {lab=GND}
N -190 -310 -190 -280 {lab=GND}
N -200 -280 -190 -280 {lab=GND}
N -200 -360 -80 -360 {lab=#net1}
N -320 -320 -240 -320 {lab=#net2}
N -80 -360 -80 -330 {lab=#net1}
N -80 -270 -80 -240 {lab=GND}
N -200 -270 -200 -240 {lab=GND}
N -320 -260 -320 -240 {lab=GND}
C {devices/code_shown.sym} -980 -360 0 0 {name=MODELS only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {vsource.sym} -320 -290 0 0 {name=VB value=0.91 savecurrent=false}
C {gnd.sym} -320 -240 0 0 {name=l2 lab=GND}
C {gnd.sym} -200 -240 0 0 {name=l3 lab=GND}
C {vsource.sym} -80 -300 0 0 {name=VDD value=3.3 savecurrent=false}
C {gnd.sym} -80 -240 0 0 {name=l4 lab=GND}
C {code_shown.sym} -980 -250 0 0 {name=SIMULATION only_toplevel=false 
value="
.control
    save all
    op
    show all
.endc
"}
C {libs/core_single_mos/unit_nmos/unit_nmos.sym} -240 -320 0 0 {name=XM1 M=1}
C {title.sym} -1040 -60 0 0 {name=l5 author="Ushan Fernando"}
