module sign_ext(
input  [15:0] unextend,
output reg [31:0] extended
);
always@(*)
	begin
		extended = {{16{unextend[15]}}, unextend};
	end
endmodule 