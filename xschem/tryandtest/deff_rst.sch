v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {Positive and negative clock triggered flops inserted. 
4 inverters added to make sure that there is no race 
condition between the reset and clock edge} -270 -30 0 0 0.2 0.2 {}
N 120 -150 140 -150 {
lab=#net1}
N 120 -40 140 -40 {
lab=#net1}
N 470 -100 500 -100 {
lab=q}
N 120 -130 140 -130 {
lab=data}
N 120 -130 120 -60 {
lab=data}
N 120 -60 140 -60 {
lab=data}
N 320 -150 390 -150 {
lab=#net2}
N 390 -150 390 -120 {
lab=#net2}
N 320 -80 320 -40 {
lab=#net3}
N 320 -80 390 -80 {
lab=#net3}
N 140 -110 140 -80 {
lab=rst}
N 50 -150 50 -90 {
lab=#net1}
N 50 -150 120 -150 {
lab=#net1}
N 50 -90 50 -40 {
lab=#net1}
N 50 -40 120 -40 {
lab=#net1}
C {devices/ipin.sym} 60 -310 0 0 {name=p1 lab=clk}
C {devices/ipin.sym} 60 -280 0 0 {name=p2 lab=data}
C {sky130_stdcells/mux2_1.sym} 430 -100 0 0 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} -110 -90 0 0 {name=l1 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 120 -130 0 0 {name=l2 sig_type=std_logic lab=data}
C {devices/opin.sym} 500 -100 0 0 {name=p7 lab=q}
C {devices/ipin.sym} 60 -250 0 0 {name=p3 lab=rst}
C {sky130_stdcells/dfrtn_1.sym} 230 -130 0 0 {name=x21 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} 140 -110 0 0 {name=l3 sig_type=std_logic lab=rst}
C {devices/lab_pin.sym} 390 -40 0 0 {name=l4 sig_type=std_logic lab=clk}
C {sky130_stdcells/dfrtp_1.sym} 230 -60 2 1 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/buf_1.sym} 10 -90 0 0 {name=x7 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/buf_1.sym} -70 -90 0 0 {name=x2 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
