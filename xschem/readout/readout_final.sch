v {xschem version=3.0.0 file_version=1.2 }
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
N 4930 -470 4940 -470 { lab=out}
N 4940 -470 4990 -470 { lab=out}
N 4930 -390 4940 -390 { lab=out}
N 4940 -390 4990 -390 { lab=out}
N 4950 -550 4990 -550 { lab=out}
N 4930 -550 4950 -550 { lab=out}
N 4990 -550 4990 -70 { lab=out}
N 4990 -550 5060 -550 { lab=out}
N 4780 -550 4850 -550 { lab=comp_out0}
N 4780 -470 4850 -470 { lab=comp_out1}
N 4780 -390 4850 -390 { lab=comp_out2}
N 4930 -230 4940 -230 { lab=out}
N 4940 -230 4990 -230 { lab=out}
N 4930 -150 4940 -150 { lab=out}
N 4940 -150 4990 -150 { lab=out}
N 4950 -310 4990 -310 { lab=out}
N 4930 -310 4950 -310 { lab=out}
N 4780 -310 4850 -310 { lab=comp_out3}
N 4780 -230 4850 -230 { lab=comp_out4}
N 4780 -150 4850 -150 { lab=comp_out5}
N 4930 -70 4940 -70 { lab=out}
N 4940 -70 4990 -70 { lab=out}
N 4930 10 4940 10 { lab=out}
N 4940 10 4990 10 { lab=out}
N 4780 -70 4850 -70 { lab=comp_out6}
N 4780 10 4850 10 { lab=comp_out7}
N 4990 -70 4990 10 { lab=out}
N 4080 -595 4165 -595 { lab=VDD}
N 4080 -480 4165 -480 { lab=VDD}
N 4080 -345 4160 -345 { lab=VDD}
N 4160 -345 4165 -345 { lab=VDD}
N 4080 -210 4160 -210 { lab=VDD}
N 4160 -210 4165 -210 { lab=VDD}
N 4080 -60 4160 -60 { lab=VDD}
N 4160 -60 4165 -60 { lab=VDD}
N 4150 80 4155 80 { lab=VDD}
N 4080 -720 4080 -40 { lab=VDD}
N 4080 -40 4080 110 { lab=VDD}
N 4080 80 4150 80 { lab=VDD}
N 4080 -710 4165 -710 { lab=VDD}
N 4080 -725 4080 -720 { lab=VDD}
N 4080 -825 4165 -825 { lab=VDD}
N 4080 -825 4080 -725 { lab=VDD}
N 4740 10 4780 10 {
lab=comp_out7}
N 4740 -70 4780 -70 {
lab=comp_out6}
N 4740 -150 4780 -150 {
lab=comp_out5}
N 4740 -230 4780 -230 {
lab=comp_out4}
N 4740 -310 4780 -310 {
lab=comp_out3}
N 4740 -390 4775 -390 {
lab=comp_out2}
N 4775 -390 4780 -390 {
lab=comp_out2}
N 4740 -470 4780 -470 {
lab=comp_out1}
N 4740 -550 4780 -550 {
lab=comp_out0}
C {devices/vdd.sym} 3620 -950 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 3670 -950 2 1 {name=l2 lab=GND}
C {sky130_stdcells/ebufn_1.sym} 4890 -470 0 0 {name=x4 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 4890 -390 0 0 {name=x6 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 4890 -550 0 0 {name=x2 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 3760 -840 2 0 {name=l16 sig_type=std_logic lab=clk_8}
C {devices/lab_pin.sym} 3760 -860 2 0 {name=l17 sig_type=std_logic lab=clk_4}
C {devices/lab_pin.sym} 3760 -880 2 0 {name=l18 sig_type=std_logic lab=clk_2}
C {devices/lab_pin.sym} 3760 -820 2 0 {name=l19 sig_type=std_logic lab=clk_16}
C {devices/lab_pin.sym} 4265 -815 2 0 {name=l25 sig_type=std_logic lab=ctr1}
C {devices/lab_pin.sym} 4770 -510 0 0 {name=l35 sig_type=std_logic lab=ctr1}
C {devices/lab_pin.sym} 4770 -430 0 0 {name=l37 sig_type=std_logic lab=ctr2}
C {devices/lab_pin.sym} 4770 -350 0 0 {name=l38 sig_type=std_logic lab=ctr3}
C {sky130_stdcells/ebufn_1.sym} 4890 -230 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 4890 -150 0 0 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 4890 -310 0 0 {name=x5 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 4770 -270 0 0 {name=l21 sig_type=std_logic lab=ctr4}
C {devices/lab_pin.sym} 4770 -190 0 0 {name=l26 sig_type=std_logic lab=ctr5}
C {devices/lab_pin.sym} 4770 -110 0 0 {name=l27 sig_type=std_logic lab=ctr6}
C {sky130_stdcells/ebufn_1.sym} 4890 -70 0 0 {name=x7 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/ebufn_1.sym} 4890 10 0 0 {name=x8 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 4770 -30 0 0 {name=l33 sig_type=std_logic lab=ctr7}
C {devices/lab_pin.sym} 4770 50 0 0 {name=l34 sig_type=std_logic lab=ctr8}
C {devices/lab_pin.sym} 4165 -680 0 0 {name=l13 sig_type=std_logic lab=clk_2}
C {devices/lab_pin.sym} 4165 -565 0 0 {name=l44 sig_type=std_logic lab=clk_4}
C {devices/lab_pin.sym} 4165 -450 0 0 {name=l45 sig_type=std_logic lab=clk_8}
C {devices/lab_pin.sym} 4165 -315 0 0 {name=l46 sig_type=std_logic lab=clk_16}
C {devices/lab_pin.sym} 4165 -180 0 0 {name=l47 sig_type=std_logic lab=clk_32}
C {devices/lab_pin.sym} 4165 -30 0 0 {name=l48 sig_type=std_logic lab=clk_64}
C {devices/lab_pin.sym} 4155 110 0 0 {name=l49 sig_type=std_logic lab=clk_128}
C {devices/lab_pin.sym} 4265 -700 2 0 {name=l50 sig_type=std_logic lab=ctr2}
C {devices/lab_pin.sym} 4265 -585 2 0 {name=l51 sig_type=std_logic lab=ctr3}
C {devices/lab_pin.sym} 4265 -470 2 0 {name=l52 sig_type=std_logic lab=ctr4}
C {devices/lab_pin.sym} 4265 -335 2 0 {name=l53 sig_type=std_logic lab=ctr5}
C {devices/lab_pin.sym} 4265 -200 2 0 {name=l54 sig_type=std_logic lab=ctr6}
C {devices/lab_pin.sym} 4265 -50 2 0 {name=l55 sig_type=std_logic lab=ctr7}
C {devices/lab_pin.sym} 4255 90 2 0 {name=l56 sig_type=std_logic lab=ctr8}
C {clk_tree/clk_tree.sym} 142300 25220 0 0 {name=X12}
C {devices/lab_pin.sym} 3760 -760 2 0 {name=l57 sig_type=std_logic lab=clk_128}
C {devices/lab_pin.sym} 3760 -780 2 0 {name=l58 sig_type=std_logic lab=clk_64}
C {devices/lab_pin.sym} 3760 -800 2 0 {name=l59 sig_type=std_logic lab=clk_32}
C {devices/lab_pin.sym} 3760 -740 2 0 {name=l60 sig_type=std_logic lab=clk_256}
C {devices/lab_pin.sym} 3760 -720 2 0 {name=l61 sig_type=std_logic lab=clk_512}
C {devices/lab_pin.sym} 3530 -860 0 0 {name=l32 sig_type=std_logic lab=rstb_global}
C {devices/lab_pin.sym} 3530 -900 0 0 {name=l113 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 4080 110 0 0 {name=l77 sig_type=std_logic lab=VDD}
C {tryandtest/deff_rst.sym} 4165 -630 0 0 {name=X8}
C {tryandtest/deff_rst.sym} 4165 -745 0 0 {name=X19}
C {devices/lab_pin.sym} 4165 -795 0 0 {name=l23 sig_type=std_logic lab=clk_ext}
C {sky130_stdcells/inv_1.sym} 4810 -510 0 0 {name=x9 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {tryandtest/deff_rst.sym} 4165 -515 0 0 {name=X2}
C {tryandtest/deff_rst.sym} 4165 -400 0 0 {name=X3}
C {tryandtest/deff_rst.sym} 4165 -265 0 0 {name=X4}
C {tryandtest/deff_rst.sym} 4165 -130 0 0 {name=X5}
C {tryandtest/deff_rst.sym} 4165 20 0 0 {name=X6}
C {tryandtest/deff_rst.sym} 4155 160 0 0 {name=X7}
C {sky130_stdcells/inv_1.sym} 4810 -430 0 0 {name=x11 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 4810 -350 0 0 {name=x12 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 4810 -270 0 0 {name=x13 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 4810 -190 0 0 {name=x14 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 4810 -110 0 0 {name=x15 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 4810 -30 0 0 {name=x16 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/inv_1.sym} 4810 50 0 0 {name=x17 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/vsource.sym} 2400 -400 0 0 {name=V19 value=PULSE(0,1.2,\{0.5*clk_tp\},1n,1n,\{2*clk_tp\},\{4*clk_tp\})}
C {devices/vsource.sym} 2400 -190 0 0 {name=VDD4 value="DC 1.2"}
C {devices/gnd.sym} 2400 -160 0 0 {name=l11 lab=GND}
C {devices/vdd.sym} 2400 -220 0 0 {name=l12 lab=VDD}
C {devices/gnd.sym} 2400 -370 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 2400 -430 0 0 {name=l156 sig_type=std_logic lab=clk1}
C {devices/vsource.sym} 2400 -310 0 0 {name=V20 value=PULSE(0,1.2,\{1.5*clk_tp\},1n,1n,\{4*clk_tp\},\{8*clk_tp\})}
C {devices/gnd.sym} 2400 -280 0 0 {name=l20 lab=GND}
C {devices/lab_pin.sym} 2400 -340 0 0 {name=l24 sig_type=std_logic lab=clk2}
C {devices/netlist.sym} 2370 -660 0 0 {name=SPICE1 only_toplevel=false value="
.lib /usr/local/lib/open_pdks/sky130/sky130B/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/lib/open_pdks/sky130/sky130B/libs.ref/sky130_fd_sc_lp/spice/sky130_fd_sc_lp.spice
.options abstol=1e-14 reltol=1e-4
.param clk_f=2.56e6
.param clk_tp=\{1/clk_f\}
.tran 100n 100u
.save all
"}
C {devices/vsource.sym} 2720 -310 0 0 {name=V21 value=PULSE(0,1.2,\{3.5*clk_tp\},1n,1n,\{8*clk_tp\},\{16*clk_tp\})}
C {devices/gnd.sym} 2720 -280 0 0 {name=l28 lab=GND}
C {devices/lab_pin.sym} 2720 -340 0 0 {name=l29 sig_type=std_logic lab=clk3}
C {devices/vsource.sym} 2720 -400 0 0 {name=V22 value=PULSE(0,1.2,\{7.5*clk_tp\},1n,1n,\{16*clk_tp\},\{32*clk_tp\})}
C {devices/gnd.sym} 2720 -370 0 0 {name=l30 lab=GND}
C {devices/lab_pin.sym} 2720 -430 0 0 {name=l36 sig_type=std_logic lab=clk4}
C {devices/vsource.sym} 2720 -130 0 0 {name=V23 value=PULSE(0,1.2,\{15.5*clk_tp\},1n,1n,\{32*clk_tp\},\{64*clk_tp\})}
C {devices/gnd.sym} 2720 -100 0 0 {name=l39 lab=GND}
C {devices/lab_pin.sym} 2720 -160 0 0 {name=l40 sig_type=std_logic lab=clk5}
C {devices/vsource.sym} 2720 -220 0 0 {name=V24 value=PULSE(0,1.2,\{31.5*clk_tp\},1n,1n,\{64*clk_tp\},\{128*clk_tp\})}
C {devices/gnd.sym} 2720 -190 0 0 {name=l41 lab=GND}
C {devices/lab_pin.sym} 2720 -250 0 0 {name=l42 sig_type=std_logic lab=clk6}
C {devices/vsource.sym} 3100 -310 0 0 {name=V25 value=PULSE(0,1.2,\{63.5*clk_tp\},1n,1n,\{128*clk_tp\},\{256*clk_tp\})}
C {devices/gnd.sym} 3100 -280 0 0 {name=l43 lab=GND}
C {devices/lab_pin.sym} 3100 -340 0 0 {name=l62 sig_type=std_logic lab=clk7}
C {devices/vsource.sym} 3100 -400 0 0 {name=V26 value=PULSE(0,1.2,\{127.5*clk_tp\},1n,1n,\{256*clk_tp\},\{512*clk_tp\})}
C {devices/gnd.sym} 3100 -370 0 0 {name=l63 lab=GND}
C {devices/lab_pin.sym} 3100 -430 0 0 {name=l64 sig_type=std_logic lab=clk8}
C {devices/vsource.sym} 3100 -130 0 0 {name=V27 value=PULSE(0,1.2,\{255.5*clk_tp\},1n,1n,\{512*clk_tp\},\{1024*clk_tp\})}
C {devices/gnd.sym} 3100 -100 0 0 {name=l65 lab=GND}
C {devices/lab_pin.sym} 3100 -160 0 0 {name=l66 sig_type=std_logic lab=clk9}
C {devices/vsource.sym} 3100 -220 0 0 {name=V28 value=PULSE(0,1.2,\{511.5*clk_tp\},1n,1n,\{1024*clk_tp\},\{2048*clk_tp\})}
C {devices/gnd.sym} 3100 -190 0 0 {name=l67 lab=GND}
C {devices/lab_pin.sym} 3100 -250 0 0 {name=l68 sig_type=std_logic lab=clk10}
C {devices/vsource.sym} 2550 -80 0 0 {name=VDD2 value="PULSE(1.2 0 \{0.5*clk_tp+5n\} 1n 1n \{clk_tp\} \{2*clk_tp\})"}
C {devices/gnd.sym} 2550 -50 0 0 {name=l69 lab=GND}
C {devices/lab_pin.sym} 2550 -110 0 0 {name=l70 sig_type=std_logic lab=comp_out0}
C {devices/vsource.sym} 3100 -510 0 0 {name=V29 value=PULSE(0,1.2,\{0\},1n,1n,\{0.5*clk_tp\},\{clk_tp\})}
C {devices/gnd.sym} 3100 -480 0 0 {name=l71 lab=GND}
C {devices/lab_pin.sym} 3100 -540 0 0 {name=l76 sig_type=std_logic lab=clk_ext}
C {devices/vsource.sym} 3390 -510 0 0 {name=V30 value="PWL(0 0 0.1n 0 0.11n 1.2)"}
C {devices/gnd.sym} 3390 -480 0 0 {name=l78 lab=GND}
C {devices/lab_pin.sym} 3390 -540 0 0 {name=l79 sig_type=std_logic lab=rstb_global}
C {devices/vsource.sym} 3380 -620 0 0 {name=V32 value="PWL(0 1.2 70u 1.2 70.001u 0)"}
C {devices/gnd.sym} 3380 -590 0 0 {name=l82 lab=GND}
C {devices/lab_pin.sym} 3380 -650 0 0 {name=l83 sig_type=std_logic lab=en_counter}
C {devices/vsource.sym} 3630 -550 0 0 {name=V33 value="PWL(0 1.2 85u 1.2 85.001u 0)"}
C {devices/gnd.sym} 3630 -520 0 0 {name=l84 lab=GND}
C {devices/lab_pin.sym} 3630 -580 0 0 {name=l85 sig_type=std_logic lab=comp_out_test}
C {devices/vsource.sym} 2720 -510 0 0 {name=V1 value=PULSE(0,1.2,\{0\},1n,1n,\{clk_tp\},\{2*clk_tp\})}
C {devices/gnd.sym} 2720 -480 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 2720 -540 0 0 {name=l4 sig_type=std_logic lab=clk0}
C {devices/lab_pin.sym} 4215 -745 0 0 {name=l5 sig_type=std_logic lab=clk0}
C {devices/lab_pin.sym} 4215 -630 0 0 {name=l6 sig_type=std_logic lab=clk1}
C {devices/lab_pin.sym} 4215 -515 0 0 {name=l8 sig_type=std_logic lab=clk2}
C {devices/lab_pin.sym} 4215 -400 0 0 {name=l9 sig_type=std_logic lab=clk3}
C {devices/lab_pin.sym} 4215 -265 0 0 {name=l10 sig_type=std_logic lab=clk4}
C {devices/lab_pin.sym} 4215 -130 0 0 {name=l15 sig_type=std_logic lab=clk5}
C {devices/lab_pin.sym} 4215 20 0 0 {name=l22 sig_type=std_logic lab=clk6}
C {devices/lab_pin.sym} 4205 160 0 0 {name=l31 sig_type=std_logic lab=clk7}
C {devices/vsource.sym} 2550 20 0 0 {name=V2 value="PULSE(1.2 0 \{clk_tp+5n\} 1n 1n \{2*clk_tp\} \{4*clk_tp\})"}
C {devices/gnd.sym} 2550 50 0 0 {name=l72 lab=GND}
C {devices/lab_pin.sym} 2550 -10 0 0 {name=l73 sig_type=std_logic lab=comp_out1}
C {devices/vsource.sym} 2950 -55 0 0 {name=VDD1 value="PULSE(1.2 0 \{2*clk_tp+5n\} 1n 1n \{4*clk_tp\} \{8*clk_tp\})"}
C {devices/gnd.sym} 2950 -25 0 0 {name=l75 lab=GND}
C {devices/lab_pin.sym} 2950 -85 0 0 {name=l80 sig_type=std_logic lab=comp_out2}
C {devices/vsource.sym} 2950 45 0 0 {name=V3 value="PULSE(1.2 0 \{4*clk_tp+5n\} 1n 1n \{8*clk_tp\} \{16*clk_tp\})"}
C {devices/gnd.sym} 2950 75 0 0 {name=l81 lab=GND}
C {devices/lab_pin.sym} 2950 15 0 0 {name=l86 sig_type=std_logic lab=comp_out3}
C {devices/vsource.sym} 3275 -60 0 0 {name=VDD3 value="PULSE(1.2 0 \{8*clk_tp+5n\} 1n 1n \{16*clk_tp\} \{32*clk_tp\})"}
C {devices/gnd.sym} 3275 -30 0 0 {name=l88 lab=GND}
C {devices/lab_pin.sym} 3275 -90 0 0 {name=l89 sig_type=std_logic lab=comp_out4}
C {devices/vsource.sym} 3275 40 0 0 {name=V4 value="PULSE(1.2 0 \{16*clk_tp+5n\} 1n 1n \{32*clk_tp\} \{64*clk_tp\})"}
C {devices/gnd.sym} 3275 70 0 0 {name=l90 lab=GND}
C {devices/lab_pin.sym} 3275 10 0 0 {name=l91 sig_type=std_logic lab=comp_out5}
C {devices/vsource.sym} 3630 -60 0 0 {name=VDD5 value="PULSE(1.2 0 \{32*clk_tp+5n\} 1n 1n \{64*clk_tp\} \{128*clk_tp\})"}
C {devices/gnd.sym} 3630 -30 0 0 {name=l74 lab=GND}
C {devices/lab_pin.sym} 3630 -90 0 0 {name=l87 sig_type=std_logic lab=comp_out6}
C {devices/vsource.sym} 3630 40 0 0 {name=V6 value="PULSE(1.2 0 \{64*clk_tp+5n\} 1n 1n \{128*clk_tp\} \{256*clk_tp\})"}
C {devices/gnd.sym} 3630 70 0 0 {name=l92 lab=GND}
C {devices/lab_pin.sym} 3630 10 0 0 {name=l93 sig_type=std_logic lab=comp_out7}
C {devices/lab_pin.sym} 4740 -550 0 0 {name=l94 sig_type=std_logic lab=comp_out0}
C {devices/lab_pin.sym} 4740 -470 0 0 {name=l95 sig_type=std_logic lab=comp_out1}
C {devices/lab_pin.sym} 4740 -390 0 0 {name=l96 sig_type=std_logic lab=comp_out2}
C {devices/lab_pin.sym} 4740 -310 0 0 {name=l97 sig_type=std_logic lab=comp_out3}
C {devices/lab_pin.sym} 4740 -230 0 0 {name=l98 sig_type=std_logic lab=comp_out4}
C {devices/lab_pin.sym} 4740 -150 0 0 {name=l99 sig_type=std_logic lab=comp_out5}
C {devices/lab_pin.sym} 4740 -70 0 0 {name=l100 sig_type=std_logic lab=comp_out6}
C {devices/lab_pin.sym} 4740 10 0 0 {name=l101 sig_type=std_logic lab=comp_out7}
C {devices/lab_pin.sym} 5060 -550 2 0 {name=l102 sig_type=std_logic lab=out}
