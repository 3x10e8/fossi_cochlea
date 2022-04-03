v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {bit-3} 3850 -970 0 0 0.4 0.4 {}
T {bit-2} 3845 -1050 0 0 0.4 0.4 {}
T {bit1} 3845 -1105 0 0 0.4 0.4 {}
T {bit-4} 3850 -890 0 0 0.4 0.4 {}
T {bit-5} 3850 -810 0 0 0.4 0.4 {}
T {bit-6} 3850 -730 0 0 0.4 0.4 {}
T {bit-7} 3850 -660 0 0 0.4 0.4 {}
T {bit-8} 3850 -580 0 0 0.4 0.4 {}
T {Rstb bit makes the system reset:
rstb==0: reset
rstb==1: normal working
} 4080 -1145 0 0 0.4 0.4 {}
T {No setup and hold violations anticipated.
} 4080 -1035 0 0 0.4 0.4 {}
T {bit-9} 3850 -500 0 0 0.4 0.4 {}
T {bit-10} 3850 -420 0 0 0.4 0.4 {}
T {Analog inverter} 3880 -1180 0 0 0.4 0.4 {}
T {comparator out replicated by comp_out signal} 1485 -670 0 0 0.4 0.4 {}
T {Comp model} 2010 -255 0 0 0.3 0.3 {}
N 3775 -1035 3785 -1035 { lab=#net1}
N 3785 -1035 3835 -1035 { lab=#net1}
N 3775 -955 3785 -955 { lab=#net1}
N 3785 -955 3835 -955 { lab=#net1}
N 3795 -1115 3835 -1115 { lab=#net1}
N 3775 -1115 3795 -1115 { lab=#net1}
N 3835 -1115 3835 -635 { lab=#net1}
N 3835 -1115 3905 -1115 { lab=#net1}
N 3505 -1115 3625 -1115 { lab=bit15}
N 3625 -1115 3695 -1115 { lab=bit15}
N 3505 -1035 3625 -1035 { lab=bit14}
N 3625 -1035 3695 -1035 { lab=bit14}
N 3505 -955 3625 -955 { lab=bit13}
N 3625 -955 3695 -955 { lab=bit13}
N 3775 -795 3785 -795 { lab=#net1}
N 3785 -795 3835 -795 { lab=#net1}
N 3775 -715 3785 -715 { lab=#net1}
N 3785 -715 3835 -715 { lab=#net1}
N 3795 -875 3835 -875 { lab=#net1}
N 3775 -875 3795 -875 { lab=#net1}
N 3505 -875 3625 -875 { lab=bit12}
N 3625 -875 3695 -875 { lab=bit12}
N 3505 -795 3625 -795 { lab=bit11}
N 3625 -795 3695 -795 { lab=bit11}
N 3505 -715 3625 -715 { lab=bit10}
N 3625 -715 3695 -715 { lab=bit10}
N 3775 -635 3785 -635 { lab=#net1}
N 3785 -635 3835 -635 { lab=#net1}
N 3775 -555 3785 -555 { lab=#net1}
N 3785 -555 3835 -555 { lab=#net1}
N 3505 -635 3625 -635 { lab=bit9}
N 3625 -635 3695 -635 { lab=bit9}
N 3505 -555 3625 -555 { lab=bit8}
N 3625 -555 3695 -555 { lab=bit8}
N 3835 -635 3835 -555 { lab=#net1}
N 2885 -860 2970 -860 { lab=VDD}
N 2885 -765 2970 -765 { lab=VDD}
N 2885 -640 2965 -640 { lab=VDD}
N 2965 -640 2970 -640 { lab=VDD}
N 2885 -550 2965 -550 { lab=VDD}
N 2965 -550 2970 -550 { lab=VDD}
N 2885 -430 2965 -430 { lab=VDD}
N 2965 -430 2970 -430 { lab=VDD}
N 2965 -335 2970 -335 { lab=VDD}
N 2885 -965 2885 -285 { lab=VDD}
N 2885 -285 2885 -135 { lab=VDD}
N 2885 -335 2955 -335 { lab=VDD}
N 2885 -970 2970 -970 { lab=VDD}
N 2885 -970 2885 -965 { lab=VDD}
N 2885 -1070 2885 -970 { lab=VDD}
N 2885 -1070 2970 -1070 { lab=VDD}
N 3775 -475 3785 -475 { lab=#net1}
N 3785 -475 3835 -475 { lab=#net1}
N 3775 -395 3785 -395 { lab=#net1}
N 3785 -395 3835 -395 { lab=#net1}
N 3505 -475 3625 -475 { lab=bit7}
N 3625 -475 3695 -475 { lab=bit7}
N 3505 -395 3625 -395 { lab=bit6}
N 3625 -395 3695 -395 { lab=bit6}
N 3835 -475 3835 -395 { lab=#net1}
N 3835 -555 3835 -475 { lab=#net1}
N 2955 -335 2965 -335 { lab=VDD}
N 2885 -265 2965 -265 { lab=VDD}
N 2965 -265 2970 -265 { lab=VDD}
N 2965 -170 2970 -170 { lab=VDD}
N 2885 -170 2955 -170 { lab=VDD}
N 2955 -170 2965 -170 { lab=VDD}
N 1930 -335 1965 -335 { lab=#net2}
N 1825 -335 1930 -335 { lab=#net2}
N 1325 -495 1325 -440 { lab=#net3}
N 1115 -440 1325 -440 { lab=#net3}
N 1115 -495 1115 -440 { lab=#net3}
N 1115 -495 1145 -495 { lab=#net3}
C {devices/lab_pin.sym} 4000 -1115 2 0 {name=l171 sig_type=std_logic lab=out}
C {sky130_stdcells/ebufn_1.sym} 3735 -1035 0 0 {name=x45 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 3735 -955 0 0 {name=x48 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 3735 -1115 0 0 {name=x49 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 3270 -1110 2 0 {name=l181 sig_type=std_logic lab=ctr1}
C {devices/lab_pin.sym} 3695 -1075 0 0 {name=l185 sig_type=std_logic lab=ctr1}
C {devices/lab_pin.sym} 3695 -995 0 0 {name=l186 sig_type=std_logic lab=ctr2}
C {devices/lab_pin.sym} 3695 -915 0 0 {name=l187 sig_type=std_logic lab=ctr3}
C {sky130_stdcells/ebufn_1.sym} 3735 -795 0 0 {name=x50 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 3735 -715 0 0 {name=x51 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 3735 -875 0 0 {name=x52 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 3695 -835 0 0 {name=l195 sig_type=std_logic lab=ctr4}
C {devices/lab_pin.sym} 3695 -755 0 0 {name=l196 sig_type=std_logic lab=ctr5}
C {devices/lab_pin.sym} 3695 -675 0 0 {name=l197 sig_type=std_logic lab=ctr6}
C {sky130_stdcells/ebufn_1.sym} 3735 -635 0 0 {name=x53 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 3735 -555 0 0 {name=x54 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 3695 -595 0 0 {name=l200 sig_type=std_logic lab=ctr7}
C {devices/lab_pin.sym} 3695 -515 0 0 {name=l201 sig_type=std_logic lab=ctr8}
C {sky130_stdcells/dfrtn_1.sym} 3060 -970 0 0 {name=x56 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrtn_1.sym} 3060 -860 0 0 {name=x57 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrtn_1.sym} 3060 -765 0 0 {name=x58 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrtn_1.sym} 3060 -640 0 0 {name=x59 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrtn_1.sym} 3060 -550 0 0 {name=x60 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrtn_1.sym} 3060 -430 0 0 {name=x61 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrtn_1.sym} 3060 -335 0 0 {name=x62 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 2970 -950 0 0 {name=l203 sig_type=std_logic lab=phi_4b}
C {inv/inv.sym} 3200 -990 0 0 {name=X23 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {inv/inv.sym} 3200 -880 0 0 {name=X24 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {inv/inv.sym} 3200 -785 0 0 {name=X25 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {inv/inv.sym} 3200 -660 0 0 {name=X26 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {inv/inv.sym} 3200 -570 0 0 {name=X27 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {inv/inv.sym} 3200 -450 0 0 {name=X28 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {inv/inv.sym} 3200 -355 0 0 {name=X29 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 3250 -990 2 0 {name=l210 sig_type=std_logic lab=ctr2}
C {devices/lab_pin.sym} 3250 -880 2 0 {name=l211 sig_type=std_logic lab=ctr3}
C {devices/lab_pin.sym} 3250 -785 2 0 {name=l212 sig_type=std_logic lab=ctr4}
C {devices/lab_pin.sym} 3250 -660 2 0 {name=l213 sig_type=std_logic lab=ctr5}
C {devices/lab_pin.sym} 3250 -570 2 0 {name=l214 sig_type=std_logic lab=ctr6}
C {devices/lab_pin.sym} 3250 -450 2 0 {name=l215 sig_type=std_logic lab=ctr7}
C {devices/lab_pin.sym} 3250 -355 2 0 {name=l216 sig_type=std_logic lab=ctr8}
C {devices/lab_pin.sym} 2970 -990 0 0 {name=l237 sig_type=std_logic lab=phi_8b}
C {devices/lab_pin.sym} 2970 -880 0 0 {name=l238 sig_type=std_logic lab=phi_16b}
C {devices/lab_pin.sym} 2970 -785 0 0 {name=l239 sig_type=std_logic lab=phi_32b}
C {devices/lab_pin.sym} 2970 -660 0 0 {name=l240 sig_type=std_logic lab=phi_64b}
C {devices/lab_pin.sym} 2970 -570 0 0 {name=l241 sig_type=std_logic lab=phi_128b}
C {devices/lab_pin.sym} 2970 -450 0 0 {name=l242 sig_type=std_logic lab=phi_256b}
C {devices/lab_pin.sym} 2970 -355 0 0 {name=l243 sig_type=std_logic lab=phi_512b}
C {devices/lab_pin.sym} 2970 -1090 0 0 {name=l246 sig_type=std_logic lab=phi_4b}
C {devices/lab_pin.sym} 2885 -135 0 0 {name=l252 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2970 -1050 0 0 {name=l257 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} 3150 -1130 0 0 {name=l258 sig_type=std_logic lab=phi_4}
C {sky130_stdcells/nand2_1.sym} 3210 -1110 0 0 {name=x64 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 3735 -475 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 3735 -395 0 0 {name=x2 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 3695 -435 0 0 {name=l12 sig_type=std_logic lab=ctr9}
C {devices/lab_pin.sym} 3695 -355 0 0 {name=l13 sig_type=std_logic lab=ctr10}
C {sky130_stdcells/dfrtn_1.sym} 3060 -265 0 0 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrtn_1.sym} 3060 -170 0 0 {name=x4 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {inv/inv.sym} 3200 -190 0 0 {name=X2 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 3250 -285 2 0 {name=l14 sig_type=std_logic lab=ctr9}
C {devices/lab_pin.sym} 3250 -190 2 0 {name=l20 sig_type=std_logic lab=ctr10}
C {devices/lab_pin.sym} 2970 -285 0 0 {name=l21 sig_type=std_logic lab=phi_1024b}
C {devices/lab_pin.sym} 2970 -190 0 0 {name=l23 sig_type=std_logic lab=phi_2048b}
C {inv/inv.sym} 3200 -285 0 0 {name=X3 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {inv/inv.sym} 3950 -1115 0 0 {name=X4 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 3505 -395 0 0 {name=l24 sig_type=std_logic lab=bit6}
C {devices/lab_pin.sym} 3505 -475 0 0 {name=l25 sig_type=std_logic lab=bit7}
C {devices/lab_pin.sym} 3505 -555 0 0 {name=l26 sig_type=std_logic lab=bit8}
C {devices/lab_pin.sym} 3505 -635 0 0 {name=l27 sig_type=std_logic lab=bit9}
C {devices/lab_pin.sym} 3505 -715 0 0 {name=l28 sig_type=std_logic lab=bit10}
C {devices/lab_pin.sym} 3505 -795 0 0 {name=l29 sig_type=std_logic lab=bit11}
C {devices/lab_pin.sym} 3505 -875 0 0 {name=l30 sig_type=std_logic lab=bit12}
C {devices/lab_pin.sym} 3505 -955 0 0 {name=l33 sig_type=std_logic lab=bit13}
C {devices/lab_pin.sym} 3505 -1035 0 0 {name=l34 sig_type=std_logic lab=bit14}
C {devices/lab_pin.sym} 3505 -1115 0 0 {name=l35 sig_type=std_logic lab=bit15}
C {devices/vsource.sym} 2040 -1155 0 0 {name=V4 value=1.2}
C {devices/vdd.sym} 2040 -1185 0 0 {name=l36 lab=VDD}
C {devices/vdd.sym} 2205 -1070 0 0 {name=l37 lab=VDD}
C {devices/gnd.sym} 2255 -1070 2 1 {name=l42 lab=GND}
C {devices/gnd.sym} 2000 -1260 0 1 {name=l43 lab=GND}
C {devices/vsource.sym} 2080 -1290 0 0 {name=V5 value="DC 0 PULSE(0 1.2 \{2/f\} 1n 1n \{duty_clk*1/f\} \{1/f\})"}
C {devices/lab_pin.sym} 2080 -1320 0 1 {name=l47 sig_type=std_logic lab=clk_ext}
C {devices/gnd.sym} 2040 -1125 0 0 {name=l48 lab=GND}
C {devices/lab_pin.sym} 2000 -1320 0 0 {name=l49 sig_type=std_logic lab=rst_ext}
C {devices/vsource.sym} 2000 -1290 0 1 {name=V6 value="DC 0 PWL(0u 0 0.6u 1.2 1.1723u 1.2 1.1724u 0 6u 0)"}
C {devices/lab_pin.sym} 2345 -960 2 0 {name=l50 sig_type=std_logic lab=phi_16b}
C {devices/lab_pin.sym} 2345 -980 2 0 {name=l51 sig_type=std_logic lab=phi_8b}
C {devices/lab_pin.sym} 2345 -1000 2 0 {name=l52 sig_type=std_logic lab=phi_4b}
C {devices/lab_pin.sym} 2345 -940 2 0 {name=l53 sig_type=std_logic lab=phi_32b}
C {devices/lab_pin.sym} 2345 -880 2 0 {name=l54 sig_type=std_logic lab=phi_256b}
C {devices/lab_pin.sym} 2345 -900 2 0 {name=l55 sig_type=std_logic lab=phi_128b}
C {devices/lab_pin.sym} 2345 -920 2 0 {name=l56 sig_type=std_logic lab=phi_64b}
C {devices/lab_pin.sym} 2345 -860 2 0 {name=l62 sig_type=std_logic lab=phi_512b}
C {devices/lab_pin.sym} 2345 -840 2 0 {name=l63 sig_type=std_logic lab=phi_1024b}
C {devices/gnd.sym} 2080 -1260 0 1 {name=l64 lab=GND}
C {devices/lab_pin.sym} 2115 -980 0 0 {name=l65 sig_type=std_logic lab=rstb}
C {Clock Synchronizer/synchronizer.sym} -955 400 0 0 {name=X6}
C {devices/lab_pin.sym} 1705 -1020 0 0 {name=l67 sig_type=std_logic lab=rst_ext
}
C {devices/lab_pin.sym} 1705 -980 0 0 {name=l68 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 1705 -940 0 0 {name=l69 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 1975 -1020 2 0 {name=l70 sig_type=std_logic lab=rstb}
C {devices/vsource.sym} 1705 -910 0 0 {name=V7 value=1.2}
C {devices/gnd.sym} 1705 -880 0 0 {name=l71 lab=GND}
C {binary counter/bin_counter.sym} 1125 295 0 0 {name=X7}
C {devices/lab_pin.sym} 2245 -705 0 0 {name=l76 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 2475 -585 2 0 {name=l77 sig_type=std_logic lab=bit6}
C {devices/lab_pin.sym} 2475 -565 2 0 {name=l78 sig_type=std_logic lab=bit7}
C {devices/lab_pin.sym} 2475 -545 2 0 {name=l79 sig_type=std_logic lab=bit8}
C {devices/lab_pin.sym} 2475 -525 2 0 {name=l80 sig_type=std_logic lab=bit9}
C {devices/lab_pin.sym} 2475 -505 2 0 {name=l81 sig_type=std_logic lab=bit10}
C {devices/lab_pin.sym} 2475 -485 2 0 {name=l82 sig_type=std_logic lab=bit11}
C {devices/lab_pin.sym} 2475 -465 2 0 {name=l83 sig_type=std_logic lab=bit12}
C {devices/lab_pin.sym} 2475 -445 2 0 {name=l84 sig_type=std_logic lab=bit13}
C {devices/lab_pin.sym} 2475 -425 2 0 {name=l85 sig_type=std_logic lab=bit14}
C {devices/lab_pin.sym} 2475 -405 2 0 {name=l86 sig_type=std_logic lab=bit15}
C {devices/lab_pin.sym} 2475 -605 2 0 {name=l87 sig_type=std_logic lab=bit5}
C {devices/lab_pin.sym} 2475 -625 2 0 {name=l90 sig_type=std_logic lab=bit4}
C {devices/lab_pin.sym} 2475 -645 2 0 {name=l91 sig_type=std_logic lab=bit3}
C {devices/lab_pin.sym} 2475 -665 2 0 {name=l92 sig_type=std_logic lab=bit2}
C {devices/lab_pin.sym} 2475 -685 2 0 {name=l93 sig_type=std_logic lab=bit1}
C {devices/lab_pin.sym} 2475 -705 2 0 {name=l94 sig_type=std_logic lab=bit0}
C {devices/lab_pin.sym} 2365 -345 0 0 {name=l95 sig_type=std_logic lab=latch_out}
C {devices/lab_pin.sym} 1140 -325 0 0 {name=l96 sig_type=std_logic lab=clk_2}
C {devices/lab_pin.sym} 1320 -345 2 0 {name=l97 sig_type=std_logic lab=latch_out}
C {devices/vsource.sym} 1700 -580 0 0 {name=V8 value="DC 0 PULSE(0 1.2 \{2/f\} 1n 1n \{duty_comp*1/f\} \{1/(f)\}) -18"}
C {devices/lab_pin.sym} 1700 -610 0 1 {name=l98 sig_type=std_logic lab=phi}
C {devices/gnd.sym} 1700 -550 0 1 {name=l99 lab=GND}
C {devices/lab_pin.sym} 1140 -345 2 1 {name=l100 sig_type=std_logic lab=phi}
C {devices/lab_pin.sym} 1140 -305 0 0 {name=l101 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} 2245 -665 2 1 {name=l102 sig_type=std_logic lab=rstb}
C {devices/vsource.sym} 1705 -455 0 0 {name=V11 value="DC 0 PWL(0u 0 0.6u 1.2 1.1723u 1.2 1.1724u 0 6u 0)"}
C {devices/gnd.sym} 1705 -425 0 1 {name=l103 lab=GND}
C {devices/lab_pin.sym} 1705 -485 0 1 {name=l104 sig_type=std_logic lab=rstb_bin_counter}
C {devices/lab_pin.sym} 1965 -315 0 0 {name=l105 sig_type=std_logic lab=latch_out}
C {devices/lab_pin.sym} 2145 -335 2 0 {name=l106 sig_type=std_logic lab=comp_out}
C {devices/lab_pin.sym} 1965 -295 0 0 {name=l107 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} 2245 -625 0 0 {name=l108 sig_type=std_logic lab=comp_out}
C {devices/netlist.sym} 2740 -1495 0 0 {name=s1 value="
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
C {sky130_stdcells/inv_1.sym} 1815 -745 0 0 {name=x7 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1855 -745 2 0 {name=l109 sig_type=std_logic lab=phi_4}
C {devices/lab_pin.sym} 1775 -745 0 0 {name=l110 sig_type=std_logic lab=phi_4b}
C {devices/vsource.sym} 1710 -200 0 0 {name=V12 value="DC 0 PULSE(0 1.2 \{2/f\} 1n 1n \{duty_clk*256/f\} \{256/(f)\})"}
C {devices/lab_pin.sym} 1710 -230 0 1 {name=l111 sig_type=std_logic lab=in_pulse}
C {devices/gnd.sym} 1710 -170 0 1 {name=l112 lab=GND}
C {devices/lab_pin.sym} 1645 -315 2 1 {name=l117 sig_type=std_logic lab=in_pulse}
C {sky130_stdcells/dlrtn_1.sym} 2055 -315 0 0 {name=x8 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__}
C {sky130_stdcells/dlrtp_1.sym} 1230 -325 0 0 {name=x9 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrtn_1.sym} 1735 -315 0 0 {name=x10 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1645 -335 0 0 {name=l120 sig_type=std_logic lab=phi}
C {devices/lab_pin.sym} 1645 -295 0 0 {name=l121 sig_type=std_logic lab=rstb}
C {gray selector/clk_tree_fb.sym} 140885 25100 0 0 {name=X1}
C {devices/lab_pin.sym} 2970 -840 0 0 {name=l3 sig_type=std_logic lab=phi_4b}
C {devices/lab_pin.sym} 2970 -745 0 0 {name=l4 sig_type=std_logic lab=phi_4b}
C {devices/lab_pin.sym} 2970 -620 0 0 {name=l5 sig_type=std_logic lab=phi_4b}
C {devices/lab_pin.sym} 2970 -530 0 0 {name=l6 sig_type=std_logic lab=phi_4b}
C {devices/lab_pin.sym} 2970 -410 0 0 {name=l7 sig_type=std_logic lab=phi_4b}
C {devices/lab_pin.sym} 2970 -315 0 0 {name=l8 sig_type=std_logic lab=phi_4b}
C {devices/lab_pin.sym} 2970 -245 0 0 {name=l9 sig_type=std_logic lab=phi_4b}
C {devices/lab_pin.sym} 2970 -150 0 0 {name=l10 sig_type=std_logic lab=phi_4b}
C {devices/lab_pin.sym} 2115 -1020 0 0 {name=l1 sig_type=std_logic lab=latch_out}
C {devices/lab_pin.sym} 2345 -820 2 0 {name=l2 sig_type=std_logic lab=phi_2048b}
C {sky130_stdcells/dfrtn_1.sym} 3060 -1070 0 0 {name=x5 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrbp_1.sym} 1235 -495 0 0 {name=x6 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1325 -515 2 0 {name=l11 sig_type=std_logic lab=clk_2}
C {devices/lab_pin.sym} 1145 -475 0 0 {name=l15 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} 1145 -515 2 1 {name=l16 sig_type=std_logic lab=clk_ext}
