v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -80 -30 90 -30 {
lab=sig}
N -80 30 90 30 {
lab=vss}
N -0 -80 0 -30 {
lab=sig}
N -0 30 0 80 {
lab=vss}
C {sky130_fd_pr/cap_mim_m3_1.sym} -80 0 0 0 {name=C1 model=cap_mim_m3_1 W=10 L=10 MF=16 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 90 0 2 0 {name=C2 model=cap_mim_m3_2 W=10 L=10 MF=16 spiceprefix=X}
C {devices/iopin.sym} 0 -80 3 0 {name=p1 lab=sig}
C {devices/iopin.sym} 0 80 1 0 {name=p1 lab=vss}
