`timescale 1ns/1ps
module testbench;
 reg A, B, Cin, Bin;
 wire Sum_ha, Carry_ha, Sum_fa, Carry_fa;
 wire Diff_hs, Borrow_hs, Diff_fs, Borrow_fs;
  
 // Instantiate all modules
 half_adder HA(.A(A), .B(B), .Sum(Sum_ha), .Carry(Carry_ha));
 full_adder FA(.A(A), .B(B), .Cin(Cin), .Sum(Sum_fa), .Carry(Carry_fa));
 half_subtractor HS(.A(A), .B(B), .Diff(Diff_hs), .Borrow(Borrow_hs));
 full_subtractor FS(.A(A), .B(B), .Bin(Bin), .Diff(Diff_fs), .Borrow(Borrow_fs));
  
 initial begin
  $dumpfile("dump.vcd");
  $dumpvars(0, testbench);
   $monitor("t=%0t | A=%b B=%b Cin=%b Bin=%b || HA: Sum=%b Carry=%b | FA: Sum=%b Carry=%b | HS: Diff=%b Borrow=%b | FS: Diff=%b Borrow=%b", $time, A, B, Cin, Bin,Sum_ha, Carry_ha, Sum_fa, Carry_fa,Diff_hs, Borrow_hs, Diff_fs, Borrow_fs);
 
  // Try all input combinations
  {A,B,Cin,Bin} = 4'b0000;
  repeat (16) begin
   #10 {A,B,Cin,Bin} = {A,B,Cin,Bin} + 1;
  end
 
  $finish;
 end
endmodule
