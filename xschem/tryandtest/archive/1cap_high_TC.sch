v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 230 -240 280 -240 { lab=#net1}
N 430 -240 480 -240 { lab=out}
N 480 -240 530 -240 { lab=out}
N 280 -240 330 -240 { lab=#net1}
N 40 -240 130 -240 { lab=in}
N 180 -200 180 -120 { lab=phi1_clk_n}
N 180 -360 180 -280 { lab=phi1_clk_p}
N 380 -360 380 -280 { lab=phi2_clk_p}
N 380 -200 380 -120 { lab=phi2_clk_n}
N 530 -240 580 -240 { lab=out}
C {devices/iopin.sym} 580 -240 0 0 {name=p1 lab=out}
C {devices/iopin.sym} 40 -240 2 0 {name=p2 lab=in}
C {devices/ipin.sym} 180 -120 3 0 {name=p3 lab=phi1_clk_n}
C {devices/ipin.sym} 180 -360 1 0 {name=p4 lab=phi1_clk_p}
C {devices/ipin.sym} 380 -360 1 0 {name=p5 lab=phi2_clk_p}
C {devices/ipin.sym} 380 -120 3 0 {name=p6 lab=phi2_clk_n}
C {transmission_gate/transmission_gate.sym} 180 -240 0 0 {name=X1 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {transmission_gate/transmission_gate.sym} 380 -240 0 0 {name=X2 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {sky130_fd_pr/cap_mim_m3_1.sym} 490 -210 0 0 {name=C1 model=cap_mim_m3_1 W=Wcap L=Lcap MF=1 spiceprefix=X}
C {devices/gnd.sym} 490 -180 0 0 {name=l1 lab=GND}
