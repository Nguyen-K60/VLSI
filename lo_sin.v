module lo_sin(clk, lo_sin_out);
  input clk;
  output reg [7:0] lo_sin_out;
  reg [7:0] sin [15:0];
  reg [3:0] counter;
  initial 
  begin
    sin[0] = 100;
    sin[1] = 138;
    sin[2] = 171;
    sin[3] = 192;
    sin[4] = 200;
    sin[5] = 192;
    sin[6] = 171;
    sin[7] = 138;
    sin[8] = 100;
    sin[9] = 62;
    sin[10] = 29;
    sin[11] = 8;
    sin[12] = 0;
    sin[13] = 8;
    sin[14] = 29;
    sin[15] = 62;
    counter = 0;
  end
  always @(posedge clk)
  begin
    lo_sin_out = sin[counter];
    counter = counter +1;
  end
endmodule