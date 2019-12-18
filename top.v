module top(clk, clk1, clk2, Ichannel, Qchannel, lo_out, bb_out, mixer_out);
  input clk, clk1;
  output [7:0] lo_out, bb_out;
  output [15:0] mixer_out;
  output [1:0] Ichannel, Qchannel;
  reg [7:0] Icarrier, Qcarrier;
  GenerateInput gen(.clk1(clk1), .Ichannel(Ichannel), .Qchannel(Qchannel));
  Icarrier I(.clk(clk), .Icarrier_out(Icarrier));
  Qcarrier Q(.clk(clk), .Qcarrier_out(Qcarrier));
endmodule