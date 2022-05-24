//asynchronous neg reset dff definition with negative edge clk trigger
module asyn_rstb_dff_n(
input clk,d,rstb,
output reg q);
always@(negedge clk or negedge rstb)begin
if(!rstb) q<=0;
else q<=d;
end
endmodule