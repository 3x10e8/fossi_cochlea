v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {tryandtest/level_up_shifter.sym} 160 -60 0 0 {name=x1}
C {devices/netlist.sym} -10 -380 0 0 {name=SPICE1 only_toplevel=false value="
.lib /usr/local/lib/open_pdks/sky130/sky130B/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/lib/open_pdks/sky130/sky130B/libs.ref/sky130_fd_sc_lp/spice/sky130_fd_sc_lp.spice
.param clk_f=2.56e6
.param clk_tp=\{1/clk_f\}
.tran 0.1n 10u
.save all
"}
C {devices/vsource.sym} -210 -330 0 0 {name=VDD4 value="DC 0.8"}
C {devices/gnd.sym} -210 -300 0 0 {name=l57 lab=GND}
C {devices/vdd.sym} -210 -360 0 0 {name=l58 lab=VDD}
C {devices/vsource.sym} -210 -220 0 0 {name=V1 value=PULSE(0,0.8,\{clk_tp\},1n,1n,\{2*clk_tp\},\{4*clk_tp\})}
C {devices/gnd.sym} -210 -190 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -210 -250 0 0 {name=l156 sig_type=std_logic lab=clk1}
C {devices/lab_pin.sym} 10 -100 0 0 {name=l1 sig_type=std_logic lab=clk1}
C {devices/gnd.sym} 310 -20 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} 310 -80 1 0 {name=l4 lab=VDD}
C {devices/vsource.sym} -210 -120 0 0 {name=VDD1 value="DC 1.8"}
C {devices/gnd.sym} -210 -90 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -210 -150 0 0 {name=l6 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} 310 -100 2 0 {name=l7 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} 310 -40 2 0 {name=l8 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 310 -60 2 0 {name=l9 sig_type=std_logic lab=outb}
C {sky130_stdcells/lpflow_lsbuf_lh_isowell_4.sym} 320 -210 0 0 {name=x2 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 230 -220 0 0 {name=l10 sig_type=std_logic lab=clk1}
C {devices/vdd.sym} 230 -200 3 0 {name=l11 lab=VDD}
C {devices/lab_pin.sym} 410 -220 2 0 {name=l12 sig_type=std_logic lab=outd}
