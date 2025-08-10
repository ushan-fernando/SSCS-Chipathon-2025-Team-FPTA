v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -30 0 30 0 {lab=I_ref}
N -70 -100 -70 -40 {lab=I_ref}
N -70 40 -70 80 {lab=src_ref}
N 70 40 70 80 {lab=src_1x}
N 0 -60 0 0 {lab=I_ref}
N -70 -60 0 -60 {lab=I_ref}
N 70 -100 70 -40 {lab=1x_I_ref}
N -160 10 -80 10 {lab=src_ref}
N 80 10 140 10 {lab=src_ref}
N 140 10 140 120 {lab=src_ref}
N -160 10 -160 120 {lab=src_ref}
N -160 120 140 120 {lab=src_ref}
N 0 120 0 140 {lab=src_ref}
C {libs/core_single_mos/unit_nmos/unit_nmos.sym} -30 0 0 1 {name=XIREF M=1}
C {libs/core_single_mos/unit_nmos/unit_nmos.sym} 30 0 0 0 {name=X1x M=1}
C {devices/iopin.sym} -70 -100 0 1 {name=p1 lab=I_ref}
C {devices/iopin.sym} -70 80 2 0 {name=p2 lab=src_ref}
C {devices/iopin.sym} 70 -100 0 1 {name=p3 lab=1x_I_ref}
C {devices/iopin.sym} 70 80 2 0 {name=p4 lab=src_1x}
C {devices/iopin.sym} 0 140 2 0 {name=p5 lab=VSS}
