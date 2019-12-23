module top(clk, clk1, QPSK_out, I_demodulate, Q_demodulate);
  input clk, clk1;  
  output signed [9:0] QPSK_out;
  output I_demodulate, Q_demodulate;
  Modulate modulate(.clk(clk), .clk1(clk1), .QPSK_out(QPSK_out));
  Demodulate demodulate(.clk(clk), .clk1(clk1), .QPSK_out(QPSK_out), .I_demodulate(I_demodulate), .Q_demodulate(Q_demodulate));
endmodule