module tb;
reg A, B, C, D;
wire F;
logic4 DUT(.A(A), .B(B), .C(C), .D(D), .F(F));
initial begin
// VCD for waveform
$dumpfile("dump.vcd");
$dumpvars(0, tb);
// Test all 16 combinations of inputs
{A,B,C,D} = 4'b0000;
repeat(16) begin
#5 {A,B,C,D} = {A,B,C,D} + 1;
end
$finish;
end
initial begin
$monitor("t=%0t | A=%b B=%b C=%b D=%b | F=%b",
$time, A, B, C, D, F);
end
endmodule