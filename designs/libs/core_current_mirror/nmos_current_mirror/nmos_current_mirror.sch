v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -160 0 -100 0 {lab=I_ref}
N -100 -0 -0 -0 {lab=I_ref}
N -0 -0 100 -0 {lab=I_ref}
N 100 0 200 0 {lab=I_ref}
N 200 -0 300 0 {lab=I_ref}
N -200 -100 -200 -40 {lab=I_ref}
N -200 40 -200 80 {lab=VSS}
N -220 80 -200 80 {lab=VSS}
N -210 10 -210 40 {lab=VSS}
N -210 40 -200 40 {lab=VSS}
N -60 40 -60 80 {lab=VSS}
N -200 80 -60 80 {lab=VSS}
N -50 10 -50 40 {lab=VSS}
N -60 40 -50 40 {lab=VSS}
N 40 40 40 80 {lab=VSS}
N -60 80 40 80 {lab=VSS}
N 50 10 50 40 {lab=VSS}
N 40 40 50 40 {lab=VSS}
N 140 40 140 80 {lab=VSS}
N 40 80 140 80 {lab=VSS}
N 150 10 150 40 {lab=VSS}
N 140 40 150 40 {lab=VSS}
N 240 40 240 80 {lab=VSS}
N 140 80 240 80 {lab=VSS}
N 250 10 250 40 {lab=VSS}
N 240 40 250 40 {lab=VSS}
N 340 40 340 80 {lab=VSS}
N 240 80 340 80 {lab=VSS}
N 350 10 350 40 {lab=VSS}
N 340 40 350 40 {lab=VSS}
N -130 -60 -130 -0 {lab=I_ref}
N -200 -60 -130 -60 {lab=I_ref}
N -60 -100 -60 -40 {lab=1x_I_ref}
N 40 -100 40 -40 {lab=2x_I_ref}
N 140 -100 140 -40 {lab=4x_I_ref}
N 240 -100 240 -40 {lab=8x_I_ref}
N 340 -100 340 -40 {lab=16x_I_ref}
N -60 -120 -60 -100 {lab=1x_I_ref}
N -200 -120 -60 -120 {lab=1x_I_ref}
N -200 -140 40 -140 {lab=2x_I_ref}
N 40 -140 40 -100 {lab=2x_I_ref}
N -200 -160 140 -160 {lab=4x_I_ref}
N 140 -160 140 -100 {lab=4x_I_ref}
N -200 -180 240 -180 {lab=8x_I_ref}
N 240 -180 240 -100 {lab=8x_I_ref}
N -200 -200 340 -200 {lab=16x_I_ref}
N 340 -200 340 -100 {lab=16x_I_ref}
C {libs/core_single_mos/unit_nmos/unit_nmos.sym} -160 0 0 1 {name=XIREF M=1}
C {libs/core_single_mos/unit_nmos/unit_nmos.sym} -100 0 0 0 {name=X1x M=1}
C {libs/core_single_mos/unit_nmos/unit_nmos.sym} 0 0 0 0 {name=X2x M=2}
C {libs/core_single_mos/unit_nmos/unit_nmos.sym} 100 0 0 0 {name=X4x M=4}
C {libs/core_single_mos/unit_nmos/unit_nmos.sym} 200 0 0 0 {name=X8x M=8}
C {libs/core_single_mos/unit_nmos/unit_nmos.sym} 300 0 0 0 {name=X16x M=16}
C {devices/iopin.sym} -200 -100 0 1 {name=p1 lab=I_ref}
C {devices/iopin.sym} -220 80 2 0 {name=p2 lab=VSS}
C {devices/iopin.sym} -200 -120 0 1 {name=p3 lab=1x_I_ref}
C {devices/iopin.sym} -200 -140 0 1 {name=p4 lab=2x_I_ref}
C {devices/iopin.sym} -200 -160 0 1 {name=p5 lab=4x_I_ref}
C {devices/iopin.sym} -200 -180 0 1 {name=p6 lab=8x_I_ref}
C {devices/iopin.sym} -200 -200 0 1 {name=p7 lab=16x_I_ref}
