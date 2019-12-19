module top(clk, clk1, QPSK_out, I_demodulate, Q_demodulate);
  input clk, clk1;  
  output [8:0] QPSK_out;
  output I_demodulate, Q_demodulate;
  wire Ichannel, Qchannel;
  GenerateIAndQ gen(.clk1(clk1), .Ichannel(Ichannel), .Qchannel(Qchannel));
  Modulate qpsk(.clk(clk), .clk1(clk1), .Ichannel(Ichannel), .Qchannel(Qchannel), .QPSK_out(QPSK_out));
  //Demodulate demodulate(.clk(clk), .QPSK_out(QPSK_out), .I_demodulate(I_demodulate), .Q_demodulate(Q_demodulate));
endmodule