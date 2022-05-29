v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {http://diychip.org/sky130/sky130_fd_sc_hd/cells/dfrbp/} -70 90 0 0 0.2 0.2 {}
T {Divide by 2} -60 -40 0 0 0.4 0.4 {}
T {To next wavelet (unison)} 370 10 0 0 0.4 0.4 {}
T {used with digital cells} -270 -280 0 0 0.4 0.4 {}
T {dont need buffers as clk is inverted below} -210 -190 0 0 0.4 0.4 {}
T {2ns delay} 110 10 0 0 0.4 0.4 {}
T {This is the divided-by-2 clk 
as outputted by the previous core} -570 -150 0 0 0.4 0.4 {}
T {using hd standard cells now} -130 120 0 0 0.4 0.4 {}
N -110 20 -90 20 { lab=#net1}
N -110 20 -110 80 { lab=#net1}
N -110 80 90 80 { lab=#net1}
N 90 20 90 80 { lab=#net1}
N -210 -160 -210 0 { lab=div2}
N -270 -160 -210 -160 { lab=div2}
N -270 40 -90 40 { lab=rstb}
N 370 -140 420 -140 { lab=cclk}
N 90 0 420 0 { lab=div2out}
N 220 -120 250 -120 { lab=div2out}
N -170 -160 250 -160 {
lab=div2}
N -210 -160 -170 -160 {
lab=div2}
N 220 -120 220 0 {
lab=div2out}
N -210 0 -170 0 {
lab=div2}
C {sky130_stdcells/dfrbp_1.sym} 0 20 0 0 {name=x3 VGND=vssd VNB=vssd VPB=vccd VPWR=vccd prefix=sky130_fd_sc_hd__ }
C {devices/ipin.sym} -270 -160 0 0 {name=p1 lab=div2}
C {devices/ipin.sym} -270 40 0 0 {name=p2 lab=rstb}
C {devices/opin.sym} 420 -140 0 0 {name=p7 lab=cclk}
C {devices/opin.sym} 420 0 0 0 {name=p9 lab=div2out}
C {sky130_stdcells/and2_0.sym} 310 -140 0 0 {name=x2 VGND=vssd VNB=vssd VPB=vccd VPWR=vccd prefix=sky130_fd_sc_hd__ }
C {devices/ipin.sym} -270 -280 0 0 {name=p14 lab=vccd}
C {devices/ipin.sym} -270 -250 0 0 {name=p15 lab=vssd}
C {sky130_stdcells/inv_1.sym} -130 0 0 0 {name=x1 VGND=vssd VNB=vssd VPB=vccd VPWR=vccd prefix=sky130_fd_sc_hd__ }
