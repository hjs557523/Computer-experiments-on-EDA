module ERZP (CLK, KIN,KOUT);
  input CLK, KIN;
  output KOUT; reg KOUT;
  reg[3:0] KH,KL;
  always @(posedge CLK) if(!KIN) KL<=KL+1;
     else  KL<=4'b0000;
  always @(posedge CLK) if(KIN) KH<=KH+1;
     else KH<=4'b0000;
  always @(posedge CLK)  begin
     if(KH>4'b1100) KOUT<=1'B1;
    else if(KL>4'b0111) KOUT<=1'B0;
  end
endmodule