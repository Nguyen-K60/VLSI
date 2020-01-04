module top(clk, clk1, bit_stream, QPSK_out, bit_stream_demodulate);
  input clk, clk1;  
  output signed [9:0] QPSK_out;
  output wire bit_stream, bit_stream_demodulate; 
  Modulate modulate(.clk(clk), .clk1(clk1), .bit_stream(bit_stream), .QPSK_out(QPSK_out));
  Demodulate demodulate(.clk(clk), .clk1(clk1), .QPSK_out(QPSK_out), .bit_stream_demodulate(bit_stream_demodulate));
endmodule