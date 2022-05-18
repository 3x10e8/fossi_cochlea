v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {binary counter/bin_counter.sym} 1870 -260 0 1 {name=X1}
C {tryandtest/selector_gray.sym} 350 -1260 2 0 {name=X2}
C {devices/vsource.sym} -1350 -1340 0 0 {name=V1 value=PULSE(0,1.2,\{clk_tp\},1n,1n,\{2*clk_tp\},\{4*clk_tp\})}
C {devices/vsource.sym} -1350 -1130 0 0 {name=VDD4 value="DC 1.2"}
C {devices/gnd.sym} -1350 -1100 0 0 {name=l57 lab=GND}
C {devices/vdd.sym} -1350 -1160 0 0 {name=l58 lab=VDD}
C {devices/gnd.sym} -1350 -1310 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -1350 -1370 0 0 {name=l156 sig_type=std_logic lab=clk1}
C {devices/vsource.sym} -1350 -1250 0 0 {name=V2 value=PULSE(0,1.2,\{2*clk_tp\},1n,1n,\{4*clk_tp\},\{8*clk_tp\})}
C {devices/gnd.sym} -1350 -1220 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -1350 -1280 0 0 {name=l3 sig_type=std_logic lab=clk2}
C {devices/netlist.sym} -1380 -1600 0 0 {name=SPICE1 only_toplevel=false value="
.lib /usr/local/lib/open_pdks/sky130/sky130B/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/lib/open_pdks/sky130/sky130B/libs.ref/sky130_fd_sc_lp/spice/sky130_fd_sc_lp.spice
.options abstol=1e-14 reltol=1e-4
.param clk_f=2.56e6
.param clk_tp=\{1/clk_f\}
.tran 100n 100u
.save all
"}
C {devices/vsource.sym} -1030 -1250 0 0 {name=V3 value=PULSE(0,1.2,\{4*clk_tp\},1n,1n,\{8*clk_tp\},\{16*clk_tp\})}
C {devices/gnd.sym} -1030 -1220 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -1030 -1280 0 0 {name=l5 sig_type=std_logic lab=clk3}
C {devices/vsource.sym} -1030 -1340 0 0 {name=V4 value=PULSE(0,1.2,\{8*clk_tp\},1n,1n,\{16*clk_tp\},\{32*clk_tp\})}
C {devices/gnd.sym} -1030 -1310 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -1030 -1370 0 0 {name=l7 sig_type=std_logic lab=clk4}
C {devices/vsource.sym} -1030 -1070 0 0 {name=V5 value=PULSE(0,1.2,\{16*clk_tp\},1n,1n,\{32*clk_tp\},\{64*clk_tp\})}
C {devices/gnd.sym} -1030 -1040 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} -1030 -1100 0 0 {name=l9 sig_type=std_logic lab=clk5}
C {devices/vsource.sym} -1030 -1160 0 0 {name=V6 value=PULSE(0,1.2,\{32*clk_tp\},1n,1n,\{64*clk_tp\},\{128*clk_tp\})}
C {devices/gnd.sym} -1030 -1130 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} -1030 -1190 0 0 {name=l11 sig_type=std_logic lab=clk6}
C {devices/vsource.sym} -650 -1250 0 0 {name=V7 value=PULSE(0,1.2,\{64*clk_tp\},1n,1n,\{128*clk_tp\},\{256*clk_tp\})}
C {devices/gnd.sym} -650 -1220 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} -650 -1280 0 0 {name=l13 sig_type=std_logic lab=clk7}
C {devices/vsource.sym} -650 -1340 0 0 {name=V8 value=PULSE(0,1.2,\{128*clk_tp\},1n,1n,\{256*clk_tp\},\{512*clk_tp\})}
C {devices/gnd.sym} -650 -1310 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} -650 -1370 0 0 {name=l15 sig_type=std_logic lab=clk8}
C {devices/vsource.sym} -650 -1070 0 0 {name=V9 value=PULSE(0,1.2,\{256*clk_tp\},1n,1n,\{512*clk_tp\},\{1024*clk_tp\})}
C {devices/gnd.sym} -650 -1040 0 0 {name=l16 lab=GND}
C {devices/lab_pin.sym} -650 -1100 0 0 {name=l17 sig_type=std_logic lab=clk9}
C {devices/vsource.sym} -650 -1160 0 0 {name=V10 value=PULSE(0,1.2,\{512*clk_tp\},1n,1n,\{1024*clk_tp\},\{2048*clk_tp\})}
C {devices/gnd.sym} -650 -1130 0 0 {name=l18 lab=GND}
C {devices/lab_pin.sym} -650 -1190 0 0 {name=l19 sig_type=std_logic lab=clk10}
C {devices/vsource.sym} -1200 -1020 0 0 {name=VDD2 value="PULSE(0 1.2 \{1.5*clk_tp\} 1n 1n \{clk_tp\} \{2*clk_tp\})"}
C {devices/gnd.sym} -1200 -990 0 0 {name=l22 lab=GND}
C {devices/lab_pin.sym} -1200 -1050 0 0 {name=l23 sig_type=std_logic lab=comp_out}
C {devices/vsource.sym} -650 -1450 0 0 {name=V11 value=PULSE(0,1.2,\{clk_tp\},1n,1n,\{0.5*clk_tp\},\{clk_tp\})}
C {devices/gnd.sym} -650 -1420 0 0 {name=l47 lab=GND}
C {devices/lab_pin.sym} -650 -1480 0 0 {name=l48 sig_type=std_logic lab=clk_ext}
C {devices/vsource.sym} -360 -1450 0 0 {name=V12 value="PWL(0 0 0.1n 0 0.11n 1.2)"}
C {devices/gnd.sym} -360 -1420 0 0 {name=l88 lab=GND}
C {devices/lab_pin.sym} -360 -1480 0 0 {name=l89 sig_type=std_logic lab=rstb_global}
C {devices/vsource.sym} -1060 -1470 0 0 {name=V13 value=PULSE(0,1.2,\{clk_tp\},1n,1n,\{0.5*clk_tp\},\{2*clk_tp\})}
C {devices/gnd.sym} -1060 -1440 0 0 {name=l100 lab=GND}
C {devices/lab_pin.sym} -1060 -1500 0 0 {name=l101 sig_type=std_logic lab=cclk}
C {devices/lab_pin.sym} 280 -1140 3 0 {name=l24 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 250 -1140 3 0 {name=l25 sig_type=std_logic lab=rstb_global}
C {devices/lab_pin.sym} 630 -900 3 0 {name=l29 sig_type=std_logic lab=cclk}
C {devices/lab_pin.sym} 330 -1250 2 0 {name=l30 sig_type=std_logic lab=clk1}
C {devices/lab_pin.sym} 330 -1240 2 0 {name=l31 sig_type=std_logic lab=clk2}
C {devices/lab_pin.sym} 330 -1230 2 0 {name=l32 sig_type=std_logic lab=clk3}
C {devices/lab_pin.sym} 330 -1220 2 0 {name=l33 sig_type=std_logic lab=clk4}
C {devices/lab_pin.sym} 330 -1210 2 0 {name=l34 sig_type=std_logic lab=clk5}
C {devices/lab_pin.sym} 330 -1200 2 0 {name=l35 sig_type=std_logic lab=clk6}
C {devices/lab_pin.sym} 330 -1190 2 0 {name=l36 sig_type=std_logic lab=clk7}
C {devices/lab_pin.sym} 330 -1180 2 0 {name=l37 sig_type=std_logic lab=clk8}
C {devices/lab_pin.sym} 330 -1170 2 0 {name=l38 sig_type=std_logic lab=clk9}
C {devices/lab_pin.sym} 330 -1160 2 0 {name=l39 sig_type=std_logic lab=clk10}
C {devices/lab_pin.sym} 750 -1260 2 0 {name=l40 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 750 -1220 2 0 {name=l41 sig_type=std_logic lab=rstb_global}
C {devices/lab_pin.sym} 750 -1180 2 0 {name=l42 sig_type=std_logic lab=comp_out}
C {devices/lab_pin.sym} 520 -1260 0 0 {name=l43 sig_type=std_logic lab=q0}
C {devices/lab_pin.sym} 520 -1240 0 0 {name=l44 sig_type=std_logic lab=q1}
C {devices/lab_pin.sym} 520 -1220 0 0 {name=l45 sig_type=std_logic lab=q2}
C {devices/lab_pin.sym} 520 -1200 0 0 {name=l46 sig_type=std_logic lab=q3}
C {devices/lab_pin.sym} 520 -1180 0 0 {name=l49 sig_type=std_logic lab=q4}
C {devices/lab_pin.sym} 520 -1160 0 0 {name=l50 sig_type=std_logic lab=q5}
C {devices/lab_pin.sym} 520 -1140 0 0 {name=l51 sig_type=std_logic lab=q6}
C {devices/lab_pin.sym} 520 -1120 0 0 {name=l52 sig_type=std_logic lab=q7}
C {devices/lab_pin.sym} 520 -1100 0 0 {name=l53 sig_type=std_logic lab=q8}
C {devices/lab_pin.sym} 520 -1080 0 0 {name=l54 sig_type=std_logic lab=q9}
C {devices/lab_pin.sym} 520 -1060 0 0 {name=l55 sig_type=std_logic lab=q10}
C {devices/lab_pin.sym} 520 -1040 0 0 {name=l56 sig_type=std_logic lab=q11}
C {devices/lab_pin.sym} 520 -1020 0 0 {name=l59 sig_type=std_logic lab=q12}
C {devices/lab_pin.sym} 520 -1000 0 0 {name=l60 sig_type=std_logic lab=q13}
C {devices/lab_pin.sym} 520 -980 0 0 {name=l61 sig_type=std_logic lab=q14}
C {devices/lab_pin.sym} 520 -960 0 0 {name=l62 sig_type=std_logic lab=q15}
C {devices/lab_pin.sym} 220 -1270 1 0 {name=l63 sig_type=std_logic lab=q6}
C {devices/lab_pin.sym} 230 -1270 1 0 {name=l64 sig_type=std_logic lab=q7}
C {devices/lab_pin.sym} 240 -1270 1 0 {name=l65 sig_type=std_logic lab=q8}
C {devices/lab_pin.sym} 250 -1270 1 0 {name=l66 sig_type=std_logic lab=q9}
C {devices/lab_pin.sym} 260 -1270 1 0 {name=l67 sig_type=std_logic lab=q10}
C {devices/lab_pin.sym} 270 -1270 1 0 {name=l68 sig_type=std_logic lab=q11}
C {devices/lab_pin.sym} 280 -1270 1 0 {name=l69 sig_type=std_logic lab=q12}
C {devices/lab_pin.sym} 290 -1270 1 0 {name=l70 sig_type=std_logic lab=q13}
C {devices/lab_pin.sym} 300 -1270 1 0 {name=l71 sig_type=std_logic lab=q14}
C {devices/lab_pin.sym} 310 -1270 1 0 {name=l72 sig_type=std_logic lab=q15}
C {devices/lab_pin.sym} 200 -1200 0 0 {name=l73 sig_type=std_logic lab=muxed_out}
C {sky130_stdcells/inv_1.sym} -60 -1190 2 0 {name=x2 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} -20 -1190 2 0 {name=l74 sig_type=std_logic lab=muxed_out}
C {devices/lab_pin.sym} -100 -1190 0 0 {name=l75 sig_type=std_logic lab=ainv_out}
