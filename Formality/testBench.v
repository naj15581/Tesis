
//Test_Bench
module stimulus;
reg clk;
reg reset;
wire [7:0] q;

chip chip1(q, reset, clk);


initial
clk = 1'b0;
always
#1 clk=~clk;

initial
begin

reset = 1'b1;
#15 reset =1'b0;
#15 reset =1'b1;
#15 reset =1'b0;
#2000 $finish;
end




endmodule


