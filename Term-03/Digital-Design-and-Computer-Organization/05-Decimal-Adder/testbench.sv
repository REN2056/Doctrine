`timescale 1ns/1ps
module testbench;
reg [3:0] A, B;
reg Cin;
wire [3:0] Sum;
wire Cout;

bcd_adder DUT(.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));

initial begin
$dumpfile("dump.vcd");
$dumpvars(0, testbench);

$monitor("t=%0t | A=%d B=%d Cin=%b | Sum=%d Cout=%b",
$time, A, B, Cin, Sum, Cout);

// Some test cases
A=4; B=5; Cin=0; #10; // 4 + 5 = 9
A=7; B=6; Cin=0; #10; // 7 + 6 = 13 → correction → 3 with carry
A=9; B=9; Cin=0; #10; // 9 + 9 = 18 → correction → 8 with carry
A=3; B=2; Cin=1; #10; // 3 + 2 + Cin = 6
A=8; B=5; Cin=1; #10; // 8 + 5 + Cin = 14 → correction → 4 with carry

$finish;
end
endmodule