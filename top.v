module top(clk, clk1, bit_stream, QPSK_out, I_receive, Q_receive, I_filtered, Q_filtered, I_demodulate, Q_demodulate, bit_stream_demodulate);
  input clk, clk1;  
  output signed [9:0] QPSK_out;
  output signed [18:0] I_receive, Q_receive, I_filtered, Q_filtered;
  output I_demodulate, Q_demodulate;
  output wire bit_stream, bit_stream_demodulate; 
  GenerateInput gen(.clk1(clk1), .bit_stream(bit_stream));
  Modulate modulate(.clk(clk), .clk1(clk1), .bit_stream(bit_stream), .QPSK_out(QPSK_out));
  Demodulate demodulate(.clk(clk), .clk1(clk1), .QPSK_out(QPSK_out), .I_receive(I_receive), .Q_receive(Q_receive), .I_filtered(I_filtered), .Q_filtered(Q_filtered),.I_demodulate(I_demodulate), .Q_demodulate(Q_demodulate), .bit_stream_demodulate(bit_stream_demodulate));
endmodule