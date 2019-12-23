module GetIAndQ(clk, QPSK_out, I, Q);
  input clk;
  input signed [9:0] QPSK_out;
  output reg signed [18:0] I, Q;
  wire signed [8:0] lo_cos_out, lo_sin_out;
  lo_cos cos(.clk(clk), .lo_cos_out(lo_cos_out));
  lo_sin sin(.clk(clk), .lo_sin_out(lo_sin_out));
  always @(posedge clk)
  begin
    I = QPSK_out*lo_cos_out;
    Q = QPSK_out*lo_sin_out;
  end
endmodule
