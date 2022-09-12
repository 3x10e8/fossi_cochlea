v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1500 -500 1580 -500 {
lab=reg16}
N 1500 -390 1580 -390 {
lab=reg15_1}
N 1500 -280 1580 -280 {
lab=reg15_1}
N 1500 -170 1580 -170 {
lab=reg15_1}
N 1500 -60 1580 -60 {
lab=reg15_1}
N 1500 50 1580 50 {
lab=reg15_1}
N 1500 160 1580 160 {
lab=reg15_1}
N 1500 270 1580 270 {
lab=reg15_1}
N 1500 380 1580 380 {
lab=reg15_1}
N 1500 490 1580 490 {
lab=reg15_1}
N 1660 -500 1660 490 {
lab=muxed}
N 1660 -20 1750 -20 {
lab=muxed}
N 1400 -500 1500 -500 {
lab=reg16}
N 1400 -390 1500 -390 {
lab=reg15_1}
N 1400 -280 1500 -280 {
lab=reg15_1}
N 1400 -170 1500 -170 {
lab=reg15_1}
N 1400 -60 1500 -60 {
lab=reg15_1}
N 1400 50 1500 50 {
lab=reg15_1}
N 1400 160 1500 160 {
lab=reg15_1}
N 1400 270 1500 270 {
lab=reg15_1}
N 1400 380 1500 380 {
lab=reg15_1}
N 1400 490 1500 490 {
lab=reg15_1}
N 1180 -460 1180 530 {
lab=VDD}
N 1360 530 1580 530 {
lab=#net1}
N 1360 420 1580 420 {
lab=#net2}
N 1360 310 1580 310 {
lab=#net3}
N 1360 200 1580 200 {
lab=#net4}
N 1360 90 1580 90 {
lab=#net5}
N 1360 -20 1580 -20 {
lab=#net6}
N 1360 -130 1580 -130 {
lab=#net7}
N 1360 -240 1580 -240 {
lab=#net8}
N 1360 -350 1580 -350 {
lab=#net9}
N 1360 -460 1580 -460 {
lab=#net10}
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
.tran 1n 0.4m
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
C {tryandtest/deff.sym} 1120 -410 0 0 {}
C {devices/lab_pin.sym} 1230 -390 0 0 {name=l24 sig_type=std_logic lab=clk1}
C {tryandtest/deff.sym} 1120 -300 0 0 {}
C {tryandtest/deff.sym} 1120 -190 0 0 {}
C {tryandtest/deff.sym} 1120 -80 0 0 {}
C {tryandtest/deff.sym} 1120 30 0 0 {}
C {sky130_stdcells/ebufn_1.sym} 1620 -60 0 0 {name=x5 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {tryandtest/deff.sym} 1120 140 0 0 {}
C {tryandtest/deff.sym} 1120 250 0 0 {}
C {tryandtest/deff.sym} 1120 360 0 0 {}
C {tryandtest/deff.sym} 1120 470 0 0 {}
C {tryandtest/deff.sym} 1120 580 0 0 {}
C {devices/lab_pin.sym} 1230 -280 0 0 {name=l25 sig_type=std_logic lab=clk2}
C {devices/lab_pin.sym} 1230 -170 0 0 {name=l26 sig_type=std_logic lab=clk3}
C {devices/lab_pin.sym} 1230 -60 0 0 {name=l27 sig_type=std_logic lab=clk4}
C {devices/lab_pin.sym} 1230 50 0 0 {name=l28 sig_type=std_logic lab=clk5}
C {devices/lab_pin.sym} 1230 160 0 0 {name=l29 sig_type=std_logic lab=clk6}
C {devices/lab_pin.sym} 1230 270 0 0 {name=l30 sig_type=std_logic lab=clk7}
C {devices/lab_pin.sym} 1230 380 0 0 {name=l31 sig_type=std_logic lab=clk8}
C {devices/lab_pin.sym} 1230 490 0 0 {name=l32 sig_type=std_logic lab=clk9}
C {devices/lab_pin.sym} 1230 600 0 0 {name=l33 sig_type=std_logic lab=clk10}
C {devices/lab_pin.sym} 1400 -500 0 0 {name=l34 sig_type=std_logic lab=reg16}
C {devices/lab_pin.sym} 1400 -390 0 0 {name=l35 sig_type=std_logic lab=reg15_1}
C {devices/lab_pin.sym} 1400 -280 0 0 {name=l36 sig_type=std_logic lab=reg15_1}
C {devices/lab_pin.sym} 1400 -170 0 0 {name=l37 sig_type=std_logic lab=reg15_1}
C {devices/lab_pin.sym} 1400 -60 0 0 {name=l38 sig_type=std_logic lab=reg15_1}
C {devices/lab_pin.sym} 1400 50 0 0 {name=l39 sig_type=std_logic lab=reg15_1}
C {devices/lab_pin.sym} 1400 160 0 0 {name=l40 sig_type=std_logic lab=reg15_1}
C {devices/lab_pin.sym} 1400 270 0 0 {name=l41 sig_type=std_logic lab=reg15_1}
C {devices/lab_pin.sym} 1400 380 0 0 {name=l42 sig_type=std_logic lab=reg15_1}
C {devices/lab_pin.sym} 1400 490 0 0 {name=l43 sig_type=std_logic lab=reg15_1}
C {devices/vdd.sym} 1180 -460 0 0 {name=l44 lab=VDD}
C {sky130_stdcells/inv_1.sym} 1320 530 0 0 {name=x11 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 1320 420 0 0 {name=x12 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 1320 310 0 0 {name=x13 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 1320 200 0 0 {name=x14 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 1320 90 0 0 {name=x15 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 1320 -20 0 0 {name=x16 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 1320 -130 0 0 {name=x17 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 1320 -240 0 0 {name=x18 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 1320 -350 0 0 {name=x19 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 1320 -460 0 0 {name=x20 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1750 -20 2 0 {name=l45 sig_type=std_logic lab=muxed}
C {sky130_stdcells/ebufn_1.sym} 1620 -170 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 1620 -280 0 0 {name=x2 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 1620 -390 0 0 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 1620 -500 0 0 {name=x4 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 1620 490 0 0 {name=x6 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 1620 380 0 0 {name=x7 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 1620 270 0 0 {name=x8 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 1620 160 0 0 {name=x9 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 1620 50 0 0 {name=x10 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
