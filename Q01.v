module Q01(clk, Q01_out);//sin * cos(3pi/4)
input clk;
output reg [7:0] Q01_out;
reg [7:0] temp [15:0];
  reg [3:0] counter;
  initial 
  begin
    temp[0] = 100;
    temp[1] = 73;
    temp[2] = 50;
    temp[3] = 35;
    temp[4] = 29;
    temp[5] = 35;
    temp[6] = 50;
    temp[7] = 73;
    temp[8] = 100;
    temp[9] = 127;
    temp[10] = 150;
    temp[11] = 165;
    temp[12] = 171;
    temp[13] = 165;
    temp[14] = 150;
    temp[15] = 127;
    counter = 0;
  end
  always @(posedge clk)
  begin
    Q01_out = temp[counter];
    counter = counter +1;
  end
endmodule