v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {devices/lab_pin.sym} 1490 -1280 0 0 {name=l3 sig_type=std_logic lab=clk_ext}
C {devices/gnd.sym} 1490 -1220 0 0 {name=l89 lab=GND}
C {devices/vsource.sym} 1490 -1250 0 1 {name=V10 value="DC 0 PULSE(0 1.2 \{2/f\} 1n 1n \{duty_cycle*1/f\} \{1/f\})"}
C {devices/vsource.sym} 1500 -1140 0 1 {name=V9 value="DC 0 PWL(0u 1.2 2u 1.2 2.01u 0 2.93u 0 2.9319u 1.2 4u 1.2 4.01u 0)"}
C {devices/gnd.sym} 1500 -1110 0 0 {name=l88 lab=GND}
C {devices/vsource.sym} 1430 -1440 0 0 {name=V2 value=1.2}
C {devices/gnd.sym} 1430 -1410 0 0 {name=l13 lab=GND}
C {devices/vdd.sym} 1430 -1470 0 0 {name=l15 lab=VDD}
C {devices/lab_pin.sym} 1500 -1170 0 0 {name=l1 sig_type=std_logic lab=rst_ext}
C {devices/vsource.sym} 1630 -1190 0 0 {name=V1 value=1.2}
C {devices/gnd.sym} 1630 -1160 0 0 {name=l2 lab=GND}
C {devices/netlist.sym} 1850 -1480 0 0 {name=s1 value="
.lib /home/sky/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /home/sky/sky130A/libs.ref/sky130_fd_sc_lp/spice/sky130_fd_sc_lp.spice
.options abstol=1e-14 reltol=1e-4
.param f=2560k
.param duty_cycle=0.5
.tran \{(1/100)*(1/f)\} \{100/f\}
.save all
"}
C {Clock Synchronizer/synchronizer.sym} -1030 120 0 0 {name=X1}
C {devices/lab_pin.sym} 1630 -1300 0 0 {name=l4 sig_type=std_logic lab=rst_ext}
C {devices/lab_pin.sym} 1630 -1260 0 0 {name=l5 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 1900 -1300 2 0 {name=l6 sig_type=std_logic lab=rstb}
