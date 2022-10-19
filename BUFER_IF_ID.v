module BUFER_IF_ID(
input  [31:0] e1, e2,
input clk,
output reg[31:0] out1,out2
);

always@(posedge clk)
begin
	out1<=e1;
	out2<=e2;
end
endmodule 