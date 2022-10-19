transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/CUCEI/Seminario\ de\ Arquietectura\ de\ Computadoras/Proyecto\ Final/Proyecto {E:/CUCEI/Seminario de Arquietectura de Computadoras/Proyecto Final/Proyecto/UCA.v}
vlog -vlog01compat -work work +incdir+E:/CUCEI/Seminario\ de\ Arquietectura\ de\ Computadoras/Proyecto\ Final/Proyecto {E:/CUCEI/Seminario de Arquietectura de Computadoras/Proyecto Final/Proyecto/UC.v}
vlog -vlog01compat -work work +incdir+E:/CUCEI/Seminario\ de\ Arquietectura\ de\ Computadoras/Proyecto\ Final/Proyecto {E:/CUCEI/Seminario de Arquietectura de Computadoras/Proyecto Final/Proyecto/SUM_4.v}
vlog -vlog01compat -work work +incdir+E:/CUCEI/Seminario\ de\ Arquietectura\ de\ Computadoras/Proyecto\ Final/Proyecto {E:/CUCEI/Seminario de Arquietectura de Computadoras/Proyecto Final/Proyecto/SUM.v}
vlog -vlog01compat -work work +incdir+E:/CUCEI/Seminario\ de\ Arquietectura\ de\ Computadoras/Proyecto\ Final/Proyecto {E:/CUCEI/Seminario de Arquietectura de Computadoras/Proyecto Final/Proyecto/sign_ext.v}
vlog -vlog01compat -work work +incdir+E:/CUCEI/Seminario\ de\ Arquietectura\ de\ Computadoras/Proyecto\ Final/Proyecto {E:/CUCEI/Seminario de Arquietectura de Computadoras/Proyecto Final/Proyecto/mult4.v}
vlog -vlog01compat -work work +incdir+E:/CUCEI/Seminario\ de\ Arquietectura\ de\ Computadoras/Proyecto\ Final/Proyecto {E:/CUCEI/Seminario de Arquietectura de Computadoras/Proyecto Final/Proyecto/mult3.v}
vlog -vlog01compat -work work +incdir+E:/CUCEI/Seminario\ de\ Arquietectura\ de\ Computadoras/Proyecto\ Final/Proyecto {E:/CUCEI/Seminario de Arquietectura de Computadoras/Proyecto Final/Proyecto/mult2.v}
vlog -vlog01compat -work work +incdir+E:/CUCEI/Seminario\ de\ Arquietectura\ de\ Computadoras/Proyecto\ Final/Proyecto {E:/CUCEI/Seminario de Arquietectura de Computadoras/Proyecto Final/Proyecto/mult.v}
vlog -vlog01compat -work work +incdir+E:/CUCEI/Seminario\ de\ Arquietectura\ de\ Computadoras/Proyecto\ Final/Proyecto {E:/CUCEI/Seminario de Arquietectura de Computadoras/Proyecto Final/Proyecto/mem_dat.v}
vlog -vlog01compat -work work +incdir+E:/CUCEI/Seminario\ de\ Arquietectura\ de\ Computadoras/Proyecto\ Final/Proyecto {E:/CUCEI/Seminario de Arquietectura de Computadoras/Proyecto Final/Proyecto/MA.v}
vlog -vlog01compat -work work +incdir+E:/CUCEI/Seminario\ de\ Arquietectura\ de\ Computadoras/Proyecto\ Final/Proyecto {E:/CUCEI/Seminario de Arquietectura de Computadoras/Proyecto Final/Proyecto/BUFER_MEM_WB.v}
vlog -vlog01compat -work work +incdir+E:/CUCEI/Seminario\ de\ Arquietectura\ de\ Computadoras/Proyecto\ Final/Proyecto {E:/CUCEI/Seminario de Arquietectura de Computadoras/Proyecto Final/Proyecto/BUFER_IF_ID.v}
vlog -vlog01compat -work work +incdir+E:/CUCEI/Seminario\ de\ Arquietectura\ de\ Computadoras/Proyecto\ Final/Proyecto {E:/CUCEI/Seminario de Arquietectura de Computadoras/Proyecto Final/Proyecto/BUFER_ID_EX.v}
vlog -vlog01compat -work work +incdir+E:/CUCEI/Seminario\ de\ Arquietectura\ de\ Computadoras/Proyecto\ Final/Proyecto {E:/CUCEI/Seminario de Arquietectura de Computadoras/Proyecto Final/Proyecto/BUFER_EX_MEM.v}
vlog -vlog01compat -work work +incdir+E:/CUCEI/Seminario\ de\ Arquietectura\ de\ Computadoras/Proyecto\ Final/Proyecto {E:/CUCEI/Seminario de Arquietectura de Computadoras/Proyecto Final/Proyecto/BR.v}
vlog -vlog01compat -work work +incdir+E:/CUCEI/Seminario\ de\ Arquietectura\ de\ Computadoras/Proyecto\ Final/Proyecto {E:/CUCEI/Seminario de Arquietectura de Computadoras/Proyecto Final/Proyecto/ALU.v}
vlog -vlog01compat -work work +incdir+E:/CUCEI/Seminario\ de\ Arquietectura\ de\ Computadoras/Proyecto\ Final/Proyecto {E:/CUCEI/Seminario de Arquietectura de Computadoras/Proyecto Final/Proyecto/SHIFT2.v}
vlog -vlog01compat -work work +incdir+E:/CUCEI/Seminario\ de\ Arquietectura\ de\ Computadoras/Proyecto\ Final/Proyecto {E:/CUCEI/Seminario de Arquietectura de Computadoras/Proyecto Final/Proyecto/toplevel.v}
vlog -vlog01compat -work work +incdir+E:/CUCEI/Seminario\ de\ Arquietectura\ de\ Computadoras/Proyecto\ Final/Proyecto {E:/CUCEI/Seminario de Arquietectura de Computadoras/Proyecto Final/Proyecto/pc.v}
vlog -vlog01compat -work work +incdir+E:/CUCEI/Seminario\ de\ Arquietectura\ de\ Computadoras/Proyecto\ Final/Proyecto {E:/CUCEI/Seminario de Arquietectura de Computadoras/Proyecto Final/Proyecto/mult5.v}
vlog -vlog01compat -work work +incdir+E:/CUCEI/Seminario\ de\ Arquietectura\ de\ Computadoras/Proyecto\ Final/Proyecto {E:/CUCEI/Seminario de Arquietectura de Computadoras/Proyecto Final/Proyecto/memoria_instrucciones.v}

vlog -vlog01compat -work work +incdir+E:/CUCEI/Seminario\ de\ Arquietectura\ de\ Computadoras/Proyecto\ Final/Proyecto {E:/CUCEI/Seminario de Arquietectura de Computadoras/Proyecto Final/Proyecto/toplevel_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L maxv_ver -L rtl_work -L work -voptargs="+acc"  toplevel_tb

add wave *
view structure
view signals
run -all
