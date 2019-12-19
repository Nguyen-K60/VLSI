module top(clk, clk1, QPSK_out);
  input clk, clk1;  
  output [8:0] QPSK_out;
  wire Ichannel, Qchannel;
  wire [7:0] I_00, I_01, I_11, I_10, Q_00, Q_01, Q_11, Q_10;
  I00 i00(.clk(clk), .I00_out(I_00));
  Q00 q00(.clk(clk), .Q00_out(Q_00));
  I01 i01(.clk(clk), .I01_out(I_01));
  Q01 q01(.clk(clk), .Q01_out(Q_01));
  I11 i11(.clk(clk), .I11_out(I_11));
  Q11 q11(.clk(clk), .Q11_out(Q_11));
  I10 i10(.clk(clk), .I10_out(I_10));
  Q10 q10(.clk(clk), .Q10_out(Q_10));
  GenerateIAndQ gen(.clk1(clk1), .Ichannel(Ichannel), .Qchannel(Qchannel));
  Modulate qpsk(.clk(clk), .clk1(clk1), .Ichannel(Ichannel), .Qchannel(Qchannel), .I_00(I_00), .I_01(I_01), .I_11(I_11), .I_10(I_10), .Q_00(Q_00), .Q_01(Q_01), .Q_11(Q_11), .Q_10(Q_10), .QPSK_out(QPSK_out));
endmodule