module GetQPSKOutput(clk, sb00, sb01, sb11, sb10, Ichannel, Qchannel, QPSK_out);
  input clk;  
  input Ichannel, Qchannel; 
  input signed [9:0] sb00, sb01, sb11, sb10; 
  output reg signed [9:0] QPSK_out;
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
