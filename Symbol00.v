module Symbol00(clk, Symbol00_out);//-cos-sin
input clk;
output reg [8:0] Symbol00_out;
reg [8:0] temp [15:0];
  reg [3:0] counter;
  initial 
  begin
    temp[0] = 41;
    temp[1] = 10;
    temp[2] = 0;
    temp[3] = 10;
    temp[4] = 41;
    temp[5] = 87;
    temp[6] = 141;
    temp[7] = 195;
    temp[8] = 241;
    temp[9] = 272;
    temp[10] = 282;
    temp[11] = 272;
    temp[12] = 241;
    temp[13] = 195;
    temp[14] = 141;
    temp[15] = 87;
    counter = 0;
  end
  always @(posedge clk)
  begin
    Symbol00_out = temp[counter];
    counter = counter +1;
  end
endmodule