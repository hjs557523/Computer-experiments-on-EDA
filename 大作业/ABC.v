module ABC(clk,d,ctrl,q);
input clk,d,ctrl;
output q;
reg q1;
reg k2;
wire d1;
always@(posedge clk)begin
q1<=d1;
k2<=q1;
end
assign d1=d^q1;
assign q=(ctrl?k2:1'Hz);
endmodule