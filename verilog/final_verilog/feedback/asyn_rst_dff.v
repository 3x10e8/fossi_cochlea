//asynchronous pos reset dff definition with positive edge clk trigger
module asyn_rst_dff(
input clk,d,rstb,
output reg q);
always@(posedge clk or posedge rstb)begin
if(rstb) q<=0;
else q<=d;
end
endmodule