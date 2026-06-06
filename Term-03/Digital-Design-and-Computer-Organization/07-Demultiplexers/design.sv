module demux1to2(input din, input sel, output y0, output y1);
assign y0 = (~sel) & din;
assign y1 = sel & din;
endmodule


module demux1to4(input din, input [1:0] sel, output [3:0] y);
assign y[0] = (~sel[1] & ~sel[0]) & din;
assign y[1] = (~sel[1] & sel[0]) & din;
assign y[2] = ( sel[1] & ~sel[0]) & din;
assign y[3] = ( sel[1] & sel[0]) & din;
endmodule


module demux1to8(input din, input [2:0] sel, output [7:0] y);
assign y[0] = (~sel[2] & ~sel[1] & ~sel[0]) & din;
assign y[1] = (~sel[2] & ~sel[1] & sel[0]) & din;

assign y[2] = (~sel[2] & sel[1] & ~sel[0]) & din;
assign y[3] = (~sel[2] & sel[1] & sel[0]) & din;
assign y[4] = ( sel[2] & ~sel[1] & ~sel[0]) & din;
assign y[5] = ( sel[2] & ~sel[1] & sel[0]) & din;
assign y[6] = ( sel[2] & sel[1] & ~sel[0]) & din;
assign y[7] = ( sel[2] & sel[1] & sel[0]) & din;
endmodule