v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 2520 -1150 2540 -1150 { lab=rst}
N 2720 -1170 2720 -1150 { lab=#net1}
N 2720 -1150 2770 -1150 { lab=#net1}
N 2770 -1200 2770 -1170 { lab=clk}
N 2500 -1200 2770 -1200 { lab=clk}
N 2540 -1200 2540 -1170 { lab=clk}
N 2500 -1150 2520 -1150 { lab=rst}
N 2540 -1130 2540 -1110 { lab=#net2}
N 2540 -1110 2770 -1110 { lab=#net2}
N 2770 -1130 2770 -1110 { lab=#net2}
N 2500 -1110 2540 -1110 { lab=#net2}
N 2950 -1170 2990 -1170 { lab=#net3}
N 2440 -1150 2500 -1150 { lab=rst}
N 2440 -1240 2440 -1150 { lab=rst}
N 2410 -1240 2440 -1240 { lab=rst}
N 2440 -1240 2990 -1240 { lab=rst}
N 2990 -1170 3010 -1170 { lab=#net3}
N 2990 -1210 3010 -1210 { lab=rst}
N 2990 -1240 2990 -1210 { lab=rst}
N 3210 -1190 3230 -1190 { lab=rstn_o}
N 2500 -1110 2500 -1080 { lab=#net2}
N 2410 -1080 2500 -1080 { lab=#net2}
N 2480 -1200 2500 -1200 { lab=clk}
N 2410 -1200 2480 -1200 { lab=clk}
N 2330 -1280 2410 -1280 { lab=rst}
N 2410 -1280 2410 -1240 { lab=rst}
N 2325 -1280 2330 -1280 { lab=rst}
C {sky130_stdcells/dfrtn_1.sym} 2630 -1150 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/or2_1.sym} 3070 -1190 0 0 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 3170 -1190 0 0 {name=x4 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrtn_1.sym} 2860 -1150 0 0 {name=x2 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 2410 -1200 0 0 {name=l3 sig_type=std_logic lab=clk}
C {devices/gnd.sym} 2410 -1140 0 0 {name=l89 lab=GND}
C {devices/vsource.sym} 2410 -1170 0 1 {name=V10 value="DC 0 PULSE(0 1.2 \{2/f\} 1n 1n \{duty_cycle*1/f\} \{1/f\})"}
C {devices/vsource.sym} 2325 -1250 0 1 {name=V9 value="DC 0 PWL(0u 1.2 2u 1.2 2.01u 0 2.93u 0 2.9319u 1.2 4u 1.2 4.01u 0)"}
C {devices/gnd.sym} 2325 -1220 0 0 {name=l88 lab=GND}
C {devices/vsource.sym} 2630 -1350 0 0 {name=V2 value=1.2}
C {devices/gnd.sym} 2630 -1320 0 0 {name=l13 lab=GND}
C {devices/vdd.sym} 2630 -1380 0 0 {name=l15 lab=VDD}
C {devices/netlist.sym} 2980 -1450 0 0 {name=s1 value="
.lib /home/sky/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /home/sky/sky130A/libs.ref/sky130_fd_sc_lp/spice/sky130_fd_sc_lp.spice
.options abstol=1e-14 reltol=1e-4
.param f=2560k
.param duty_cycle=0.5
.tran \{(1/100)*(1/f)\} \{100/f\}
.save all
"}
C {devices/lab_pin.sym} 2325 -1280 0 0 {name=l1 sig_type=std_logic lab=rst}
C {devices/vsource.sym} 2410 -1050 0 0 {name=V1 value=1.2}
C {devices/gnd.sym} 2410 -1020 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 3230 -1190 1 0 {name=l4 sig_type=std_logic lab=rstn_o}
C {sky130_stdcells/and2_1.sym} 3290 -1170 0 0 {name=x5 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 3350 -1170 2 0 {name=l5 sig_type=std_logic lab=clk_rst}
C {devices/lab_pin.sym} 3230 -1150 0 0 {name=l6 sig_type=std_logic lab=clk}
