module zuoyi(CLK, LOAD,DN,QB);
input CLK,LOAD;
input [9:0]DN;
output QB;
reg[9:0] REG10;
always@(posedge CLK)
if(LOAD)
REG10<=DN;
else REG10[9:1]<=REG10[8:0];
assign QB=REG10[9];
endmodule

