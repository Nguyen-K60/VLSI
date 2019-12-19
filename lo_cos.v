module lo_cos(clk, lo_cos_out);
  input clk;
  output reg [7:0] lo_cos_out;
  reg [7:0] cos [15:0];
  reg [3:0] counter;
  initial 
  begin 
    cos[0] = 200;
    cos[1] = 192;
    cos[2] = 171;
    cos[3] = 138;   
    cos[4] = 100;
    cos[5] = 62;
    cos[6] = 29;
    cos[7] = 8;
    cos[8] = 0;
    cos[9] = 8;
    cos[10] = 29;
    cos[11] = 62;
    cos[12] = 100;
    cos[13] = 138;
    cos[14] = 171;
    cos[15] = 192;    
    counter = 0;
  end
  always @(posedge clk)
  begin
    lo_cos_out = cos[counter];
    counter = counter +1;
  end
endmodule