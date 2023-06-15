module Top_Module_Convalutional_Veterbi (Clk,Primary_In,Decode_Out);
  input Clk;
  input [0:10]Primary_In;
  output [10:0]Decode_Out;
  wire [21:0]Encoded_Out,NS_Out,PS_Out;


Top_Convalutional_Encoder Encoder (
    .Primary_In(Primary_In), 
    .Clk(Clk), 
    .Encoded_Out(Encoded_Out), 
    .NS_Out(NS_Out), 
    .PS_Out(PS_Out)
    );

Top_Veterbi_Decoder Decoder (
    .Encoded_Out(Encoded_Out), 
    .NS_Out(NS_Out), 
    .PS_Out(PS_Out), 
    .Decode_Out(Decode_Out)
    );


endmodule