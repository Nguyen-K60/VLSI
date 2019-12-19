module Modulate(clk, clk1, Ichannel, Qchannel, I_00, I_01, I_11, I_10, Q_00, Q_01, Q_11, Q_10, QPSK_out);
  input clk, clk1;
  input Ichannel, Qchannel;
  input [7:0] I_00, I_01, I_11, I_10, Q_00, Q_01, Q_11, Q_10;
  output reg [8:0] QPSK_out; 
  always @(posedge clk)
  begin
    if(Ichannel == 1'b0 && Qchannel == 1'b0)
      begin
	QPSK_out = I_00 + Q_00;
      end
    else if(Ichannel == 1'b0 && Qchannel == 1'b1)
      begin
	QPSK_out = I_01 + Q_01;
      end
    else if(Ichannel == 1'b1 && Qchannel == 1'b1)
      begin
	QPSK_out = I_11 + Q_11;
      end
    else
      begin
	QPSK_out = I_10 + Q_10;
      end 
  end
endmodule
