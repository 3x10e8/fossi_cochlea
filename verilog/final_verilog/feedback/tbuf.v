//`include "/Volumes/export/isn/abhinav/fossi_cochlea/caravel/verilog/rtl/caravel_netlists.v" // for tbuf
//`include "/usr/local/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/verilog/sky130_fd_sc_hd.v"
`timescale 1ns/1ps
module tbuf(in,ctrlb,out);
  input in,ctrlb;
  output out;

  `ifdef RUN_DV
		reg out;
			always@(*)
			begin
			case(ctrlb)
				1'b0:  out=in;
				1'b1:  out=1'bz;
			endcase
		end
  `else
  	sky130_fd_sc_hd__ebufn_1 t_buf(.A(in),.TE_B(ctrlb),.Z(out));
  `endif
endmodule

/*
//testbench
module tb_tbuf;
reg in,ctrlb;
wire out;
tbuf tb(.in(in),.ctrlb(ctrlb),.out(out));
initial begin
$dumpfile("tbuf.vcd");
$dumpvars(2,tb_tbuf);
end
initial begin
$monitor("in=%b | ctrlb=%b |out=%b",in,ctrlb,out);
in=1'b0; ctrlb=1'b0;
#2 in=1'b0; ctrlb=1'b1;
#2 in=1'b1; ctrlb=1'b0;
#2 in=1'b1; ctrlb=1'b1;
#2 in=1'b0; ctrlb=1'b0;
end
endmodule
*/
