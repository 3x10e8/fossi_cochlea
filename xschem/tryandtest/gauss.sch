v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 50 -110 190 -110 { lab=inp}
C {devices/lab_pin.sym} 50 -110 0 0 {name=l220 sig_type=std_logic lab=inp}
C {devices/netlist.sym} 20 -500 0 0 {name=SPICE2 only_toplevel=false value="
.lib /home/sky/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /home/sky/sky130A/libs.ref/sky130_fd_sc_lp/spice/sky130_fd_sc_lp.spice
.include /home/sky/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_01v8_lvt__tt_discrete.corner.spice
.include /home/sky/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_20v0__tt_discrete.corner.spice
.include /home/sky/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_20v0__tt_discrete.corner.spice
.options abstol=1e-14 reltol=1e-4
.param capw=10
.param capl=10
.param wc=10
.param lc=10
.tran 1 0.5m
*.ac dec 200 1 1e8
.save all
"}
C {devices/vsource.sym} 240 -260 0 0 {name=VDD1 value="DC 1.2"}
C {devices/gnd.sym} 240 -230 0 0 {name=l93 lab=GND}
C {devices/vdd.sym} 240 -290 0 0 {name=l94 lab=VDD}
C {devices/vsource.sym} 640 -330 0 0 {name=Vfclk5 value=PULSE(0,1.2,0,1n,1n,180n,400n)}
C {devices/gnd.sym} 640 -300 0 0 {name=l95 lab=GND}
C {devices/lab_pin.sym} 640 -360 0 0 {name=l114 sig_type=std_logic lab=phi1}
C {devices/vsource.sym} 640 -210 0 0 {name=Vfclk1 value=PULSE(0,1.2,0,1n,1n,180n,400n,180)}
C {devices/gnd.sym} 640 -180 0 0 {name=l115 lab=GND}
C {devices/lab_pin.sym} 640 -240 0 0 {name=l116 sig_type=std_logic lab=phi2}
C {devices/vsource.sym} 370 -330 0 0 {name=Vfclk2 value=PULSE(1.2,0,0,1n,1n,180n,400n)}
C {devices/gnd.sym} 370 -300 0 0 {name=l117 lab=GND}
C {devices/lab_pin.sym} 370 -360 0 0 {name=l118 sig_type=std_logic lab=phi1b}
C {devices/vsource.sym} 370 -230 0 0 {name=Vfclk3 value=PULSE(1.2,0,0,1n,1n,180n,400n,180)}
C {devices/gnd.sym} 370 -200 0 0 {name=l119 lab=GND}
C {devices/lab_pin.sym} 370 -260 0 0 {name=l120 sig_type=std_logic lab=phi2b}
C {devices/vsource.sym} 50 -80 0 0 {name=Vinp8 value=PULSE(0,1.2,0,1n,1n,10u,1)}
C {devices/gnd.sym} 50 -50 0 0 {name=l78 lab=GND}
C {tryandtest/8switchedcaps.sym} 180 -20 0 0 {name=X14 Wcap=2 Lcap=5}
C {devices/lab_pin.sym} 360 -160 0 0 {name=l101 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 400 -160 2 0 {name=l102 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 360 -30 0 0 {name=l103 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 400 -30 2 0 {name=l104 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 950 -110 0 1 {name=l1 sig_type=std_logic lab=out}
C {tryandtest/8switchedcaps.sym} 560 -20 0 0 {name=X1 Wcap=2 Lcap=5}
C {devices/lab_pin.sym} 740 -160 0 0 {name=l2 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 780 -160 2 0 {name=l3 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 740 -30 0 0 {name=l4 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 780 -30 2 0 {name=l5 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 570 -110 1 1 {name=l6 sig_type=std_logic lab=out1}
