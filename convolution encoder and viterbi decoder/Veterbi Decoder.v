module Top_Veterbi_Decoder (Encoded_Out,NS_Out,PS_Out,Decode_Out);
  input [21:0]Encoded_Out;
  input [21:0]NS_Out;
  input [21:0]PS_Out;
  output [10:0]Decode_Out;
  
  Main_Decode D0 (
    .Encoded_Out(Encoded_Out[1:0]), 
    .NS_Out(NS_Out[1:0]), 
    .PS_Out(PS_Out[1:0]), 
    .Decode_Out(Decode_Out[10])
    );
     
  Main_Decode D1 (
    .Encoded_Out(Encoded_Out[3:2]), 
    .NS_Out(NS_Out[3:2]), 
    .PS_Out(PS_Out[3:2]), 
    .Decode_Out(Decode_Out[9])
    );

  Main_Decode D2 (
    .Encoded_Out(Encoded_Out[5:4]), 
    .NS_Out(NS_Out[5:4]), 
    .PS_Out(PS_Out[5:4]), 
    .Decode_Out(Decode_Out[8])
    );

  Main_Decode D3 (
    .Encoded_Out(Encoded_Out[7:6]), 
    .NS_Out(NS_Out[7:6]), 
    .PS_Out(PS_Out[7:6]), 
    .Decode_Out(Decode_Out[7])
    );

  Main_Decode D4 (
    .Encoded_Out(Encoded_Out[9:8]), 
    .NS_Out(NS_Out[9:8]), 
    .PS_Out(PS_Out[9:8]), 
    .Decode_Out(Decode_Out[6])
    );

  Main_Decode D5 (
    .Encoded_Out(Encoded_Out[11:10]), 
    .NS_Out(NS_Out[11:10]), 
    .PS_Out(PS_Out[11:10]), 
    .Decode_Out(Decode_Out[5])
    );          

  Main_Decode D6 (
    .Encoded_Out(Encoded_Out[13:12]), 
    .NS_Out(NS_Out[13:12]), 
    .PS_Out(PS_Out[13:12]), 
    .Decode_Out(Decode_Out[4])
    );          
  

  Main_Decode D7 (
    .Encoded_Out(Encoded_Out[15:14]), 
    .NS_Out(NS_Out[15:14]), 
    .PS_Out(PS_Out[15:14]), 
    .Decode_Out(Decode_Out[3])
    );
    

  Main_Decode D8 (
    .Encoded_Out(Encoded_Out[17:16]), 
    .NS_Out(NS_Out[17:16]), 
    .PS_Out(PS_Out[17:16]), 
    .Decode_Out(Decode_Out[2])
    );          


  Main_Decode D9 (
    .Encoded_Out(Encoded_Out[19:18]), 
    .NS_Out(NS_Out[19:18]), 
    .PS_Out(PS_Out[19:18]), 
    .Decode_Out(Decode_Out[1])
    );          

  Main_Decode D10 (
    .Encoded_Out(Encoded_Out[21:20]), 
    .NS_Out(NS_Out[21:20]), 
    .PS_Out(PS_Out[21:20]), 
    .Decode_Out(Decode_Out[0])
    );          
  
endmodule