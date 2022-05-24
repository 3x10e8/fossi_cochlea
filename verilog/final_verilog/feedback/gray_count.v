// Gray counter 16 bit

module gray_count
(
	input clk, enable, reset,
	output reg [16:0] gray_count
);

// Implementation:

// There's an imaginary bit in the counter, at q[-1], that resets to 1
// (unlike the rest of the bits of the counter) and flips every clock cycle.
// The decision of whether to flip any non-imaginary bit in the counter
// depends solely on the bits below it, down to the imaginary bit.	It flips
// only if all these bits, taken together, match the pattern 10* (a one
// followed by any number of zeros).

// Almost every non-imaginary bit has a submodule instance that sets the
// bit based on the values of the lower-order bits, as described above.
// The rules have to differ slightly for the most significant bit or else 
// the counter would saturate at it's highest value, 1000...0.

	// q is the counter, plus the imaginary bit
	reg q [16:-1];
	
	// no_ones_below[x] = 1 iff there are no 1's in q below q[x]
	reg no_ones_below [16:-1];
	
	// q_msb is a modification to make the msb logic work
	reg q_msb;
	
	integer i, j, k;
	
	always @ (negedge reset or posedge clk or negedge clk)
	begin
		if (!reset)
		begin
		
			// Resetting involves setting the imaginary bit to 1
			q[-1] <= 1;
			for (i = 0; i <= 16; i = i + 1)
				q[i] <= 0;
				
		end
		else if (enable)
		begin
			// Toggle the imaginary bit
			q[-1] <= ~q[-1];
			
			for (i = 0; i < 16; i = i + 1)
			begin
				
				// Flip q[i] if lower bits are a 1 followed by all 0's
				q[i] <= q[i] ^ (q[i-1] & no_ones_below[i-1]);
			
			end
			
			q[16] <= q[16] ^ (q_msb & no_ones_below[15]);
		end
	end
	
	
	always @(*)
	begin
		
		// There are never any 1's beneath the lowest bit
		no_ones_below[-1] <= 1;
		
		for (j = 0; j < 16; j = j + 1)
			no_ones_below[j] <= no_ones_below[j-1] & ~q[j-1];
			
		q_msb <= q[16] | q[15];
		
		// Copy over everything but the imaginary bit
		for (k = 0; k < 17; k = k + 1)
			gray_count[k] <= q[k];
		end	
		
endmodule

/*
//Testbench

module gray_tb;
reg clk, enable, reset;
wire [16:0]gray_count;
gray_count g1(clk, enable, reset, gray_count);

initial begin
clk=0;
forever
#5 clk=~clk;
end

initial begin
$dumpfile("gray_count.vcd");
$dumpvars;
end

initial begin
reset=0;
#2 reset=1;
enable=1;
repeat(33000) @(posedge clk);
#100 $finish;
end
endmodule
*/


