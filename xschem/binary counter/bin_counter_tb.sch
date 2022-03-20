v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1030 -860 1030 -840 { lab=Clk}
C {devices/gnd.sym} 1030 -780 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 1030 -810 0 0 {name=V3 value="DC 0 PULSE(0 1.2 0 1n 1n \{duty_cycle*1/f\} \{1/f\})"}
C {devices/vsource.sym} 760 -1100 0 0 {name=V1 value=1.2}
C {devices/gnd.sym} 760 -1070 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 1030 -840 0 0 {name=l1 sig_type=std_logic lab=Clk}
C {devices/lab_pin.sym} 760 -1130 0 0 {name=l3 sig_type=std_logic lab=EN}
C {devices/lab_pin.sym} 1140 -1220 2 0 {name=l5 sig_type=std_logic lab=Q0}
C {devices/lab_pin.sym} 1140 -1200 2 0 {name=l6 sig_type=std_logic lab=Q1}
C {devices/lab_pin.sym} 1140 -1180 2 0 {name=l7 sig_type=std_logic lab=Q2}
C {devices/lab_pin.sym} 1140 -1160 2 0 {name=l8 sig_type=std_logic lab=Q3}
C {devices/lab_pin.sym} 1140 -1140 2 0 {name=l9 sig_type=std_logic lab=Q4}
C {devices/lab_pin.sym} 1140 -1120 2 0 {name=l10 sig_type=std_logic lab=Q5}
C {devices/lab_pin.sym} 1140 -1100 2 0 {name=l11 sig_type=std_logic lab=Q6}
C {devices/lab_pin.sym} 1140 -1080 2 0 {name=l12 sig_type=std_logic lab=Q7}
C {devices/vsource.sym} 760 -1205 0 0 {name=V2 value=1.2}
C {devices/gnd.sym} 760 -1175 0 0 {name=l13 lab=GND}
C {devices/vdd.sym} 760 -1235 0 0 {name=l15 lab=VDD}
C {devices/netlist.sym} 1360 -1560 0 0 {name=SPICE value="
.lib /home/sky/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /home/sky/sky130A/libs.ref/sky130_fd_sc_lp/spice/sky130_fd_sc_lp.spice
.options abstol=1e-14 reltol=1e-4
.param f=2560k
.param duty_cycle=0.5
.ic v(x1.Qb0)=0 
.tran \{(1/100)*(1/f)\} \{40/f\}
.save all
"}
C {binary counter/bin_counter.sym} -210 -220 0 0 {name=X1}
C {devices/lab_pin.sym} 1140 -1060 2 0 {name=l14 sig_type=std_logic lab=Q8}
C {devices/lab_pin.sym} 1140 -1040 2 0 {name=l16 sig_type=std_logic lab=Q9}
C {devices/lab_pin.sym} 1140 -1020 2 0 {name=l17 sig_type=std_logic lab=Q10}
C {devices/lab_pin.sym} 1140 -1000 2 0 {name=l18 sig_type=std_logic lab=Q11}
C {devices/lab_pin.sym} 1140 -980 2 0 {name=l19 sig_type=std_logic lab=Q12}
C {devices/lab_pin.sym} 1140 -960 2 0 {name=l20 sig_type=std_logic lab=Q13}
C {devices/lab_pin.sym} 1140 -940 2 0 {name=l21 sig_type=std_logic lab=Q14}
C {devices/lab_pin.sym} 1140 -920 2 0 {name=l22 sig_type=std_logic lab=Q15}
C {devices/lab_pin.sym} 910 -1220 0 0 {name=l23 sig_type=std_logic lab=EN}
C {devices/lab_pin.sym} 910 -1180 0 0 {name=l24 sig_type=std_logic lab=RSTB}
C {devices/vsource.sym} 755 -1010 0 0 {name=V4 value="PWL(0u 0 1u 0 1.01u 1.2)"}
C {devices/gnd.sym} 755 -980 0 0 {name=l25 lab=GND}
C {devices/lab_pin.sym} 755 -1040 0 0 {name=l26 sig_type=std_logic lab=RSTB}
