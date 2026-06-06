`timescale 1ns/1ps
module tb;
 reg [3:0] A, B;
 reg Cin;
 wire [3:0] Sum, Diff;
 wire Cout, Bout;
 // Instantiate 4-bit Adder
 adder4 ADD4(.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));
 // Instantiate 4-bit Subtractor
 subtract4 SUB4(.A(A), .B(B), .Diff(Diff), .Bout(Bout));
 initial begin
 $dumpfile("dump.vcd");
 $dumpvars(0, tb);
 Cin = 0;
 A = 4'b0000;
 B = 4'b0000;
 repeat (16) begin
 repeat (16) begin
 #10 B = B + 1;
 end
 A = A + 1;
 B = 0;
 end
 $finish;
 end
 initial begin
 $monitor("A=%b B=%b | Sum=%b Cout=%b | Diff=%b Bout=%b",
 A, B, Sum, Cout, Diff, Bout);
 end
endmodule