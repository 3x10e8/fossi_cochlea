v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {comparator out replicated by comp_out signal} 1410 -410 0 0 0.4 0.4 {}
T {bit-3} 3810 -650 0 0 0.4 0.4 {}
T {bit-2} 3805 -730 0 0 0.4 0.4 {}
T {bit1} 3805 -785 0 0 0.4 0.4 {}
T {bit-4} 3810 -570 0 0 0.4 0.4 {}
T {bit-5} 3810 -490 0 0 0.4 0.4 {}
T {bit-6} 3810 -410 0 0 0.4 0.4 {}
T {bit-7} 3810 -340 0 0 0.4 0.4 {}
T {bit-8} 3810 -260 0 0 0.4 0.4 {}
T {Rstb bit makes the system reset:
rstb==0: reset
rstb==1: normal working
} 4040 -825 0 0 0.4 0.4 {}
T {No setup and hold violations anticipated.
} 4040 -715 0 0 0.4 0.4 {}
T {bit-9} 3810 -180 0 0 0.4 0.4 {}
T {bit-10} 3810 -100 0 0 0.4 0.4 {}
T {Analog inverter} 3840 -860 0 0 0.4 0.4 {}
N 3735 -715 3745 -715 { lab=#net1}
N 3745 -715 3795 -715 { lab=#net1}
N 3735 -635 3745 -635 { lab=#net1}
N 3745 -635 3795 -635 { lab=#net1}
N 3755 -795 3795 -795 { lab=#net1}
N 3735 -795 3755 -795 { lab=#net1}
N 3795 -795 3795 -315 { lab=#net1}
N 3795 -795 3865 -795 { lab=#net1}
N 3465 -795 3585 -795 { lab=bit15}
N 3585 -795 3655 -795 { lab=bit15}
N 3465 -715 3585 -715 { lab=bit14}
N 3585 -715 3655 -715 { lab=bit14}
N 3465 -635 3585 -635 { lab=bit13}
N 3585 -635 3655 -635 { lab=bit13}
N 3735 -475 3745 -475 { lab=#net1}
N 3745 -475 3795 -475 { lab=#net1}
N 3735 -395 3745 -395 { lab=#net1}
N 3745 -395 3795 -395 { lab=#net1}
N 3755 -555 3795 -555 { lab=#net1}
N 3735 -555 3755 -555 { lab=#net1}
N 3465 -555 3585 -555 { lab=bit12}
N 3585 -555 3655 -555 { lab=bit12}
N 3465 -475 3585 -475 { lab=bit11}
N 3585 -475 3655 -475 { lab=bit11}
N 3465 -395 3585 -395 { lab=bit10}
N 3585 -395 3655 -395 { lab=bit10}
N 3735 -315 3745 -315 { lab=#net1}
N 3745 -315 3795 -315 { lab=#net1}
N 3735 -235 3745 -235 { lab=#net1}
N 3745 -235 3795 -235 { lab=#net1}
N 3465 -315 3585 -315 { lab=bit9}
N 3585 -315 3655 -315 { lab=bit9}
N 3465 -235 3585 -235 { lab=bit8}
N 3585 -235 3655 -235 { lab=bit8}
N 3795 -315 3795 -235 { lab=#net1}
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
N 3735 -155 3745 -155 { lab=#net1}
N 3745 -155 3795 -155 { lab=#net1}
N 3735 -75 3745 -75 { lab=#net1}
N 3745 -75 3795 -75 { lab=#net1}
N 3465 -155 3585 -155 { lab=bit7}
N 3585 -155 3655 -155 { lab=bit7}
N 3465 -75 3585 -75 { lab=bit6}
N 3585 -75 3655 -75 { lab=bit6}
N 3795 -155 3795 -75 { lab=#net1}
N 3795 -235 3795 -155 { lab=#net1}
N 2955 -335 2965 -335 { lab=VDD}
N 2885 -265 2965 -265 { lab=VDD}
N 2965 -265 2970 -265 { lab=VDD}
N 2965 -170 2970 -170 { lab=VDD}
N 2885 -170 2955 -170 { lab=VDD}
N 2955 -170 2965 -170 { lab=VDD}
C {devices/vsource.sym} 1965 -895 0 0 {name=V2 value=1.2}
C {devices/vdd.sym} 1965 -925 0 0 {name=l15 lab=VDD}
C {devices/vdd.sym} 2130 -810 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 2180 -810 2 1 {name=l2 lab=GND}
C {devices/gnd.sym} 1925 -1000 0 1 {name=l89 lab=GND}
C {devices/vsource.sym} 2005 -1030 0 0 {name=V10 value="DC 0 PULSE(0 1.2 \{2/f\} 1n 1n \{duty_clk*1/f\} \{1/f\})"}
C {devices/lab_pin.sym} 2005 -1060 0 1 {name=l8 sig_type=std_logic lab=clk_ext}
C {devices/gnd.sym} 1965 -865 0 0 {name=l88 lab=GND}
C {devices/lab_pin.sym} 1925 -1060 0 0 {name=l9 sig_type=std_logic lab=rst_ext}
C {devices/vsource.sym} 1925 -1030 0 1 {name=V9 value="DC 0 PWL(0u 0 0.6u 1.2 1.1723u 1.2 1.1724u 0 6u 0)"}
C {devices/lab_pin.sym} 2270 -700 2 0 {name=l16 sig_type=std_logic lab=clk_8}
C {devices/lab_pin.sym} 2270 -720 2 0 {name=l17 sig_type=std_logic lab=clk_4}
C {devices/lab_pin.sym} 2270 -740 2 0 {name=l18 sig_type=std_logic lab=clk_2}
C {devices/lab_pin.sym} 2270 -680 2 0 {name=l19 sig_type=std_logic lab=clk_16}
C {clk_tree/clk_tree.sym} 140810 25360 0 0 {name=X12}
C {devices/lab_pin.sym} 2270 -620 2 0 {name=l57 sig_type=std_logic lab=clk_128}
C {devices/lab_pin.sym} 2270 -640 2 0 {name=l58 sig_type=std_logic lab=clk_64}
C {devices/lab_pin.sym} 2270 -660 2 0 {name=l59 sig_type=std_logic lab=clk_32}
C {devices/lab_pin.sym} 2270 -600 2 0 {name=l60 sig_type=std_logic lab=clk_256}
C {devices/lab_pin.sym} 2270 -580 2 0 {name=l61 sig_type=std_logic lab=clk_512}
C {devices/gnd.sym} 2005 -1000 0 1 {name=l3 lab=GND}
C {devices/lab_pin.sym} 2040 -720 0 0 {name=l32 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} 2040 -760 0 0 {name=l113 sig_type=std_logic lab=clk_ext}
C {Clock Synchronizer/synchronizer.sym} -1030 660 0 0 {name=X1}
C {devices/lab_pin.sym} 1630 -760 0 0 {name=l114 sig_type=std_logic lab=rst_ext
}
C {devices/lab_pin.sym} 1630 -720 0 0 {name=l115 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 1630 -680 0 0 {name=l116 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 1900 -760 2 0 {name=l118 sig_type=std_logic lab=rstb}
C {devices/vsource.sym} 1630 -650 0 0 {name=V18 value=1.2}
C {devices/gnd.sym} 1630 -620 0 0 {name=l119 lab=GND}
C {binary counter/bin_counter.sym} 1050 555 0 0 {name=X20}
C {devices/lab_pin.sym} 2170 -445 0 0 {name=l4 sig_type=std_logic lab=en}
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
C {devices/lab_pin.sym} 1310 -65 0 0 {name=l163 sig_type=std_logic lab=clk_2b}
C {devices/lab_pin.sym} 1490 -85 2 0 {name=l164 sig_type=std_logic lab=latch_out}
C {devices/vsource.sym} 1625 -320 0 0 {name=V3 value="DC 0 PULSE(0 1.2 \{2/f\} 1n 1n \{duty_comp*1/f\} \{1/(f)\}) -18"}
C {devices/lab_pin.sym} 1625 -350 0 1 {name=l165 sig_type=std_logic lab=phi}
C {devices/gnd.sym} 1625 -290 0 1 {name=l166 lab=GND}
C {devices/lab_pin.sym} 1310 -85 2 1 {name=l167 sig_type=std_logic lab=phi}
C {devices/lab_pin.sym} 3960 -795 2 0 {name=l171 sig_type=std_logic lab=out}
C {devices/netlist.sym} 3440 -1165 0 0 {name=s2 value="
.lib /home/sky/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /home/sky/sky130A/libs.ref/sky130_fd_sc_lp/spice/sky130_fd_sc_lp.spice
.options abstol=1e-14 reltol=1e-4
.param f=2560k
.param duty_clk=0.5
.param duty_comp=0.45
.ic v(out)=0
.tran \{(1/100)*(1/f)\} \{100/f\}
.save all
"}
C {sky130_stdcells/ebufn_1.sym} 3695 -715 0 0 {name=x45 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 3695 -635 0 0 {name=x48 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 3695 -795 0 0 {name=x49 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 3270 -1110 2 0 {name=l181 sig_type=std_logic lab=ctr1}
C {devices/lab_pin.sym} 3655 -755 0 0 {name=l185 sig_type=std_logic lab=ctr1}
C {devices/lab_pin.sym} 3655 -675 0 0 {name=l186 sig_type=std_logic lab=ctr2}
C {devices/lab_pin.sym} 3655 -595 0 0 {name=l187 sig_type=std_logic lab=ctr3}
C {sky130_stdcells/ebufn_1.sym} 3695 -475 0 0 {name=x50 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 3695 -395 0 0 {name=x51 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 3695 -555 0 0 {name=x52 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 3655 -515 0 0 {name=l195 sig_type=std_logic lab=ctr4}
C {devices/lab_pin.sym} 3655 -435 0 0 {name=l196 sig_type=std_logic lab=ctr5}
C {devices/lab_pin.sym} 3655 -355 0 0 {name=l197 sig_type=std_logic lab=ctr6}
C {sky130_stdcells/ebufn_1.sym} 3695 -315 0 0 {name=x53 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 3695 -235 0 0 {name=x54 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 3655 -275 0 0 {name=l200 sig_type=std_logic lab=ctr7}
C {devices/lab_pin.sym} 3655 -195 0 0 {name=l201 sig_type=std_logic lab=ctr8}
C {sky130_stdcells/dfrtn_1.sym} 3060 -970 0 0 {name=x56 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrtn_1.sym} 3060 -860 0 0 {name=x57 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrtn_1.sym} 3060 -765 0 0 {name=x58 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrtn_1.sym} 3060 -640 0 0 {name=x59 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrtn_1.sym} 3060 -550 0 0 {name=x60 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrtn_1.sym} 3060 -430 0 0 {name=x61 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrtn_1.sym} 3060 -335 0 0 {name=x62 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 2970 -950 0 0 {name=l203 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 2970 -840 0 0 {name=l204 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 2970 -745 0 0 {name=l205 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 2970 -620 0 0 {name=l206 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 2970 -530 0 0 {name=l207 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 2970 -410 0 0 {name=l208 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 2970 -315 0 0 {name=l209 sig_type=std_logic lab=clk_ext}
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
C {devices/lab_pin.sym} 2970 -990 0 0 {name=l237 sig_type=std_logic lab=clk_2}
C {devices/lab_pin.sym} 2970 -880 0 0 {name=l238 sig_type=std_logic lab=clk_4}
C {devices/lab_pin.sym} 2970 -785 0 0 {name=l239 sig_type=std_logic lab=clk_8}
C {devices/lab_pin.sym} 2970 -660 0 0 {name=l240 sig_type=std_logic lab=clk_16}
C {devices/lab_pin.sym} 2970 -570 0 0 {name=l241 sig_type=std_logic lab=clk_32}
C {devices/lab_pin.sym} 2970 -450 0 0 {name=l242 sig_type=std_logic lab=clk_64}
C {devices/lab_pin.sym} 2970 -355 0 0 {name=l243 sig_type=std_logic lab=clk_128}
C {devices/lab_pin.sym} 2970 -1090 0 0 {name=l246 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 2885 -135 0 0 {name=l252 sig_type=std_logic lab=VDD}
C {inv/inv.sym} 2570 -905 0 0 {name=X36 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 2520 -905 0 0 {name=l255 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 2620 -905 2 0 {name=l256 sig_type=std_logic lab=clkb}
C {devices/lab_pin.sym} 2970 -1050 0 0 {name=l257 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} 3150 -1130 0 0 {name=l258 sig_type=std_logic lab=clkb}
C {sky130_stdcells/dfrtp_1.sym} 3060 -1070 0 0 {name=x63 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/nand2_1.sym} 3210 -1110 0 0 {name=x64 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 3695 -155 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 3695 -75 0 0 {name=x2 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 3655 -115 0 0 {name=l12 sig_type=std_logic lab=ctr9}
C {devices/lab_pin.sym} 3655 -35 0 0 {name=l13 sig_type=std_logic lab=ctr10}
C {sky130_stdcells/dfrtn_1.sym} 3060 -265 0 0 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrtn_1.sym} 3060 -170 0 0 {name=x4 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 2970 -245 0 0 {name=l7 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 2970 -150 0 0 {name=l11 sig_type=std_logic lab=clk_ext}
C {inv/inv.sym} 3200 -190 0 0 {name=X2 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 3250 -285 2 0 {name=l14 sig_type=std_logic lab=ctr9}
C {devices/lab_pin.sym} 3250 -190 2 0 {name=l20 sig_type=std_logic lab=ctr10}
C {devices/lab_pin.sym} 2970 -285 0 0 {name=l21 sig_type=std_logic lab=clk_256}
C {devices/lab_pin.sym} 2970 -190 0 0 {name=l23 sig_type=std_logic lab=clk_512}
C {inv/inv.sym} 3200 -285 0 0 {name=X3 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {inv/inv.sym} 3910 -795 0 0 {name=X4 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 3465 -75 0 0 {name=l24 sig_type=std_logic lab=bit6}
C {devices/lab_pin.sym} 3465 -155 0 0 {name=l25 sig_type=std_logic lab=bit7}
C {devices/lab_pin.sym} 3465 -235 0 0 {name=l26 sig_type=std_logic lab=bit8}
C {devices/lab_pin.sym} 3465 -315 0 0 {name=l27 sig_type=std_logic lab=bit9}
C {devices/lab_pin.sym} 3465 -395 0 0 {name=l28 sig_type=std_logic lab=bit10}
C {devices/lab_pin.sym} 3465 -475 0 0 {name=l29 sig_type=std_logic lab=bit11}
C {devices/lab_pin.sym} 3465 -555 0 0 {name=l30 sig_type=std_logic lab=bit12}
C {devices/lab_pin.sym} 3465 -635 0 0 {name=l33 sig_type=std_logic lab=bit13}
C {devices/lab_pin.sym} 3465 -715 0 0 {name=l34 sig_type=std_logic lab=bit14}
C {devices/lab_pin.sym} 3465 -795 0 0 {name=l35 sig_type=std_logic lab=bit15}
C {inv/inv.sym} 2570 -820 0 0 {name=X5 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 2520 -820 0 0 {name=l36 sig_type=std_logic lab=clk_2}
C {devices/lab_pin.sym} 2620 -820 2 0 {name=l37 sig_type=std_logic lab=clk_2b}
C {sky130_stdcells/dlrtp_1.sym} 1400 -65 0 0 {name=x5 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1310 -45 0 0 {name=l38 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} 2170 -405 2 1 {name=l5 sig_type=std_logic lab=rstb_bin_counter}
C {devices/vsource.sym} 1630 -195 0 0 {name=V1 value="DC 0 PWL(0u 0 0.6u 1.2 1.1723u 1.2 1.1724u 0 6u 0)"}
C {devices/gnd.sym} 1630 -165 0 1 {name=l40 lab=GND}
C {devices/lab_pin.sym} 1630 -225 0 1 {name=l6 sig_type=std_logic lab=rstb_bin_counter}
C {devices/lab_pin.sym} 1660 -60 0 0 {name=l39 sig_type=std_logic lab=clk_2b}
C {devices/lab_pin.sym} 1840 -80 2 0 {name=l44 sig_type=std_logic lab=comp_out}
C {devices/lab_pin.sym} 1660 -80 2 1 {name=l45 sig_type=std_logic lab=phi}
C {sky130_stdcells/dlrtp_1.sym} 1750 -60 0 0 {name=x6 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 1660 -40 0 0 {name=l46 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} 2170 -365 0 0 {name=l41 sig_type=std_logic lab=comp_out}
