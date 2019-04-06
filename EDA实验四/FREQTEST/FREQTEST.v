module FREQTEST(CLK1HZ, FSIN, DOUT);
   input         CLK1HZ;
   input         FSIN;
   output [31:0] DOUT;
   wire          TSTEN1;
   wire          CLR_CNT1;
   wire          Load1;
   wire [31:0]   DTO1;
   wire [6:0]    CARRY_OUT1;
   
   FTCTRL U1(.CLKK(CLK1HZ), .CNT_EN(TSTEN1), .RST_CNT(CLR_CNT1), .LOAD(Load1));

   REG32B U2(.LK(Load1), .DIN(DTO1), .DOUT(DOUT));
 
   COUNTER32B U3(.FIN(FSIN), .CLR(CLR_CNT1), .ENABL(TSTEN1), .DOUT(DTO1));

endmodule  