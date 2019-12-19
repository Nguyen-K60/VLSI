module QPSK(clk, clk1, Ichannel, Qchannel, QPSK_out);
  input clk, clk1;
  output Ichannel, Qchannel;
  output reg [8:0] QPSK_out;
  wire [7:0] I_00, I_01, I_11, I_10, Q_00, Q_01, Q_11, Q_10;
  I00 i00(.clk(clk), .I00_out(I_00));
  Q00 q00(.clk(clk), .Q00_out(Q_00));
  I01 i01(.clk(clk), .I01_out(I_01));
  Q01 q01(.clk(clk), .Q01_out(Q_01));
  I11 i11(.clk(clk), .I11_out(I_11));
  Q11 q11(.clk(clk), .Q11_out(Q_11));
  I10 i10(.clk(clk), .I10_out(I_10));
  Q10 q10(.clk(clk), .Q10_out(Q_10));
  GenerateInput gen(.clk1(clk1), .Ichannel(Ichannel), .Qchannel(Qchannel));
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
