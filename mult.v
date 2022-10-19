module mult(
input in_uc,
input [31:0] in_DR, in_res,
output reg [31:0] out
);
always@(*)
begin 
	case (in_uc)
		1'b1:
			begin
				out=in_res;
			end
		1'b0:
			begin
				out=in_DR;
			end
		endcase
	end

endmodule 