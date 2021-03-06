module Filter(clk, data_in, data_out);
// a1 = 1, a2 = 0, b1 = b2 = 0.5
// y(n) = (b1*x(n)+b2*x(n-1))/a1 = 0.5*(x(n)+ x(n-1))
  input clk;
  input signed [18:0] data_in;
  output reg signed [18:0] data_out;
  reg signed [18:0] temp;
  reg counter;
  initial
  begin
    counter = 0;
    temp = 111;
  end
  always @(posedge clk)
  begin
    if(counter == 0)
    begin
      data_out = data_in >>> 1;
      counter = counter + 1;
    end 
    else
    begin
      data_out = (data_in + temp) >>> 1;
    end
    temp = data_in;
  end
endmodule