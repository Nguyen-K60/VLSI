module GetOriginIAndQ(clk, clk1, I_filtered, Q_filtered, I_origin, Q_origin);
  input clk, clk1;
  input signed [18:0] I_filtered, Q_filtered;
  output reg I_origin, Q_origin;
  reg signed [31:0] tempI, tempQ;
  initial 
  begin
    tempI = 0;
    tempQ = 0;
  end
  always @(posedge clk)
  begin
    tempI = tempI + I_filtered;
    tempQ = tempQ + Q_filtered;
  end
  always @(posedge clk1)
  begin
    begin
      if((tempI) > 0)
      begin
        I_origin = 1;
      end
      else
      begin
        I_origin = 0;
      end
      tempI = 0;
      if((tempQ) > 0)
      begin
        Q_origin = 1;
      end
      else
      begin
        Q_origin = 0;
      end
      tempQ = 0;
    end
  end
endmodule
