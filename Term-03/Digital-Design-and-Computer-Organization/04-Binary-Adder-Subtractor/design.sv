// Half Adder
module half_adder(input A, input B, output Sum, output Carry);
 assign Sum = A ^ B;
 assign Carry = A & B;
endmodule

// Full Adder
module full_adder(input A, input B, input Cin, output Sum, output Carry);
 assign Sum = A ^ B ^ Cin;
 assign Carry = (A & B) | (B & Cin) | (A & Cin);
endmodule

// Half Subtractor
module half_subtractor(input A, input B, output Diff, output Borrow);
 assign Diff = A ^ B;
 assign Borrow = (~A) & B;
endmodule

// Full Subtractor
module full_subtractor(input A, input B, input Bin, output Diff, output Borrow);
 assign Diff = A ^ B ^ Bin;
 assign Borrow = (~A & B) | (~(A ^ B) & Bin);
endmodule 
