module mixer(clk, lo, bb, mixer_out);
  input clk;
  input [7:0] lo, bb;
  output reg [15:0] mixer_out;
  always @(posedge clk)
  begin
    mixer_out = (lo - 100)*(bb - 100) + 10000;
  end
endmodule
