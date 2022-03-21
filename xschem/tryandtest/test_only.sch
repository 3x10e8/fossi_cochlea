v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {devices/lab_pin.sym} 80 -460 0 0 {name=l220 sig_type=std_logic lab=inp}
C {devices/netlist.sym} 10 -210 0 0 {name=SPICE2 only_toplevel=false value="
.lib /home/sky/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /home/sky/sky130A/libs.ref/sky130_fd_sc_lp/spice/sky130_fd_sc_lp.spice
.include /home/sky/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_01v8_lvt__tt_discrete.corner.spice
.options abstol=1e-14 reltol=1e-4
.param W=0.42
.param L=0.15
.tran 1n 0.5m
.save all
"}
C {devices/vsource.sym} 650 -370 0 0 {name=VDD1 value="DC 1.2"}
C {devices/gnd.sym} 650 -340 0 0 {name=l93 lab=GND}
C {devices/vdd.sym} 650 -400 0 0 {name=l94 lab=VDD}
C {devices/vsource.sym} 800 -240 0 0 {name=Vfclk5 value=PULSE(0,1.2,0,1n,1n,180n,400n)}
C {devices/gnd.sym} 800 -210 0 0 {name=l95 lab=GND}
C {devices/lab_pin.sym} 800 -270 0 0 {name=l114 sig_type=std_logic lab=phi1}
C {devices/vsource.sym} 800 -340 0 0 {name=Vfclk2 value=PULSE(1.2,0,0,1n,1n,180n,400n)}
C {devices/gnd.sym} 800 -310 0 0 {name=l117 lab=GND}
C {devices/lab_pin.sym} 800 -370 0 0 {name=l118 sig_type=std_logic lab=phi1b}
C {devices/vsource.sym} 80 -430 0 0 {name=Vinp2 value=sin(0.6,0.2,5k)}
C {devices/gnd.sym} 80 -400 0 0 {name=l22 lab=GND}
C {devices/lab_pin.sym} 320 -460 0 0 {name=l11 sig_type=std_logic lab=inm}
C {devices/vsource.sym} 320 -430 0 0 {name=Vinp1 value=sin(0.6,-0.2,5k)}
C {devices/gnd.sym} 320 -400 0 0 {name=l14 lab=GND}
C {tryandtest/comparator_single_tail.sym} 460 -240 0 0 {name=X17 Wplus=W Lplus=L Wminus=W Lminus=L}
C {devices/lab_pin.sym} 480 -320 0 0 {name=l1 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 480 -280 0 0 {name=l2 sig_type=std_logic lab=inm}
C {devices/lab_pin.sym} 540 -350 0 0 {name=l3 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 540 -250 0 0 {name=l4 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 570 -310 0 1 {name=l5 sig_type=std_logic lab=high}
C {devices/lab_pin.sym} 570 -290 0 1 {name=l6 sig_type=std_logic lab=low}
