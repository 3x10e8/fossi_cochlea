//T Flip Flop definition
`include "asyn_rstb_dff.v"
module asyn_rstb_tff(
input t,clk,rstb,
output wire q,q_b);
asyn_rstb_dff dfrtp_1(.clk(clk), .d(d), .rstb(rstb), .q(q));
assign d=q^t;
assign q_b=~q;
endmodule