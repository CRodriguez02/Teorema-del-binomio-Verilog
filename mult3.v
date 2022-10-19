module mult3(
input in_uc,
input [4:0] in_TI, in_TR,
output reg [4:0] out_AW
);
always@(*)
begin 
	case (in_uc)
		1'b1:
			begin
				out_AW=in_TR;
			end
		1'b0:
			begin
				out_AW=in_TI;
			end
		endcase
	end

endmodule 