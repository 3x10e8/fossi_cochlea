v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 190 -130 270 -130 {
lab=#net1}
N 270 -130 270 -110 {
lab=#net1}
N 190 -60 270 -60 {
lab=#net2}
N 270 -70 270 -60 {
lab=#net2}
N -90 -40 -70 -40 {
lab=data}
N -90 -130 -70 -130 {
lab=clk}
N 350 -90 380 -90 {
lab=q}
N -20 -110 10 -110 {
lab=data}
N -20 -110 -20 -40 {
lab=data}
N -20 -40 10 -40 {
lab=data}
N -70 -40 -20 -40 {
lab=data}
N -40 -60 10 -60 {
lab=clk}
N -40 -130 -40 -60 {
lab=clk}
N -40 -130 10 -130 {
lab=clk}
N -70 -130 -40 -130 {
lab=clk}
N -0 -90 10 -90 {
lab=#net3}
N -0 -90 0 -20 {
lab=#net3}
N 0 -20 10 -20 {
lab=#net3}
N -90 -20 0 -20 {
lab=#net3}
C {devices/ipin.sym} -120 -200 0 0 {name=p1 lab=clk}
C {devices/ipin.sym} -120 -170 0 0 {name=p2 lab=data}
C {sky130_stdcells/mux2_1.sym} 310 -90 0 0 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} -90 -130 0 0 {name=l21 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} -90 -40 0 0 {name=l2 sig_type=std_logic lab=data}
C {devices/lab_pin.sym} 270 -30 0 0 {name=l3 sig_type=std_logic lab=clk}
C {devices/opin.sym} 380 -90 0 0 {name=p7 lab=q}
C {sky130_stdcells/dfrtn_1.sym} 100 -110 0 0 {name=x5 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_stdcells/dfrtp_1.sym} 100 -40 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {devices/lab_pin.sym} -90 -20 0 0 {name=l1 sig_type=std_logic lab=rstb}
