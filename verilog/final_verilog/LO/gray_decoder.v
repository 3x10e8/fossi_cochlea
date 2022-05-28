`timescale 1ns/1ps
module gray_decoder(out,in);
input [5:0]in;
output [19:0]out;
assign #1 out[0]=(~in[5])&(~in[4])&(~in[3])&(~in[2])&(in[1])&(in[0]);
assign #1 out[1]=(~in[5])&(~in[4])&(~in[3])&(~in[2])&(in[1])&(~in[0]);
assign #1 out[2]=(~in[5])&(~in[4])&(~in[3])&(in[2])&(in[1])&(~in[0]);
assign #1 out[3]=(~in[5])&(~in[4])&(in[3])&(in[2])&(~in[1])&(in[0]);
assign #1 out[4]=(~in[5])&(~in[4])&(in[3])&(in[2])&(in[1])&(in[0]);
assign #1 out[5]=(~in[5])&(~in[4])&(in[3])&(~in[2])&(in[1])&(in[0]);
assign #1 out[6]=(~in[5])&(in[4])&(in[3])&(~in[2])&(~in[1])&(in[0]);
assign #1 out[7]=(~in[5])&(in[4])&(in[3])&(in[2])&(in[1])&(in[0]);
assign #1 out[8]=(~in[5])&(in[4])&(in[3])&(in[2])&(~in[1])&(~in[0]);
assign #1 out[9]=(~in[5])&(in[4])&(~in[3])&(~in[2])&(~in[1])&(~in[0]);
assign #1 out[10]=(in[5])&(in[4])&(~in[3])&(~in[2])&(~in[1])&(~in[0]);
assign #1 out[11]=(in[5])&(in[4])&(in[3])&(in[2])&(~in[1])&(~in[0]);
assign #1 out[12]=(in[5])&(in[4])&(in[3])&(in[2])&(in[1])&(in[0]);
assign #1 out[13]=(in[5])&(in[4])&(in[3])&(~in[2])&(~in[1])&(in[0]);
assign #1 out[14]=(in[5])&(~in[4])&(in[3])&(~in[2])&(in[1])&(in[0]);
assign #1 out[15]=(in[5])&(~in[4])&(in[3])&(in[2])&(in[1])&(in[0]);
assign #1 out[16]=(in[5])&(~in[4])&(in[3])&(in[2])&(~in[1])&(in[0]);
assign #1 out[17]=(in[5])&(~in[4])&(~in[3])&(in[2])&(in[1])&(~in[0]);
assign #1 out[18]=(in[5])&(~in[4])&(~in[3])&(~in[2])&(in[1])&(~in[0]);
assign #1 out[19]=(in[5])&(~in[4])&(~in[3])&(~in[2])&(in[1])&(in[0]);
endmodule