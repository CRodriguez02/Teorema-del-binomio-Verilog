module BUFER_MEM_WB(
input  [31:0] e1,e2,e3,e4,e5,e6,e7,e8,
input clk,
output reg[31:0] out1,out2,out3,out4,out5,out6,out7,out8
);

always@(posedge clk)
begin
	out1<=e1;
	out2<=e2;
	out3<=e3;
	out4<=e4;
	out5<=e5;
	out6<=e6;
	out7<=e7;
	out8<=e8;
end
endmodule 