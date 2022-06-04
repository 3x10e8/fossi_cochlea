`default_nettype none
module always1(in, out);
	input in;
	output out;

	reg always1;
	initial always1 <= 1;

	assign out <= in & always1;

endmodule
`default_nettype wire