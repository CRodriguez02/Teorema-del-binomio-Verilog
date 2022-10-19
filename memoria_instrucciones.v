module memoria_instrucciones(
input clk,
input [8:0]dir,
output reg [31:0] instruccion
);

reg [7:0] mem [0:511];

always@(*)
begin
	instruccion<={mem[dir],mem[dir+1],mem[dir+2],mem[dir+3]};
end 
initial
	begin
		$readmemb("Instrucciones.mif",mem);
	end

endmodule 	