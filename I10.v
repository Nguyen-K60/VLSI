module I10(clk, I10_out);//cos * sin(7pi/4)
input clk;
output reg [7:0] I10_out;
reg [7:0] temp [15:0];
  reg [3:0] counter;
  initial 
  begin
    temp[0] = 29;
    temp[1] = 35;
    temp[2] = 50;
    temp[3] = 73;
    temp[4] = 100;
    temp[5] = 127;
    temp[6] = 150;
    temp[7] = 165;
    temp[8] = 171;
    temp[9] = 165;
    temp[10] = 150;
    temp[11] = 127;
    temp[12] = 100;
    temp[13] = 73;
    temp[14] = 50;
    temp[15] = 35;
    counter = 0;
  end
  always @(posedge clk)
  begin
    I10_out = temp[counter];
    counter = counter +1;
  end
endmodule