//4 not gate buffer
/*
module not_gate(
input a,
output wire out);
assign out=~a;
endmodule
*/
module inv_buffer(
	input in,
	output wire out);
	wire [3:0]w;
	genvar i;
	not_gate g1(.a(in),.out(w[0]));
	generate for (i=0;i<=2;i=i+1) begin: buffer_loop
	not_gate g2(.a(w[i]),.out(w[i+1]));
	end
	endgenerate
	not_gate g3(.a(w[3]),.out(out));
endmodule

/*
//testbench
module tb_inv_buffer;
reg in;
wire out;
inv_buffer b1(.in(in),.out(out));

initial begin
	$dumpfile("inv_buffer.vcd");
	$dumpvars;
end

initial begin
	$monitor ("in=%b | out=%b",in,out);
	in=0;
	#5 in=1;
	#5 in=0;
	$finish;
end
endmodule
*/