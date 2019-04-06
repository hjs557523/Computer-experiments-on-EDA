module h_adder(x,y,so,co);
  input x,y;
  output co,so;
 assign so=x^y;
  assign co=x&y;
  endmodule
