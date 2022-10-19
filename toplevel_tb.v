`timescale 1ns/1ps
module toplevel_tb();
reg clk_tb;

toplevel duv( 
.clk(clk_tb)
);

initial clk_tb =1'b0;
always #5 clk_tb =~clk_tb;


initial
begin
#1350;
$stop;
#400;
$stop;
end
endmodule 