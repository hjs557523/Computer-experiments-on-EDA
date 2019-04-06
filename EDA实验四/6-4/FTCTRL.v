module FTCTRL  (CLKK, CNT_EN, RST_CNT, LOAD);
  input CLKK;
  output CNT_EN, RST_CNT, LOAD;
  wire CNT_EN, LOAD;
  reg RST_CNT, Div2CLK;
  always @(posedge CLKK)
     Div2CLK <= ~Div2CLK;
  always @(CLKK or Div2CLK)
     begin
        if (CLKK <=1'b0 & Div2CLK <=1'b0)
            RST_CNT <=1'b1;
        else
            RST_CNT <=1'b0;
     end
  assign LOAD = ~Div2CLK;
  assign CNT_EN = Div2CLK;
endmodule