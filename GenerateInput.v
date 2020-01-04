module GenerateInput(clk1, bit_stream);
  input clk1;
  output reg bit_stream;
  always @(posedge clk1 or negedge clk1)
  begin
    bit_stream = {$random} % 2;
  end
endmodule
