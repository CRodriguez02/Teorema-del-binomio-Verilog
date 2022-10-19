module UC(
input [5:0] opcode,
output reg en,
output reg memreg,
output reg enw,
output reg enr,
output reg en_mult2,
output reg en_mult3,
output reg jump,
output reg branch,
output reg [2:0]aluc

);
always @(*)
	begin
	case (opcode)
	//tipo R
			6'b000000:
				begin
					en=1'b1;
					memreg=1'b1;
					enw=1'b0;
					enr=1'b0;
					aluc=3'b010;
					en_mult2=1'b0;
					en_mult3=1'b1;
					branch=1'b0;
					jump=1'b0;
				end
	//tipo I
			6'b001000: //Addi
				begin
					en=1'b1;
					memreg=1'b1;
					enw=1'b0;
					enr=1'b0;
					aluc=3'b000;
					en_mult2=1'b1;
					en_mult3=1'b0;
					jump=0;
					branch=0;
				end
			6'b001100: //Andi
				begin
					en=1'b1;
					memreg=1'b1;
					enw=1'b0;
					enr=1'b0;
					aluc=3'b011;
					en_mult2=1'b1;
					en_mult3=1'b0;
					jump=0;
					branch=0;
				end
			6'b001101: //Ori
				begin
					en=1'b1;
					memreg=1'b1;
					enw=1'b0;
					enr=1'b0;
					aluc=3'b100;
					en_mult2=1'b1;
					en_mult3=1'b0;
					jump=0;
					branch=0;
				end
			6'b001010: //SLTI
				begin
					en=1'b1;
					memreg=1'b1;
					enw=1'b0;
					enr=1'b0;
					aluc=3'b101;
					en_mult2=1'b1;
					en_mult3=1'b0;
					jump=0;
					branch=0;
				end
			6'b101011://SW
				begin
					en=1'b0;
					//memreg=1'b1;
					enw=1'b1;
					enr=1'b0;
					aluc=3'b000;
					en_mult2=1'b1;
					//en_mult3=1'b0;
					jump=0;
					branch=0;
				end
			6'b100011://lw
				begin
					en=1'b1;
					memreg=1'b0;
					enw=1'b0;
					enr=1'b1;
					aluc=3'b000;
					en_mult2=1'b1;
					en_mult3=1'b0;
					jump=0;
					branch=0;
				end
			6'b000100://BEQ
				begin
					en=1'b0;
					memreg=1'b1;
					enw=1'b0;
					enr=1'b0;
					aluc=3'b001;
					en_mult2=1'b0;
					en_mult3=1'b0;
					jump=1'b0;
					branch=1'b1;
				end
			6'b000101://BNE
				begin
					en=1'b0;
					memreg=1'b1;
					enw=1'b0;
					enr=1'b0;
					aluc=3'b110;
					en_mult2=1'b0;
					en_mult3=1'b0;
					jump=1'b0;
					branch=1'b1;
				end
			6'b000010://J
				begin
					jump=1'b1;
				end
		default:
			begin
				en=0;
			end
		endcase
	end

endmodule 
