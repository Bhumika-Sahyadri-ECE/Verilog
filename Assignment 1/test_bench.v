module mux4to1_tb();
reg  [3:0] a;
reg  [1:0] sel;
wire y;
  mux4to1 uut (a,sel,y);
initial 
  begin
    a = 4'b1010; sel = 2'b00; #10;
    a = 4'b1010; sel = 2'b01; #10;
    a = 4'b1010; sel = 2'b10; #10;
    a = 4'b1010; sel = 2'b11; #10;
    a = 4'b1101; sel = 2'b00; #10;
    a = 4'b1101; sel = 2'b01; #10;
    a = 4'b1101; sel = 2'b10; #10;
    a = 4'b1101; sel = 2'b11; #10;
    $finish;
end
endmodule

