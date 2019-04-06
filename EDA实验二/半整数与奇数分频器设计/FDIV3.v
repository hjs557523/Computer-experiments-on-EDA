module FDIV3(input CLK,output K_OR,K1,K2);
 reg[2:0] C1,C2; reg M1,M2;
always@(posedge CLK) begin
 if(C1==4)  C1<=0;  else C1<=C1+1;
 if(C1==1)  M1<=~M1; else if(C1==3) M1=~M1; end
always@(negedge CLK)  begin
if(C2==4) C2<=0; else C2<=C2+1;
if(C2==1) M2<=~M2; else if(C2==3) M2=~M2; end
assign K1=M1; assign K2=M2;
assign K_OR=M1|M2;
endmodule