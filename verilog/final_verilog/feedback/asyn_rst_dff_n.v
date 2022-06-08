//asynchronous pos reset dff definition with negative edge clk trigger
module asyn_rst_dff_n(
input clk,d,rstb,
output reg q);
always@(negedge clk or posedge rstb)begin
if(rstb) q<=0;
else q<=d;
end
endmodule
