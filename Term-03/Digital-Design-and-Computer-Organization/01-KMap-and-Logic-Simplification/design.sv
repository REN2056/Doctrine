module logic4(input A, B, C, D, output F);
assign F = (A & B) | (~C & D);
endmodule 