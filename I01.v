module I01(clk, I01_out);//cos * sin(3pi/4)
input clk;
output reg [7:0] I01_out;
reg [7:0] temp [15:0];
  reg [3:0] counter;
  initial 
  begin
    temp[0] = 171;
    temp[1] = 165;
    temp[2] = 150;
    temp[3] = 127;
    temp[4] = 100;
    temp[5] = 73;
    temp[6] = 50;
    temp[7] = 35;
    temp[8] = 29;
    temp[9] = 35;
    temp[10] = 50;
    temp[11] = 73;
    temp[12] = 100;
    temp[13] = 127;
    temp[14] = 150;
    temp[15] = 165;
    counter = 0;
  end
  always @(posedge clk)
  begin
    I01_out = temp[counter];
    counter = counter +1;
  end
endmodule