module Symbol11(clk, Symbol11_out);//cos+sin
input clk;
output reg signed [9:0] Symbol11_out;
reg signed [9:0] temp [15:0];
  reg [3:0] counter;
  initial 
  begin
    temp[0] = 100;
    temp[1] = 131;
    temp[2] = 141;
    temp[3] = 131;
    temp[4] = 100;
    temp[5] = 54;
    temp[6] = 0;
    temp[7] = -54;
    temp[8] = -100;
    temp[9] = -131;
    temp[10] = -141;
    temp[11] = -131;
    temp[12] = -100;
    temp[13] = -54;
    temp[14] = 0;
    temp[15] = 54;
    counter = 0;
  end
  always @(posedge clk)
  begin
    Symbol11_out = temp[counter];
    counter = counter +1;
  end
endmodule