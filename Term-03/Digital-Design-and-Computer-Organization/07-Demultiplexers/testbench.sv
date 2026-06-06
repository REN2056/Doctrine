`timescale 1ns/1ps
module testbench;
reg din;
reg sel1;
reg [1:0] sel4;
reg [2:0] sel8;
wire y1_0, y1_1;
wire [3:0] y4;
wire [7:0] y8;


demux1to2 d2(.din(din), .sel(sel1), .y0(y1_0), .y1(y1_1));


demux1to4 d4(.din(din), .sel(sel4), .y(y4));


demux1to8 d8(.din(din), .sel(sel8), .y(y8));

initial begin

$dumpfile("dump.vcd");
$dumpvars(0, testbench);

din = 1; // input ON

$display("=== 1:2 DeMUX Truth Table ===");
sel1 = 0; #10; $display("sel1=%b | y0=%b y1=%b", sel1, y1_0, y1_1);
sel1 = 1; #10; $display("sel1=%b | y0=%b y1=%b", sel1, y1_0, y1_1);

$display("\n=== 1:4 DeMUX Truth Table ===");
sel4 = 2'b00; #10; $display("sel4=%b | y=%b", sel4, y4);
sel4 = 2'b01; #10; $display("sel4=%b | y=%b", sel4, y4);
sel4 = 2'b10; #10; $display("sel4=%b | y=%b", sel4, y4);
sel4 = 2'b11; #10; $display("sel4=%b | y=%b", sel4, y4);

$display("\n=== 1:8 DeMUX Truth Table ===");
sel8 = 3'b000; #10; $display("sel8=%b | y=%b", sel8, y8);
sel8 = 3'b001; #10; $display("sel8=%b | y=%b", sel8, y8);
sel8 = 3'b010; #10; $display("sel8=%b | y=%b", sel8, y8);
sel8 = 3'b011; #10; $display("sel8=%b | y=%b", sel8, y8);
sel8 = 3'b100; #10; $display("sel8=%b | y=%b", sel8, y8);
sel8 = 3'b101; #10; $display("sel8=%b | y=%b", sel8, y8);
sel8 = 3'b110; #10; $display("sel8=%b | y=%b", sel8, y8);
sel8 = 3'b111; #10; $display("sel8=%b | y=%b", sel8, y8);

$finish;
end
endmodule