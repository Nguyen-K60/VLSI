module Modulate(clk, clk1, Ichannel, Qchannel, QPSK_out);
  input clk, clk1;
  input Ichannel, Qchannel;  
  output reg [9:0] QPSK_out; 
  wire [7:0] lo_sin_out, lo_cos_out;
  lo_sin losin(.clk(clk), .lo_sin_out(lo_sin_out));
  lo_cos locos(.clk(clk), .lo_cos_out(lo_cos_out));
  always @(posedge clk)
  begin
    if(Ichannel == 1'b0 && Qchannel == 1'b0)
      begin
	QPSK_out = 400 - lo_cos_out - lo_sin_out;
      end
    else if(Ichannel == 1'b0 && Qchannel == 1'b1)
      begin
	QPSK_out = 400 - lo_cos_out + lo_sin_out;
      end
    else if(Ichannel == 1'b1 && Qchannel == 1'b1)
      begin
	QPSK_out = lo_cos_out + lo_sin_out + 400;
      end
    else
      begin
	QPSK_out = lo_cos_out - lo_sin_out + 400;
      end 
  end
endmodule
