v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -60 -40 60 -40 {lab=diff_tail}
N -0 -60 -0 -40 {lab=diff_tail}
N 0 -80 0 -60 {lab=diff_tail}
N -60 40 -60 60 {lab=diff_drain1}
N 60 40 60 60 {lab=diff_drain2}
N 60 60 80 60 {lab=diff_drain2}
N -120 0 -100 0 {lab=diff_in1}
N 100 0 120 0 {lab=diff_in2}
N -50 -10 50 -10 {lab=VDD}
N 0 -10 0 10 {lab=VDD}
C {libs/core_single_mos/unit_pmos/unit_pmos.sym} -100 0 0 0 {name=XM1 M=4}
C {libs/core_single_mos/unit_pmos/unit_pmos.sym} 100 0 0 1 {name=XM2 M=4}
C {devices/iopin.sym} 0 -80 1 1 {name=p1 lab=diff_tail}
C {devices/iopin.sym} -60 60 0 1 {name=p2 lab=diff_drain1}
C {devices/iopin.sym} 80 60 0 0 {name=p3 lab=diff_drain2}
C {devices/iopin.sym} -120 0 0 1 {name=p4 lab=diff_in1}
C {devices/iopin.sym} 120 0 0 0 {name=p5 lab=diff_in2}
C {devices/iopin.sym} 0 10 1 0 {name=p6 lab=VDD}
