module dff(clk,d,q);
  input clk,d; 
  output reg q;
  always @(posedge clk) 
    begin
    q <= d;
  end
endmodule


module mux2to1_dff(clk,a,b,sel,q);
  input clk;
  input a;
  input b;
  input sel;
  output q;
  wire d;
  assign d = (~sel & a) | (sel & b);
  dff ff(clk,d,q);
endmodule
