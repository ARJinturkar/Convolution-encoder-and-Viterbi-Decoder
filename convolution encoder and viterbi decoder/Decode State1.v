module Decode_State1 (Encoded_Out,NS_Out,PS_Out,Decode_Out);
  input [1:0]Encoded_Out;
  input [1:0]NS_Out;
  input [1:0]PS_Out;
  output Decode_Out;
  reg [1:0]IP0,IP1;
  always @ (Encoded_Out,NS_Out,PS_Out)
  
  if (PS_Out==2'b01)
    begin
    IP0=Encoded_Out^2'b11;
    IP1=Encoded_Out^2'b00;
    end
  else
    begin
    IP0=2'b00;
    IP1=2'b00;
    end
    
  assign Decode_Out=IP0>IP1?1'b1:1'b0;
  
endmodule