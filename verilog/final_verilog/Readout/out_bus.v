`include"tbuf.v"
`timescale 1ns/1ps
module out_bus(in,ctrl,out,rstb);
input [7:0]in,ctrl;
input rstb;
output out;
wire bus_out;
assign #1 out=bus_out&&rstb;
genvar i;
generate for(i=0;i<=7;i=i+1) begin: loop_bus
tbuf sw(.in(in[i]),.ctrl(ctrl[i]),.out(bus_out));
end
endgenerate
endmodule

