`timescale 1ns/1ps
//DFF with negative clk triggering and neg asynchronous reset
module dffn_asyn_rstn(clk,rstb,d,q);
input clk,rstb,d;
output q;
reg q;
always@(negedge clkb or negedge rstb)
if(!rstb) q<=#1 1'b0;
else q<=#1 d;
endmodule

//module for dff with clk triggering and negative asynchronous reset
module dff_asyn_rstn(clk,rstb,d,q);
input clk,rstb,d;
output q;
reg q;
always@(posedge clk or negedge rstb)
if(!rstb) q<=#1 1'b0;
else q<=#1 d;
endmodule
  
//module for control signals for the tristate buffers
module control_signals_ro(clk,rstb,d1,ctrl);//d1 is the input to first flop; need to be set 1 always
input [9:0]clk; //clkb[0] is the max clk
input d,rstb;
output [9:0]ctrl;
wire d; // since d[j] is generated inside loop, it has to be inside reg
wire q1; //flop out from first flop
assign #1 ctrl[0]=~clk[0]&&q1; //first ctrl signal is non sequential logic. Directly clkb[0] controls the tristate buffer.
dff_asyn_rstn d3(.clk(clk[0]),.rstb(rstb),.d(d1),.q(q1));
genvar k;
generate for(k=1;k<=7;k=k+1) begin: inst_loop
dffn_asyn_rstn d2(.clk(clk[0]),.rstb(clk[k]),.d(d[k]),.q(ctrl[k]));
end
endgenerate
endmodule

/*
integer i,j,temp;
initial begin //should output the values of d. All AND and NOT gates covered here
for (i=1;i<=7;i=i+1) begin
temp=1;
j=i;
while(i-1!=0) begin
temp=temp&&(!clkb[i-1]);
i=i-1;
end
#1 d[j]=temp&&clkb[j];
end
end
*/