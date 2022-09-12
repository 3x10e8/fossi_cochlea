v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {tryandtest/unitygainbuffer.sym} 50 -20 0 0 {name=X1}
C {devices/netlist.sym} 20 -410 0 0 {name=SPICE2 only_toplevel=false value="
.lib /home/sky/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /home/sky/sky130A/libs.ref/sky130_fd_sc_lp/spice/sky130_fd_sc_lp.spice
.include /home/sky/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_01v8_lvt__tt_discrete.corner.spice
.include /home/sky/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__nfet_20v0__tt_discrete.corner.spice
.include /home/sky/sky130A/libs.ref/sky130_fd_pr/spice/sky130_fd_pr__pfet_20v0__tt_discrete.corner.spice
.options abstol=1e-14 reltol=1e-4
.param capw=20
.param capl=5
.param Wcap=5
.param Lcap=10
*.ac dec 100 1 1e12
.tran 0.1n 1u
.save all
"}
C {devices/lab_pin.sym} 490 -100 0 0 {name=l220 sig_type=std_logic lab=inp}
C {devices/vsource.sym} 390 -60 0 0 {name=VDD1 value="DC 1.2"}
C {devices/gnd.sym} 390 -30 0 0 {name=l93 lab=GND}
C {devices/vdd.sym} 390 -90 0 0 {name=l94 lab=VDD}
C {devices/vsource.sym} 490 -70 0 0 {name=Vinp2 value="PULSE(0,1.2,0,1n,1n,1n,1)"
*SIN (0.6 0.6 1k)"}
C {devices/gnd.sym} 490 -40 0 0 {name=l22 lab=GND}
C {devices/lab_pin.sym} 70 -90 0 0 {name=l1 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 180 -70 0 1 {name=l2 sig_type=std_logic lab=out}
