v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {--------------------------------------------------
--      Folded Cascode OTA - Final Specs        --
--------------------------------------------------
--       Target Spec      |   Simulated Value   --
--------------------------------------------------
   Ids (Input Pair)         |      100 uA       |    100.9 uA
   Vov (Input Pair)         |     ~200 mV       |     197 mV
   gm/Id (Input)            |      8-10 S/A      |     8.01 S/A
   Ids (PMOS Mirror)        |      100 uA       |    100.9 uA
   Vov (PMOS Mirror)        |     ~200 mV       |     197 mV
   gm/Id (PMOS Mirror)      |      8-10 S/A      |     8.01 S/A
 
--------------------------------------------------
--       Design & Test Conditions             --
--------------------------------------------------
   W/L (XM1, XM2, XM3, XM4) = 16.54u / 0.6u
   W/L (XM5, XM6, XM7, XM*) = 61.84 / 0.6u
   Load Capacitor (Cload) = N/A
   VDD = 3.3V, VBias = 1.5V, V_icm = 0.903V} 1030 -550 0 0 0.4 0.4 {}
N 190 -600 190 -580 {lab=VDD}
N 350 -600 350 -580 {lab=VDD}
N 150 -520 190 -520 {lab=pmos_bias}
N 150 -550 150 -520 {lab=pmos_bias}
N 190 -520 310 -520 {lab=pmos_bias}
N 310 -550 310 -520 {lab=pmos_bias}
N 350 -520 350 -500 {lab=#net1}
N 350 -500 360 -500 {lab=#net1}
N 350 -550 370 -550 {lab=VDD}
N 370 -580 370 -550 {lab=VDD}
N 350 -580 370 -580 {lab=VDD}
N 190 -550 200 -550 {lab=VDD}
N 200 -580 200 -550 {lab=VDD}
N 190 -580 200 -580 {lab=VDD}
N 150 -470 150 -440 {lab=casc_pmos_bias}
N 150 -440 180 -440 {lab=casc_pmos_bias}
N 180 -440 190 -440 {lab=casc_pmos_bias}
N 190 -440 320 -440 {lab=casc_pmos_bias}
N 320 -470 320 -440 {lab=casc_pmos_bias}
N 360 -500 360 -470 {lab=#net1}
N 190 -500 190 -470 {lab=pmos_bias}
N 180 -420 190 -420 {lab=casc_pmos_bias}
N 190 -440 190 -420 {lab=casc_pmos_bias}
N 360 -440 360 -420 {lab=#net2}
N 180 -360 180 -330 {lab=#net3}
N 180 -270 360 -270 {lab=tail_node}
N 360 -390 380 -390 {lab=GND}
N 380 -390 380 -300 {lab=GND}
N 380 -300 380 -180 {lab=GND}
N 260 -180 380 -180 {lab=GND}
N 360 -300 380 -300 {lab=GND}
N 170 -300 180 -300 {lab=GND}
N 170 -300 170 -180 {lab=GND}
N 170 -180 260 -180 {lab=GND}
N 180 -390 190 -390 {lab=GND}
N 190 -390 190 -300 {lab=GND}
N 180 -300 190 -300 {lab=GND}
N 260 -210 260 -180 {lab=GND}
N 190 -600 270 -600 {lab=VDD}
N 270 -600 350 -600 {lab=VDD}
N 360 -360 360 -330 {lab=vout}
N 360 -340 420 -340 {lab=vout}
N 190 -520 190 -500 {lab=pmos_bias}
N 140 -400 140 -390 {lab=VBias}
N 140 -400 320 -400 {lab=VBias}
N 320 -400 320 -390 {lab=VBias}
N 90 -260 180 -270 {lab=tail_node}
N 420 -340 530 -340 {lab=vout}
N 530 -340 560 -340 {lab=vout}
N 260 -210 320 -210 {lab=GND}
N 690 -500 690 -470 {lab=VBias}
N 760 -490 760 -470 {lab=VDD}
N 930 -490 930 -470 {lab=vin}
N 690 -260 690 -240 {lab=VCM}
N 140 -300 140 -290 {lab=vin}
N 140 -290 320 -290 {lab=vin}
N 320 -300 320 -290 {lab=vin}
C {title.sym} 10 -30 0 0 {name=Folded Cascode author="Athesh Ganesh"}
C {symbols/pfet_03v3.sym} 170 -550 0 0 {name=M7
L=0.6u
W=61.84u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 330 -550 0 0 {name=M8
L=0.6u
W=61.84u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 170 -470 0 0 {name=M5
L=0.6u
W=61.84u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 340 -470 0 0 {name=M6
L=0.6u
W=61.84u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 160 -390 0 0 {name=M3
L=0.6u
W=16.54u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 340 -390 0 0 {name=M4
L=0.6u
W=16.54u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 160 -300 0 0 {name=M1
L=0.6u
W=16.54u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 340 -300 0 0 {name=M2
L=0.6u
W=16.54u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {ipin.sym} 140 -300 0 0 {name=p1 lab=vin}
C {ipin.sym} 140 -390 0 0 {name=p3 lab=VBias}
C {isource.sym} 260 -240 0 0 {name=Itail value=200u}
C {ipin.sym} 270 -600 1 0 {name=p4 lab=VDD}
C {ipin.sym} 260 -180 3 0 {name=p5 lab=GND}
C {opin.sym} 560 -340 0 0 {name=p6 lab=vout}
C {vsource.sym} 690 -380 0 0 {name=Vbias value= 1.5 savecurrent=false}
C {ipin.sym} 690 -500 1 0 {name=p2 lab=VBias}
C {vsource.sym} 760 -380 0 0 {name=VDD value=3.3 savecurrent=false}
C {ipin.sym} 760 -490 1 0 {name=p7 lab=VDD}
C {gnd.sym} 760 -350 0 0 {name=l1 lab=GND}
C {gnd.sym} 690 -350 0 0 {name=l2 lab=GND}
C {ipin.sym} 850 -390 3 0 {name=p8 lab=GND}
C {gnd.sym} 850 -390 2 0 {name=l3 lab=GND}
C {vsource.sym} 930 -380 0 0 {name=VIN value = 0.903 savecurrent=false}
C {ipin.sym} 930 -490 1 0 {name=p9 lab=vin}
C {gnd.sym} 930 -350 0 0 {name=l4 lab=GND}
C {devices/code_shown.sym} -530 -570 0 0 {name=NGSPICE only_toplevel=true
value="

.control
save all


**Set Source
alter @VIN[AC] 1.0


**Simulations
*op
*ac dec 100 1 1G
*tran 0.1u 200u

write folded_cascode.raw
.endc
"}
C {devices/code_shown.sym} -510 -190 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_wire.sym} 150 -520 0 0 {name=p10 sig_type=std_logic lab=pmos_bias}
C {lab_wire.sym} 150 -450 0 0 {name=p11 sig_type=std_logic lab=casc_pmos_bias}
C {lab_wire.sym} 90 -260 0 0 {name=p12 sig_type=std_logic lab=tail_node}
C {res.sym} 760 -440 0 0 {name=R1
value=10
footprint=1206
device=resistor
m=1}
C {res.sym} 690 -440 0 0 {name=R2
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 930 -440 0 0 {name=R3
value=50
footprint=1206
device=resistor
m=1}
C {res.sym} 320 -240 0 0 {name=R4
value=100M
footprint=1206
device=resistor
m=1}
C {vsource.sym} 690 -150 0 0 {name=VCM value = 1.65 savecurrent=false}
C {ipin.sym} 690 -260 1 0 {name=p13 lab=VCM}
C {gnd.sym} 690 -120 0 0 {name=l5 lab=GND}
C {res.sym} 690 -210 0 0 {name=R5
value=50
footprint=1206
device=resistor
m=1}
