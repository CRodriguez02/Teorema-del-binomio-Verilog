module BUFER_ID_EX(
input  [31:0] e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,
input clk,
output reg[31:0] out1,out2,out3,out4,out5,out6,out7,out8,out9,out10,out11,out12,out13,out14,out15,out16,out17
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
	out9<=e9;
	out10<=e10;
	out11<=e11;
	out12<=e12;
	out13<=e13;
	out14<=e14;
	out15<=e15;
	out16<=e16;
	out17<=e17;
end
endmodule 
