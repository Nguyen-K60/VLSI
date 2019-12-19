module Symbol10(clk, Symbol10_out);//cos-sin
input clk;
output reg [8:0] Symbol10_out;
reg [8:0] temp [15:0];
  reg [3:0] counter;
  initial 
  begin
    temp[0] = 241;
    temp[1] = 195;
    temp[2] = 141;
    temp[3] = 87;
    temp[4] = 41;
    temp[5] = 10;
    temp[6] = 0;
    temp[7] = 10;
    temp[8] = 41;
    temp[9] = 87;
    temp[10] = 141;
    temp[11] = 195;
    temp[12] = 241;
    temp[13] = 272;
    temp[14] = 282;
    temp[15] = 272;
    counter = 0;
  end
  always @(posedge clk)
  begin
    Symbol10_out = temp[counter];
    counter = counter +1;
  end
endmodule
