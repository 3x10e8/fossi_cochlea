//2x1 MUX
module mux_2_1(
input in_0,in_1,sel,
output reg out);

`ifdef RUN_DV
	always@(*) begin
		case(sel)
			1'b0: out=in_0;
			1'b1: out=in_1;
		endcase
	end
`else
	sky130_fd_sc_hd__mux2_1 mux(
		.X(out),
		.A0(in_0),
		.A1(in_1),
		.S(sel)
	);
`endif
endmodule

