module ALU(
input [31:0] e1, e2,
input [3:0] sel,
output reg zf,
output reg [31:0] res
);
always @(*)
	begin
		case (sel) 
			4'b0000:
				begin
					res= e1&e2;
				end
			4'b0001:
				begin
					res= e1|e2;
				end
			4'b0010:
				begin
					res= e1^e2;
				end
			4'b0011:
				begin
					res= ~(e1&e2);
				end
			4'b0100:
				begin
					res= e1+e2;
				end
			4'b0101:
				begin
					res= e1-e2;
				end
			4'b0110:
				begin
					res= e1*e2;
				end
			4'b0111:
				begin
					res= e1/e2;
				end
			4'b1000:
				begin
					 res= e1<e2;
				end
			4'b1001:
				begin
					 res= e1==e2;
				end
		endcase
		case (res)
			32'b0:
				begin
					zf=1;
				end
		default:
			zf=0;
		endcase
	end

endmodule 