// ========== STRUCTURAL MODEL ==========
module mux2_struct(input a, b, sel, output y);
 wire nsel, w0, w1;
 not U0(nsel, sel);
 and U1(w0, a, nsel);
 and U2(w1, b, sel);
 or U3(y, w0, w1);
endmodule
// ========== DATAFLOW MODEL ==========
module mux2_dataflow(input a, b, sel, output y);
 assign y = sel ? b : a;
endmodule
// ========== BEHAVIORAL MODEL ==========
module mux2_behavioral(input a, b, sel, output reg y);
 always @* begin
 if (sel)
 y = b;
 else
 y = a;
 end
endmodule 