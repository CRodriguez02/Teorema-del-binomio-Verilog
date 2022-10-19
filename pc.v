module pc(
input [8:0] e1,
input clk,
output reg [8:0] out
);

always@(posedge clk)
begin
	out=e1;
end
initial
	begin
		out=9'd0;
	end

endmodule 