module GenerateInput(clk1, Ichannel, Qchannel);
  input clk1;
  output reg [1:0] Ichannel;  
  output reg [1:0] Qchannel; 
  reg [1:0] counter;
  initial
  begin
    counter = 0;
  end
  always @(posedge clk1 or negedge clk1)
  begin
    if(counter == 0)
    begin
      Ichannel = {$random} % 2;
    end
    else
    begin
      Qchannel = {$random} % 2;
    end
    counter = counter + 1;
  end
endmodule
