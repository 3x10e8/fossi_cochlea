v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 2520 -1150 2540 -1150 { lab=rst_ext}
N 2720 -1170 2720 -1150 { lab=#net1}
N 2720 -1150 2770 -1150 { lab=#net1}
N 2770 -1200 2770 -1170 { lab=clk_ext}
N 2500 -1200 2770 -1200 { lab=clk_ext}
N 2540 -1200 2540 -1170 { lab=clk_ext}
N 2500 -1150 2520 -1150 { lab=rst_ext}
N 2540 -1130 2540 -1110 { lab=en}
N 2540 -1110 2770 -1110 { lab=en}
N 2770 -1130 2770 -1110 { lab=en}
N 2500 -1110 2540 -1110 { lab=en}
N 2950 -1170 2990 -1170 { lab=#net2}
N 2440 -1150 2500 -1150 { lab=rst_ext}
N 2440 -1240 2440 -1150 { lab=rst_ext}
N 2410 -1240 2440 -1240 { lab=rst_ext}
N 2440 -1240 2990 -1240 { lab=rst_ext}
N 2990 -1170 3010 -1170 { lab=#net2}
N 2990 -1210 3010 -1210 { lab=rst_ext}
N 2990 -1240 2990 -1210 { lab=rst_ext}
N 3210 -1190 3230 -1190 { lab=rstb}
N 2500 -1110 2500 -1080 { lab=en}
N 2410 -1080 2500 -1080 { lab=en}
N 2480 -1200 2500 -1200 { lab=clk_ext}
N 2410 -1200 2480 -1200 { lab=clk_ext}
N 2330 -1280 2410 -1280 { lab=rst_ext}
N 2410 -1280 2410 -1240 { lab=rst_ext}
N 3230 -1240 3230 -1190 { lab=rstb}
N 3230 -1240 3350 -1240 { lab=rstb}
C {sky130_stdcells/dfrtn_1.sym} 2630 -1150 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/or2_1.sym} 3070 -1190 0 0 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 3170 -1190 0 0 {name=x4 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrtn_1.sym} 2860 -1150 0 0 {name=x2 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/ipin.sym} 2340 -1280 0 0 {name=p1 lab=rst_ext}
C {devices/ipin.sym} 2420 -1200 0 0 {name=p2 lab=clk_ext}
C {devices/ipin.sym} 2420 -1080 0 0 {name=p3 lab=en}
C {devices/opin.sym} 3340 -1240 0 0 {name=p4 lab=rstb}
