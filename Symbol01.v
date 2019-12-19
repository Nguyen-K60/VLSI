module Symbol01(clk, Symbol01_out);//-cos+sin
input clk;
output reg [8:0] Symbol01_out;
reg [8:0] temp [15:0];
  reg [3:0] counter;
  initial 
  begin
    temp[0] = 41;
    temp[1] = 87;
    temp[2] = 141;
    temp[3] = 195;
    temp[4] = 241;
    temp[5] = 272;
    temp[6] = 282;
    temp[7] = 272;
    temp[8] = 241;
    temp[9] = 195;
    temp[10] = 141;
    temp[11] = 87;
    temp[12] = 41;
    temp[13] = 10;
    temp[14] = 0;
    temp[15] = 10;
    counter = 0;
  end
  always @(posedge clk)
  begin
    Symbol01_out = temp[counter];
    counter = counter +1;
  end
endmodule
