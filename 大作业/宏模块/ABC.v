module ABC(clk,d,ctrl,q);
input clk,d,ctrl;
output q;
reg q1,q2;
wire d1;
always@(posedge clk)begin
q1<=d1;
q2<=q1;
end
assign d1=d^q;
assign q=(ctrl?q2:1'Hz);
endmodule