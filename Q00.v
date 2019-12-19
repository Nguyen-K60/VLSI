module Q00(clk, Q00_out);//sin * cos(pi/4)
input clk;
output reg [7:0] Q00_out;
reg [7:0] temp [15:0];
  reg [3:0] counter;
  initial 
  begin
    temp[0] = 100;
    temp[1] = 127;
    temp[2] = 150;
    temp[3] = 165;
    temp[4] = 171;
    temp[5] = 165;
    temp[6] = 150;
    temp[7] = 127;
    temp[8] = 100;
    temp[9] = 73;
    temp[10] = 50;
    temp[11] = 35;
    temp[12] = 29;
    temp[13] = 35;
    temp[14] = 50;
    temp[15] = 73;
    counter = 0;
  end
  always @(posedge clk)
  begin
    Q00_out = temp[counter];
    counter = counter +1;
  end
endmodule