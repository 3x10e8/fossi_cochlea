v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 40 -300 40 -240 { lab=en}
N 40 -300 260 -300 { lab=en}
N 260 -300 260 -280 { lab=en}
N 380 -260 380 -240 { lab=#net1}
N 720 -300 720 -240 { lab=#net2}
N 720 -300 940 -300 { lab=#net2}
N 940 -300 940 -280 { lab=#net2}
N 1060 -260 1060 -240 { lab=#net3}
N 380 -300 380 -260 { lab=#net1}
N 380 -300 600 -300 { lab=#net1}
N 600 -300 600 -280 { lab=#net1}
N 1060 -300 1060 -260 { lab=#net3}
N 1060 -300 1280 -300 { lab=#net3}
N 150 -70 1170 -70 { lab=clk}
N 40 -140 40 -20 { lab=rstb}
N 40 -20 1060 -20 { lab=rstb}
N 1060 -140 1060 -20 { lab=rstb}
N 720 -140 720 -20 { lab=rstb}
N 380 -140 380 -20 { lab=rstb}
N 10 -140 40 -140 { lab=rstb}
N 10 -70 150 -70 { lab=clk}
N 10 -240 40 -240 { lab=en}
N 1400 -300 1400 -240 { lab=#net4}
N 1400 -300 1620 -300 { lab=#net4}
N 1620 -300 1620 -280 { lab=#net4}
N 1740 -260 1740 -240 { lab=#net5}
N 2080 -300 2080 -240 { lab=#net6}
N 2080 -300 2300 -300 { lab=#net6}
N 2300 -300 2300 -280 { lab=#net6}
N 2420 -260 2420 -240 { lab=out7}
N 1740 -300 1740 -260 { lab=#net5}
N 1740 -300 1960 -300 { lab=#net5}
N 1960 -300 1960 -280 { lab=#net5}
N 2420 -300 2420 -260 { lab=out7}
N 2420 -300 2640 -300 { lab=out7}
N 2640 -300 2640 -240 { lab=out7}
N 1280 -300 1280 -280 { lab=#net3}
N 1170 -70 2530 -70 { lab=clk}
N 1060 -20 2420 -20 { lab=rstb}
N 2420 -140 2420 -20 { lab=rstb}
N 2080 -140 2080 -20 { lab=rstb}
N 1400 -140 1400 -20 { lab=rstb}
N 1740 -140 1740 -20 { lab=rstb}
N 260 -240 260 30 { lab=out0}
N 600 -240 600 30 { lab=out1}
N 940 -240 940 30 { lab=out2}
N 1280 -240 1280 30 { lab=out3}
N 1620 -240 1620 30 { lab=out4}
N 1960 -240 1960 30 { lab=out5}
N 2300 -240 2300 20 { lab=out6}
N 2300 20 2300 30 { lab=out6}
N 2640 -240 2640 30 { lab=out7}
C {T_flip_flop/asyn_rst_t_ff.sym} 1090 180 0 0 {name=X1}
C {T_flip_flop/asyn_rst_t_ff.sym} 1430 180 0 0 {name=X2}
C {sky130_stdcells/and2_0.sym} 320 -260 0 0 {name=x2 VGND=gnd VNB=gnd VPB=vdd VPWR=vdd prefix=sky130_fd_sc_lp__ }
C {T_flip_flop/asyn_rst_t_ff.sym} 1770 180 0 0 {name=X3}
C {T_flip_flop/asyn_rst_t_ff.sym} 2110 180 0 0 {name=X4}
C {sky130_stdcells/and2_0.sym} 1000 -260 0 0 {name=x1 VGND=gnd VNB=gnd VPB=vdd VPWR=vdd prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/and2_0.sym} 660 -260 0 0 {name=x3 VGND=gnd VNB=gnd VPB=vdd VPWR=vdd prefix=sky130_fd_sc_lp__ }
C {T_flip_flop/asyn_rst_t_ff.sym} 2450 180 0 0 {name=X5}
C {T_flip_flop/asyn_rst_t_ff.sym} 2790 180 0 0 {name=X6}
C {sky130_stdcells/and2_0.sym} 1680 -260 0 0 {name=x4 VGND=gnd VNB=gnd VPB=vdd VPWR=vdd prefix=sky130_fd_sc_lp__ }
C {T_flip_flop/asyn_rst_t_ff.sym} 3130 180 0 0 {name=X7}
C {T_flip_flop/asyn_rst_t_ff.sym} 3470 180 0 0 {name=X8}
C {sky130_stdcells/and2_0.sym} 2360 -260 0 0 {name=x5 VGND=gnd VNB=gnd VPB=vdd VPWR=vdd prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/and2_0.sym} 2020 -260 0 0 {name=x6 VGND=gnd VNB=gnd VPB=vdd VPWR=vdd prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/and2_0.sym} 1340 -260 0 0 {name=x7 VGND=gnd VNB=gnd VPB=vdd VPWR=vdd prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 10 -240 0 0 {name=l1 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 10 -140 0 0 {name=l2 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} 10 -70 0 0 {name=l3 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 260 30 0 0 {name=l4 sig_type=std_logic lab=out0}
C {devices/lab_pin.sym} 600 30 0 0 {name=l5 sig_type=std_logic lab=out1}
C {devices/lab_pin.sym} 940 30 0 0 {name=l6 sig_type=std_logic lab=out2}
C {devices/lab_pin.sym} 1280 30 0 0 {name=l7 sig_type=std_logic lab=out3}
C {devices/lab_pin.sym} 1620 30 0 0 {name=l8 sig_type=std_logic lab=out4}
C {devices/lab_pin.sym} 1960 30 0 0 {name=l9 sig_type=std_logic lab=out5}
C {devices/lab_pin.sym} 2300 30 0 0 {name=l10 sig_type=std_logic lab=out6}
C {devices/lab_pin.sym} 2640 30 0 0 {name=l11 sig_type=std_logic lab=out7}
C {devices/netlist.sym} 10 -610 0 0 {name=SPICE2 only_toplevel=false value="
.lib /home/sky/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /home/sky/sky130A/libs.ref/sky130_fd_sc_lp/spice/sky130_fd_sc_lp.spice
.include /home/sky/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_01v8_lvt__tt_discrete.corner.spice
.include /home/sky/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_20v0__tt_discrete.corner.spice
.include /home/sky/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_20v0__tt_discrete.corner.spice
.options abstol=1e-14 reltol=1e-4
.param capw=20
.param capl=5
.param Wcap=10
.param Lcap=10
.tran 1n 1000n
.save all
"}
C {devices/vsource.sym} 520 -400 0 0 {name=VDD1 value="DC 1.2"}
C {devices/gnd.sym} 520 -370 0 0 {name=l93 lab=GND}
C {devices/vdd.sym} 520 -430 0 0 {name=l94 lab=VDD}
C {devices/vsource.sym} 260 -420 0 0 {name=Vfclk5 value=PULSE(0,1.2,0,1n,1n,10n,20n)}
C {devices/gnd.sym} 260 -390 0 0 {name=l95 lab=GND}
C {devices/lab_pin.sym} 260 -450 0 0 {name=l114 sig_type=std_logic lab=clk}
C {devices/vsource.sym} 670 -420 0 0 {name=Vfclk1 value=PULSE(0,1.2,0,1n,1n,5000n,10000n)}
C {devices/gnd.sym} 670 -390 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} 670 -450 0 0 {name=l13 sig_type=std_logic lab=rstb}
C {devices/vsource.sym} 910 -420 0 0 {name=Vfclk2 value=PULSE(0,1.2,0,1n,1n,4000n,8000n)}
C {devices/gnd.sym} 910 -390 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 910 -450 0 0 {name=l15 sig_type=std_logic lab=en}
