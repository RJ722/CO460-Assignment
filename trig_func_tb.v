`timescale 1s/100ns
`include "trig_func.v"

module trig_func_tb;
  reg [4:0] flag;
  reg A, B, C, D;

  wire Y;
  wire [3:0] mix;

  trig_func unit(Y, flag, A, B, C, D);
  assign mix = {A, B, C, D};

  initial begin
    $dumpfile("trig_func.vcd");
    $dumpvars(0, trig_func_tb);
    $monitor("{A, B, C, D} = %b, flag = %b, Y = %b", mix, flag, Y);
    A = 0; B = 0; C = 0; D = 0; flag = 5'b00000; #10;
    A = 0; B = 0; C = 0; D = 0; flag = 5'bz; #10;
    A = 0; B = 0; C = 0; D = 0; flag = 5'bx; #10;
    A = 0; B = 0; C = 0; D = 0; flag = 5'b11111; #10;

    A = 0; B = 0; C = 0; D = 0; flag = 5'b11001; #10; 
    A = 0; B = 0; C = 0; D = 1; flag = 5'b11001; #10; 
    A = 0; B = 0; C = 1; D = 0; flag = 5'b11001; #10; 
    A = 0; B = 0; C = 1; D = 1; flag = 5'b11001; #10; 
    A = 0; B = 1; C = 0; D = 0; flag = 5'b11001; #10; 
    A = 0; B = 1; C = 0; D = 1; flag = 5'b11001; #10; 
    A = 0; B = 1; C = 1; D = 0; flag = 5'b11001; #10; 
    A = 0; B = 1; C = 1; D = 1; flag = 5'b11001; #10; 
    A = 1; B = 0; C = 0; D = 0; flag = 5'b11001; #10; 
    A = 1; B = 0; C = 0; D = 1; flag = 5'b11001; #10; 
    A = 1; B = 0; C = 1; D = 0; flag = 5'b11001; #10; 
    A = 1; B = 0; C = 1; D = 1; flag = 5'b11001; #10; 
    A = 1; B = 1; C = 0; D = 0; flag = 5'b11001; #10; 
    A = 1; B = 1; C = 0; D = 1; flag = 5'b11001; #10; 
    A = 1; B = 1; C = 1; D = 0; flag = 5'b11001; #10; 
    A = 1; B = 1; C = 1; D = 1; flag = 5'b11001; #10; 
    $finish;
  end
endmodule