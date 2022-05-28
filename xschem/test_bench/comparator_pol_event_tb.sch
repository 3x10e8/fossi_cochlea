v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {comparator is clocked on phi1} 50 -110 0 0 0.4 0.4 {}
T {add buffers} 160 100 0 0 0.4 0.4 {}
N 1000 0 1000 20 { lab=pol}
N 640 0 640 40 { lab=pol}
N 640 0 680 0 { lab=pol}
N 1000 -50 1000 0 { lab=pol}
N 1000 -50 1110 -50 { lab=pol}
N 1120 30 1120 60 { lab=event}
N 1120 -10 1120 30 { lab=event}
N 680 0 1000 0 { lab=pol}
N 1110 -50 1120 -50 { lab=pol}
N 1000 20 1000 40 { lab=pol}
N 1120 60 1240 60 {
lab=event}
C {devices/lab_pin.sym} -440 -90 0 0 {name=l220 sig_type=std_logic lab=inp}
C {devices/netlist.sym} -100 -330 0 0 {name=SPICE2 only_toplevel=false value="
.lib /usr/local/lib/open_pdks/sky130/sky130B/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_lp/spice/sky130_fd_sc_lp.spice
.options abstol=1e-14 reltol=1e-4
.param W=1.75
.param L=0.15
.tran 1n 0.5m
.save all
"}
C {devices/vsource.sym} -440 -450 0 0 {name=VDD1 value="DC 1.2"}
C {devices/gnd.sym} -440 -420 0 0 {name=l93 lab=GND}
C {devices/vdd.sym} -440 -480 0 0 {name=l94 lab=VDD}
C {devices/vsource.sym} -440 -190 0 0 {name=Vfclk5 value=PULSE(0,1.2,0,1n,1n,180n,400n)}
C {devices/gnd.sym} -440 -160 0 0 {name=l95 lab=GND}
C {devices/lab_pin.sym} -440 -220 0 0 {name=l114 sig_type=std_logic lab=phi1}
C {devices/vsource.sym} -440 -290 0 0 {name=Vfclk2 value=PULSE(1.2,0,0,1n,1n,180n,400n)}
C {devices/gnd.sym} -440 -260 0 0 {name=l117 lab=GND}
C {devices/lab_pin.sym} -440 -320 0 0 {name=l118 sig_type=std_logic lab=phi1b}
C {devices/vsource.sym} -440 -60 0 0 {name=Vinp2 value="DC 0.4 AM(0.01,0.4,1000,10000,0,0)"}
C {devices/gnd.sym} -440 90 0 0 {name=l22 lab=GND}
C {devices/lab_pin.sym} -200 -90 0 0 {name=l11 sig_type=std_logic lab=inm}
C {devices/vsource.sym} -200 -60 0 0 {name=Vinp1 value="DC 0.4 AM(-0.01,0.4,1000,10000,0,0)"}
C {devices/gnd.sym} -200 90 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 60 -20 0 0 {name=l1 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 60 20 0 0 {name=l2 sig_type=std_logic lab=inm}
C {devices/lab_pin.sym} 120 -50 0 0 {name=l3 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 120 50 0 0 {name=l4 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 150 -10 0 1 {name=l5 sig_type=std_logic lab=high}
C {devices/lab_pin.sym} 150 10 0 1 {name=l6 sig_type=std_logic lab=low}
C {devices/vsource.sym} -440 0 0 0 {name=Vinp3 value=SFFM(0,0.01,10000,100,100,0,0)}
C {devices/vsource.sym} -200 0 0 0 {name=VDD4 value=SFFM(0,-0.01,10000,100,100,0,0)}
C {devices/vsource.sym} -200 60 0 0 {name=VDD2 value="DC 0.8"}
C {devices/vsource.sym} -440 60 0 0 {name=VDD3 value="DC 0.8"}
C {devices/lab_pin.sym} 1240 60 0 1 {name=l13 sig_type=std_logic lab=event}
C {sky130_stdcells/xor2_1.sym} 1060 60 2 1 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 280 20 3 0 {name=l15 sig_type=std_logic lab=phi1b}
C {sky130_stdcells/dfxtp_1.sym} 730 50 2 1 {name=x11 VGND=gnd VNB=gnd VPB=vdd VPWR=vdd prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfxtp_1.sym} 910 70 2 1 {name=x12 VGND=gnd VNB=gnd VPB=vdd VPWR=vdd prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfxtp_1.sym} 370 10 2 1 {name=x10 VGND=gnd VNB=gnd VPB=vdd VPWR=vdd prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfxtp_1.sym} 550 30 2 1 {name=x13 VGND=gnd VNB=gnd VPB=vdd VPWR=vdd prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/and2_0.sym} 1180 -30 2 1 {name=x14 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1240 -30 0 1 {name=l19 sig_type=std_logic lab=polxevent}
C {devices/lab_pin.sym} 750 0 3 1 {name=l20 sig_type=std_logic lab=pol}
C {devices/lab_pin.sym} 460 20 3 1 {name=l21 sig_type=std_logic lab=comp_out}
C {devices/lab_pin.sym} 280 0 2 1 {name=l23 sig_type=std_logic lab=high}
C {devices/lab_pin.sym} 460 40 3 0 {name=l7 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 640 60 3 0 {name=l8 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 820 80 3 0 {name=l9 sig_type=std_logic lab=phi1b}
C {comparator_latest/comparator_single_tail.sym} 40 60 0 0 {name=X1 Wplus=0.42 Lplus=0.15 Wminus=0.42 Lminus=0.15}
