`timescale 1ns/1ps
module testbench;
reg a, b;
reg [3:0] d4;
reg [7:0] d8;
reg sel2;
reg [1:0] sel4;
reg [2:0] sel8;
wire y2, y4, y8;

mux2to1 m2(.a(a), .b(b), .sel(sel2), .y(y2));
mux4to1 m4(.d(d4), .sel(sel4), .y(y4));
mux8to1 m8(.d(d8), .sel(sel8), .y(y8));

initial begin
 $dumpfile("dump.vcd");
 $dumpvars(0, testbench);

 $monitor("t=%0t | 2:1 -> a=%b b=%b sel=%b y=%b | 4:1 -> d=%b sel=%b y=%b |8:1 -> d=%b sel=%b y=%b",$time, a, b, sel2, y2, d4, sel4, y4, d8, sel8, y8);


 a=0; b=1; sel2=0; #10;
 sel2=1; #10;


 d4=4'b1010; sel4=2'b00; #10;

 sel4=2'b01; #10;
 sel4=2'b10; #10;
 sel4=2'b11; #10;


 d8=8'b11001010; sel8=3'b000; #10;
 sel8=3'b001; #10;
 sel8=3'b010; #10;
 sel8=3'b011; #10;
 sel8=3'b100; #10;
 sel8=3'b101; #10;
 sel8=3'b110; #10;
 sel8=3'b111; #10;

 $finish;
end
endmodule