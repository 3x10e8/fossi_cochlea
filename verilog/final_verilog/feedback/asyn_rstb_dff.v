//asynchronous neg reset dff definition with positive edge clk trigger
module asyn_rstb_dff(
input clk,d,rstb,
output reg q);
always@(posedge clk or negedge rstb)begin
if(!rstb) q<=0;
else q<=d;
end
endmodule