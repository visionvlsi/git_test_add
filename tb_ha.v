`timescale 1ns/1ps
module tb_ha;

reg a,b;
wire sum,co;

integer i;

ha dut(a,b,sum,co);

initial begin
for(i=0; i<4; i=i+1) begin
{a,b}=$random;
#5;
end

initial
begin
$dumpfile("ha.vcd");
$dumpvars;
end

endmodule
