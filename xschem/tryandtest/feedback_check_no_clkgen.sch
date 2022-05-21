v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 330 -500 480 -500 {
lab=out1}
N 580 -500 650 -500 {
lab=ox}
N 110 -500 230 -500 {
lab=clk_2}
N 480 -260 660 -260 {
lab=o2}
N 760 -260 860 -260 {
lab=ox}
N 1020 -260 1200 -260 {
lab=o4}
N 1300 -260 1400 -260 {
lab=o5}
N 1560 -260 1740 -260 {
lab=o6}
N 1840 -260 1940 -260 {
lab=o7}
N 860 -260 920 -260 {
lab=ox}
N 1400 -260 1460 -260 {
lab=o5}
N 650 -500 850 -500 {
lab=ox}
N 850 -500 860 -500 {
lab=ox}
N 860 -500 860 -260 {
lab=ox}
C {devices/netlist.sym} 0 -720 0 0 {name=SPICE1 only_toplevel=false value="
.lib /usr/local/lib/open_pdks/sky130/sky130B/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/lib/open_pdks/sky130/sky130B/libs.ref/sky130_fd_sc_lp/spice/sky130_fd_sc_lp.spice
.param clk_f=2.56e6
.param clk_tp=\{1/clk_f\}
.tran 100u 5m
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
C {devices/vsource.sym} -480 -370 0 0 {name=V12 value=PULSE(0,1.2,0,1n,1n,\{0.5*clk_tp-10n\},\{clk_tp\})}
C {devices/gnd.sym} -480 -340 0 0 {name=l28 lab=GND}
C {devices/lab_pin.sym} -480 -400 0 0 {name=l29 sig_type=std_logic lab=phi1}
C {devices/vsource.sym} -860 -370 0 0 {name=V13 value=PULSE(0,1.2,0,1n,1n,\{0.5*clk_tp-10n\},\{clk_tp\},180)}
C {devices/gnd.sym} -860 -340 0 0 {name=l30 lab=GND}
C {devices/lab_pin.sym} -860 -400 0 0 {name=l31 sig_type=std_logic lab=phi2}
C {devices/vsource.sym} -480 -270 0 0 {name=V14 value=PULSE(1.2,0,0,1n,1n,\{0.5*clk_tp-10n\},\{clk_tp\})}
C {devices/gnd.sym} -480 -240 0 0 {name=l32 lab=GND}
C {devices/lab_pin.sym} -480 -300 0 0 {name=l33 sig_type=std_logic lab=phi1b}
C {devices/vsource.sym} -860 -270 0 0 {name=V15 value=PULSE(1.2,0,0,1n,1n,\{0.5*clk_tp-10n\},\{clk_tp\},180)}
C {devices/gnd.sym} -860 -240 0 0 {name=l34 lab=GND}
C {devices/lab_pin.sym} -860 -300 0 0 {name=l35 sig_type=std_logic lab=phi2b}
C {devices/vsource.sym} -1180 -370 0 0 {name=V16 value=PULSE(0,1.2,0,1n,1n,\{0.5*clk_tp\},\{2*clk_tp\})}
C {devices/gnd.sym} -1180 -340 0 0 {name=l36 lab=GND}
C {devices/lab_pin.sym} -1180 -400 0 0 {name=l37 sig_type=std_logic lab=cclk}
C {devices/vsource.sym} -1180 -270 0 0 {name=V17 value=PULSE(1.2,0,0,1n,1n,\{0.5*clk_tp\},\{2*clk_tp\})}
C {devices/gnd.sym} -1180 -240 0 0 {name=l38 lab=GND}
C {devices/lab_pin.sym} -1180 -300 0 0 {name=l39 sig_type=std_logic lab=cclkb}
C {devices/vsource.sym} -480 -170 0 0 {name=VDD6 value="SIN(0.5,0.2,1000)"}
C {devices/gnd.sym} -480 -140 0 0 {name=l40 lab=GND}
C {devices/lab_pin.sym} -480 -200 0 0 {name=l41 sig_type=std_logic lab=vinp}
C {devices/vsource.sym} -480 -70 0 0 {name=VDD7 value="SIN(0.6,-0.2,2000)"}
C {devices/gnd.sym} -480 -40 0 0 {name=l42 lab=GND}
C {devices/lab_pin.sym} -480 -100 0 0 {name=l43 sig_type=std_logic lab=vinm}
C {sky130_fd_pr/cap_mim_m3_1.sym} 400 -470 0 0 {name=C1 model=cap_mim_m3_1 W=5 L=2 MF=1 spiceprefix=X}
C {transmission_gate/transmission_gate.sym} 530 -500 0 0 {name=X3 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {transmission_gate/transmission_gate.sym} 280 -500 0 0 {name=X4 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/gnd.sym} 400 -440 0 0 {name=l67 lab=GND}
C {devices/lab_pin.sym} 280 -460 3 0 {name=l70 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 530 -460 3 0 {name=l71 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 280 -540 1 0 {name=l72 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 530 -540 1 0 {name=l73 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 400 -500 1 0 {name=l46 sig_type=std_logic lab=out1}
C {devices/capa.sym} 580 -230 0 0 {name=C2
m=1
value=40f
footprint=1206
device="ceramic capacitor"}
C {transmission_gate/transmission_gate.sym} 430 -260 0 0 {name=X1 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 430 -220 3 0 {name=l49 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 430 -300 1 0 {name=l50 sig_type=std_logic lab=phi1b}
C {transmission_gate/transmission_gate.sym} 710 -260 0 0 {name=X2 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 710 -220 3 0 {name=l51 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 710 -300 1 0 {name=l52 sig_type=std_logic lab=phi2b}
C {devices/capa.sym} 860 -230 0 0 {name=C3
m=1
value=12p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1120 -230 0 0 {name=C4
m=1
value=20f
footprint=1206
device="ceramic capacitor"}
C {transmission_gate/transmission_gate.sym} 970 -260 0 0 {name=X6 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 970 -220 3 0 {name=l53 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 970 -300 1 0 {name=l54 sig_type=std_logic lab=phi1b}
C {transmission_gate/transmission_gate.sym} 1250 -260 0 0 {name=X7 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 1250 -220 3 0 {name=l55 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 1250 -300 1 0 {name=l56 sig_type=std_logic lab=phi2b}
C {devices/capa.sym} 1400 -230 0 0 {name=C5
m=1
value=6p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1660 -230 0 0 {name=C6
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {transmission_gate/transmission_gate.sym} 1510 -260 0 0 {name=X8 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 1510 -220 3 0 {name=l59 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1510 -300 1 0 {name=l60 sig_type=std_logic lab=phi1b}
C {transmission_gate/transmission_gate.sym} 1790 -260 0 0 {name=X9 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 1790 -220 3 0 {name=l61 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 1790 -300 1 0 {name=l62 sig_type=std_logic lab=phi2b}
C {devices/capa.sym} 1940 -230 0 0 {name=C7
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 580 -200 0 0 {name=l63 lab=GND}
C {devices/gnd.sym} 860 -200 0 0 {name=l64 lab=GND}
C {devices/gnd.sym} 1120 -200 0 0 {name=l65 lab=GND}
C {devices/gnd.sym} 1400 -200 0 0 {name=l66 lab=GND}
C {devices/gnd.sym} 1660 -200 0 0 {name=l68 lab=GND}
C {devices/gnd.sym} 1940 -200 0 0 {name=l69 lab=GND}
C {devices/lab_pin.sym} 580 -260 1 0 {name=l87 sig_type=std_logic lab=o2}
C {devices/lab_pin.sym} 1120 -260 1 0 {name=l89 sig_type=std_logic lab=o4}
C {devices/lab_pin.sym} 1400 -260 1 0 {name=l90 sig_type=std_logic lab=o5}
C {devices/lab_pin.sym} 1660 -260 1 0 {name=l91 sig_type=std_logic lab=o6}
C {devices/lab_pin.sym} 1940 -260 1 0 {name=l92 sig_type=std_logic lab=o7}
C {devices/lab_pin.sym} 380 -260 0 0 {name=l93 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 860 -500 2 0 {name=l74 sig_type=std_logic lab=ox}
C {devices/vdd.sym} 300 -540 0 0 {name=l94 lab=VDD}
C {devices/vdd.sym} 550 -540 0 0 {name=l95 lab=VDD}
C {devices/gnd.sym} 300 -460 0 0 {name=l96 lab=GND}
C {devices/gnd.sym} 550 -460 0 0 {name=l97 lab=GND}
C {devices/vsource.sym} -190 -850 0 0 {name=V18 value=PULSE(0,1.2,0,1n,1n,\{clk_tp\},\{2*clk_tp\})}
C {devices/gnd.sym} -190 -820 0 0 {name=l75 lab=GND}
C {devices/lab_pin.sym} -190 -880 0 0 {name=l76 sig_type=std_logic lab=clk_2}
C {devices/lab_pin.sym} 110 -500 0 0 {name=l45 sig_type=std_logic lab=clk_2}
C {devices/vdd.sym} 450 -300 0 0 {name=l77 lab=VDD}
C {devices/gnd.sym} 450 -220 0 0 {name=l78 lab=GND}
C {devices/vdd.sym} 730 -300 0 0 {name=l79 lab=VDD}
C {devices/gnd.sym} 730 -220 0 0 {name=l80 lab=GND}
C {devices/vdd.sym} 990 -300 0 0 {name=l81 lab=VDD}
C {devices/gnd.sym} 990 -220 0 0 {name=l82 lab=GND}
C {devices/vdd.sym} 1270 -300 0 0 {name=l83 lab=VDD}
C {devices/gnd.sym} 1270 -220 0 0 {name=l84 lab=GND}
C {devices/vdd.sym} 1530 -300 0 0 {name=l85 lab=VDD}
C {devices/gnd.sym} 1530 -220 0 0 {name=l86 lab=GND}
C {devices/vdd.sym} 1810 -300 0 0 {name=l88 lab=VDD}
C {devices/gnd.sym} 1810 -220 0 0 {name=l98 lab=GND}
