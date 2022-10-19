module mult2(
input in_uc,
input [31:0] in_DR2, in_inst,
output reg [31:0] out_e2
);
always@(*)
begin 
	case (in_uc)
		1'b1:
			begin
				out_e2=in_inst;
			end
		1'b0:
			begin
				out_e2=in_DR2;
			end
		endcase
	end

endmodule 