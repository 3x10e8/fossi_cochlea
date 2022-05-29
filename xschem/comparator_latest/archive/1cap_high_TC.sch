v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 230 -240 280 -240 { lab=#net1}
N 540 -220 590 -220 { lab=#net2}
N 590 -220 590 -160 { lab=#net2}
N 590 -220 640 -220 { lab=#net2}
N 280 -240 330 -240 { lab=#net1}
N 40 -240 130 -240 { lab=in}
N 180 -200 180 -120 { lab=phi1_clk_n}
N 180 -360 180 -280 { lab=phi1_clk_p}
N 490 -340 490 -260 { lab=phi2_clk_p}
N 490 -180 490 -100 { lab=phi2_clk_n}
N 750 -200 800 -200 { lab=out}
C {devices/gnd.sym} 590 -100 0 0 {name=l3 lab=GND}
C {sky130_fd_pr/cap_mim_m3_1.sym} 590 -130 0 0 {name=C2 model=cap_mim_m3_1 W=Wcap L=Lcap MF=1 spiceprefix=X}
C {devices/iopin.sym} 800 -200 0 0 {name=p1 lab=out}
C {devices/iopin.sym} 40 -240 2 0 {name=p2 lab=in}
C {devices/ipin.sym} 180 -120 3 0 {name=p3 lab=phi1_clk_n}
C {devices/ipin.sym} 180 -360 1 0 {name=p4 lab=phi1_clk_p}
C {devices/ipin.sym} 490 -340 1 0 {name=p5 lab=phi2_clk_p}
C {devices/ipin.sym} 490 -100 3 0 {name=p6 lab=phi2_clk_n}
C {transmission_gate/transmission_gate.sym} 180 -240 0 0 {name=X1 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {transmission_gate/transmission_gate.sym} 490 -220 0 0 {name=X2 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {tryandtest/unitygainbuffer.sym} 620 -150 0 0 {name=X3}
C {tryandtest/unitygainbuffer.sym} 310 -170 0 0 {name=X4}
