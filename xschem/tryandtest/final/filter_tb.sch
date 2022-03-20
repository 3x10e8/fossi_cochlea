v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {tryandtest/champa/filter.sym} 70 -20 0 0 {name=X1}
C {devices/netlist.sym} 10 -780 0 0 {name=SPICE2 only_toplevel=false value="
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
.tran 1n 3m
.save all
"}
C {devices/lab_pin.sym} 110 -340 0 0 {name=l220 sig_type=std_logic lab=inp}
C {devices/vsource.sym} 570 -540 0 0 {name=VDD1 value="DC 1.2"}
C {devices/gnd.sym} 570 -510 0 0 {name=l93 lab=GND}
C {devices/vdd.sym} 570 -570 0 0 {name=l94 lab=VDD}
C {devices/vsource.sym} 110 -440 0 0 {name=Vfclk5 value=PULSE(0,1.2,0,1n,1n,180n,400n)}
C {devices/gnd.sym} 110 -410 0 0 {name=l95 lab=GND}
C {devices/lab_pin.sym} 110 -470 0 0 {name=l114 sig_type=std_logic lab=phi1}
C {devices/vsource.sym} 320 -310 0 0 {name=Vfclk1 value=PULSE(0,1.2,0,1n,1n,180n,400n,180)}
C {devices/gnd.sym} 320 -280 0 0 {name=l115 lab=GND}
C {devices/lab_pin.sym} 320 -340 0 0 {name=l116 sig_type=std_logic lab=phi2}
C {devices/vsource.sym} 570 -400 0 0 {name=Vfclk2 value=PULSE(1.2,0,0,1n,1n,180n,400n)}
C {devices/gnd.sym} 570 -370 0 0 {name=l117 lab=GND}
C {devices/lab_pin.sym} 570 -430 0 0 {name=l118 sig_type=std_logic lab=phi1b}
C {devices/vsource.sym} 570 -300 0 0 {name=Vfclk3 value=PULSE(1.2,0,0,1n,1n,180n,400n,180)}
C {devices/gnd.sym} 570 -270 0 0 {name=l119 lab=GND}
C {devices/lab_pin.sym} 570 -330 0 0 {name=l120 sig_type=std_logic lab=phi2b}
C {devices/vsource.sym} 110 -310 0 0 {name=Vinp2 value="DC 0 SIN(0.4 0.2 1000)"
*SIN (0.6 0.6 1k)"}
C {devices/gnd.sym} 110 -280 0 0 {name=l22 lab=GND}
C {devices/lab_pin.sym} 310 -460 0 0 {name=l11 sig_type=std_logic lab=inp2}
C {devices/vsource.sym} 310 -430 0 0 {name=Vinp1 value="DC 0 SIN(0.4 -0.2 15k)"
*SIN (0.6 0.6 1k)"}
C {devices/gnd.sym} 310 -400 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 230 -160 0 0 {name=l1 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 270 -160 0 1 {name=l2 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 230 -30 0 0 {name=l3 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 270 -30 0 1 {name=l4 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 80 -110 0 0 {name=l5 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 400 -110 0 1 {name=l6 sig_type=std_logic lab=out}
C {tryandtest/champa/filter.sym} 70 140 0 0 {name=X2}
C {devices/lab_pin.sym} 230 0 0 0 {name=l7 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 270 0 0 1 {name=l8 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 230 130 0 0 {name=l9 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 270 130 0 1 {name=l10 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 80 50 0 0 {name=l12 sig_type=std_logic lab=inp3}
C {devices/lab_pin.sym} 400 50 0 1 {name=l13 sig_type=std_logic lab=out3}
C {tryandtest/champa/filter.sym} 490 -20 0 0 {name=X3}
C {devices/lab_pin.sym} 650 -160 0 0 {name=l15 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 690 -160 0 1 {name=l16 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 650 -30 0 0 {name=l17 sig_type=std_logic lab=phi1b}
C {devices/lab_pin.sym} 690 -30 0 1 {name=l18 sig_type=std_logic lab=phi2b}
C {devices/lab_pin.sym} 500 -110 0 0 {name=l19 sig_type=std_logic lab=inp2}
C {devices/lab_pin.sym} 820 -110 0 1 {name=l20 sig_type=std_logic lab=out2}
C {devices/lab_pin.sym} 40 -250 0 0 {name=l21 sig_type=std_logic lab=inp3}
C {devices/vsource.sym} 40 -220 0 0 {name=Vinp3 value="DC 0 SIN(0.4 0.2 20000)"
*SIN (0.6 0.6 1k)"}
C {devices/gnd.sym} 40 -190 0 0 {name=l23 lab=GND}
