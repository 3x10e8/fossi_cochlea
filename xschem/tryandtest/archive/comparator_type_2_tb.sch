v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {devices/lab_pin.sym} 80 -440 0 0 {name=l220 sig_type=std_logic lab=inp}
C {devices/netlist.sym} 10 -190 0 0 {name=SPICE2 only_toplevel=false value="
.lib /home/sky/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /home/sky/sky130A/libs.ref/sky130_fd_sc_lp/spice/sky130_fd_sc_lp.spice
.include /home/sky/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_01v8_lvt__tt_discrete.corner.spice
.options abstol=1e-14 reltol=1e-4
.param W=1.75
.param L=0.15
.tran 1n 0.5m
.save all
"}
C {devices/vsource.sym} 650 -350 0 0 {name=VDD1 value="DC 1.2"}
C {devices/gnd.sym} 650 -320 0 0 {name=l93 lab=GND}
C {devices/vdd.sym} 650 -380 0 0 {name=l94 lab=VDD}
C {devices/vsource.sym} 750 -370 0 0 {name=Vfclk5 value=PULSE(0,1.2,0,1n,1n,180n,400n)}
C {devices/gnd.sym} 750 -340 0 0 {name=l95 lab=GND}
C {devices/lab_pin.sym} 750 -400 0 0 {name=l114 sig_type=std_logic lab=phi1}
C {devices/vsource.sym} 80 -410 0 0 {name=Vinp2 value="DC 0.4 AM(0.05,0.4,1000,10000,0,0)"}
C {devices/gnd.sym} 80 -260 0 0 {name=l22 lab=GND}
C {devices/lab_pin.sym} 320 -440 0 0 {name=l11 sig_type=std_logic lab=inm}
C {devices/vsource.sym} 320 -410 0 0 {name=Vinp1 value="DC 0.4 AM(-0.05,0.4,1000,10000,0,0)"}
C {devices/gnd.sym} 320 -260 0 0 {name=l14 lab=GND}
C {devices/vsource.sym} 80 -350 0 0 {name=Vinp3 value=SFFM(0,0.05,10000,100,100,0,0)}
C {devices/vsource.sym} 320 -350 0 0 {name=VDD4 value=SFFM(0,-0.05,10000,100,100,0,0)}
C {devices/vsource.sym} 320 -290 0 0 {name=VDD2 value="DC 0.8"}
C {devices/vsource.sym} 80 -290 0 0 {name=VDD3 value="DC 0.8"}
C {tryandtest/comparator_type_2.sym} 450 -190 0 0 {name=X1 Wplus=0.42 Lplus=0.15 Wminus=0.42 Lminus=0.15}
C {devices/lab_pin.sym} 470 -270 0 0 {name=l1 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 470 -230 0 0 {name=l2 sig_type=std_logic lab=inm}
C {devices/lab_pin.sym} 560 -260 0 1 {name=l3 sig_type=std_logic lab=high}
C {devices/lab_pin.sym} 560 -240 0 1 {name=l4 sig_type=std_logic lab=low}
C {devices/lab_pin.sym} 530 -300 0 0 {name=l5 sig_type=std_logic lab=phi1}
C {tryandtest/comparator_single_tail.sym} 650 -170 0 0 {name=X2 Wplus=0.42 Lplus=0.15 Wminus=0.42 Lminus=0.15}
C {devices/lab_pin.sym} 670 -250 0 0 {name=l6 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 670 -210 0 0 {name=l7 sig_type=std_logic lab=inm}
C {devices/lab_pin.sym} 760 -240 0 1 {name=l8 sig_type=std_logic lab=high2}
C {devices/lab_pin.sym} 760 -220 0 1 {name=l9 sig_type=std_logic lab=low2}
C {devices/lab_pin.sym} 730 -280 0 0 {name=l10 sig_type=std_logic lab=phi1}
C {devices/vsource.sym} 680 -460 0 0 {name=Vfclk1 value=PULSE(0,1.2,0,1n,1n,180n,400n,180)}
C {devices/gnd.sym} 680 -430 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} 680 -490 0 0 {name=l13 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 730 -180 0 0 {name=l15 sig_type=std_logic lab=phi1b}
