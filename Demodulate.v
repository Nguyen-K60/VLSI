module Demodulate(clk, clk1, QPSK_out, I_demodulate, Q_demodulate);
  input clk, clk1;
  input wire signed [9:0] QPSK_out;
  output wire I_demodulate, Q_demodulate;
  wire signed [18:0] I_receive, Q_receive;
  wire signed [18:0] I_filtered, Q_filtered;
  GetIAndQ getIQ(.clk(clk), .QPSK_out(QPSK_out), .I(I_receive), .Q(Q_receive));
  Filter filterI(.clk(clk), .data_in(I_receive), .data_out(I_filtered));
  Filter filterQ(.clk(clk), .data_in(Q_receive), .data_out(Q_filtered));
  GetOriginIAndQ getorigin(.clk(clk), .clk1(clk1), .I_filtered(I_filtered), .Q_filtered(Q_filtered), .I_origin(I_demodulate), .Q_origin(Q_demodulate));
endmodule