module Modulate(clk, clk1, QPSK_out);
  input clk, clk1;  
  output wire signed [9:0] QPSK_out;
  wire Ichannel, Qchannel; 
  wire signed [9:0] sb00, sb01, sb11, sb10;
  GenerateIAndQ gen(.clk1(clk1), .Ichannel(Ichannel), .Qchannel(Qchannel));
  Symbol00 sym00(.clk(clk), .Symbol00_out(sb00));
  Symbol01 sym01(.clk(clk), .Symbol01_out(sb01));
  Symbol11 sym11(.clk(clk), .Symbol11_out(sb11));
  Symbol10 sym10(.clk(clk), .Symbol10_out(sb10));
  GetQPSKOutput qpskout(.clk(clk), .sb00(sb00), .sb01(sb01), .sb11(sb11), .sb10(sb10), .Ichannel(Ichannel), .Qchannel(Qchannel), .QPSK_out(QPSK_out));
endmodule
