v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {Octave-3} 5005 -405 0 0 0.4 0.4 {}
T {Octave-2} 5000 -485 0 0 0.4 0.4 {}
T {Octave-1} 5000 -540 0 0 0.4 0.4 {}
T {Octave-4} 5005 -325 0 0 0.4 0.4 {}
T {Octave-5} 5005 -245 0 0 0.4 0.4 {}
T {Octave-6} 5005 -165 0 0 0.4 0.4 {}
T {Octave-7} 5005 -95 0 0 0.4 0.4 {}
T {Octave-8} 5005 -15 0 0 0.4 0.4 {}
T {Rstb bit makes the system reset:
rstb==0: reset
rstb==1: normal working
} 5235 -580 0 0 0.4 0.4 {}
T {No setup and hold violations anticipated.
} 5235 -470 0 0 0.4 0.4 {}
T {The input signals must also reset in order to make the 
system reset properly else there might be issues once the 
reset is removed.} 5235 -405 0 0 0.4 0.4 {}
N 4930 -470 4940 -470 { lab=#net1}
N 4940 -470 4990 -470 { lab=#net1}
N 4930 -390 4940 -390 { lab=#net1}
N 4940 -390 4990 -390 { lab=#net1}
N 4950 -550 4990 -550 { lab=#net1}
N 4930 -550 4950 -550 { lab=#net1}
N 4990 -550 4990 -70 { lab=#net1}
N 4990 -550 5060 -550 { lab=#net1}
N 4660 -550 4780 -550 { lab=clkb}
N 4780 -550 4850 -550 { lab=clkb}
N 4660 -470 4780 -470 { lab=clk_2b}
N 4780 -470 4850 -470 { lab=clk_2b}
N 4660 -390 4780 -390 { lab=clk_4b}
N 4780 -390 4850 -390 { lab=clk_4b}
N 4930 -230 4940 -230 { lab=#net1}
N 4940 -230 4990 -230 { lab=#net1}
N 4930 -150 4940 -150 { lab=#net1}
N 4940 -150 4990 -150 { lab=#net1}
N 4950 -310 4990 -310 { lab=#net1}
N 4930 -310 4950 -310 { lab=#net1}
N 4660 -310 4780 -310 { lab=clk_8b}
N 4780 -310 4850 -310 { lab=clk_8b}
N 4660 -230 4780 -230 { lab=clk_16b}
N 4780 -230 4850 -230 { lab=clk_16b}
N 4660 -150 4780 -150 { lab=clk_32b}
N 4780 -150 4850 -150 { lab=clk_32b}
N 4930 -70 4940 -70 { lab=#net1}
N 4940 -70 4990 -70 { lab=#net1}
N 4930 10 4940 10 { lab=#net1}
N 4940 10 4990 10 { lab=#net1}
N 4660 -70 4780 -70 { lab=clk_64b}
N 4780 -70 4850 -70 { lab=clk_64b}
N 4660 10 4780 10 { lab=clk_128b}
N 4780 10 4850 10 { lab=clk_128b}
N 4990 -70 4990 10 { lab=#net1}
N 4080 -615 4165 -615 { lab=VDD}
N 4080 -520 4165 -520 { lab=VDD}
N 4080 -395 4160 -395 { lab=VDD}
N 4160 -395 4165 -395 { lab=VDD}
N 4080 -250 4160 -250 { lab=VDD}
N 4160 -250 4165 -250 { lab=VDD}
N 4080 -60 4160 -60 { lab=VDD}
N 4160 -60 4165 -60 { lab=VDD}
N 4150 80 4155 80 { lab=VDD}
N 4080 -720 4080 -40 { lab=VDD}
N 4080 -40 4080 110 { lab=VDD}
N 4080 80 4150 80 { lab=VDD}
N 4080 -725 4165 -725 { lab=VDD}
N 4080 -725 4080 -720 { lab=VDD}
N 3320 -375 3345 -375 { lab=#net2}
N 4080 -825 4165 -825 { lab=VDD}
N 4080 -825 4080 -725 { lab=VDD}
C {devices/vsource.sym} 3015 -705 0 0 {name=V2 value=1.2}
C {devices/vdd.sym} 3015 -735 0 0 {name=l15 lab=VDD}
C {devices/vdd.sym} 3180 -620 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 3230 -620 2 1 {name=l2 lab=GND}
C {devices/lab_pin.sym} 3145 -140 2 1 {name=l4 sig_type=std_logic lab=in1}
C {devices/lab_pin.sym} 3225 -140 0 1 {name=l5 sig_type=std_logic lab=in2}
C {devices/lab_pin.sym} 3145 -35 0 0 {name=l6 sig_type=std_logic lab=in3}
C {devices/lab_pin.sym} 5180 -570 2 0 {name=l7 sig_type=std_logic lab=out}
C {devices/gnd.sym} 3145 -200 0 1 {name=l89 lab=GND}
C {devices/vsource.sym} 3225 -230 0 0 {name=V10 value="DC 0 PULSE(0 1.2 \{2/f\} 1n 1n \{duty_clk*1/f\} \{1/f\})"}
C {devices/lab_pin.sym} 3225 -260 0 1 {name=l8 sig_type=std_logic lab=clk_ext}
C {devices/gnd.sym} 3015 -675 0 0 {name=l88 lab=GND}
C {devices/lab_pin.sym} 3145 -260 0 0 {name=l9 sig_type=std_logic lab=rst_ext}
C {devices/gnd.sym} 3145 -80 0 1 {name=l10 lab=GND}
C {devices/gnd.sym} 3145 25 0 1 {name=V7 value="DC 0 PULSE(1.2 0 1n 1n 1n \{duty_cycle*1/(4*f)\} \{1/(4*f)\})"
}
C {devices/gnd.sym} 3225 -80 0 0 {name=V6 value="DC 0 PULSE(0 1.2 1n 1n 1n \{duty_cycle*1/(2*f)\} \{1/(2*f)\})"
}
C {devices/netlist.sym} 4635 -920 0 0 {name=s1 value="
.lib /home/sky/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /home/sky/sky130A/libs.ref/sky130_fd_sc_lp/spice/sky130_fd_sc_lp.spice
.options abstol=1e-14 reltol=1e-4
.param f=2560k
.param duty_clk=0.5
.param duty_cycle1=0.45
.param phase1=-18
.ic v(out)=0
.tran \{(1/100)*(1/f)\} \{100/f\}
.save all
"}
C {sky130_stdcells/ebufn_1.sym} 4890 -470 0 0 {name=x4 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 4890 -390 0 0 {name=x6 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/vsource.sym} 3145 -230 0 1 {name=V9 value="DC 0 PWL(0u 0 0.6u 1.2 1.1723u 1.2 1.1724u 0 6u 0)"}
C {sky130_stdcells/ebufn_1.sym} 4890 -550 0 0 {name=x2 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/vsource.sym} 3145 -110 0 1 {name=V16   value="DC 0 PULSE(0 1.2 \{2/f\} 1n 1n \{duty_cycle1*1/f\} \{1/f\} phase1)"}
C {devices/vsource.sym} 3225 -110 0 0 {name=V3 value="DC 0 PULSE(0 1.2 \{2/f\} 1n 1n \{duty_cycle1*2/f\} \{2/f\} phase1)"}
C {devices/vsource.sym} 3145 -5 0 1 {name=V4 value="DC 0 PULSE(0 1.2 \{2/f\} 1n 1n \{duty_cycle1*4/f\} \{4/f\} phase1)"}
C {devices/lab_pin.sym} 3320 -510 2 0 {name=l16 sig_type=std_logic lab=clk_8}
C {devices/lab_pin.sym} 3320 -530 2 0 {name=l17 sig_type=std_logic lab=clk_4}
C {devices/lab_pin.sym} 3320 -550 2 0 {name=l18 sig_type=std_logic lab=clk_2}
C {devices/lab_pin.sym} 3320 -490 2 0 {name=l19 sig_type=std_logic lab=clk_16}
C {devices/lab_pin.sym} 4465 -865 2 0 {name=l25 sig_type=std_logic lab=ctr1}
C {devices/lab_pin.sym} 4660 -550 0 0 {name=l28 sig_type=std_logic lab=clkb}
C {devices/lab_pin.sym} 4660 -390 0 0 {name=l36 sig_type=std_logic lab=clk_4b}
C {devices/lab_pin.sym} 4850 -510 0 0 {name=l35 sig_type=std_logic lab=ctr1}
C {devices/lab_pin.sym} 4850 -430 0 0 {name=l37 sig_type=std_logic lab=ctr2}
C {devices/lab_pin.sym} 4850 -350 0 0 {name=l38 sig_type=std_logic lab=ctr3}
C {inv/inv.sym} 3595 -750 0 0 {name=X6 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 3545 -750 0 0 {name=l39 sig_type=std_logic lab=clk_2}
C {devices/lab_pin.sym} 3645 -750 2 0 {name=l40 sig_type=std_logic lab=clk_2b}
C {inv/inv.sym} 3595 -680 0 0 {name=X7 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 3545 -680 0 0 {name=l41 sig_type=std_logic lab=clk_4}
C {devices/lab_pin.sym} 3645 -680 2 0 {name=l42 sig_type=std_logic lab=clk_4b}
C {sky130_stdcells/ebufn_1.sym} 4890 -230 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 4890 -150 0 0 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 4890 -310 0 0 {name=x5 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 4660 -310 0 0 {name=l11 sig_type=std_logic lab=clk_8b}
C {devices/lab_pin.sym} 4660 -230 0 0 {name=l12 sig_type=std_logic lab=clk_16b}
C {devices/lab_pin.sym} 4660 -150 0 0 {name=l14 sig_type=std_logic lab=clk_32b}
C {devices/lab_pin.sym} 4850 -270 0 0 {name=l21 sig_type=std_logic lab=ctr4}
C {devices/lab_pin.sym} 4850 -190 0 0 {name=l26 sig_type=std_logic lab=ctr5}
C {devices/lab_pin.sym} 4850 -110 0 0 {name=l27 sig_type=std_logic lab=ctr6}
C {sky130_stdcells/ebufn_1.sym} 4890 -70 0 0 {name=x7 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 4890 10 0 0 {name=x8 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 4660 -70 0 0 {name=l29 sig_type=std_logic lab=clk_64b}
C {devices/lab_pin.sym} 4660 10 0 0 {name=l30 sig_type=std_logic lab=clk_128b}
C {devices/lab_pin.sym} 4850 -30 0 0 {name=l33 sig_type=std_logic lab=ctr7}
C {devices/lab_pin.sym} 4850 50 0 0 {name=l34 sig_type=std_logic lab=ctr8}
C {sky130_stdcells/and2_1.sym} 5120 -570 0 0 {name=x13 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 5060 -590 0 0 {name=l43 sig_type=std_logic lab=rstb}
C {sky130_stdcells/dfrtn_1.sym} 4255 -725 0 0 {name=x14 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrtn_1.sym} 4255 -615 0 0 {name=x15 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrtn_1.sym} 4255 -520 0 0 {name=x16 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrtn_1.sym} 4255 -395 0 0 {name=x17 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrtn_1.sym} 4255 -250 0 0 {name=x18 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrtn_1.sym} 4255 -60 0 0 {name=x19 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrtn_1.sym} 4245 80 0 0 {name=x20 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 4165 -705 0 0 {name=l13 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 4165 -595 0 0 {name=l44 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 4165 -500 0 0 {name=l45 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 4165 -375 0 0 {name=l46 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 4165 -230 0 0 {name=l47 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 4165 -40 0 0 {name=l48 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 4155 100 0 0 {name=l49 sig_type=std_logic lab=clk_ext}
C {inv/inv.sym} 4395 -745 0 0 {name=X2 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {inv/inv.sym} 4395 -635 0 0 {name=X3 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {inv/inv.sym} 4395 -540 0 0 {name=X4 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {inv/inv.sym} 4395 -415 0 0 {name=X5 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {inv/inv.sym} 4395 -270 0 0 {name=X9 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {inv/inv.sym} 4395 -80 0 0 {name=X10 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {inv/inv.sym} 4385 60 0 0 {name=X11 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 4445 -745 2 0 {name=l50 sig_type=std_logic lab=ctr2}
C {devices/lab_pin.sym} 4445 -635 2 0 {name=l51 sig_type=std_logic lab=ctr3}
C {devices/lab_pin.sym} 4445 -540 2 0 {name=l52 sig_type=std_logic lab=ctr4}
C {devices/lab_pin.sym} 4445 -415 2 0 {name=l53 sig_type=std_logic lab=ctr5}
C {devices/lab_pin.sym} 4445 -270 2 0 {name=l54 sig_type=std_logic lab=ctr6}
C {devices/lab_pin.sym} 4445 -80 2 0 {name=l55 sig_type=std_logic lab=ctr7}
C {devices/lab_pin.sym} 4435 60 2 0 {name=l56 sig_type=std_logic lab=ctr8}
C {clk_tree/clk_tree.sym} 141860 25550 0 0 {name=X12}
C {devices/lab_pin.sym} 3320 -430 2 0 {name=l57 sig_type=std_logic lab=clk_128}
C {devices/lab_pin.sym} 3320 -450 2 0 {name=l58 sig_type=std_logic lab=clk_64}
C {devices/lab_pin.sym} 3320 -470 2 0 {name=l59 sig_type=std_logic lab=clk_32}
C {devices/lab_pin.sym} 3320 -410 2 0 {name=l60 sig_type=std_logic lab=clk_256}
C {devices/lab_pin.sym} 3320 -390 2 0 {name=l61 sig_type=std_logic lab=clk_512}
C {inv/inv.sym} 3595 -615 0 0 {name=X13 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 3545 -615 0 0 {name=l62 sig_type=std_logic lab=clk_8}
C {devices/lab_pin.sym} 3645 -615 2 0 {name=l63 sig_type=std_logic lab=clk_8b}
C {inv/inv.sym} 3595 -545 0 0 {name=X14 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 3545 -545 0 0 {name=l64 sig_type=std_logic lab=clk_16}
C {devices/lab_pin.sym} 3645 -545 2 0 {name=l65 sig_type=std_logic lab=clk_16b}
C {inv/inv.sym} 3595 -475 0 0 {name=X15 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 3545 -475 0 0 {name=l66 sig_type=std_logic lab=clk_32}
C {devices/lab_pin.sym} 3645 -475 2 0 {name=l67 sig_type=std_logic lab=clk_32b}
C {inv/inv.sym} 3595 -405 0 0 {name=X16 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 3545 -405 0 0 {name=l68 sig_type=std_logic lab=clk_64}
C {devices/lab_pin.sym} 3645 -405 2 0 {name=l69 sig_type=std_logic lab=clk_64b}
C {devices/gnd.sym} 3225 -200 0 1 {name=l3 lab=GND}
C {devices/lab_pin.sym} 3225 -35 0 1 {name=l22 sig_type=std_logic lab=in4}
C {devices/gnd.sym} 3225 25 0 0 {name=V1 value="DC 0 PULSE(0 1.2 1n 1n 1n \{duty_cycle*1/(2*f)\} \{1/(2*f)\})"
}
C {devices/vsource.sym} 3225 -5 0 0 {name=V5 value="DC 0 PULSE(0 1.2 \{2/f\} 1n 1n \{duty_cycle1*8/f\} \{8/f\} phase1)"}
C {devices/lab_pin.sym} 3145 65 2 1 {name=l31 sig_type=std_logic lab=in5}
C {devices/lab_pin.sym} 3225 65 0 1 {name=l72 sig_type=std_logic lab=in6}
C {devices/lab_pin.sym} 3145 170 0 0 {name=l73 sig_type=std_logic lab=in7}
C {devices/gnd.sym} 3145 125 0 1 {name=l74 lab=GND}
C {devices/gnd.sym} 3145 230 0 1 {name=V8 value="DC 0 PULSE(1.2 0 1n 1n 1n \{duty_cycle*1/(4*f)\} \{1/(4*f)\})"
}
C {devices/gnd.sym} 3225 125 0 0 {name=V11 value="DC 0 PULSE(0 1.2 1n 1n 1n \{duty_cycle*1/(2*f)\} \{1/(2*f)\})"
}
C {devices/vsource.sym} 3145 95 0 1 {name=V12 value="DC 0 PULSE(0 1.2 \{2/f\} 1n 1n \{duty_cycle1*16/f\} \{16/f\} phase1)"}
C {devices/vsource.sym} 3225 95 0 0 {name=V13 value="DC 0 PULSE(0 1.2 \{2/f\} 1n 1n \{duty_cycle1*32/f\} \{32/f\} phase1)"}
C {devices/vsource.sym} 3145 200 0 1 {name=V14 value="DC 0 PULSE(0 1.2 \{2/f\} 1n 1n \{duty_cycle1*64/f\} \{64/f\} phase1)"}
C {devices/lab_pin.sym} 3225 170 0 1 {name=l75 sig_type=std_logic lab=in8}
C {devices/gnd.sym} 3225 230 0 0 {name=V15 value="DC 0 PULSE(0 1.2 1n 1n 1n \{duty_cycle*1/(2*f)\} \{1/(2*f)\})"
}
C {devices/vsource.sym} 3225 200 0 0 {name=V17 value="DC 0 PULSE(0 1.2 \{2/f\} 1n 1n \{duty_cycle1*128/f\} \{128/f\} phase1)"}
C {devices/lab_pin.sym} 4165 -745 0 0 {name=l76 sig_type=std_logic lab=clk_2}
C {devices/lab_pin.sym} 4165 -635 0 0 {name=l78 sig_type=std_logic lab=clk_4}
C {devices/lab_pin.sym} 4165 -540 0 0 {name=l79 sig_type=std_logic lab=clk_8}
C {devices/lab_pin.sym} 4165 -415 0 0 {name=l80 sig_type=std_logic lab=clk_16}
C {devices/lab_pin.sym} 4165 -270 0 0 {name=l81 sig_type=std_logic lab=clk_32}
C {devices/lab_pin.sym} 4165 -80 0 0 {name=l82 sig_type=std_logic lab=clk_64}
C {devices/lab_pin.sym} 4155 60 0 0 {name=l83 sig_type=std_logic lab=clk_128}
C {devices/lab_pin.sym} 3090 -530 0 0 {name=l32 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} 3090 -570 0 0 {name=l113 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 4165 -845 0 0 {name=l71 sig_type=std_logic lab=clk_ext}
C {Clock Synchronizer/synchronizer.sym} 60 850 0 0 {name=X1}
C {devices/lab_pin.sym} 2720 -570 0 0 {name=l114 sig_type=std_logic lab=rst_ext
}
C {devices/lab_pin.sym} 2720 -530 0 0 {name=l115 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 2720 -490 0 0 {name=l116 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 2990 -570 2 0 {name=l118 sig_type=std_logic lab=rstb}
C {devices/vsource.sym} 2720 -460 0 0 {name=V18 value=1.2}
C {devices/gnd.sym} 2720 -430 0 0 {name=l119 lab=GND}
C {devices/lab_pin.sym} 4080 110 0 0 {name=l77 sig_type=std_logic lab=VDD}
C {inv/inv.sym} 3595 -820 0 0 {name=X17 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {inv/inv.sym} 3595 -335 0 0 {name=X18 Wpmos=0.42 Lpmos=0.15 Wnmos=0.42 Lnmos=0.15}
C {devices/lab_pin.sym} 3545 -335 0 0 {name=l24 sig_type=std_logic lab=clk_128}
C {devices/lab_pin.sym} 3645 -335 2 0 {name=l84 sig_type=std_logic lab=clk_128b}
C {devices/lab_pin.sym} 3545 -820 0 0 {name=l85 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 3645 -820 2 0 {name=l86 sig_type=std_logic lab=clkb}
C {devices/lab_pin.sym} 4165 -805 0 0 {name=l70 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} 4345 -885 0 0 {name=l87 sig_type=std_logic lab=clkb}
C {sky130_stdcells/dfrtp_1.sym} 4255 -825 0 0 {name=x11 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/nand2_1.sym} 4405 -865 0 0 {name=x9 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 4660 -470 0 0 {name=l20 sig_type=std_logic lab=clk_2b}
