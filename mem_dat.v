module mem_dat(
input [31:0] AR, DW,
input enw, enr,
output reg [31:0] DR
);
reg [31:0]MEM[0:127];

always@(*)
begin
	case(enw)
	1'b1:
		begin
			MEM[AR] <= DW;
		end
	endcase
	case(enr)
	1'b1:
		begin
			DR <= MEM[AR];
		end
	endcase
end

endmodule 