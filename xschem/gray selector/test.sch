v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {comparator out replicated by comp_out signal} 1655 -740 0 0 0.4 0.4 {}
T {Comp model} 2180 -325 0 0 0.3 0.3 {}
N 2100 -405 2135 -405 { lab=#net1}
N 1995 -405 2100 -405 { lab=#net1}
C {devices/vsource.sym} 2210 -1225 0 0 {name=V2 value=1.2}
C {devices/vdd.sym} 2210 -1255 0 0 {name=l15 lab=VDD}
C {devices/vdd.sym} 2375 -1140 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 2425 -1140 2 1 {name=l2 lab=GND}
C {devices/gnd.sym} 2170 -1330 0 1 {name=l89 lab=GND}
C {devices/vsource.sym} 2250 -1360 0 0 {name=V10 value="DC 0 PULSE(0 1.2 \{2/f\} 1n 1n \{duty_clk*1/f\} \{1/f\})"}
C {devices/lab_pin.sym} 2250 -1390 0 1 {name=l8 sig_type=std_logic lab=clk_ext}
C {devices/gnd.sym} 2210 -1195 0 0 {name=l88 lab=GND}
C {devices/lab_pin.sym} 2170 -1390 0 0 {name=l9 sig_type=std_logic lab=rst_ext}
C {devices/vsource.sym} 2170 -1360 0 1 {name=V9 value="DC 0 PWL(0u 0 0.6u 1.2 1.1723u 1.2 1.1724u 0 6u 0)"}
C {devices/lab_pin.sym} 2515 -1030 2 0 {name=l16 sig_type=std_logic lab=clk_8}
C {devices/lab_pin.sym} 2515 -1050 2 0 {name=l17 sig_type=std_logic lab=clk_4}
C {devices/lab_pin.sym} 2515 -1070 2 0 {name=l18 sig_type=std_logic lab=clk_2}
C {devices/lab_pin.sym} 2515 -1010 2 0 {name=l19 sig_type=std_logic lab=clk_16}
C {clk_tree/clk_tree.sym} 141055 25030 0 0 {name=X12}
C {devices/lab_pin.sym} 2515 -950 2 0 {name=l57 sig_type=std_logic lab=clk_128}
C {devices/lab_pin.sym} 2515 -970 2 0 {name=l58 sig_type=std_logic lab=clk_64}
C {devices/lab_pin.sym} 2515 -990 2 0 {name=l59 sig_type=std_logic lab=clk_32}
C {devices/lab_pin.sym} 2515 -930 2 0 {name=l60 sig_type=std_logic lab=clk_256}
C {devices/lab_pin.sym} 2515 -910 2 0 {name=l61 sig_type=std_logic lab=clk_512}
C {devices/gnd.sym} 2250 -1330 0 1 {name=l3 lab=GND}
C {devices/lab_pin.sym} 2285 -1050 0 0 {name=l32 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} 2285 -1090 0 0 {name=l113 sig_type=std_logic lab=clk_ext}
C {Clock Synchronizer/synchronizer.sym} -785 330 0 0 {name=X1}
C {devices/lab_pin.sym} 1875 -1090 0 0 {name=l114 sig_type=std_logic lab=rst_ext
}
C {devices/lab_pin.sym} 1875 -1050 0 0 {name=l115 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 1875 -1010 0 0 {name=l116 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 2145 -1090 2 0 {name=l118 sig_type=std_logic lab=rstb}
C {devices/vsource.sym} 1875 -980 0 0 {name=V18 value=1.2}
C {devices/gnd.sym} 1875 -950 0 0 {name=l119 lab=GND}
C {binary counter/bin_counter.sym} 1295 225 0 0 {name=X20}
C {devices/lab_pin.sym} 2415 -775 0 0 {name=l4 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 2645 -655 2 0 {name=l10 sig_type=std_logic lab=bit6}
C {devices/lab_pin.sym} 2645 -635 2 0 {name=l22 sig_type=std_logic lab=bit7}
C {devices/lab_pin.sym} 2645 -615 2 0 {name=l31 sig_type=std_logic lab=bit8}
C {devices/lab_pin.sym} 2645 -595 2 0 {name=l72 sig_type=std_logic lab=bit9}
C {devices/lab_pin.sym} 2645 -575 2 0 {name=l73 sig_type=std_logic lab=bit10}
C {devices/lab_pin.sym} 2645 -555 2 0 {name=l74 sig_type=std_logic lab=bit11}
C {devices/lab_pin.sym} 2645 -535 2 0 {name=l75 sig_type=std_logic lab=bit12}
C {devices/lab_pin.sym} 2645 -515 2 0 {name=l150 sig_type=std_logic lab=bit13}
C {devices/lab_pin.sym} 2645 -495 2 0 {name=l151 sig_type=std_logic lab=bit14}
C {devices/lab_pin.sym} 2645 -475 2 0 {name=l152 sig_type=std_logic lab=bit15}
C {devices/lab_pin.sym} 2645 -675 2 0 {name=l153 sig_type=std_logic lab=bit5}
C {devices/lab_pin.sym} 2645 -695 2 0 {name=l154 sig_type=std_logic lab=bit4}
C {devices/lab_pin.sym} 2645 -715 2 0 {name=l155 sig_type=std_logic lab=bit3}
C {devices/lab_pin.sym} 2645 -735 2 0 {name=l156 sig_type=std_logic lab=bit2}
C {devices/lab_pin.sym} 2645 -755 2 0 {name=l157 sig_type=std_logic lab=bit1}
C {devices/lab_pin.sym} 2645 -775 2 0 {name=l158 sig_type=std_logic lab=bit0}
C {devices/lab_pin.sym} 2535 -415 0 0 {name=l159 sig_type=std_logic lab=latch_out}
C {devices/lab_pin.sym} 1310 -395 0 0 {name=l163 sig_type=std_logic lab=clk_2}
C {devices/lab_pin.sym} 1490 -415 2 0 {name=l164 sig_type=std_logic lab=latch_out}
C {devices/vsource.sym} 1870 -650 0 0 {name=V3 value="DC 0 PULSE(0 1.2 \{2/f\} 1n 1n \{duty_comp*1/f\} \{1/(f)\}) -18"}
C {devices/lab_pin.sym} 1870 -680 0 1 {name=l165 sig_type=std_logic lab=phi}
C {devices/gnd.sym} 1870 -620 0 1 {name=l166 lab=GND}
C {devices/lab_pin.sym} 1310 -415 2 1 {name=l167 sig_type=std_logic lab=phi}
C {devices/lab_pin.sym} 1310 -375 0 0 {name=l38 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} 2415 -735 2 1 {name=l5 sig_type=std_logic lab=rstb}
C {devices/vsource.sym} 1875 -525 0 0 {name=V1 value="DC 0 PWL(0u 0 0.6u 1.2 1.1723u 1.2 1.1724u 0 6u 0)"}
C {devices/gnd.sym} 1875 -495 0 1 {name=l40 lab=GND}
C {devices/lab_pin.sym} 1875 -555 0 1 {name=l6 sig_type=std_logic lab=rstb_bin_counter}
C {devices/lab_pin.sym} 2135 -385 0 0 {name=l39 sig_type=std_logic lab=latch_out}
C {devices/lab_pin.sym} 2315 -405 2 0 {name=l44 sig_type=std_logic lab=comp_out}
C {devices/lab_pin.sym} 2135 -365 0 0 {name=l46 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} 2415 -695 0 0 {name=l41 sig_type=std_logic lab=comp_out}
C {devices/netlist.sym} 2820 -1205 0 0 {name=s2 value="
.lib /home/sky/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /home/sky/sky130A/libs.ref/sky130_fd_sc_lp/spice/sky130_fd_sc_lp.spice
.options abstol=1e-14 reltol=1e-4
.param f=2560k
.param duty_clk=0.5
.param duty_comp=0.45
*.ic v(out)=0
.tran \{(1/100)*(1/f)\} \{256/f\}
.save all
"}
C {sky130_stdcells/inv_1.sym} 1985 -815 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 2025 -815 2 0 {name=l7 sig_type=std_logic lab=phi_b}
C {devices/lab_pin.sym} 1945 -815 0 0 {name=l11 sig_type=std_logic lab=phi}
C {devices/vsource.sym} 1880 -270 0 0 {name=V4 value="DC 0 PULSE(0 1.2 \{2/f\} 1n 1n \{duty_clk*256/f\} \{256/(f)\})"}
C {devices/lab_pin.sym} 1880 -300 0 1 {name=l12 sig_type=std_logic lab=in_pulse}
C {devices/gnd.sym} 1880 -240 0 1 {name=l13 lab=GND}
C {devices/lab_pin.sym} 1815 -385 2 1 {name=l14 sig_type=std_logic lab=in_pulse}
C {sky130_stdcells/dlrtn_1.sym} 2225 -385 0 0 {name=x4 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__}
C {sky130_stdcells/dlrtp_1.sym} 1400 -395 0 0 {name=x5 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrtn_1.sym} 1905 -385 0 0 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1815 -405 0 0 {name=l20 sig_type=std_logic lab=phi}
C {devices/lab_pin.sym} 1815 -365 0 0 {name=l21 sig_type=std_logic lab=rstb}
