v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 4 -1000 -1070 -360 -290 {fill=false}
N -710 -790 -710 -750 {lab=#net1}
N -710 -980 -680 -980 {lab=VDD}
N -680 -980 -650 -980 {lab=VDD}
N -680 -1090 -680 -980 {lab=VDD}
N -680 -550 -680 -510 {lab=#net2}
N -1060 -510 -780 -510 {lab=#net3}
N -580 -550 -480 -550 {lab=GND}
N -480 -550 -480 -270 {lab=GND}
N -560 -330 -480 -330 {lab=GND}
N -480 -270 -480 -250 {lab=GND}
N -650 -790 -340 -790 {lab=Vout}
N -650 -750 -340 -750 {lab=Vout}
N -340 -790 -340 -750 {lab=Vout}
N -340 -770 -280 -770 {lab=Vout}
N -1060 -650 -830 -650 {lab=Vin}
N -1080 -990 -1080 -980 {lab=GND}
N -1080 -1130 -680 -1130 {lab=VDD}
N -680 -1130 -680 -1090 {lab=VDD}
N -1080 -1160 -1080 -1130 {lab=VDD}
N -1120 -510 -1120 -490 {lab=#net3}
N -1120 -430 -1120 -410 {lab=VDD}
N -1120 -510 -1060 -510 {lab=#net3}
N -1160 -570 -1160 -560 {lab=GND}
N -1160 -650 -1160 -630 {lab=#net4}
N -1060 -720 -1060 -650 {lab=Vin}
N -280 -770 -260 -770 {lab=Vout}
N -530 -650 -330 -650 {lab=Vout}
N -1070 -510 -1070 -490 {lab=#net3}
N -1070 -440 -1070 -430 {lab=VDD}
N -1120 -430 -1070 -430 {lab=VDD}
N -1080 -1060 -1080 -1050 {lab=#net5}
N -1080 -1130 -1080 -1120 {lab=VDD}
N -300 -770 -300 -650 {lab=Vout}
N -330 -650 -300 -650 {lab=Vout}
N -260 -680 -260 -660 {lab=GND}
N -260 -770 -260 -740 {lab=Vout}
N -1160 -650 -1140 -650 {lab=#net4}
N -1080 -650 -1060 -650 {lab=Vin}
C {title.sym} -1100 -50 0 0 {name=l5 author="Ushan Fernando"}
C {libs/core_differential_pair/nmos_differential_pair/nmos_differential_pair.sym} -680 -650 0 0 {name=X_DP}
C {libs/core_current_mirror/nmos_current_mirror/nmos_current_mirror.sym} -670 -420 0 0 {name=X_NCM}
C {libs/core_current_mirror/pmos_current_mirror_sources_io/pmos_current_mirror_sources_io.sym} -680 -890 0 0 {name=X_PCM}
C {vsource.sym} -1080 -1020 0 0 {name=VDD value=3.3 savecurrent=false}
C {gnd.sym} -1080 -980 0 0 {name=l2 lab=GND}
C {gnd.sym} -480 -250 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -1080 -1160 2 0 {name=p1 sig_type=std_logic lab=VDD}
C {isource.sym} -1120 -460 2 0 {name=I0 value=100u}
C {lab_pin.sym} -1120 -410 3 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} -1660 -300 0 0 {name=MODELS only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {vsource.sym} -1160 -600 0 0 {name="Vin" value="1.65 AC 1" savecurrent=false}
C {gnd.sym} -1160 -560 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -1060 -720 2 0 {name=p3 sig_type=std_logic lab=Vin}
C {lab_pin.sym} -260 -770 2 0 {name=p4 sig_type=std_logic lab=Vout}
C {code_shown.sym} -1650 -670 0 0 {name=SIMULATION only_toplevel=false 
value="
.control
    save all

    * Operating Point Analysis
    op
    show all > op.log

    * DC Sweep
    dc Vin 0 3.3 10m
    plot v(vout) vs v(vin)

    * AC Analysis
    ac dec 100 100 1Meg
    plot db(v(vout))
.endc 
"}
C {res.sym} -1070 -460 2 1 {name=R1
value=500k
footprint=1206
device=resistor
m=1}
C {res.sym} -1080 -1090 2 1 {name=R2
value=5
footprint=1206
device=resistor
m=1}
C {capa.sym} -260 -710 0 0 {name=C1
m=1
value=1n
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -260 -660 0 0 {name=l4 lab=GND}
C {res.sym} -1110 -650 3 0 {name=R3
value=50
footprint=1206
device=resistor
m=1}
