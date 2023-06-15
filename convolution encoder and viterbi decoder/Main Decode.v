module Main_Decode (Encoded_Out,NS_Out,PS_Out,Decode_Out);
  input [1:0]Encoded_Out;
  input [1:0]NS_Out;
  input [1:0]PS_Out;
  output reg Decode_Out;
 
  
  reg [1:0]Encoded_Out0,Encoded_Out1,Encoded_Out2,Encoded_Out3;
  reg [1:0]NS_Out0,NS_Out1,NS_Out2,NS_Out3;
  reg [1:0]PS_Out0,PS_Out1,PS_Out2,PS_Out3;
  wire Decode_Out0,Decode_Out1,Decode_Out2,Decode_Out3;
  
  
  always @ (*)
  case (PS_Out)
    2'b00: 
    begin 
      Encoded_Out0=Encoded_Out;
      Encoded_Out1=2'b00;
      Encoded_Out2=2'b00;
      Encoded_Out3=2'b00;
      NS_Out0=NS_Out;
      NS_Out1=2'b00;
      NS_Out2=2'b00;
      NS_Out3=2'b00;            
      PS_Out0=PS_Out;
      PS_Out1=2'b00;      
      PS_Out2=2'b00;      
      PS_Out3=2'b00;                        
      Decode_Out=Decode_Out0;
    end

    2'b01: 
    begin 
      Encoded_Out0=2'b00;            
      Encoded_Out1=Encoded_Out;
      Encoded_Out2=2'b00;            
      Encoded_Out3=2'b00;                        
      NS_Out0=2'b00;            
      NS_Out1=NS_Out;
      NS_Out2=2'b00;            
      NS_Out3=2'b00;            
      PS_Out0=2'b00;      
      PS_Out1=PS_Out;
      PS_Out2=2'b00;      
      PS_Out3=2'b00;       
      Decode_Out=Decode_Out1;
    end    

    2'b10: 
    begin 
      Encoded_Out0=2'b00;                  
      Encoded_Out1=2'b00;                  
      Encoded_Out2=Encoded_Out;
      Encoded_Out3=2'b00;            
      NS_Out0=2'b00;
      NS_Out1=2'b00;                                
      NS_Out2=NS_Out;
      NS_Out3=2'b00;                                      

      PS_Out0=2'b00;
      PS_Out1=2'b00;                  
      PS_Out2=PS_Out;
      PS_Out3=2'b00;                  
      Decode_Out=Decode_Out2;
    end    

    2'b11: 
    begin 
      Encoded_Out0=2'b00;            
      Encoded_Out1=2'b00;            
      Encoded_Out2=2'b00;      
      Encoded_Out3=Encoded_Out;
      NS_Out0=2'b00;                  
      NS_Out1=2'b00;                  
      NS_Out2=2'b00;                  
      NS_Out3=NS_Out;
      PS_Out0=2'b00;
      PS_Out1=2'b00;                  
      PS_Out2=2'b00;                  
      PS_Out3=PS_Out;
      Decode_Out=Decode_Out3;
    end        
  endcase
   
  Decode_State0 State0 (
    .Encoded_Out(Encoded_Out0), 
    .NS_Out(NS_Out0), 
    .PS_Out(PS_Out0), 
    .Decode_Out(Decode_Out0)
    );

  Decode_State1 State1 (
    .Encoded_Out(Encoded_Out1), 
    .NS_Out(NS_Out1), 
    .PS_Out(PS_Out1), 
    .Decode_Out(Decode_Out1)
    );    

  Decode_State2 State2 (
    .Encoded_Out(Encoded_Out2), 
    .NS_Out(NS_Out2), 
    .PS_Out(PS_Out2), 
    .Decode_Out(Decode_Out2)
    );    

  Decode_State3 State3 (
    .Encoded_Out(Encoded_Out3), 
    .NS_Out(NS_Out3), 
    .PS_Out(PS_Out3), 
    .Decode_Out(Decode_Out3)
    );    

endmodule