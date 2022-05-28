`timescale 1ns/1ps
module rom(out,in);
input [10:0]in;
output out;
assign #1 out=~(in[0]|in[1]|in[2]|in[3]|in[4]|in[5]|in[6]|in[7]|in[8]|in[9]|in[10]);
endmodule
