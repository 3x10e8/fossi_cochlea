v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {vhi} -60 -60 0 0 0.4 0.4 {}
T {vlo} 20 -60 0 0 0.4 0.4 {}
T {going smaller might work ok too} -160 80 0 0 0.4 0.4 {}
N -160 0 -80 0 {
lab=in}
N 80 0 160 0 {
lab=out}
C {devices/ipin.sym} -160 0 0 0 {name=p1 lab=in}
C {devices/iopin.sym} -230 -90 2 0 {name=p3 lab=vss
}
C {devices/iopin.sym} -230 -130 2 0 {name=p4 lab=vhi}
C {devices/opin.sym} 160 0 0 0 {name=p5 lab=out}
C {devices/iopin.sym} -230 -110 2 0 {name=p2 lab=vlo}
C {sky130_stdcells/buf_8.sym} -40 0 0 0 {name=x1 VGND=vss VNB=vss VPB=vhi VPWR=vhi prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_8.sym} 40 0 0 0 {name=x2 VGND=vss VNB=vss VPB=vlo VPWR=vlo prefix=sky130_fd_sc_hd__ }
