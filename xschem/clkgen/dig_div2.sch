v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {http://diychip.org/sky130/sky130_fd_sc_lp/cells/dfrbp/} -50 170 0 0 0.2 0.2 {}
T {Divide by 2} -40 40 0 0 0.4 0.4 {}
T {To next wavelet (unison)} 320 90 0 0 0.4 0.4 {}
T {used with digital cells} -210 -200 0 0 0.4 0.4 {}
T {match ff delay below} -90 -140 0 0 0.4 0.4 {}
T {2ns delay} 130 90 0 0 0.4 0.4 {}
T {This is the divided-by-2 clk 
as outputted by the previous of core} -550 -50 0 0 0.4 0.4 {}
N -90 100 -70 100 { lab=#net1}
N -90 100 -90 160 { lab=#net1}
N -90 160 110 160 { lab=#net1}
N 110 100 110 160 { lab=#net1}
N -150 -80 -150 80 { lab=div2}
N -150 80 -70 80 { lab=div2}
N -210 -80 -150 -80 { lab=div2}
N -210 120 -70 120 { lab=rstb}
N 280 -60 370 -60 { lab=cclk}
N 110 80 370 80 { lab=div2out}
N 130 -40 130 80 { lab=div2out}
N 130 -40 160 -40 { lab=div2out}
N 130 -80 160 -80 {
lab=#net2}
N -150 -80 -110 -80 {
lab=div2}
C {sky130_stdcells/dfrbp_1.sym} 20 100 0 0 {name=x11 VGND=vssd VNB=vssd VPB=vccd VPWR=vccd prefix=sky130_fd_sc_hd__ }
C {devices/ipin.sym} -210 -80 0 0 {name=p1 lab=div2}
C {devices/ipin.sym} -210 120 0 0 {name=p2 lab=rstb}
C {devices/opin.sym} 370 -60 0 0 {name=p7 lab=cclk}
C {devices/opin.sym} 370 80 0 0 {name=p9 lab=div2out}
C {sky130_stdcells/and2_0.sym} 220 -60 0 0 {name=x2 VGND=vssd VNB=vssd VPB=vccd VPWR=vccd prefix=sky130_fd_sc_hd__ }
C {devices/ipin.sym} -210 -200 0 0 {name=p14 lab=vccd}
C {devices/ipin.sym} -210 -170 0 0 {name=p15 lab=vssd}
C {sky130_stdcells/buf_1.sym} -70 -80 0 0 {name=x1 VGND=vssd VNB=vssd VPB=vccd VPWR=vccd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 10 -80 0 0 {name=x3 VGND=vssd VNB=vssd VPB=vccd VPWR=vccd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 90 -80 0 0 {name=x4 VGND=vssd VNB=vssd VPB=vccd VPWR=vccd prefix=sky130_fd_sc_hd__ }
