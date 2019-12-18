module QPSK(clk, clk1, Ichannel, Qchannel, out);
  input clk, clk1;
  input Ichannel, Qchannel;
  output reg [8:0] out;
  reg [7:0] I, Q;
  always @(posedge clk)
  begin
    if(Ichannel == 0 && Qchannel == 0)
      begin
        I00 i(.clk(clk), .I00_out(I));
        Q00 q(.clk(clk), .Q00_out(Q));
      end
    else if(Ichannel == 0 && Qchannel == 1)
      begin
        I01 i(.clk(clk), .I01_out(I));
        Q01 q(.clk(clk), .Q01_out(Q));
      end
    else if(Ichannel == 1 && Qchannel == 1)
      begin
        I11 i(.clk(clk), .I11_out(I));
        Q11 q(.clk(clk), .Q11_out(Q));
      end
    else
      begin
        I10 i(.clk(clk), .I10_out(I));
        Q10 q(.clk(clk), .Q10_out(Q));
      end
    out = I + Q;
  end
