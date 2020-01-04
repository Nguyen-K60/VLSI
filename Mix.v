module Mix(clk, Ichannel, Qchannel, QPSK_out);
  input clk;  
  input Ichannel, Qchannel;  
  output reg signed [9:0] QPSK_out;
  wire signed [8:0] cos, sin;
  lo_cos locos(.clk(clk), .lo_cos_out(cos));
  lo_sin losin(.clk(clk), .lo_sin_out(sin));
  always @(posedge clk)
  begin
    if(Ichannel == 0 && Qchannel == 0)
      begin
	QPSK_out = -cos-sin;
      end
    else if(Ichannel == 0 && Qchannel == 1)
      begin
	QPSK_out = -cos+sin;
      end
    else if(Ichannel == 1 && Qchannel == 1)
      begin
	QPSK_out = cos+sin;
      end
    else
      begin
	QPSK_out = cos-sin;
      end 
  end
endmodule
