module mult4(
input in_jump,
input [8:0] in_x, in_y,
output reg [8:0] out_z
);
always@(*)
begin 
	case (in_jump)
		1'b0:
			begin
				out_z=in_x;
			end
		1'b1:
			begin
				out_z=in_y;
			end
		endcase
	end

endmodule 