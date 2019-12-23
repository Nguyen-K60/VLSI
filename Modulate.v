module Modulate(clk, clk1, QPSK_out);
  input clk, clk1;  
  output reg signed [9:0] QPSK_out;
  wire Ichannel, Qchannel; 
  wire signed [9:0] sb00, sb01, sb11, sb10;
  GenerateIAndQ gen(.clk1(clk1), .Ichannel(Ichannel), .Qchannel(Qchannel));
  Symbol00 sym00(.clk(clk), .Symbol00_out(sb00));
  Symbol01 sym01(.clk(clk), .Symbol01_out(sb01));
  Symbol11 sym11(.clk(clk), .Symbol11_out(sb11));
  Symbol10 sym10(.clk(clk), .Symbol10_out(sb10));
  always @(posedge clk)
  begin
    if(Ichannel == 0 && Qchannel == 0)
      begin
	QPSK_out = sb00;
      end
    else if(Ichannel == 0 && Qchannel == 1)
      begin
	QPSK_out = sb01;
      end
    else if(Ichannel == 1 && Qchannel == 1)
      begin
	QPSK_out = sb11;
      end
    else
      begin
	QPSK_out = sb10;
      end 
  end
endmodule
