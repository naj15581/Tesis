
//Test_Bench_s
`timescale 1ns/1ns
module stimulus (  );

  reg clk,reset;
  wire [7:0] q;

  chip chip1 (.q(q),.reset(reset),.clk(clk));
  
  initial 
  begin
  clk=1'b1;
  reset=1'b1;
  end
  always
  #5 clk=~clk;
  initial
  begin
  reset = 1'b1;
  #15 reset =1'b0;
  #15 reset =1'b1;
  #15 reset =1'b0;
  #2000 $finish;
  end  

endmodule

