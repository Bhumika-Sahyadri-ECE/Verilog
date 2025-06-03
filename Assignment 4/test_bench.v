module up_down_test();
  reg clk,rst,m;
  wire [3:0]count;
  up_down uut(clk,rst,m,count);
  initial
    begin
      clk=0; rst=0; 
      #25; rst=1;
    end
  initial
    begin
     m=0; rst=0;
      #150 m=0; rst=1;
      #150 m=1; rst=0;
      #150 m=1;rst=1;
    end
  always #5 clk=~clk;
  initial
    #1400 $finish;
endmodule
      
