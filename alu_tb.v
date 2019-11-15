`timescale 1s/100ns
`include "alu.v"

module alu_tb;
  reg [4:0] A, B;
  reg [3:0] S;
  wire [4:0] Y;
  wire Cout;

  alu unit(Y, Cout, S, A, B);
  initial begin
    $dumpfile("alu.vcd");
    $dumpvars(0, alu_tb);
    $monitor(
      "A = %d, B = %d, S = %d, Y = %d (Cout = %d)", 
      A, B, S, Y, Cout);
    A = 5'b11010; B = 5'b10001; S = 4'b0000; #10;
    A = 5'b11010; B = 5'b10001; S = 4'b0001; #10;
    A = 5'b11010; B = 5'b10001; S = 4'b0010; #10;
    A = 5'b11010; B = 5'b10001; S = 4'b0011; #10;
    A = 5'b11010; B = 5'b10001; S = 4'b0100; #10;
    A = 5'b11010; B = 5'b10001; S = 4'b0101; #10;
    A = 5'b11010; B = 5'b10001; S = 4'b0110; #10;
    A = 5'b11010; B = 5'b10001; S = 4'b0111; #10;
    A = 5'b01010; B = 5'b00001; S = 4'b1000; #10;
    A = 5'b01011; B = 5'b00001; S = 4'b1001; #10;
    A = 5'b01011; B = 5'b00001; S = 4'b1010; #10;
    A = 5'b01011; B = 5'b00001; S = 4'b1011; #10;
    A = 5'b01011; B = 5'b00001; S = 4'b1100; #10;
    A = 5'b00011; B = 5'b10001; S = 4'b1101; #10;
    A = 5'b00010; B = 5'b01011; S = 4'b1101; #10;
    A = 5'b01011; B = 5'b01011; S = 4'b1110; #10;
    A = 5'b11111; B = 5'b11111; S = 4'b1111; #10;
    $finish;
  end
endmodule