module SCHK(input CLK,DIN,RST, output SOUT);
  parameter  s0=40,s1=41,s2=42,s3=43,s4=44,s5=45,
             s6=46,s7=47,s8=48,s9=49,s10=50;
       reg[10:0] ST,NST;
       always @(posedge CLK or posedge RST)
         if(RST) ST<=s0;else ST<=NST;
       always @(ST or DIN) begin  
         case(ST)
           s0 : if(DIN==1'b1) NST<=s1; else NST<=s0;
           s1 : if(DIN==1'b1) NST<=s2; else NST<=s0;
           s2 : if(DIN==1'b1) NST<=s3; else NST<=s0;
           s3 : if(DIN==1'b1) NST<=s4; else NST<=s0;
           s4 : if(DIN==1'b1) NST<=s5; else NST<=s0;
           s5 : if(DIN==1'b1) NST<=s6; else NST<=s0;
           s6 : if(DIN==1'b1) NST<=s7; else NST<=s0;
           s7 : if(DIN==1'b1) NST<=s8; else NST<=s0;
           s8 : if(DIN==1'b1) NST<=s9; else NST<=s0;
           s9 : if(DIN==1'b1) NST<=s10; else NST<=s0;
           s10 : if(DIN==1'b1) NST<=s1; else NST<=s0;
           default : NST<=s0;
           endcase end
           assign SOUT=(ST==s10);
      endmodule
