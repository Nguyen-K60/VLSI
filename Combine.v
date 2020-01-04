module Combine(clk1, Ichannel, Qchannel, bit_stream_demodulate);
  input clk1;
  input Ichannel, Qchannel;
  output reg bit_stream_demodulate;
  always @(posedge clk1)
  begin
    bit_stream_demodulate = Ichannel;
  end
  always @(negedge clk1)
  begin
    bit_stream_demodulate = Qchannel;
  end
endmodule
