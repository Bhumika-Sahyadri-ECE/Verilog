module mux2to1_dff_tb();
  reg clk;
  reg a, b, sel;
  wire q;
  mux2to1_dff uut(clk,a,b,sel,q);
  initial clk = 0;
  always #5 clk = ~clk;
  initial
    begin
    $dumpfile("mux2to1_dff.vcd");
    $dumpvars(0, mux2to1_dff_tb);
    a = 0; b = 0; sel = 0;
    #10 a = 1; b = 0; sel = 0;  
    #10 a = 0; b = 1; sel = 1;  
    #10 a = 1; b = 1; sel = 0;  
    #10 a = 0; b = 0; sel = 1;  
    #20 $finish;
  end
endmodule
