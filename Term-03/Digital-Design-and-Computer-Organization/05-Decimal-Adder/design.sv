module bcd_adder(
input [3:0] A, B,
input Cin,
output [3:0] Sum,
output Cout
);
wire [4:0] temp_sum; // 5-bit to hold carry
wire [4:0] corrected_sum;

assign temp_sum = A + B + Cin;

// If sum > 9, add 6 (BCD correction)
assign corrected_sum = (temp_sum > 9) ? temp_sum + 6 : temp_sum;

assign Sum = corrected_sum[3:0];
assign Cout = corrected_sum[4];
endmodule