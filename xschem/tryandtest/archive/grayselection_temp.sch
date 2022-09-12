v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 280 210 300 210 {
lab=clk1}
N 280 320 300 320 {
lab=#net1}
N 630 260 660 260 {
lab=dat}
N 280 230 300 230 {
lab=VDD}
N 280 230 280 300 {
lab=VDD}
N 280 300 300 300 {
lab=VDD}
N 480 210 550 210 {
lab=n1}
N 550 210 550 240 {
lab=n1}
N 480 280 480 320 {
lab=n2}
N 480 280 550 280 {
lab=n2}
N 660 260 840 260 {
lab=dat}
N 300 250 300 280 {
lab=clk}
N 1460 -340 1520 -340 {
lab=ctrl1}
N 1460 -220 1520 -220 {
lab=ctrl2}
N 1460 -100 1520 -100 {
lab=ctrl3}
N 1460 20 1520 20 {
lab=ctrl4}
N 1460 140 1520 140 {
lab=ctrl5}
N 1460 260 1520 260 {
lab=ctrl6}
N 1460 380 1520 380 {
lab=ctrl7}
N 1460 500 1520 500 {
lab=ctrl8}
N 1460 620 1520 620 {
lab=ctrl9}
N 1460 740 1520 740 {
lab=ctrl10}
N 1680 -380 1680 700 {
lab=#net12}
N 1680 100 1720 100 {
lab=#net12}
C {devices/vsource.sym} 20 -240 0 0 {name=V1 value=PULSE(0,1.2,\{clk_tp\},1n,1n,\{2*clk_tp\},\{4*clk_tp\})}
C {devices/vsource.sym} 20 -30 0 0 {name=VDD4 value="DC 1.2"}
C {devices/gnd.sym} 20 0 0 0 {name=l57 lab=GND}
C {devices/vdd.sym} 20 -60 0 0 {name=l58 lab=VDD}
C {devices/gnd.sym} 20 -210 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 20 -270 0 0 {name=l156 sig_type=std_logic lab=clk1}
C {devices/vsource.sym} 20 -150 0 0 {name=V2 value=PULSE(0,1.2,\{2*clk_tp\},1n,1n,\{4*clk_tp\},\{8*clk_tp\})}
C {devices/gnd.sym} 20 -120 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 20 -180 0 0 {name=l3 sig_type=std_logic lab=clk2}
C {devices/netlist.sym} -10 -500 0 0 {name=SPICE1 only_toplevel=false value="
.lib /usr/local/lib/open_pdks/sky130/sky130B/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/lib/open_pdks/sky130/sky130B/libs.ref/sky130_fd_sc_lp/spice/sky130_fd_sc_lp.spice
.options abstol=1e-14 reltol=1e-4
.param clk_f=2.56e6
.param clk_tp=\{1/clk_f\}
.tran 100n 10u
.save all
"}
C {devices/vsource.sym} 340 -150 0 0 {name=V3 value=PULSE(0,1.2,\{4*clk_tp\},1n,1n,\{8*clk_tp\},\{16*clk_tp\})}
C {devices/gnd.sym} 340 -120 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 340 -180 0 0 {name=l5 sig_type=std_logic lab=clk3}
C {devices/vsource.sym} 340 -240 0 0 {name=V4 value=PULSE(0,1.2,\{8*clk_tp\},1n,1n,\{16*clk_tp\},\{32*clk_tp\})}
C {devices/gnd.sym} 340 -210 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 340 -270 0 0 {name=l7 sig_type=std_logic lab=clk4}
C {devices/vsource.sym} 340 30 0 0 {name=V5 value=PULSE(0,1.2,\{16*clk_tp\},1n,1n,\{32*clk_tp\},\{64*clk_tp\})}
C {devices/gnd.sym} 340 60 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 340 0 0 0 {name=l9 sig_type=std_logic lab=clk5}
C {devices/vsource.sym} 340 -60 0 0 {name=V6 value=PULSE(0,1.2,\{32*clk_tp\},1n,1n,\{64*clk_tp\},\{128*clk_tp\})}
C {devices/gnd.sym} 340 -30 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 340 -90 0 0 {name=l11 sig_type=std_logic lab=clk6}
C {devices/vsource.sym} 720 -150 0 0 {name=V7 value=PULSE(0,1.2,\{64*clk_tp\},1n,1n,\{128*clk_tp\},\{256*clk_tp\})}
C {devices/gnd.sym} 720 -120 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} 720 -180 0 0 {name=l13 sig_type=std_logic lab=clk7}
C {devices/vsource.sym} 720 -240 0 0 {name=V8 value=PULSE(0,1.2,\{128*clk_tp\},1n,1n,\{256*clk_tp\},\{512*clk_tp\})}
C {devices/gnd.sym} 720 -210 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 720 -270 0 0 {name=l15 sig_type=std_logic lab=clk8}
C {devices/vsource.sym} 720 30 0 0 {name=V9 value=PULSE(0,1.2,\{256*clk_tp\},1n,1n,\{512*clk_tp\},\{1024*clk_tp\})}
C {devices/gnd.sym} 720 60 0 0 {name=l16 lab=GND}
C {devices/lab_pin.sym} 720 0 0 0 {name=l17 sig_type=std_logic lab=clk9}
C {devices/vsource.sym} 720 -60 0 0 {name=V10 value=PULSE(0,1.2,\{512*clk_tp\},1n,1n,\{1024*clk_tp\},\{2048*clk_tp\})}
C {devices/gnd.sym} 720 -30 0 0 {name=l18 lab=GND}
C {devices/lab_pin.sym} 720 -90 0 0 {name=l19 sig_type=std_logic lab=clk10}
C {devices/vsource.sym} 170 -30 0 0 {name=VDD1 value="DC 1.2"}
C {devices/gnd.sym} 170 0 0 0 {name=l20 lab=GND}
C {devices/lab_pin.sym} 170 -60 0 0 {name=l21 sig_type=std_logic lab=reg16}
C {devices/vsource.sym} 170 80 0 0 {name=VDD2 value="DC 0"}
C {devices/gnd.sym} 170 110 0 0 {name=l22 lab=GND}
C {devices/lab_pin.sym} 170 50 0 0 {name=l23 sig_type=std_logic lab=reg15_1}
C {devices/vsource.sym} 720 -350 0 0 {name=V11 value=PULSE(0,1.2,\{clk_tp\},1n,1n,\{0.5*clk_tp\},\{clk_tp\})}
C {devices/gnd.sym} 720 -320 0 0 {name=l47 lab=GND}
C {devices/lab_pin.sym} 720 -380 0 0 {name=l48 sig_type=std_logic lab=clk}
C {sky130_stdcells/mux2_1.sym} 590 260 0 0 {name=x27 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 240 320 0 0 {name=x28 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 280 210 0 0 {name=l67 sig_type=std_logic lab=clk1}
C {devices/lab_pin.sym} 40 320 0 0 {name=l68 sig_type=std_logic lab=clk1}
C {sky130_stdcells/dfrtn_1.sym} 930 260 0 0 {name=x29 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 840 280 0 0 {name=l50 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 690 260 1 0 {name=l51 sig_type=std_logic lab=dat}
C {devices/lab_pin.sym} 840 240 0 0 {name=l52 sig_type=std_logic lab=clk1}
C {devices/lab_pin.sym} 1020 240 2 0 {name=l53 sig_type=std_logic lab=out}
C {devices/vdd.sym} 280 270 3 0 {name=l54 lab=VDD}
C {devices/lab_pin.sym} 540 210 1 0 {name=l55 sig_type=std_logic lab=n1}
C {devices/lab_pin.sym} 520 280 1 0 {name=l56 sig_type=std_logic lab=n2}
C {sky130_stdcells/dfrtn_1.sym} 390 230 0 0 {name=x21 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 300 250 0 0 {name=l24 sig_type=std_logic lab=clk}
C {sky130_stdcells/dfrtn_1.sym} 1110 130 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 780 110 0 0 {name=l25 sig_type=std_logic lab=clk1}
C {sky130_stdcells/inv_1.sym} 900 110 0 0 {name=x2 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/vdd.sym} 1020 130 3 0 {name=l26 lab=VDD}
C {devices/lab_pin.sym} 1020 150 0 0 {name=l27 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 1200 110 2 0 {name=l28 sig_type=std_logic lab=q}
C {sky130_stdcells/inv_1.sym} 980 110 0 0 {name=x6 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 820 110 0 0 {name=x7 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrtn_1.sym} 390 300 2 1 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 160 320 0 0 {name=x4 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 80 320 0 0 {name=x5 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 550 320 0 0 {name=l29 sig_type=std_logic lab=clk1}
C {tryandtest/deff_rst.sym} 690 490 0 0 {name=X1}
C {devices/lab_pin.sym} 740 490 0 0 {name=l30 sig_type=std_logic lab=clk1}
C {devices/lab_pin.sym} 690 440 0 0 {name=l31 sig_type=std_logic lab=clk}
C {devices/vdd.sym} 690 410 3 0 {name=l32 lab=VDD}
C {devices/lab_pin.sym} 790 420 2 0 {name=l33 sig_type=std_logic lab=qx}
C {tryandtest/deff_rst.sym} 1360 -270 0 0 {name=X2}
C {devices/lab_pin.sym} 1410 -270 0 0 {name=l34 sig_type=std_logic lab=clk1}
C {devices/lab_pin.sym} 1360 -320 0 0 {name=l35 sig_type=std_logic lab=clk}
C {devices/vdd.sym} 1360 -350 3 0 {name=l36 lab=VDD}
C {tryandtest/deff_rst.sym} 1360 -150 0 0 {name=X3}
C {devices/lab_pin.sym} 1360 -200 0 0 {name=l37 sig_type=std_logic lab=clk}
C {devices/vdd.sym} 1360 -230 3 0 {name=l38 lab=VDD}
C {tryandtest/deff_rst.sym} 1360 -30 0 0 {name=X4}
C {devices/lab_pin.sym} 1360 -80 0 0 {name=l39 sig_type=std_logic lab=clk}
C {devices/vdd.sym} 1360 -110 3 0 {name=l40 lab=VDD}
C {tryandtest/deff_rst.sym} 1360 90 0 0 {name=X5}
C {devices/lab_pin.sym} 1360 40 0 0 {name=l41 sig_type=std_logic lab=clk}
C {devices/vdd.sym} 1360 10 3 0 {name=l42 lab=VDD}
C {tryandtest/deff_rst.sym} 1360 210 0 0 {name=X6}
C {devices/lab_pin.sym} 1360 160 0 0 {name=l43 sig_type=std_logic lab=clk}
C {devices/vdd.sym} 1360 130 3 0 {name=l44 lab=VDD}
C {tryandtest/deff_rst.sym} 1360 330 0 0 {name=X7}
C {devices/lab_pin.sym} 1360 280 0 0 {name=l46 sig_type=std_logic lab=clk}
C {devices/vdd.sym} 1360 250 3 0 {name=l49 lab=VDD}
C {tryandtest/deff_rst.sym} 1360 450 0 0 {name=X8}
C {devices/lab_pin.sym} 1360 400 0 0 {name=l59 sig_type=std_logic lab=clk}
C {devices/vdd.sym} 1360 370 3 0 {name=l60 lab=VDD}
C {tryandtest/deff_rst.sym} 1360 570 0 0 {name=X9}
C {devices/lab_pin.sym} 1360 520 0 0 {name=l61 sig_type=std_logic lab=clk}
C {devices/vdd.sym} 1360 490 3 0 {name=l62 lab=VDD}
C {tryandtest/deff_rst.sym} 1360 690 0 0 {name=X10}
C {devices/lab_pin.sym} 1360 640 0 0 {name=l63 sig_type=std_logic lab=clk}
C {devices/vdd.sym} 1360 610 3 0 {name=l64 lab=VDD}
C {tryandtest/deff_rst.sym} 1360 810 0 0 {name=X11}
C {devices/lab_pin.sym} 1360 760 0 0 {name=l65 sig_type=std_logic lab=clk}
C {devices/vdd.sym} 1360 730 3 0 {name=l66 lab=VDD}
C {devices/lab_pin.sym} 1410 -150 0 0 {name=l69 sig_type=std_logic lab=clk2}
C {devices/lab_pin.sym} 1410 -30 0 0 {name=l70 sig_type=std_logic lab=clk3}
C {devices/lab_pin.sym} 1410 90 0 0 {name=l71 sig_type=std_logic lab=clk4}
C {devices/lab_pin.sym} 1410 210 0 0 {name=l72 sig_type=std_logic lab=clk5}
C {devices/lab_pin.sym} 1410 330 0 0 {name=l45 sig_type=std_logic lab=clk6}
C {devices/lab_pin.sym} 1410 450 0 0 {name=l73 sig_type=std_logic lab=clk7}
C {devices/lab_pin.sym} 1410 570 0 0 {name=l74 sig_type=std_logic lab=clk8}
C {devices/lab_pin.sym} 1410 690 0 0 {name=l75 sig_type=std_logic lab=clk9}
C {devices/lab_pin.sym} 1410 810 0 0 {name=l76 sig_type=std_logic lab=clk10}
C {sky130_stdcells/ebufn_1.sym} 1640 -380 0 0 {name=x8 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1600 -380 0 0 {name=l77 sig_type=std_logic lab=reg16}
C {sky130_stdcells/ebufn_1.sym} 1640 -260 0 0 {name=x9 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1600 -260 0 0 {name=l78 sig_type=std_logic lab=reg15_1}
C {sky130_stdcells/ebufn_1.sym} 1640 -140 0 0 {name=x10 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1600 -140 0 0 {name=l79 sig_type=std_logic lab=reg15_1}
C {sky130_stdcells/ebufn_1.sym} 1640 -20 0 0 {name=x11 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1600 -20 0 0 {name=l80 sig_type=std_logic lab=reg15_1}
C {sky130_stdcells/ebufn_1.sym} 1640 100 0 0 {name=x12 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1600 100 0 0 {name=l81 sig_type=std_logic lab=reg15_1}
C {sky130_stdcells/ebufn_1.sym} 1640 220 0 0 {name=x13 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1600 220 0 0 {name=l82 sig_type=std_logic lab=reg15_1}
C {sky130_stdcells/ebufn_1.sym} 1640 340 0 0 {name=x14 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1600 340 0 0 {name=l83 sig_type=std_logic lab=reg15_1}
C {sky130_stdcells/ebufn_1.sym} 1640 460 0 0 {name=x15 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1600 460 0 0 {name=l84 sig_type=std_logic lab=reg15_1}
C {sky130_stdcells/ebufn_1.sym} 1640 580 0 0 {name=x16 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1600 580 0 0 {name=l85 sig_type=std_logic lab=reg15_1}
C {sky130_stdcells/ebufn_1.sym} 1640 700 0 0 {name=x17 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1600 700 0 0 {name=l86 sig_type=std_logic lab=reg15_1}
C {devices/lab_pin.sym} 1880 100 2 0 {name=l87 sig_type=std_logic lab=muxed}
C {sky130_stdcells/inv_1.sym} 1560 -340 0 0 {name=x18 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 1560 -220 0 0 {name=x19 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 1560 -100 0 0 {name=x20 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 1560 20 0 0 {name=x22 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 1560 140 0 0 {name=x23 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 1560 260 0 0 {name=x24 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 1560 380 0 0 {name=x25 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 1560 500 0 0 {name=x26 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 1560 620 0 0 {name=x30 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 1560 740 0 0 {name=x31 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
<<<<<<< HEAD
C {devices/lab_pin.sym} 1490 -340 1 0 {name=l88 sig_type=std_logic lab=ctrl1}
C {devices/lab_pin.sym} 1480 -220 1 0 {name=l89 sig_type=std_logic lab=ctrl2}
C {devices/lab_pin.sym} 1490 -100 1 0 {name=l90 sig_type=std_logic lab=ctrl3}
C {devices/lab_pin.sym} 1490 20 1 0 {name=l91 sig_type=std_logic lab=ctrl4}
C {devices/lab_pin.sym} 1490 140 1 0 {name=l92 sig_type=std_logic lab=ctrl5}
C {devices/lab_pin.sym} 1490 260 1 0 {name=l93 sig_type=std_logic lab=ctrl6}
C {devices/lab_pin.sym} 1490 380 1 0 {name=l94 sig_type=std_logic lab=ctrl7}
C {devices/lab_pin.sym} 1490 500 1 0 {name=l95 sig_type=std_logic lab=ctrl8}
C {devices/lab_pin.sym} 1490 620 1 0 {name=l96 sig_type=std_logic lab=ctrl9}
C {devices/lab_pin.sym} 1490 740 1 0 {name=l97 sig_type=std_logic lab=ctrl10}
=======
C {devices/vsource.sym} 1010 -350 0 0 {name=V12 value=PULSE(0,1.2,0,1n,1n,\{0.5*clk_tp\},\{clk_tp\})}
C {devices/gnd.sym} 1010 -320 0 0 {name=l88 lab=GND}
C {devices/lab_pin.sym} 1010 -380 0 0 {name=l89 sig_type=std_logic lab=rst}
C {sky130_stdcells/inv_1.sym} 1840 100 0 0 {name=x32 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 1760 100 0 0 {name=x33 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
>>>>>>> refs/remotes/origin/main
