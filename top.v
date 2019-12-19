module top(clk, clk1, Ichannel, Qchannel, QPSK_out);
  input clk, clk1;
  output Ichannel, Qchannel;
  output [8:0] QPSK_out;
  QPSK qpsk(.clk(clk), .clk1(clk1), .Ichannel(Ichannel), .Qchannel(Qchannel), .QPSK_out(QPSK_out));
endmodule