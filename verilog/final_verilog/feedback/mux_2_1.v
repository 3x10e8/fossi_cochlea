//2x1 MUX
module mux_2_1(
input in_0,in_1,sel,
output reg out);
always@(*) begin
case(sel)
1'b0: out=in_0;
1'b1: out=in_1;
endcase
end
endmodule

