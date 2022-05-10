v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1040 -90 1100 -90 { lab=outp_filtered}
N 1160 -90 1190 -90 { lab=outp}
N 1370 80 1430 80 { lab=outm_filtered}
N 1490 80 1520 80 { lab=outm}
N 1520 80 1650 80 { lab=outm}
N 1190 -90 1340 -90 { lab=outp}
N 1240 -140 1240 -90 { lab=outp}
N 1540 50 1540 80 { lab=outm}
C {devices/netlist.sym} 1680 -660 0 0 {name=SPICE2 only_toplevel=false value="
.lib /home/sky/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /home/sky/sky130A/libs.ref/sky130_fd_sc_lp/spice/sky130_fd_sc_lp.spice
.include /home/sky/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_01v8_lvt__tt_discrete.corner.spice
.include /home/sky/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_20v0__tt_discrete.corner.spice
.include /home/sky/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_20v0__tt_discrete.corner.spice
.options abstol=1e-14 reltol=1e-4
.param capw=20
.param capl=5
.param Wcap=5
.param Lcap=10
.tran 1n 1m
.save all
"}
C {devices/lab_pin.sym} 1780 -220 0 0 {name=l220 sig_type=std_logic lab=inp}
C {devices/vsource.sym} 2240 -420 0 0 {name=VDD1 value="DC 1.2"}
C {devices/gnd.sym} 2240 -390 0 0 {name=l93 lab=GND}
C {devices/vdd.sym} 2240 -450 0 0 {name=l94 lab=VDD}
C {devices/vsource.sym} 1780 -320 0 0 {name=Vfclk5 value=PULSE(0,1.2,0,1n,1n,180n,400n)}
C {devices/gnd.sym} 1780 -290 0 0 {name=l95 lab=GND}
C {devices/lab_pin.sym} 1780 -350 0 0 {name=l114 sig_type=std_logic lab=phi1}
C {devices/vsource.sym} 1990 -190 0 0 {name=Vfclk1 value=PULSE(0,1.2,0,1n,1n,180n,400n,180)}
C {devices/gnd.sym} 1990 -160 0 0 {name=l115 lab=GND}
C {devices/lab_pin.sym} 1990 -220 0 0 {name=l116 sig_type=std_logic lab=phi2}
C {devices/vsource.sym} 2240 -280 0 0 {name=Vfclk2 value=PULSE(1.2,0,0,1n,1n,180n,400n)}
C {devices/gnd.sym} 2240 -250 0 0 {name=l117 lab=GND}
C {devices/lab_pin.sym} 2240 -310 0 0 {name=l118 sig_type=std_logic lab=phi1b}
C {devices/vsource.sym} 2240 -180 0 0 {name=Vfclk3 value=PULSE(1.2,0,0,1n,1n,180n,400n,180)}
C {devices/gnd.sym} 2240 -150 0 0 {name=l119 lab=GND}
C {devices/lab_pin.sym} 2240 -210 0 0 {name=l120 sig_type=std_logic lab=phi2b}
C {devices/vsource.sym} 1780 -190 0 0 {name=Vinp2 value="DC 0 SIN(0.4 0.2 15k)"
*SIN (0.6 0.6 1k)"}
C {devices/gnd.sym} 1780 -160 0 0 {name=l22 lab=GND}
C {devices/lab_pin.sym} 1980 -340 0 0 {name=l11 sig_type=std_logic lab=inm}
C {devices/vsource.sym} 1980 -310 0 0 {name=Vinp1 value="DC 0 SIN(0.4 -0.2 15k)"
*SIN (0.6 0.6 1k)"}
C {devices/gnd.sym} 1980 -280 0 0 {name=l14 lab=GND}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1130 -90 3 0 {name=C2 model=cap_mim_m3_1 W=10 L=10 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 1070 -90 3 0 {name=l18 sig_type=std_logic lab=outp_filtered}
C {devices/lab_pin.sym} 1340 -90 2 0 {name=l19 sig_type=std_logic lab=outp}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1460 80 3 0 {name=C3 model=cap_mim_m3_1 W=10 L=10 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 1400 80 3 0 {name=l34 sig_type=std_logic lab=outm_filtered}
C {devices/lab_pin.sym} 1650 80 2 0 {name=l35 sig_type=std_logic lab=outm}
C {tryandtest/8switchedcaps.sym} 650 0 0 0 {name=X14 Wcap=2 Lcap=5}
C {devices/lab_pin.sym} 830 -140 0 0 {name=l101 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 870 -140 2 0 {name=l102 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 830 -10 0 0 {name=l103 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 870 -10 2 0 {name=l104 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 660 -90 0 0 {name=l105 sig_type=std_logic lab=inp}
C {tryandtest/8switchedcaps.sym} 980 170 0 0 {name=X1 Wcap=2 Lcap=5}
C {devices/lab_pin.sym} 1160 30 0 0 {name=l1 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1200 30 2 0 {name=l2 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 1160 160 0 0 {name=l3 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 1200 160 2 0 {name=l4 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 990 80 0 0 {name=l5 sig_type=std_logic lab=inm}
C {devices/lab_pin.sym} 1160 -510 2 1 {name=l32 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1160 -470 2 1 {name=l33 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 1160 -370 0 0 {name=l28 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1160 -330 0 0 {name=l29 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 1160 -230 2 1 {name=l36 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1160 -190 2 1 {name=l52 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 1300 -510 2 0 {name=l30 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 1300 -470 2 0 {name=l31 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 1300 -370 2 0 {name=l53 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 1300 -330 2 0 {name=l54 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 1300 -230 2 0 {name=l55 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 1300 -190 2 0 {name=l56 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 1460 -320 2 1 {name=l57 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1460 -280 2 1 {name=l58 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 1600 -320 2 0 {name=l59 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 1600 -280 2 0 {name=l60 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 1460 -180 2 1 {name=l61 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1460 -140 2 1 {name=l62 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 1600 -180 2 0 {name=l63 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 1600 -140 2 0 {name=l64 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 1460 -40 2 1 {name=l65 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1460 0 2 1 {name=l66 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 1600 -40 2 0 {name=l67 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 1600 0 2 0 {name=l68 sig_type=std_logic lab=phi2b}
C {tryandtest/1cap_high_TC.sym} 1150 -290 1 0 {name=X7 Wcap=Wcap Lcap=Lcap}
C {tryandtest/1cap_high_TC.sym} 1150 -430 1 0 {name=X3 Wcap=Wcap Lcap=Lcap}
C {tryandtest/1cap_high_TC.sym} 1450 -380 1 0 {name=X4 Wcap=Wcap Lcap=Lcap}
C {tryandtest/1cap_high_TC.sym} 1450 -240 1 0 {name=X6 Wcap=Wcap Lcap=Lcap}
C {tryandtest/1cap_high_TC.sym} 1450 -100 1 0 {name=X8 Wcap=Wcap Lcap=Lcap}
C {tryandtest/1cap_high_TC.sym} 1150 -570 1 0 {name=X9 Wcap=Wcap Lcap=Lcap}
C {devices/lab_pin.sym} 1810 -20 0 0 {name=l7 sig_type=std_logic lab=outp}
C {devices/lab_pin.sym} 1810 20 0 0 {name=l121 sig_type=std_logic lab=outm}
C {devices/lab_pin.sym} 1900 -10 0 1 {name=l38 sig_type=std_logic lab=high}
C {devices/lab_pin.sym} 1900 10 0 1 {name=l39 sig_type=std_logic lab=low}
C {devices/lab_pin.sym} 1240 -560 0 1 {name=l23 sig_type=std_logic lab=low}
C {devices/lab_pin.sym} 1540 -370 0 0 {name=l15 sig_type=std_logic lab=high}
C {tryandtest/comparator_single_tail.sym} 1790 60 0 0 {name=X2 Wplus=0.42 Lplus=0.15 Wminus=0.42 Lminus=0.15}
C {devices/lab_pin.sym} 1870 -50 0 0 {name=l6 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1870 50 0 0 {name=l8 sig_type=std_logic lab=phi1b}
