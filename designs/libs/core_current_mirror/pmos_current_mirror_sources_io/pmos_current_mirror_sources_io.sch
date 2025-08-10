v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -30 0 30 0 {lab=I_ref}
N -70 40 -70 100 {lab=I_ref}
N -70 -80 -70 -40 {lab=src_ref}
N -80 -40 -80 -10 {lab=src_ref}
N -80 -40 -70 -40 {lab=src_ref}
N 70 -80 70 -40 {lab=VDD}
N 80 -40 80 -10 {lab=VDD}
N 70 -40 80 -40 {lab=VDD}
N 0 0 0 60 {lab=I_ref}
N -70 60 0 60 {lab=I_ref}
N 70 40 70 100 {lab=1x_I_ref}
C {devices/iopin.sym} -70 100 2 0 {name=p1 lab=I_ref}
C {devices/iopin.sym} -70 -80 0 1 {name=p2 lab=src_ref}
C {devices/iopin.sym} 70 100 2 0 {name=p3 lab=1x_I_ref}
C {libs/core_single_mos/unit_pmos/unit_pmos.sym} -30 0 0 1 {name=XIREF M=1}
C {libs/core_single_mos/unit_pmos/unit_pmos.sym} 30 0 0 0 {name=X1x M=1}
C {devices/iopin.sym} 70 -80 0 1 {name=p4 lab=src_1x}
