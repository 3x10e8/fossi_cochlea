v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 240 -40 240 -10 { lab=#net1}
N 60 -10 240 -10 { lab=#net1}
N 60 -40 60 -10 { lab=#net1}
C {sky130_stdcells/dfxbp_1.sym} 150 -50 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/ipin.sym} 70 -100 0 0 {name=p1 lab=clk_in}
C {devices/opin.sym} 240 -100 0 0 {name=p2 lab=clk_out}
C {devices/lab_pin.sym} 60 -60 0 0 {name=l1 sig_type=std_logic lab=clk_in}
C {devices/lab_pin.sym} 240 -60 0 1 {name=l2 sig_type=std_logic lab=clk_out}
