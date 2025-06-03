module mux2to1 (a,b,sel,y);
    input a;
    input b;
    input sel;
    output reg y;
always @(*) 
  begin
    case (sel)
        1'b0: y = a;
        1'b1: y = b;
    endcase
end
endmodule
