module fourbit_test();
  reg [3:0]a,b;
  reg c0;
  wire [3:0]s;
  wire c4;
  four_fa uut(a,b,c0,s,c4);
  initial
    begin
      a=4'b1011;b=4'b0011;c0=1'b0;#10;
      a=4'b1011;b=4'b0111;c0=1'b1;#10;
      a=4'b1111;b=4'b1111;c0=1'b1;#10;
    end
  initial
    #50 $finish;
endmodule
