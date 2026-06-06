`timescale 1ns/1ps
module testbench;
 reg a, b, sel;
 wire y_struct, y_data, y_behav;
 // Instantiate all three versions
 mux2_struct USTR (.a(a), .b(b), .sel(sel), .y(y_struct));
 mux2_dataflow UDF (.a(a), .b(b), .sel(sel), .y(y_data));
 mux2_behavioral UBEH (.a(a), .b(b), .sel(sel), .y(y_behav));
 initial begin
 // Waveform dump for EPWave
 $dumpfile("dump.vcd");
 $dumpvars(0, testbench);
 // Console monitor
 $monitor("t=%0t | sel=%b a=%b b=%b | y_struct=%b y_data=%b y_behav=%b",
 $time, sel, a, b, y_struct, y_data, y_behav);
 // Sweep all 8 input combinations quickly (10 ns each)
 {sel,a,b} = 3'b000;
 repeat (8) begin
 #10 {sel,a,b} = {sel,a,b} + 1;
 end
 $finish;
 end
endmodule