module BR(
	input [4:0]AR1,
	input [4:0]AR2,
	input [4:0]AW,
	input enwr,clk,
	input [31:0]DW,
	output reg [31:0]DR1, DR2
);
reg [31:0]MEM[0:31];

always@(negedge  clk)
begin
	if(enwr)
		begin
			MEM[AW] <= DW;
		end
	DR1 <= MEM[AR1];
	DR2 <= MEM[AR2];
	end
initial
	begin
		MEM[0]=32'd0;
		MEM[1]=32'd0;
		MEM[2]=32'd0;
		MEM[3]=32'd0;
		MEM[4]=32'd0;
	end

endmodule 