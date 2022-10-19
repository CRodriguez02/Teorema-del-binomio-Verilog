module toplevel( 
input clk,
output [4:0]Direccion_1,Direccion_2,Direccion_escribir,
output [31:0]Escribir_Dato,Leer_DR1,Leer_DR2,instruccion,Entrada1,Entrada2, Resultado,Direccion_memdato,Escribir_dato, 
output [8:0] numero_de_instruccion,
output [3:0] selectora,
output ZF,Escribir,Leer
);
//SECCIÓN 1

wire [8:0] w1;
wire [31:0] w2;
wire [31:0] w3;

///////////////////////

//SECCIÓN 2
wire [31:0] w4, inst;
wire w5,w6,w7,w8,w9,w10,w11,w12,w60;
wire [2:0] w13;
wire [4:0] w14,w61,w62,w63,w64;
wire [31:0] w15,w16,w17;
wire [27:0] w18;
///////////////////////

//SECCIÓN 3

wire [27:0] w19;
wire [31:0] w20,w28,w29,w30,w32,w35,w36,w37;
wire w21,w22,w23,w24,w25,w26,w34,w38;
wire [2:0] w27;
wire [5:0] w31;
wire [3:0] w33;

///////////////////////

//SECCIÓN 4
wire [27:0] w39;
wire [31:0] w40,w41,w47,w48,w50,w51;
wire w42,w43,w44,w45,w46,w49;

///////////////////////

//SECCIÓN 5

wire w52,w55;
wire [27:0]w53;
wire [31:0]w54,w56,w57,w58,w59;

wire w70,w71,w72;
///////////////////////

///pruebas
//Br

assign Direccion_1 = inst[25:21];
assign Direccion_2 = inst[20:16];
assign Direccion_escribir = w64;
assign Escribir_Dato = w59;
assign Leer_DR1 = w16;
assign Leer_DR2 = w17;
//instruccion
assign numero_de_instruccion = w2;
assign instruccion = w6;

/////////ALU
assign Entrada1 = w28;
assign Entrada2 = w32;
assign selectora = w33;
assign Resultado = w35;
assign ZF = w34;
///////Memoria datos
assign Escribir = w43;
assign Leer = w45;
assign Direccion_memdato = w47;
assign Escribir_dato = w48;

////SECCIÓN 1/////////

pc inst11(
.e1(w58),
.clk(clk),
.out(w1)
);


memoria_instrucciones inst12(
.clk(clk),
.dir(w1),
.instruccion(w3)
);

SUM_4 inst13(
.op1({23'd0,w1}),
.SUMA(w2)
);

BUFER_IF_ID inst16(
.e1(w2), 
.e2(w3),
.clk(clk),
//////SECCIÓN 2////////
.out1(w4),
.out2(inst)
);

SHIFT2 inst21(
.e1(inst[25:0]),
.out1(w18)
);

UC inst2(
.opcode(inst[31:26]),
.en(w5),
.memreg(w12),
.enr(w7),
.enw(w8),
.branch(w9),
.jump(w10),
.en_mult2(w11),
.en_mult3(w6),
.aluc(w13)
);

BR inst1(
.AR1(inst[25:21]),
.AR2(inst[20:16]),
.AW(w64),
.clk(clk),
.enwr(w72),
.DW(w59),
.DR1(w16),
.DR2(w17)
);

sign_ext inst10(
.unextend(inst[15:0]),
.extended(w15)
);

BUFER_ID_EX inst17(
.e1(w18),
.e2(w4),
.e3(w10),
.e4(w9),
.e5(w7),
.e6(w12),
.e7(w13),
.e8(w8),
.e9(w11),
.e10(w16),
.e11(w17),
.e12(w15),
.e13(inst[5:0]),
.e14(w6),
.e15(inst[20:16]),
.e16(inst[15:11]),
.e17(w5),
.clk(clk),
///////SECCIÓN 3//////
.out1(w19),
.out2(w20),
.out3(w21),
.out4(w22),
.out5(w23),
.out6(w24),
.out7(w27),
.out8(w25),
.out9(w26),
.out10(w28),
.out11(w29),
.out12(w30),
.out13(w31),
.out14(w60),
.out15(w61),
.out16(w62),
.out17(w70)
);

mult3 inst8(
.in_uc(w60),
.in_TI(w61),
.in_TR(w62),
.out_AW(w14)
);

ALU inst3(
.e1(w28),
.e2(w32),
.sel(w33),
.zf(w34),
.res(w35)
);

UCA inst4(
.aluc(w27),
.func(w31),
.sal_alu(w33)
);

mult2 inst7(
.in_uc(w26),
.in_DR2(w29),
.in_inst(w30),
.out_e2(w32)
);

SHIFT2 inst20(
.e1(w30),
.out1(w36)
);

SUM inst14(
.op1(w20), 
.op2(w36),
.SUMA(w37)
);


BUFER_EX_MEM inst18(
.e1(w21),
.e2(w19),
.e3(w20),
.e4(w37),
.e5(w22),
.e6(w23),
.e7(w24),///memtoreg
.e8(w25),//write
.e9(w34),//zf
.e10(w35),//res alu
.e11(w29),//
.e12(w14),
.e13(w70),
.clk(clk),
///////SECCIÓN 4//////
.out1(w38),
.out2(w39),
.out3(w40),
.out4(w41),
.out5(w42),
.out6(w43),
.out7(w44),
.out8(w45),
.out9(w46),
.out10(w47),
.out11(w48),
.out12(w63),
.out13(w71)
);

mult5 inst22(
.in_and(w49),
.in_x(w40), 
.in_y(w41),
.out_z(w50)
);

mem_dat inst5(
.AR(w47), 
.enw(w45), 
.enr(w43),
.DR(w51),
.DW(w48)
);

MA inst15(
.op1(w42),
.op2(w46),
.AND(w49)
);

BUFER_MEM_WB inst19(
.e1(w38),
.e2(w39),
.e3(w50),
.e4(w44),
.e5(w51),
.e6(w47),
.e7(w63),
.e8(w71),
.clk(clk),
///////SECCIÓN 5//////
.out1(w52),
.out2(w53),
.out3(w54),
.out4(w55),
.out5(w56),
.out6(w57),
.out7(w64),
.out8(w72)
);

mult4 inst9(
.in_jump(w52),
.in_x(w54), 
.in_y(w53),
.out_z(w58)
);

mult inst6(
.in_uc(w55),
.in_DR(w56), 
.in_res(w57),
.out(w59)
);

endmodule 