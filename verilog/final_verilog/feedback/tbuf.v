`timescale 1ns/1ps
module tbuf(in,ctrl,out);
input in,ctrl;
output out;
reg out;
always@(*)
begin
case(ctrl)
1'b0:  out=1'bz;
1'b1:  out=in;
endcase
end
endmodule
/*
//testbench
module tb_tbuf;
reg in,ctrl;
wire out;
tbuf tb(.in(in),.ctrl(ctrl),.out(out));
initial begin
$dumpfile("tbuf.vcd");
$dumpvars(2,tb_tbuf);
end
initial begin
$monitor("in=%b | ctrl=%b |out=%b",in,ctrl,out);
in=1'b0; ctrl=1'b0;
#2 in=1'b0; ctrl=1'b1;
#2 in=1'b1; ctrl=1'b0;
#2 in=1'b1; ctrl=1'b1;
#2 in=1'b0; ctrl=1'b0;
end
endmodule
*/
