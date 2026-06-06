`timescale 1ns/1ps
module testbench;
reg clk, rst;
reg S, R;
reg J, K;
reg D;
wire Q_sr, Q_jk, Q_d;

// Instantiate flip-flops
sr_ff sr1 (.clk(clk), .rst(rst), .S(S), .R(R), .Q(Q_sr));
jk_ff jk1 (.clk(clk), .rst(rst), .J(J), .K(K), .Q(Q_jk));
d_ff d1 (.clk(clk), .rst(rst), .D(D), .Q(Q_d));

// Clock generation (10ns period)
always #5 clk = ~clk;

initial begin
$dumpfile("dump.vcd");
$dumpvars(0, testbench);

clk = 0; rst = 1; S=0; R=0; J=0; K=0; D=0;
#10 rst = 0;


$display("\n---- Testing SR Flip-Flop ----");
$display("time | S R | Q_sr");
$monitor("t=%0t | %b %b | %b", $time, S, R, Q_sr);

S=1; R=0; #10; // set
S=0; R=1; #10; // reset
S=0; R=0; #10; // no change
S=1; R=1; #10; // invalid
$monitoroff;


$display("\n---- Testing JK Flip-Flop ----");
$display("time | J K | Q_jk");
$monitoron;
$monitor("t=%0t | %b %b | %b", $time, J, K, Q_jk);

J=1; K=0; #10; // set
J=0; K=1; #10; // reset
J=0; K=0; #10; // no change
J=1; K=1; #20; // toggle twice
$monitoroff;


$display("\n---- Testing D Flip-Flop ----");
$display("time | D | Q_d");
$monitoron;
$monitor("t=%0t | %b | %b", $time, D, Q_d);

D=1; #10;
D=0; #10;
D=1; #10;

$finish;

end
endmodule