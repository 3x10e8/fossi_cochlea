v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1170 -360 1320 -360 {
lab=#net1}
N 1420 -360 1490 -360 {
lab=out}
N 950 -360 1070 -360 {
lab=o1}
N 840 -290 920 -290 {
lab=GND}
C {devices/netlist.sym} 0 -720 0 0 {name=SPICE1 only_toplevel=false value="
.lib /usr/local/lib/open_pdks/sky130/sky130B/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/lib/open_pdks/sky130/sky130B/libs.ref/sky130_fd_sc_lp/spice/sky130_fd_sc_lp.spice
.param clk_f=2.56e6
.param clk_tp=\{1/clk_f\}
.tran 100u 50u
.save all
"}
C {devices/vsource.sym} -1180 -740 0 0 {name=V1 value=PULSE(0,1.2,\{clk_tp\},1n,1n,\{2*clk_tp\},\{4*clk_tp\})}
C {devices/vsource.sym} -1180 -530 0 0 {name=VDD4 value="DC 1.2"}
C {devices/gnd.sym} -1180 -500 0 0 {name=l57 lab=GND}
C {devices/vdd.sym} -1180 -560 0 0 {name=l58 lab=VDD}
C {devices/gnd.sym} -1180 -710 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -1180 -770 0 0 {name=l156 sig_type=std_logic lab=clk1}
C {devices/vsource.sym} -1180 -650 0 0 {name=V2 value=PULSE(0,1.2,\{2*clk_tp\},1n,1n,\{4*clk_tp\},\{8*clk_tp\})}
C {devices/gnd.sym} -1180 -620 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -1180 -680 0 0 {name=l3 sig_type=std_logic lab=clk2}
C {devices/vsource.sym} -860 -650 0 0 {name=V3 value=PULSE(0,1.2,\{4*clk_tp\},1n,1n,\{8*clk_tp\},\{16*clk_tp\})}
C {devices/gnd.sym} -860 -620 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -860 -680 0 0 {name=l5 sig_type=std_logic lab=clk3}
C {devices/vsource.sym} -860 -740 0 0 {name=V4 value=PULSE(0,1.2,\{8*clk_tp\},1n,1n,\{16*clk_tp\},\{32*clk_tp\})}
C {devices/gnd.sym} -860 -710 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -860 -770 0 0 {name=l7 sig_type=std_logic lab=clk4}
C {devices/vsource.sym} -860 -470 0 0 {name=V5 value=PULSE(0,1.2,\{16*clk_tp\},1n,1n,\{32*clk_tp\},\{64*clk_tp\})}
C {devices/gnd.sym} -860 -440 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} -860 -500 0 0 {name=l9 sig_type=std_logic lab=clk5}
C {devices/vsource.sym} -860 -560 0 0 {name=V6 value=PULSE(0,1.2,\{32*clk_tp\},1n,1n,\{64*clk_tp\},\{128*clk_tp\})}
C {devices/gnd.sym} -860 -530 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} -860 -590 0 0 {name=l11 sig_type=std_logic lab=clk6}
C {devices/vsource.sym} -480 -650 0 0 {name=V7 value=PULSE(0,1.2,\{64*clk_tp\},1n,1n,\{128*clk_tp\},\{256*clk_tp\})}
C {devices/gnd.sym} -480 -620 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} -480 -680 0 0 {name=l13 sig_type=std_logic lab=clk7}
C {devices/vsource.sym} -480 -740 0 0 {name=V8 value=PULSE(0,1.2,\{128*clk_tp\},1n,1n,\{256*clk_tp\},\{512*clk_tp\})}
C {devices/gnd.sym} -480 -710 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} -480 -770 0 0 {name=l15 sig_type=std_logic lab=clk8}
C {devices/vsource.sym} -480 -470 0 0 {name=V9 value=PULSE(0,1.2,\{256*clk_tp\},1n,1n,\{512*clk_tp\},\{1024*clk_tp\})}
C {devices/gnd.sym} -480 -440 0 0 {name=l16 lab=GND}
C {devices/lab_pin.sym} -480 -500 0 0 {name=l17 sig_type=std_logic lab=clk9}
C {devices/vsource.sym} -480 -560 0 0 {name=V10 value=PULSE(0,1.2,\{512*clk_tp\},1n,1n,\{1024*clk_tp\},\{2048*clk_tp\})}
C {devices/gnd.sym} -480 -530 0 0 {name=l18 lab=GND}
C {devices/lab_pin.sym} -480 -590 0 0 {name=l19 sig_type=std_logic lab=clk10}
C {devices/vsource.sym} -1030 -850 0 0 {name=VDD1 value="DC 1.2"}
C {devices/gnd.sym} -1030 -820 0 0 {name=l20 lab=GND}
C {devices/lab_pin.sym} -1030 -880 0 0 {name=l21 sig_type=std_logic lab=reg16}
C {devices/vsource.sym} -1180 -850 0 0 {name=VDD2 value="DC 0"}
C {devices/gnd.sym} -1180 -820 0 0 {name=l22 lab=GND}
C {devices/lab_pin.sym} -1180 -880 0 0 {name=l23 sig_type=std_logic lab=reg15_1}
C {devices/vsource.sym} -480 -850 0 0 {name=V11 value=PULSE(0,1.2,0,1n,1n,\{0.5*clk_tp\},\{clk_tp\})}
C {devices/gnd.sym} -480 -820 0 0 {name=l47 lab=GND}
C {devices/lab_pin.sym} -480 -880 0 0 {name=l48 sig_type=std_logic lab=clk}
C {devices/vsource.sym} -730 -850 0 0 {name=VDD3 value="DC 0.65"}
C {devices/gnd.sym} -730 -820 0 0 {name=l24 lab=GND}
C {devices/lab_pin.sym} -730 -880 0 0 {name=l25 sig_type=std_logic lab=thresh1}
C {devices/vsource.sym} -860 -850 0 0 {name=VDD5 value="DC 0.55"}
C {devices/gnd.sym} -860 -820 0 0 {name=l26 lab=GND}
C {devices/lab_pin.sym} -860 -880 0 0 {name=l27 sig_type=std_logic lab=thresh2}
C {devices/vsource.sym} -480 -370 0 0 {name=V12 value=PULSE(0,1.2,0,1n,1n,\{0.5*clk_tp-5n\},\{clk_tp\})}
C {devices/gnd.sym} -480 -340 0 0 {name=l28 lab=GND}
C {devices/lab_pin.sym} -480 -400 0 0 {name=l29 sig_type=std_logic lab=phi1}
C {devices/vsource.sym} -860 -370 0 0 {name=V13 value=PULSE(0,1.2,0,1n,1n,\{0.5*clk_tp-5n\},\{clk_tp\},180)}
C {devices/gnd.sym} -860 -340 0 0 {name=l30 lab=GND}
C {devices/lab_pin.sym} -860 -400 0 0 {name=l31 sig_type=std_logic lab=phi2}
C {devices/vsource.sym} -480 -270 0 0 {name=V14 value=PULSE(1.2,0,0,1n,1n,\{0.5*clk_tp-5n\},\{clk_tp\})}
C {devices/gnd.sym} -480 -240 0 0 {name=l32 lab=GND}
C {devices/lab_pin.sym} -480 -300 0 0 {name=l33 sig_type=std_logic lab=phi1b}
C {devices/vsource.sym} -860 -270 0 0 {name=V15 value=PULSE(1.2,0,0,1n,1n,\{0.5*clk_tp-5n\},\{clk_tp\},180)}
C {devices/gnd.sym} -860 -240 0 0 {name=l34 lab=GND}
C {devices/lab_pin.sym} -860 -300 0 0 {name=l35 sig_type=std_logic lab=phi2b}
C {devices/vsource.sym} -1180 -370 0 0 {name=V16 value=PULSE(0,1.2,0,1n,1n,\{0.5*clk_tp\},\{2*clk_tp\})}
C {devices/gnd.sym} -1180 -340 0 0 {name=l36 lab=GND}
C {devices/lab_pin.sym} -1180 -400 0 0 {name=l37 sig_type=std_logic lab=cclk}
C {devices/vsource.sym} -1180 -270 0 0 {name=V17 value=PULSE(1.2,0,0,1n,1n,\{0.5*clk_tp\},\{2*clk_tp\})}
C {devices/gnd.sym} -1180 -240 0 0 {name=l38 lab=GND}
C {devices/lab_pin.sym} -1180 -300 0 0 {name=l39 sig_type=std_logic lab=cclkb}
C {devices/vsource.sym} -480 -170 0 0 {name=VDD6 value="SIN(0.6,0.2,2000)"}
C {devices/gnd.sym} -480 -140 0 0 {name=l40 lab=GND}
C {devices/lab_pin.sym} -480 -200 0 0 {name=l41 sig_type=std_logic lab=vinp}
C {devices/vsource.sym} -480 -70 0 0 {name=VDD7 value="SIN(0.6,-0.2,2000)"}
C {devices/gnd.sym} -480 -40 0 0 {name=l42 lab=GND}
C {devices/lab_pin.sym} -480 -100 0 0 {name=l43 sig_type=std_logic lab=vinm}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1240 -330 0 0 {name=C1 model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {transmission_gate/transmission_gate.sym} 1370 -360 0 0 {name=X3 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {transmission_gate/transmission_gate.sym} 1120 -360 0 0 {name=X4 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/gnd.sym} 1240 -300 0 0 {name=l67 lab=GND}
C {devices/lab_pin.sym} 1120 -320 3 0 {name=l70 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1370 -320 3 0 {name=l71 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 1120 -400 1 0 {name=l72 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 1370 -400 1 0 {name=l73 sig_type=std_logic lab=phi2b}
C {tryandtest/selector_gray.sym} 800 -300 0 0 {name=X5}
C {devices/lab_pin.sym} 1490 -360 2 0 {name=l74 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 820 -400 0 0 {name=l75 sig_type=std_logic lab=clk1}
C {devices/lab_pin.sym} 820 -390 0 0 {name=l76 sig_type=std_logic lab=clk2}
C {devices/lab_pin.sym} 820 -380 0 0 {name=l77 sig_type=std_logic lab=clk3}
C {devices/lab_pin.sym} 820 -370 0 0 {name=l78 sig_type=std_logic lab=clk4}
C {devices/lab_pin.sym} 820 -360 0 0 {name=l79 sig_type=std_logic lab=clk5}
C {devices/lab_pin.sym} 820 -350 0 0 {name=l80 sig_type=std_logic lab=clk6}
C {devices/lab_pin.sym} 820 -340 0 0 {name=l81 sig_type=std_logic lab=clk7}
C {devices/lab_pin.sym} 820 -330 0 0 {name=l82 sig_type=std_logic lab=clk8}
C {devices/lab_pin.sym} 820 -320 0 0 {name=l83 sig_type=std_logic lab=clk9}
C {devices/lab_pin.sym} 820 -310 0 0 {name=l84 sig_type=std_logic lab=clk10}
C {devices/vdd.sym} 930 -290 2 0 {name=l85 lab=VDD}
C {devices/gnd.sym} 840 -290 0 0 {name=l86 lab=GND}
C {devices/lab_pin.sym} 870 -420 0 0 {name=l87 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 1050 -360 3 0 {name=l44 sig_type=std_logic lab=o1}
