`include "gray_count.v"
module gray_tb;
reg clk, enable, reset;
wire [7:0]gray_count;
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
enable=1;
repeat(100) @(posedge clk);
#100 $finish;
end
endmodule



