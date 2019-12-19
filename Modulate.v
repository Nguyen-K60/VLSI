module Modulate(clk, clk1, Ichannel, Qchannel, QPSK_out);
  input clk, clk1;
  input Ichannel, Qchannel;  
  output reg [8:0] QPSK_out; 
  wire [8:0] sb00, sb01, sb11, sb10;
  Symbol00 sym00(.clk(clk), .Symbol00_out(sb00));
  Symbol01 sym01(.clk(clk), .Symbol01_out(sb01));
  Symbol11 sym11(.clk(clk), .Symbol11_out(sb11));
  Symbol10 sym10(.clk(clk), .Symbol10_out(sb10));
  always @(posedge clk)
  begin
    if(Ichannel == 1'b0 && Qchannel == 1'b0)
      begin
	QPSK_out = sb00;
      end
    else if(Ichannel == 1'b0 && Qchannel == 1'b1)
      begin
	QPSK_out = sb01;
      end
    else if(Ichannel == 1'b1 && Qchannel == 1'b1)
      begin
	QPSK_out = sb11;
      end
    else
      begin
	QPSK_out = sb10;
      end 
  end
endmodule
