// https://electronics.stackexchange.com/questions/455364/verilog-code-to-drive-a-signal-high-always

`default_nettype none
module always1(
`ifdef USE_POWER_PINS
    vccd1, vssd1, // all gnds shorted to vssd1
`endif
	in, out);

`ifdef USE_POWER_PINS
    inout vccd1; // comparator supply and to level shifters
    inout vssd1; // all gnds shorted to vssd1
`endif

	//inout vpwr; // this is vccd1
	input in;
	output out;

	reg always1;
	initial always1 <= 1; // is this synthesized? short to vpwr?

	assign out = in | always1;

endmodule
`default_nettype wire

/*
// https://fpgatutorial.com/how-to-write-a-basic-verilog-testbench/
`timescale 1ns/1ps
module always1_tb();
reg in;
wire out, vpwr;

always1 dut(
	.in(in),
	.out(out),
	.vpwr(vpwr)
);

initial begin 
	$dumpfile("always1.vcd");
	$dumpvars;
end


initial begin
	$monitor("time=%3d, in=%b, always1=%b, out=%b, vpwr=%b\n", $time, in, dut.always1, out, vpwr);
	in = 1'b0;
	#2
	in = 1'b1;
	#2
	in = 1'b0;
end
endmodule
*/