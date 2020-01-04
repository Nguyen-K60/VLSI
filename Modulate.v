module Modulate(clk, clk1, QPSK_out);
  input clk, clk1;  
  output wire signed [9:0] QPSK_out;
  wire Ichannel, Qchannel; 
  GenerateIAndQ gen(.clk1(clk1), .Ichannel(Ichannel), .Qchannel(Qchannel));
  GetQPSKOutput qpskout(.clk(clk), .Ichannel(Ichannel), .Qchannel(Qchannel), .QPSK_out(QPSK_out));
endmodule
