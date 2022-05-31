v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -530 -340 -470 -340 {
lab=rstb}
N -530 -340 -530 -160 {
lab=rstb}
N -530 -160 -470 -160 {
lab=rstb}
N -670 -160 -530 -160 {
lab=rstb}
N -500 -200 -470 -200 {
lab=clk}
N -500 -380 -500 -200 {
lab=clk}
N -500 -380 -470 -380 {
lab=clk}
N -670 -380 -470 -380 {
lab=clk}
N -290 -380 -220 -380 {
lab=gc_0}
N -220 -380 -220 -310 {
lab=gc_0}
N -290 -180 -220 -180 {
lab=#net1}
N -220 -270 -220 -180 {
lab=#net1}
N -490 -180 -470 -180 {
lab=#net1}
N -490 -180 -490 -130 {
lab=#net1}
N -490 -130 -290 -130 {
lab=#net1}
N -290 -180 -290 -130 {
lab=#net1}
N -220 -180 -180 -180 {
lab=#net1}
N -180 -250 -180 -180 {
lab=#net1}
N 260 -290 260 -180 {
lab=gc_1}
N -60 -180 260 -180 {
lab=gc_1}
N -60 -210 -60 -180 {
lab=gc_1}
N 20 -270 80 -270 {
lab=#net2}
N 260 -290 340 -290 {
lab=gc_1}
N -80 -350 -80 -290 {
lab=#net3}
N -270 -390 -80 -390 {
lab=q}
N -290 -430 -290 -380 {
lab=gc_0}
N -290 -430 -80 -430 {
lab=gc_0}
N 80 -470 80 -390 {
lab=#net4}
N -490 -470 80 -470 {
lab=#net4}
N -490 -470 -490 -360 {
lab=#net4}
N -490 -360 -470 -360 {
lab=#net4}
N -170 -510 -170 -430 {
lab=gc_0}
N -170 -510 340 -510 {
lab=gc_0}
N -100 -290 -80 -290 {
lab=#net3}
N -180 -250 -80 -250 {
lab=#net1}
N -290 -200 -280 -200 {
lab=q}
N -280 -390 -280 -200 {
lab=q}
N -280 -390 -270 -390 {
lab=q}
N -80 -290 -60 -290 {
lab=#net3}
N -80 -250 -60 -250 {
lab=#net1}
C {sky130_stdcells/o21ai_4.sym} 0 -390 0 0 {name=x1 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfrtp_1.sym} -380 -360 0 0 {name=x2 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/mux2_1.sym} -20 -270 0 0 {name=x4 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} -160 -290 0 0 {name=x5 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfsbp_1.sym} -380 -180 0 0 {name=x3 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfrtp_1.sym} 170 -270 0 0 {name=x6 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} -670 -160 0 0 {name=l1 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} -670 -380 0 0 {name=l2 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 80 -250 0 0 {name=l3 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} -80 -80 0 0 {name=l4 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 340 -290 2 0 {name=l5 sig_type=std_logic lab=gc_1}
C {devices/lab_pin.sym} -290 -200 1 0 {name=l6 sig_type=std_logic lab=q}
C {devices/lab_pin.sym} 340 -510 2 0 {name=l7 sig_type=std_logic lab=gc_0}
C {devices/netlist.sym} -500 10 0 0 {name=SPICE2 only_toplevel=false value="
.lib /usr/local/lib/open_pdks/sky130/sky130B/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/share/pdk/sky130B/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.options abstol=1e-14 reltol=1e-4
.param clk_f=2.5e6
.param clk_tp=\{1/clk_f\}
.tran 40n 50u
.save all"
}
C {devices/vsource.sym} -910 -370 0 0 {name=V1 value="PULSE(0,1.2,\{clk_tp\},1n,1n,\{0.5*clk_tp\},\{clk_tp\})"}
C {devices/vsource.sym} -910 -260 0 0 {name=V2 value="PWL(0 0 0.1n 0 0.11n 1.2)"}
C {devices/vsource.sym} -910 -120 0 0 {name=V3 value="DC 1.2"}
C {devices/lab_pin.sym} -910 -400 0 0 {name=l8 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} -910 -290 0 0 {name=l9 sig_type=std_logic lab=rstb}
C {devices/vdd.sym} -910 -150 0 0 {name=l10 lab=VDD}
C {devices/gnd.sym} -910 -90 0 0 {name=l11 lab=GND}
C {devices/gnd.sym} -910 -230 0 0 {name=l12 lab=GND}
C {devices/gnd.sym} -910 -340 0 0 {name=l13 lab=GND}
C {sky130_stdcells/buf_1.sym} 120 -80 0 0 {name=x7 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 240 -80 2 0 {name=l14 sig_type=std_logic lab=clk_buff}
C {devices/lab_pin.sym} 80 -290 0 0 {name=l15 sig_type=std_logic lab=clk}
C {sky130_stdcells/buf_1.sym} 120 -80 0 0 {name=x8 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 200 -80 0 0 {name=x9 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} -40 -80 0 0 {name=x10 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} -40 -80 0 0 {name=x11 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_1.sym} 40 -80 0 0 {name=x12 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
