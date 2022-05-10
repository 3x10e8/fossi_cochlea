v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 170 -940 310 -940 { lab=inp}
C {devices/lab_pin.sym} 170 -940 0 0 {name=l220 sig_type=std_logic lab=inp}
C {devices/netlist.sym} 220 -1320 0 0 {name=SPICE2 only_toplevel=false value="
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
C {devices/vsource.sym} 1200 -1190 0 0 {name=VDD1 value="DC 1.2"}
C {devices/gnd.sym} 1200 -1160 0 0 {name=l93 lab=GND}
C {devices/vdd.sym} 1200 -1220 0 0 {name=l94 lab=VDD}
C {devices/vsource.sym} 1600 -1260 0 0 {name=Vfclk5 value=PULSE(0,1.2,0,1n,1n,180n,400n)}
C {devices/gnd.sym} 1600 -1230 0 0 {name=l95 lab=GND}
C {devices/lab_pin.sym} 1600 -1290 0 0 {name=l114 sig_type=std_logic lab=phi1}
C {devices/vsource.sym} 1600 -1140 0 0 {name=Vfclk1 value=PULSE(0,1.2,0,1n,1n,180n,400n,180)}
C {devices/gnd.sym} 1600 -1110 0 0 {name=l115 lab=GND}
C {devices/lab_pin.sym} 1600 -1170 0 0 {name=l116 sig_type=std_logic lab=phi2}
C {devices/vsource.sym} 1330 -1260 0 0 {name=Vfclk2 value=PULSE(1.2,0,0,1n,1n,180n,400n)}
C {devices/gnd.sym} 1330 -1230 0 0 {name=l117 lab=GND}
C {devices/lab_pin.sym} 1330 -1290 0 0 {name=l118 sig_type=std_logic lab=phi1b}
C {devices/vsource.sym} 1330 -1160 0 0 {name=Vfclk3 value=PULSE(1.2,0,0,1n,1n,180n,400n,180)}
C {devices/gnd.sym} 1330 -1130 0 0 {name=l119 lab=GND}
C {devices/lab_pin.sym} 1330 -1190 0 0 {name=l120 sig_type=std_logic lab=phi2b}
C {devices/vsource.sym} 170 -910 0 0 {name=Vinp8 value=PULSE(0,1.2,0,1n,1n,10u,1)}
C {devices/gnd.sym} 170 -880 0 0 {name=l78 lab=GND}
C {tryandtest/8switchedcaps.sym} 300 -850 0 0 {name=X14 Wcap=2 Lcap=5}
C {devices/lab_pin.sym} 480 -990 0 0 {name=l101 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 520 -990 2 0 {name=l102 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 480 -860 0 0 {name=l103 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 520 -860 2 0 {name=l104 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 690 -940 0 1 {name=l1 sig_type=std_logic lab=out}
