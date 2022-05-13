v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 180 -1170 240 -1170 {
lab=#net1}
N 180 -1050 240 -1050 {
lab=#net2}
N 180 -930 240 -930 {
lab=#net3}
N 180 -810 240 -810 {
lab=#net4}
N 180 -690 240 -690 {
lab=#net5}
N 180 -570 240 -570 {
lab=#net6}
N 180 -450 240 -450 {
lab=#net7}
N 180 -330 240 -330 {
lab=#net8}
N 180 -210 240 -210 {
lab=#net9}
N 180 -90 240 -90 {
lab=#net10}
N 400 -1210 400 -130 {
lab=#net11}
N 400 -730 440 -730 {
lab=#net11}
N 20 -1150 80 -1150 {
lab=rst}
N 20 -1150 20 -70 {
lab=rst}
N 20 -70 80 -70 {
lab=rst}
N 20 -190 80 -190 {
lab=rst}
N 20 -310 80 -310 {
lab=rst}
N 20 -430 80 -430 {
lab=rst}
N 20 -550 80 -550 {
lab=rst}
N 20 -670 80 -670 {
lab=rst}
N 20 -790 80 -790 {
lab=rst}
N 20 -910 80 -910 {
lab=rst}
N 20 -1030 80 -1030 {
lab=rst}
N -10 -1150 20 -1150 {
lab=rst}
N 50 -1180 80 -1180 {
lab=VDD}
N 50 -1180 50 -100 {
lab=VDD}
N 50 -100 80 -100 {
lab=VDD}
N 50 -220 80 -220 {
lab=VDD}
N 50 -340 80 -340 {
lab=VDD}
N 50 -460 80 -460 {
lab=VDD}
N 50 -580 80 -580 {
lab=VDD}
N 50 -700 80 -700 {
lab=VDD}
N 50 -820 80 -820 {
lab=VDD}
N 50 -940 80 -940 {
lab=VDD}
N 50 -1060 80 -1060 {
lab=VDD}
C {tryandtest/deff_rst.sym} 80 -1100 0 0 {name=X2}
C {devices/lab_pin.sym} 130 -1100 0 0 {name=l34 sig_type=std_logic lab=clk1}
C {devices/vdd.sym} 50 -1180 0 0 {name=l36 lab=VDD}
C {tryandtest/deff_rst.sym} 80 -980 0 0 {name=X3}
C {tryandtest/deff_rst.sym} 80 -860 0 0 {name=X4}
C {tryandtest/deff_rst.sym} 80 -740 0 0 {name=X5}
C {tryandtest/deff_rst.sym} 80 -620 0 0 {name=X6}
C {tryandtest/deff_rst.sym} 80 -500 0 0 {name=X7}
C {tryandtest/deff_rst.sym} 80 -380 0 0 {name=X8}
C {tryandtest/deff_rst.sym} 80 -260 0 0 {name=X9}
C {tryandtest/deff_rst.sym} 80 -140 0 0 {name=X10}
C {tryandtest/deff_rst.sym} 80 -20 0 0 {name=X11}
C {devices/lab_pin.sym} 130 -980 0 0 {name=l69 sig_type=std_logic lab=clk2}
C {devices/lab_pin.sym} 130 -860 0 0 {name=l70 sig_type=std_logic lab=clk3}
C {devices/lab_pin.sym} 130 -740 0 0 {name=l71 sig_type=std_logic lab=clk4}
C {devices/lab_pin.sym} 130 -620 0 0 {name=l72 sig_type=std_logic lab=clk5}
C {devices/lab_pin.sym} 130 -500 0 0 {name=l45 sig_type=std_logic lab=clk6}
C {devices/lab_pin.sym} 130 -380 0 0 {name=l73 sig_type=std_logic lab=clk7}
C {devices/lab_pin.sym} 130 -260 0 0 {name=l74 sig_type=std_logic lab=clk8}
C {devices/lab_pin.sym} 130 -140 0 0 {name=l75 sig_type=std_logic lab=clk9}
C {devices/lab_pin.sym} 130 -20 0 0 {name=l76 sig_type=std_logic lab=clk10}
C {sky130_stdcells/ebufn_1.sym} 360 -1210 0 0 {name=x8 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 320 -1210 0 0 {name=l77 sig_type=std_logic lab=data10}
C {sky130_stdcells/ebufn_1.sym} 360 -1090 0 0 {name=x9 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 360 -970 0 0 {name=x10 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 360 -850 0 0 {name=x11 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 360 -730 0 0 {name=x12 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 360 -610 0 0 {name=x13 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 360 -490 0 0 {name=x14 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 360 -370 0 0 {name=x15 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 360 -250 0 0 {name=x16 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 360 -130 0 0 {name=x17 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 520 -730 2 0 {name=l87 sig_type=std_logic lab=muxed}
C {sky130_stdcells/inv_1.sym} 280 -1170 0 0 {name=x18 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 280 -1050 0 0 {name=x19 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 280 -930 0 0 {name=x20 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 280 -810 0 0 {name=x22 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 280 -690 0 0 {name=x23 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 280 -570 0 0 {name=x24 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 280 -450 0 0 {name=x25 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 280 -330 0 0 {name=x26 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 280 -210 0 0 {name=x30 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 280 -90 0 0 {name=x31 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/ipin.sym} -230 -1210 0 0 {name=p3 lab=rst}
C {devices/lab_pin.sym} -10 -1150 0 0 {name=l1 sig_type=std_logic lab=rst}
C {devices/ipin.sym} -230 -1180 0 0 {name=p4 lab=clk1}
C {devices/ipin.sym} -230 -1150 0 0 {name=p5 lab=clk2}
C {devices/ipin.sym} -230 -1120 0 0 {name=p6 lab=clk3}
C {devices/ipin.sym} -230 -1090 0 0 {name=p7 lab=clk4}
C {devices/ipin.sym} -230 -1060 0 0 {name=p8 lab=clk5}
C {devices/ipin.sym} -230 -1030 0 0 {name=p9 lab=clk6}
C {devices/ipin.sym} -230 -1000 0 0 {name=p10 lab=clk7}
C {devices/ipin.sym} -230 -970 0 0 {name=p11 lab=clk8}
C {devices/ipin.sym} -230 -940 0 0 {name=p12 lab=clk9}
C {devices/ipin.sym} -230 -910 0 0 {name=p13 lab=clk10}
C {devices/ipin.sym} -230 -880 0 0 {name=p1 lab=data1}
C {devices/ipin.sym} -230 -850 0 0 {name=p14 lab=data2}
C {devices/ipin.sym} -230 -820 0 0 {name=p15 lab=data3}
C {devices/ipin.sym} -230 -790 0 0 {name=p16 lab=data4}
C {devices/ipin.sym} -230 -760 0 0 {name=p17 lab=data5}
C {devices/ipin.sym} -230 -730 0 0 {name=p18 lab=data6}
C {devices/ipin.sym} -230 -700 0 0 {name=p19 lab=data7}
C {devices/ipin.sym} -230 -670 0 0 {name=p20 lab=data8}
C {devices/ipin.sym} -230 -640 0 0 {name=p21 lab=data9}
C {devices/ipin.sym} -230 -610 0 0 {name=p22 lab=data10}
C {devices/lab_pin.sym} 320 -1090 0 0 {name=l2 sig_type=std_logic lab=data9}
C {devices/lab_pin.sym} 320 -970 0 0 {name=l3 sig_type=std_logic lab=data8}
C {devices/lab_pin.sym} 320 -850 0 0 {name=l4 sig_type=std_logic lab=data7}
C {devices/lab_pin.sym} 320 -730 0 0 {name=l5 sig_type=std_logic lab=data6}
C {devices/lab_pin.sym} 320 -610 0 0 {name=l6 sig_type=std_logic lab=data5}
C {devices/lab_pin.sym} 320 -490 0 0 {name=l7 sig_type=std_logic lab=data4}
C {devices/lab_pin.sym} 320 -370 0 0 {name=l8 sig_type=std_logic lab=data3}
C {devices/lab_pin.sym} 320 -250 0 0 {name=l9 sig_type=std_logic lab=data2}
C {devices/lab_pin.sym} 320 -130 0 0 {name=l10 sig_type=std_logic lab=data1}
C {devices/opin.sym} 540 -500 0 0 {name=p2 lab=muxed}
C {sky130_stdcells/buf_1.sym} 480 -730 0 0 {name=x7 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
