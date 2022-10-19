module SHIFT2(
input [31:0] e1,
output reg [31:0] out1
);
always@(*)
begin
out1 = e1 << 2;
end
endmodule  