module COUNTER32B (FIN, ENABL, CLR, DOUT);
   input         FIN;
   input         CLR;
   input         ENABL;
   output [31:0] DOUT;
   reg [31:0]    CQI;
   always @(posedge FIN or posedge CLR )
      if (CLR == 1'b1)
         CQI <= {32{1'b0}};
      else
      begin
         if (ENABL == 1'b1)
            CQI <= CQI + 1;
      end
   assign DOUT = CQI;
endmodule

