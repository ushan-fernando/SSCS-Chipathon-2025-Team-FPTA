v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -300 -90 -240 -90 {lab=I_ref}
N -240 -90 -140 -90 {lab=I_ref}
N -140 -90 -40 -90 {lab=I_ref}
N -40 -90 60 -90 {lab=I_ref}
N 60 -90 160 -90 {lab=I_ref}
N -340 -50 -340 10 {lab=I_ref}
N -340 -170 -340 -130 {lab=VDD}
N -360 -170 -340 -170 {lab=VDD}
N -350 -130 -350 -100 {lab=VDD}
N -350 -130 -340 -130 {lab=VDD}
N -200 -170 -200 -130 {lab=VDD}
N -340 -170 -200 -170 {lab=VDD}
N -190 -130 -190 -100 {lab=VDD}
N -200 -130 -190 -130 {lab=VDD}
N -100 -170 -100 -130 {lab=VDD}
N -200 -170 -100 -170 {lab=VDD}
N -90 -130 -90 -100 {lab=VDD}
N -100 -130 -90 -130 {lab=VDD}
N 0 -170 0 -130 {lab=VDD}
N -100 -170 0 -170 {lab=VDD}
N 10 -130 10 -100 {lab=VDD}
N 0 -130 10 -130 {lab=VDD}
N 100 -170 100 -130 {lab=VDD}
N 0 -170 100 -170 {lab=VDD}
N 110 -130 110 -100 {lab=VDD}
N 100 -130 110 -130 {lab=VDD}
N 200 -170 200 -130 {lab=VDD}
N 100 -170 200 -170 {lab=VDD}
N 210 -130 210 -100 {lab=VDD}
N 200 -130 210 -130 {lab=VDD}
N -270 -90 -270 -30 {lab=I_ref}
N -340 -30 -270 -30 {lab=I_ref}
N -200 -50 -200 10 {lab=1x_I_ref}
N -100 -50 -100 10 {lab=2x_I_ref}
N 0 -50 0 10 {lab=4x_I_ref}
N 100 -50 100 10 {lab=8x_I_ref}
N 200 -50 200 10 {lab=16x_I_ref}
N -200 10 -200 30 {lab=1x_I_ref}
N -340 30 -200 30 {lab=1x_I_ref}
N -340 50 -100 50 {lab=2x_I_ref}
N -100 10 -100 50 {lab=2x_I_ref}
N -340 70 0 70 {lab=4x_I_ref}
N 0 10 0 70 {lab=4x_I_ref}
N -340 90 100 90 {lab=8x_I_ref}
N 100 10 100 90 {lab=8x_I_ref}
N -340 110 200 110 {lab=16x_I_ref}
N 200 10 200 110 {lab=16x_I_ref}
C {devices/iopin.sym} -340 10 2 0 {name=p1 lab=I_ref}
C {devices/iopin.sym} -360 -170 0 1 {name=p2 lab=VDD}
C {devices/iopin.sym} -340 30 2 0 {name=p3 lab=1x_I_ref}
C {devices/iopin.sym} -340 50 2 0 {name=p4 lab=2x_I_ref}
C {devices/iopin.sym} -340 70 2 0 {name=p5 lab=4x_I_ref}
C {devices/iopin.sym} -340 90 2 0 {name=p6 lab=8x_I_ref}
C {devices/iopin.sym} -340 110 2 0 {name=p7 lab=16x_I_ref}
C {libs/core_single_mos/unit_pmos/unit_pmos.sym} -300 -90 0 1 {name=XIREF M=1}
C {libs/core_single_mos/unit_pmos/unit_pmos.sym} -240 -90 0 0 {name=X1x M=1}
C {libs/core_single_mos/unit_pmos/unit_pmos.sym} -140 -90 0 0 {name=X2x M=2}
C {libs/core_single_mos/unit_pmos/unit_pmos.sym} -40 -90 0 0 {name=X4x M=4}
C {libs/core_single_mos/unit_pmos/unit_pmos.sym} 60 -90 0 0 {name=X8x M=8}
C {libs/core_single_mos/unit_pmos/unit_pmos.sym} 160 -90 0 0 {name=X16x M=16}
