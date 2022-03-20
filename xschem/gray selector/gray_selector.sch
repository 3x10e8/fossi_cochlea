v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {bit8} 3955 -595 0 0 0.4 0.4 {}
T {bit7} 3950 -675 0 0 0.4 0.4 {}
T {bit6} 3950 -730 0 0 0.4 0.4 {}
T {bit9
} 3955 -515 0 0 0.4 0.4 {}
T {bit10} 3955 -435 0 0 0.4 0.4 {}
T {bit11} 3955 -355 0 0 0.4 0.4 {}
T {Rstb bit makes the system reset:
rstb==0: reset
rstb==1: normal working
} 4185 -770 0 0 0.4 0.4 {}
T {No setup and hold violations anticipated.
} 4185 -660 0 0 0.4 0.4 {}
T {The input signals must also reset in order to make the 
system reset properly else there might be issues once the 
reset is removed.} 4185 -595 0 0 0.4 0.4 {}
T {bit12} 3955 -280 0 0 0.4 0.4 {}
T {bit13} 3955 -195 0 0 0.4 0.4 {}
T {bit14} 3955 -115 0 0 0.4 0.4 {}
T {bit15} 3955 -40 0 0 0.4 0.4 {}
T {comparator out replicated by comp_out signal} 1610 -400 0 0 0.4 0.4 {}
T {THis needs to be an up down counter} 2120 -30 0 0 0.4 0.4 {}
N 3880 -660 3890 -660 { lab=out}
N 3890 -660 3940 -660 { lab=out}
N 3880 -580 3890 -580 { lab=out}
N 3890 -580 3940 -580 { lab=out}
N 3900 -740 3940 -740 { lab=out}
N 3880 -740 3900 -740 { lab=out}
N 3940 -740 3940 -260 { lab=out}
N 3940 -740 4010 -740 { lab=out}
N 3610 -740 3730 -740 { lab=bit15}
N 3730 -740 3800 -740 { lab=bit15}
N 3610 -660 3730 -660 { lab=bit14}
N 3730 -660 3800 -660 { lab=bit14}
N 3610 -580 3730 -580 { lab=bit13}
N 3730 -580 3800 -580 { lab=bit13}
N 3880 -420 3890 -420 { lab=out}
N 3890 -420 3940 -420 { lab=out}
N 3880 -340 3890 -340 { lab=out}
N 3890 -340 3940 -340 { lab=out}
N 3900 -500 3940 -500 { lab=out}
N 3880 -500 3900 -500 { lab=out}
N 3610 -500 3730 -500 { lab=bit12}
N 3730 -500 3800 -500 { lab=bit12}
N 3610 -420 3730 -420 { lab=bit11}
N 3730 -420 3800 -420 { lab=bit11}
N 3610 -340 3730 -340 { lab=bit10}
N 3730 -340 3800 -340 { lab=bit10}
N 3880 -260 3890 -260 { lab=out}
N 3890 -260 3940 -260 { lab=out}
N 3880 -180 3890 -180 { lab=out}
N 3890 -180 3940 -180 { lab=out}
N 3610 -260 3730 -260 { lab=bit9}
N 3730 -260 3800 -260 { lab=bit9}
N 3610 -180 3730 -180 { lab=bit8}
N 3730 -180 3800 -180 { lab=bit8}
N 3940 -260 3940 -180 { lab=out}
N 3025 -1245 3110 -1245 { lab=#net1}
N 3025 -1150 3110 -1150 { lab=#net2}
N 3025 -1025 3105 -1025 { lab=#net3}
N 3105 -1025 3110 -1025 { lab=#net3}
N 3025 -880 3105 -880 { lab=#net4}
N 3105 -880 3110 -880 { lab=#net4}
N 3025 -690 3105 -690 { lab=#net5}
N 3105 -690 3110 -690 { lab=#net5}
N 3025 -445 3105 -445 { lab=#net6}
N 3105 -445 3110 -445 { lab=#net6}
N 2905 -760 2905 -730 { lab=#net7}
N 2905 -650 2905 -620 { lab=#net8}
N 2905 -535 2905 -505 { lab=#net9}
N 2905 -425 2905 -395 { lab=#net10}
N 2905 -385 2905 -340 { lab=clk_128}
N 2785 -340 2905 -340 { lab=clk_128}
N 3880 -95 3890 -95 { lab=out}
N 3890 -95 3940 -95 { lab=out}
N 3880 -15 3890 -15 { lab=out}
N 3890 -15 3940 -15 { lab=out}
N 3610 -95 3730 -95 { lab=bit7}
N 3730 -95 3800 -95 { lab=bit7}
N 3610 -15 3730 -15 { lab=bit6}
N 3730 -15 3800 -15 { lab=bit6}
N 3940 -95 3940 -15 { lab=out}
N 3940 -180 3940 -95 { lab=out}
N 3020 -170 3100 -170 { lab=#net11}
N 3100 -170 3105 -170 { lab=#net11}
N 2900 -260 2900 -230 { lab=#net12}
N 2900 -150 2900 -120 { lab=#net13}
N 2900 -110 2900 -65 { lab=#net14}
N 2900 -65 2900 -45 { lab=#net14}
N 3020 150 3100 150 { lab=#net15}
N 3100 150 3105 150 { lab=#net15}
N 2900 60 2900 90 { lab=#net16}
N 2900 170 2900 200 { lab=#net17}
N 2900 210 2900 255 { lab=#net18}
N 2900 255 2900 275 { lab=#net18}
N 2900 275 2900 295 { lab=#net18}
C {devices/vsource.sym} 1965 -895 0 0 {name=V2 value=1.2}
C {devices/vdd.sym} 1965 -925 0 0 {name=l15 lab=VDD}
C {devices/vdd.sym} 2130 -810 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 2180 -810 2 1 {name=l2 lab=GND}
C {devices/lab_pin.sym} 4010 -740 2 0 {name=l7 sig_type=std_logic lab=out}
C {devices/gnd.sym} 1925 -1000 0 1 {name=l89 lab=GND}
C {devices/vsource.sym} 2005 -1030 0 0 {name=V10 value="DC 0 PULSE(0 1.2 \{2/f\} 1n 1n \{duty_clk*1/f\} \{1/f\})"}
C {devices/lab_pin.sym} 2005 -1060 0 1 {name=l8 sig_type=std_logic lab=clk_ext}
C {devices/gnd.sym} 1965 -865 0 0 {name=l88 lab=GND}
C {devices/lab_pin.sym} 1925 -1060 0 0 {name=l9 sig_type=std_logic lab=rst_ext}
C {devices/netlist.sym} 3585 -1110 0 0 {name=s1 value="
.lib /home/sky/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /home/sky/sky130A/libs.ref/sky130_fd_sc_lp/spice/sky130_fd_sc_lp.spice
.options abstol=1e-14 reltol=1e-4
.param f=2560k
.param duty_clk=0.5
.param duty_comp=0.25
.param phase1=-18
.ic v(out)=0
.tran \{(1/100)*(1/f)\} \{100/f\}
.save all
"}
C {sky130_stdcells/ebufn_1.sym} 3840 -660 0 0 {name=x4 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 3840 -580 0 0 {name=x6 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/vsource.sym} 1925 -1030 0 1 {name=V9 value="DC 0 PWL(0u 0 0.6u 1.2 1.1723u 1.2 1.1724u 0 6u 0)"}
C {sky130_stdcells/ebufn_1.sym} 3840 -740 0 0 {name=x2 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 2270 -700 2 0 {name=l16 sig_type=std_logic lab=clk_8}
C {devices/lab_pin.sym} 2270 -720 2 0 {name=l17 sig_type=std_logic lab=clk_4}
C {devices/lab_pin.sym} 2270 -740 2 0 {name=l18 sig_type=std_logic lab=clk_2}
C {devices/lab_pin.sym} 2270 -680 2 0 {name=l19 sig_type=std_logic lab=clk_16}
C {devices/lab_pin.sym} 3410 -1495 2 0 {name=l25 sig_type=std_logic lab=ctr1}
C {devices/lab_pin.sym} 3610 -740 0 0 {name=l28 sig_type=std_logic lab=bit15}
C {devices/lab_pin.sym} 3800 -700 0 0 {name=l35 sig_type=std_logic lab=ctr1}
C {devices/lab_pin.sym} 3800 -620 0 0 {name=l37 sig_type=std_logic lab=ctr2}
C {devices/lab_pin.sym} 3800 -540 0 0 {name=l38 sig_type=std_logic lab=ctr3}
C {inv/inv.sym} 2545 -1120 0 0 {name=X6 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 2495 -1120 0 0 {name=l39 sig_type=std_logic lab=clk_2}
C {devices/lab_pin.sym} 2595 -1120 2 0 {name=l40 sig_type=std_logic lab=clk_2b}
C {inv/inv.sym} 2545 -1050 0 0 {name=X7 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 2495 -1050 0 0 {name=l41 sig_type=std_logic lab=clk_4}
C {devices/lab_pin.sym} 2595 -1050 2 0 {name=l42 sig_type=std_logic lab=clk_4b}
C {sky130_stdcells/ebufn_1.sym} 3840 -420 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 3840 -340 0 0 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 3840 -500 0 0 {name=x5 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 3800 -460 0 0 {name=l21 sig_type=std_logic lab=ctr4}
C {devices/lab_pin.sym} 3800 -380 0 0 {name=l26 sig_type=std_logic lab=ctr5}
C {devices/lab_pin.sym} 3800 -300 0 0 {name=l27 sig_type=std_logic lab=ctr6}
C {sky130_stdcells/ebufn_1.sym} 3840 -260 0 0 {name=x7 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 3840 -180 0 0 {name=x8 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 3800 -220 0 0 {name=l33 sig_type=std_logic lab=ctr7}
C {devices/lab_pin.sym} 3800 -140 0 0 {name=l34 sig_type=std_logic lab=ctr8}
C {sky130_stdcells/and2_1.sym} 2965 -1245 0 0 {name=x10 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/and3_1.sym} 2965 -1150 0 0 {name=x9 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/and4_1.sym} 2965 -445 0 0 {name=x11 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrtn_1.sym} 3200 -1355 0 0 {name=x14 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrtn_1.sym} 3200 -1245 0 0 {name=x15 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrtn_1.sym} 3200 -1150 0 0 {name=x16 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrtn_1.sym} 3200 -1025 0 0 {name=x17 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrtn_1.sym} 3200 -880 0 0 {name=x18 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrtn_1.sym} 3200 -690 0 0 {name=x19 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrtn_1.sym} 3200 -445 0 0 {name=x20 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 3110 -1375 0 0 {name=l13 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 3110 -1265 0 0 {name=l44 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 3110 -1170 0 0 {name=l45 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 3110 -1045 0 0 {name=l46 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 3110 -900 0 0 {name=l47 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 3110 -710 0 0 {name=l48 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 3110 -465 0 0 {name=l49 sig_type=std_logic lab=clk}
C {inv/inv.sym} 3340 -1375 0 0 {name=X2 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {inv/inv.sym} 3340 -1265 0 0 {name=X3 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {inv/inv.sym} 3340 -1170 0 0 {name=X4 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {inv/inv.sym} 3340 -1045 0 0 {name=X5 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {inv/inv.sym} 3340 -900 0 0 {name=X9 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {inv/inv.sym} 3340 -710 0 0 {name=X10 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {inv/inv.sym} 3340 -465 0 0 {name=X11 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 3390 -1375 2 0 {name=l50 sig_type=std_logic lab=ctr2}
C {devices/lab_pin.sym} 3390 -1265 2 0 {name=l51 sig_type=std_logic lab=ctr3}
C {devices/lab_pin.sym} 3390 -1170 2 0 {name=l52 sig_type=std_logic lab=ctr4}
C {devices/lab_pin.sym} 3390 -1045 2 0 {name=l53 sig_type=std_logic lab=ctr5}
C {devices/lab_pin.sym} 3390 -900 2 0 {name=l54 sig_type=std_logic lab=ctr6}
C {devices/lab_pin.sym} 3390 -710 2 0 {name=l55 sig_type=std_logic lab=ctr7}
C {devices/lab_pin.sym} 3390 -465 2 0 {name=l56 sig_type=std_logic lab=ctr8}
C {clk_tree/clk_tree.sym} 140810 25360 0 0 {name=X12}
C {devices/lab_pin.sym} 2270 -620 2 0 {name=l57 sig_type=std_logic lab=clk_128}
C {devices/lab_pin.sym} 2270 -640 2 0 {name=l58 sig_type=std_logic lab=clk_64}
C {devices/lab_pin.sym} 2270 -660 2 0 {name=l59 sig_type=std_logic lab=clk_32}
C {devices/lab_pin.sym} 2270 -600 2 0 {name=l60 sig_type=std_logic lab=clk_256}
C {devices/lab_pin.sym} 2270 -580 2 0 {name=l61 sig_type=std_logic lab=clk_512}
C {inv/inv.sym} 2545 -985 0 0 {name=X13 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 2495 -985 0 0 {name=l62 sig_type=std_logic lab=clk_8}
C {devices/lab_pin.sym} 2595 -985 2 0 {name=l63 sig_type=std_logic lab=clk_8b}
C {inv/inv.sym} 2545 -915 0 0 {name=X14 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 2495 -915 0 0 {name=l64 sig_type=std_logic lab=clk_16}
C {devices/lab_pin.sym} 2595 -915 2 0 {name=l65 sig_type=std_logic lab=clk_16b}
C {inv/inv.sym} 2545 -845 0 0 {name=X15 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 2495 -845 0 0 {name=l66 sig_type=std_logic lab=clk_32}
C {devices/lab_pin.sym} 2595 -845 2 0 {name=l67 sig_type=std_logic lab=clk_32b}
C {inv/inv.sym} 2545 -775 0 0 {name=X16 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 2495 -775 0 0 {name=l68 sig_type=std_logic lab=clk_64}
C {devices/lab_pin.sym} 2595 -775 2 0 {name=l69 sig_type=std_logic lab=clk_64b}
C {devices/gnd.sym} 2005 -1000 0 1 {name=l3 lab=GND}
C {devices/lab_pin.sym} 3110 -1335 0 0 {name=l76 sig_type=std_logic lab=clk_2}
C {devices/lab_pin.sym} 3110 -1355 0 0 {name=l77 sig_type=std_logic lab=clk_2}
C {devices/lab_pin.sym} 3110 -1225 0 0 {name=l78 sig_type=std_logic lab=clk_4}
C {devices/lab_pin.sym} 3110 -1130 0 0 {name=l79 sig_type=std_logic lab=clk_8}
C {devices/lab_pin.sym} 3110 -1005 0 0 {name=l80 sig_type=std_logic lab=clk_16}
C {devices/lab_pin.sym} 3110 -860 0 0 {name=l81 sig_type=std_logic lab=clk_32}
C {devices/lab_pin.sym} 3110 -670 0 0 {name=l82 sig_type=std_logic lab=clk_64}
C {devices/lab_pin.sym} 3110 -425 0 0 {name=l83 sig_type=std_logic lab=clk_128}
C {devices/lab_pin.sym} 2905 -1265 0 0 {name=l84 sig_type=std_logic lab=clk_2b}
C {devices/lab_pin.sym} 2905 -1225 0 0 {name=l85 sig_type=std_logic lab=clk_4}
C {devices/lab_pin.sym} 2905 -1190 0 0 {name=l86 sig_type=std_logic lab=clk_2b}
C {devices/lab_pin.sym} 2905 -1150 0 0 {name=l87 sig_type=std_logic lab=clk_4b}
C {devices/lab_pin.sym} 2905 -1110 0 0 {name=l90 sig_type=std_logic lab=clk_8}
C {devices/lab_pin.sym} 2905 -1085 0 0 {name=l91 sig_type=std_logic lab=clk_2b}
C {devices/lab_pin.sym} 2905 -1045 0 0 {name=l92 sig_type=std_logic lab=clk_4b}
C {devices/lab_pin.sym} 2905 -1005 0 0 {name=l93 sig_type=std_logic lab=clk_8b}
C {devices/lab_pin.sym} 2905 -965 0 0 {name=l94 sig_type=std_logic lab=clk_16}
C {sky130_stdcells/and3_1.sym} 2965 -880 0 0 {name=x12 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/and2_1.sym} 2845 -920 0 0 {name=x21 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/and2_1.sym} 2845 -840 0 0 {name=x22 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 2905 -880 0 0 {name=l95 sig_type=std_logic lab=clk_2b}
C {devices/lab_pin.sym} 2785 -940 0 0 {name=l96 sig_type=std_logic lab=clk_4b}
C {devices/lab_pin.sym} 2785 -900 0 0 {name=l97 sig_type=std_logic lab=clk_8b}
C {devices/lab_pin.sym} 2785 -860 0 0 {name=l98 sig_type=std_logic lab=clk_16b}
C {devices/lab_pin.sym} 2785 -820 0 0 {name=l99 sig_type=std_logic lab=clk_32}
C {sky130_stdcells/and3_1.sym} 2965 -690 0 0 {name=x23 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/and2_1.sym} 2845 -760 0 0 {name=x24 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/and2_1.sym} 2845 -620 0 0 {name=x25 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 2785 -780 0 0 {name=l100 sig_type=std_logic lab=clk_2b}
C {devices/lab_pin.sym} 2785 -740 0 0 {name=l101 sig_type=std_logic lab=clk_4b}
C {devices/lab_pin.sym} 2785 -710 0 0 {name=l102 sig_type=std_logic lab=clk_8b}
C {devices/lab_pin.sym} 2785 -670 0 0 {name=l103 sig_type=std_logic lab=clk_16b}
C {devices/lab_pin.sym} 2785 -600 0 0 {name=l104 sig_type=std_logic lab=clk_64}
C {sky130_stdcells/and2_1.sym} 2845 -690 0 0 {name=x26 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 2785 -640 0 0 {name=l105 sig_type=std_logic lab=clk_32b}
C {sky130_stdcells/and2_1.sym} 2845 -535 0 0 {name=x27 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/and2_1.sym} 2845 -395 0 0 {name=x28 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 2785 -555 0 0 {name=l106 sig_type=std_logic lab=clk_2b}
C {devices/lab_pin.sym} 2785 -515 0 0 {name=l107 sig_type=std_logic lab=clk_4b}
C {devices/lab_pin.sym} 2785 -485 0 0 {name=l108 sig_type=std_logic lab=clk_8b}
C {devices/lab_pin.sym} 2785 -445 0 0 {name=l109 sig_type=std_logic lab=clk_16b}
C {devices/lab_pin.sym} 2785 -375 0 0 {name=l110 sig_type=std_logic lab=clk_64b}
C {sky130_stdcells/and2_1.sym} 2845 -465 0 0 {name=x29 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 2785 -415 0 0 {name=l111 sig_type=std_logic lab=clk_32b}
C {devices/lab_pin.sym} 2785 -340 0 0 {name=l112 sig_type=std_logic lab=clk_128}
C {sky130_stdcells/and4_1.sym} 2965 -1025 0 0 {name=x30 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 2040 -720 0 0 {name=l32 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} 2040 -760 0 0 {name=l113 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 3110 -1455 0 0 {name=l20 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 3110 -1435 0 0 {name=l70 sig_type=std_logic lab=rstb}
C {sky130_stdcells/dfrtp_1.sym} 3200 -1455 0 0 {name=x32 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 3110 -1475 0 0 {name=l71 sig_type=std_logic lab=clk}
C {sky130_stdcells/nand2_1.sym} 3350 -1495 0 0 {name=x31 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 3290 -1515 0 0 {name=l24 sig_type=std_logic lab=clk}
C {Clock Synchronizer/synchronizer.sym} -990 660 0 0 {name=X1}
C {devices/lab_pin.sym} 1670 -760 0 0 {name=l114 sig_type=std_logic lab=rst_ext
}
C {devices/lab_pin.sym} 1670 -720 0 0 {name=l115 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 1670 -680 0 0 {name=l116 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 1940 -720 2 0 {name=l117 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 1940 -760 2 0 {name=l118 sig_type=std_logic lab=rstb}
C {devices/vsource.sym} 1670 -650 0 0 {name=V18 value=1.2}
C {devices/gnd.sym} 1670 -620 0 0 {name=l119 lab=GND}
C {sky130_stdcells/ebufn_1.sym} 3840 -95 0 0 {name=x33 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 3840 -15 0 0 {name=x34 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 3800 -55 0 0 {name=l11 sig_type=std_logic lab=ctr9}
C {devices/lab_pin.sym} 3800 25 0 0 {name=l12 sig_type=std_logic lab=ctr10}
C {devices/lab_pin.sym} 3610 -660 0 0 {name=l14 sig_type=std_logic lab=bit14}
C {devices/lab_pin.sym} 3610 -580 0 0 {name=l23 sig_type=std_logic lab=bit13}
C {devices/lab_pin.sym} 3610 -500 0 0 {name=l29 sig_type=std_logic lab=bit12}
C {devices/lab_pin.sym} 3610 -420 0 0 {name=l30 sig_type=std_logic lab=bit11}
C {devices/lab_pin.sym} 3610 -340 0 0 {name=l36 sig_type=std_logic lab=bit10}
C {devices/lab_pin.sym} 3610 -260 0 0 {name=l120 sig_type=std_logic lab=bit9}
C {devices/lab_pin.sym} 3610 -180 0 0 {name=l121 sig_type=std_logic lab=bit8}
C {devices/lab_pin.sym} 3610 -95 0 0 {name=l122 sig_type=std_logic lab=bit7}
C {devices/lab_pin.sym} 3610 -15 0 0 {name=l123 sig_type=std_logic lab=bit6}
C {sky130_stdcells/and4_1.sym} 2960 -170 0 0 {name=x13 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrtn_1.sym} 3195 -170 0 0 {name=x35 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 3105 -190 0 0 {name=l43 sig_type=std_logic lab=clk}
C {inv/inv.sym} 3335 -190 0 0 {name=X8 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 3385 -190 2 0 {name=l124 sig_type=std_logic lab=ctr9}
C {devices/lab_pin.sym} 3105 -150 0 0 {name=l125 sig_type=std_logic lab=clk_256}
C {sky130_stdcells/and2_1.sym} 2840 -260 0 0 {name=x36 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/and2_1.sym} 2840 -120 0 0 {name=x37 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 2780 -280 0 0 {name=l126 sig_type=std_logic lab=clk_2b}
C {devices/lab_pin.sym} 2780 -240 0 0 {name=l127 sig_type=std_logic lab=clk_4b}
C {devices/lab_pin.sym} 2780 -210 0 0 {name=l128 sig_type=std_logic lab=clk_8b}
C {devices/lab_pin.sym} 2780 -170 0 0 {name=l129 sig_type=std_logic lab=clk_16b}
C {devices/lab_pin.sym} 2780 -100 0 0 {name=l130 sig_type=std_logic lab=clk_64b}
C {sky130_stdcells/and2_1.sym} 2840 -190 0 0 {name=x38 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 2780 -140 0 0 {name=l131 sig_type=std_logic lab=clk_32b}
C {devices/lab_pin.sym} 2780 -65 0 0 {name=l132 sig_type=std_logic lab=clk_128b}
C {sky130_stdcells/and2_1.sym} 2840 -45 0 0 {name=x39 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 2780 -25 0 0 {name=l133 sig_type=std_logic lab=clk_256}
C {sky130_stdcells/and4_1.sym} 2960 150 0 0 {name=x40 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrtn_1.sym} 3195 150 0 0 {name=x41 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 3105 130 0 0 {name=l134 sig_type=std_logic lab=clk}
C {inv/inv.sym} 3335 130 0 0 {name=X17 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 3385 130 2 0 {name=l135 sig_type=std_logic lab=ctr10}
C {devices/lab_pin.sym} 3105 170 0 0 {name=l136 sig_type=std_logic lab=clk_512}
C {sky130_stdcells/and2_1.sym} 2840 60 0 0 {name=x42 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/and2_1.sym} 2840 200 0 0 {name=x43 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 2780 40 0 0 {name=l137 sig_type=std_logic lab=clk_2b}
C {devices/lab_pin.sym} 2780 80 0 0 {name=l138 sig_type=std_logic lab=clk_4b}
C {devices/lab_pin.sym} 2780 110 0 0 {name=l139 sig_type=std_logic lab=clk_8b}
C {devices/lab_pin.sym} 2780 150 0 0 {name=l140 sig_type=std_logic lab=clk_16b}
C {devices/lab_pin.sym} 2780 220 0 0 {name=l141 sig_type=std_logic lab=clk_64b}
C {sky130_stdcells/and2_1.sym} 2840 130 0 0 {name=x44 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 2780 180 0 0 {name=l142 sig_type=std_logic lab=clk_32b}
C {devices/lab_pin.sym} 2780 255 0 0 {name=l143 sig_type=std_logic lab=clk_128b}
C {devices/lab_pin.sym} 2780 295 0 0 {name=l144 sig_type=std_logic lab=clk_256b}
C {sky130_stdcells/and3_1.sym} 2840 295 0 0 {name=x46 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 2780 335 0 0 {name=l145 sig_type=std_logic lab=clk_512}
C {inv/inv.sym} 2545 -700 0 0 {name=X18 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 2495 -700 0 0 {name=l146 sig_type=std_logic lab=clk_128}
C {devices/lab_pin.sym} 2595 -700 2 0 {name=l147 sig_type=std_logic lab=clk_128b}
C {inv/inv.sym} 2545 -630 0 0 {name=X19 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 2495 -630 0 0 {name=l148 sig_type=std_logic lab=clk_256}
C {devices/lab_pin.sym} 2595 -630 2 0 {name=l149 sig_type=std_logic lab=clk_256b}
C {binary counter/bin_counter.sym} 1050 555 0 0 {name=X20}
C {devices/lab_pin.sym} 2170 -445 0 0 {name=l4 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 2170 -405 0 0 {name=l5 sig_type=std_logic lab=rstb_bin_counter}
C {devices/vsource.sym} 2170 -375 0 0 {name=V1 value=1.2}
C {devices/gnd.sym} 2170 -345 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 2400 -325 2 0 {name=l10 sig_type=std_logic lab=bit6}
C {devices/lab_pin.sym} 2400 -305 2 0 {name=l22 sig_type=std_logic lab=bit7}
C {devices/lab_pin.sym} 2400 -285 2 0 {name=l31 sig_type=std_logic lab=bit8}
C {devices/lab_pin.sym} 2400 -265 2 0 {name=l72 sig_type=std_logic lab=bit9}
C {devices/lab_pin.sym} 2400 -245 2 0 {name=l73 sig_type=std_logic lab=bit10}
C {devices/lab_pin.sym} 2400 -225 2 0 {name=l74 sig_type=std_logic lab=bit11}
C {devices/lab_pin.sym} 2400 -205 2 0 {name=l75 sig_type=std_logic lab=bit12}
C {devices/lab_pin.sym} 2400 -185 2 0 {name=l150 sig_type=std_logic lab=bit13}
C {devices/lab_pin.sym} 2400 -165 2 0 {name=l151 sig_type=std_logic lab=bit14}
C {devices/lab_pin.sym} 2400 -145 2 0 {name=l152 sig_type=std_logic lab=bit15}
C {devices/lab_pin.sym} 2400 -345 2 0 {name=l153 sig_type=std_logic lab=bit5}
C {devices/lab_pin.sym} 2400 -365 2 0 {name=l154 sig_type=std_logic lab=bit4}
C {devices/lab_pin.sym} 2400 -385 2 0 {name=l155 sig_type=std_logic lab=bit3}
C {devices/lab_pin.sym} 2400 -405 2 0 {name=l156 sig_type=std_logic lab=bit2}
C {devices/lab_pin.sym} 2400 -425 2 0 {name=l157 sig_type=std_logic lab=bit1}
C {devices/lab_pin.sym} 2400 -445 2 0 {name=l158 sig_type=std_logic lab=bit0}
C {devices/lab_pin.sym} 2290 -85 0 0 {name=l159 sig_type=std_logic lab=latch_out}
C {devices/lab_pin.sym} 1710 -430 0 0 {name=l163 sig_type=std_logic lab=clk_2}
C {devices/lab_pin.sym} 1890 -450 2 0 {name=l164 sig_type=std_logic lab=latch_out}
C {sky130_stdcells/dlxtp_1.sym} 1800 -440 0 0 {name=x47 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/vsource.sym} 1625 -320 0 0 {name=V3 value="DC 0 PULSE(0 1.2 \{1.96u+(1/(4*f))\} 1n 1n \{duty_comp*1/f\} \{1/(f)\}" -180)}
C {devices/lab_pin.sym} 1625 -350 0 1 {name=l165 sig_type=std_logic lab=comp_out}
C {devices/gnd.sym} 1625 -290 0 1 {name=l166 lab=GND}
C {devices/lab_pin.sym} 1710 -450 2 1 {name=l167 sig_type=std_logic lab=comp_out}
