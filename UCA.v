module UCA(
input [2:0]aluc,
input [5:0]func,
output reg[3:0]sal_alu
);
always @(*)
	begin
		case(aluc)
			3'b010://TIPO R
				begin
					case(func)
						6'b100000://suma
							begin
								sal_alu=4'b0100;
							end
						6'b100010://resta
							begin 
								sal_alu=4'b0101;
							end
						6'b011000://multiplicacion
							begin 
								sal_alu=4'b0110;
							end
						6'b011010://division
							begin 
								sal_alu=4'b0111;
							end
						6'b101010://menor que
							begin 
								sal_alu=4'b1000;
							end
						6'b100100://and
							begin 
								sal_alu=4'b0000;
							end	
						6'b100101://or
							begin 
								sal_alu=4'b0001;
							end
					endcase
				end
			3'b000: //TIPO I
					begin
						sal_alu=4'b0100;//suma
					end
			3'b001:
					begin
						sal_alu=4'b0101;//resta
					end
			3'b011:
					begin
						sal_alu=4'b0000;//and
					end
			3'b100:
					begin
						sal_alu=4'b0001;//or
					end
			3'b101:
					begin
						sal_alu=4'b1000;//slt
					end
			3'b110:
					begin
						sal_alu=4'b1001;//No Iguales
					end
		endcase
	end
endmodule 