module lo_sin(clk, lo_sin_out);
  input clk;
  output reg signed [8:0] lo_sin_out;
  reg signed [8:0] sin [15:0];
  reg [3:0] counter;
  initial 
  begin
    sin[0] = 0;
    sin[1] = 38;
    sin[2] = 71;
    sin[3] = 92;
    sin[4] = 100;
    sin[5] = 92;
    sin[6] = 71;
    sin[7] = 38;
    sin[8] = 0;
    sin[9] = -38;
    sin[10] = -71;
    sin[11] = -92;
    sin[12] = -100;
    sin[13] = -92;
    sin[14] = -71;
    sin[15] = -38;
    counter = 0;
  end
  always @(posedge clk)
  begin
    lo_sin_out = sin[counter];
    counter = counter + 1;
  end
endmodule