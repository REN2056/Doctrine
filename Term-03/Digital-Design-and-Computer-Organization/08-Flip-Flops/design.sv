module sr_ff(input clk, input rst, input S, input R, output reg Q);
always @(posedge clk or posedge rst) begin
if (rst)
Q <= 0;
else begin
case ({S, R})
2'b00: Q <= Q; // no change
2'b01: Q <= 0; // reset
2'b10: Q <= 1; // set
2'b11: Q <= 1'bx; // invalid
endcase
end
end
endmodule


module jk_ff(input clk, input rst, input J, input K, output reg Q);

always @(posedge clk or posedge rst) begin
if (rst)
Q <= 0;
else begin
case ({J, K})
2'b00: Q <= Q; // no change
2'b01: Q <= 0; // reset
2'b10: Q <= 1; // set
2'b11: Q <= ~Q; // toggle
endcase
end
end
endmodule


module d_ff(input clk, input rst, input D, output reg Q);
always @(posedge clk or posedge rst) begin
if (rst)
Q <= 0;
else
Q <= D; // latch input at clock edge
end
endmodule