module Symbol11(clk, Symbol11_out);//cos+sin
input clk;
output reg [8:0] Symbol11_out;
reg [8:0] temp [15:0];
  reg [3:0] counter;
  initial 
  begin
    temp[0] = 241;
    temp[1] = 272;
    temp[2] = 282;
    temp[3] = 272;
    temp[4] = 241;
    temp[5] = 195;
    temp[6] = 141;
    temp[7] = 87;
    temp[8] = 41;
    temp[9] = 10;
    temp[10] = 0;
    temp[11] = 10;
    temp[12] = 41;
    temp[13] = 87;
    temp[14] = 141;
    temp[15] = 195;
    counter = 0;
  end
  always @(posedge clk)
  begin
    Symbol11_out = temp[counter];
    counter = counter +1;
  end
endmodule