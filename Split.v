module Split(clk1, bit_stream, Ichannel, Qchannel);
  input clk1;
  input bit_stream;
  output reg Ichannel, Qchannel;
  always @(posedge clk1)
  begin
    Ichannel = bit_stream;
  end
  always @(negedge clk1)
  begin
    Qchannel = bit_stream;
  end
endmodule
