`timescale 1ns/1ps
module tbuf(in,ctrlb,out);
input in,ctrlb;
output out;
reg out;
always@(*)
begin
case(ctrlb)
1'b0:  out=in;
1'b1:  out=1'bz;
endcase
end
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
