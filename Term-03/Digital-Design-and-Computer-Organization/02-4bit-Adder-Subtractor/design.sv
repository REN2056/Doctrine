// 1-bit Full Adder
module full_adder(input A, input B, input Cin, output Sum, output Cout);
 assign Sum = A ^ B ^ Cin;
 assign Cout = (A & B) | (B & Cin) | (A & Cin);
endmodule
// 4-bit Ripple Carry Adder
module adder4(input [3:0] A, input [3:0] B, input Cin,
 output [3:0] Sum, output Cout);
 wire c1, c2, c3;
 full_adder FA0(A[0], B[0], Cin, Sum[0], c1);
 full_adder FA1(A[1], B[1], c1, Sum[1], c2);
 full_adder FA2(A[2], B[2], c2, Sum[2], c3);
 full_adder FA3(A[3], B[3], c3, Sum[3], Cout);
endmodule
// 4-bit Subtractor using 2's complement: A - B = A + (~B + 1)
module subtract4(input [3:0] A, input [3:0] B,
 output [3:0] Diff, output Bout);
 wire [3:0] Bcomp;
 assign Bcomp = ~B; // 1's complement of B
 // Add B' + 1 (Cin=1) to A
 adder4 ADDER(A, Bcomp, 1'b1, Diff, Bout);
endmodule