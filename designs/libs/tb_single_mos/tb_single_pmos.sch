v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -300 -250 -280 -250 {lab=#net1}
N -240 -330 -240 -310 {lab=GND}
N -370 -330 -370 -310 {lab=GND}
N -370 -250 -300 -250 {lab=#net1}
N -110 -330 -110 -300 {lab=GND}
N -240 -310 -240 -290 {lab=GND}
N -240 -210 -110 -210 {lab=#net2}
N -110 -240 -110 -210 {lab=#net2}
N -230 -290 -230 -260 {lab=GND}
N -240 -290 -230 -290 {lab=GND}
C {title.sym} -1040 -60 0 0 {name=l1 author="Ushan Fernando"}
C {devices/code_shown.sym} -950 -380 0 0 {name=MODELS only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {vsource.sym} -370 -280 0 0 {name=VB value=1.0 savecurrent=false}
C {gnd.sym} -370 -330 2 0 {name=l2 lab=GND}
C {gnd.sym} -240 -330 2 0 {name=l3 lab=GND}
C {vsource.sym} -110 -270 0 0 {name=VDD value=3.3 savecurrent=false}
C {gnd.sym} -110 -330 2 0 {name=l4 lab=GND}
C {code_shown.sym} -950 -260 0 0 {name=SIMULATION only_toplevel=false 
value="
.control
    save all
    op
    show all
.endc
"}
C {libs/core_single_mos/unit_pmos/unit_pmos.sym} -280 -250 0 0 {name=XM1 M=1}
