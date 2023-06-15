module New_Convalotion_Encoder(Clk,X,PS,NS,Y);
  input X;
  input Clk;
  output [1:0]PS;
  output [1:0]NS;
  output [1:0]Y;
  
  SD_DFF dff_1 (Clk,X,PS[1]);
  SD_DFF dff_2 (Clk,PS[1],PS[0]);
  
  assign Y[0]=X^PS[1]^PS[0];
  assign Y[1]=X^PS[0];
  
  assign NS={X,PS[1]};
  
endmodule