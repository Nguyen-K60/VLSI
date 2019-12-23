module Symbol01(clk, Symbol01_out);//-cos+sin
input clk;
output reg signed [9:0] Symbol01_out;
reg signed [9:0] temp [15:0];
  reg [3:0] counter;
  initial 
  begin
    temp[0] = -100;
    temp[1] = -54;
    temp[2] = 0;
    temp[3] = 54;
    temp[4] = 100;
    temp[5] = 131;
    temp[6] = 141;
    temp[7] = 131;
    temp[8] = 100;
    temp[9] = 54;
    temp[10] = 0;
    temp[11] = -54;
    temp[12] = -100;
    temp[13] = -131;
    temp[14] = -141;
    temp[15] = -131;
    counter = 0;
  end
  always @(posedge clk)
  begin
    Symbol01_out = temp[counter];
    counter = counter +1;
  end
endmodule
