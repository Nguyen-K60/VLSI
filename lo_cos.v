module lo_cos(clk, lo_cos_out);
  input clk;
  output reg signed [8:0] lo_cos_out;
  reg signed [8:0] cos [15:0];
  reg [3:0] counter;
  initial 
  begin 
    cos[0] = 100;
    cos[1] = 92;
    cos[2] = 71;
    cos[3] = 38;   
    cos[4] = 0;
    cos[5] = -38;
    cos[6] = -71;
    cos[7] = -92;
    cos[8] = -100;
    cos[9] = -92;
    cos[10] = -71;
    cos[11] = -38;
    cos[12] = 0;
    cos[13] = 38;
    cos[14] = 71;
    cos[15] = 92;    
    counter = 0;
  end
  always @(posedge clk)
  begin
    lo_cos_out = cos[counter];
    counter = counter +1;
  end
endmodule