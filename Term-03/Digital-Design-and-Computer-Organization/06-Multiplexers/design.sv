module mux2to1(input a, input b, input sel, output y);
assign y = sel ? b : a;
endmodule


module mux4to1(input [3:0] d, input [1:0] sel, output y);
assign y = (sel == 2'b00) ? d[0] :
(sel == 2'b01) ? d[1] :
(sel == 2'b10) ? d[2] :
d[3];
endmodule


module mux8to1(input [7:0] d, input [2:0] sel, output y);
assign y = d[sel]; // array indexing makes it neat
endmodule