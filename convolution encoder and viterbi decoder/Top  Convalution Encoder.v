module Top_Convalutional_Encoder (Primary_In,Clk,Encoded_Out,NS_Out,PS_Out);
  input [0:10]Primary_In;
  input Clk;
  output [21:0]Encoded_Out,NS_Out,PS_Out;
  reg [0:0]Regi[10:0];  
  wire [1:0]Y,PS,NS;
  reg [1:0]Yi[11:1];  
  reg [1:0]PSi[11:1];    
  reg [1:0]NSi[11:1];      
  reg X;
  
  
  
  assign  Encoded_Out[1:0]=Yi[1];
  assign  Encoded_Out[3:2]=Yi[2];
  assign  Encoded_Out[5:4]=Yi[3];
  assign  Encoded_Out[7:6]=Yi[4];
  assign  Encoded_Out[9:8]=Yi[5];
  assign  Encoded_Out[11:10]=Yi[6];
  assign  Encoded_Out[13:12]=Yi[7];
  assign  Encoded_Out[15:14]=Yi[8];
  assign  Encoded_Out[17:16]=Yi[9];
  assign  Encoded_Out[19:18]=Yi[10];
  assign  Encoded_Out[21:20]=Yi[11];

  assign  NS_Out[1:0]=NSi[1];
  assign  NS_Out[3:2]=NSi[2];
  assign  NS_Out[5:4]=NSi[3];
  assign  NS_Out[7:6]=NSi[4];
  assign  NS_Out[9:8]=NSi[5];
  assign  NS_Out[11:10]=NSi[6];
  assign  NS_Out[13:12]=NSi[7];
  assign  NS_Out[15:14]=NSi[8];
  assign  NS_Out[17:16]=NSi[9];
  assign  NS_Out[19:18]=NSi[10];
  assign  NS_Out[21:20]=NSi[11];

  assign  PS_Out[1:0]=PSi[1];
  assign  PS_Out[3:2]=PSi[2];
  assign  PS_Out[5:4]=PSi[3];
  assign  PS_Out[7:6]=PSi[4];
  assign  PS_Out[9:8]=PSi[5];
  assign  PS_Out[11:10]=PSi[6];
  assign  PS_Out[13:12]=PSi[7];
  assign  PS_Out[15:14]=PSi[8];
  assign  PS_Out[17:16]=PSi[9];
  assign  PS_Out[19:18]=PSi[10];
  assign  PS_Out[21:20]=PSi[11];

  

   integer i,j;
    initial
    begin
    j=0;
    end
  
   always @(posedge Clk)
   begin
     Regi[i] = 0;
    for(i=0; i<12; i=i+1)
      Regi[i]=Primary_In[i];
    end
      

   

   always @(posedge Clk)
   begin
     X=Regi[j];       
     j=j+1;
   end      

  New_Convalotion_Encoder Encoder (
    .Clk(Clk),
    .X(X),
    .PS(PS),
    .NS(NS),
    .Y(Y)
    );  

 always @(posedge Clk)
 begin
 if (j==1)
   Yi[0]=Y;
 if (j==2)
    Yi[1]=Y;        
  if (j==3)
    Yi[2]=Y;        
  if (j==4)
    Yi[3]=Y;            
  if (j==5)
    Yi[4]=Y;            
  if (j==6)
    Yi[5]=Y;            
  if (j==7)
    Yi[6]=Y;            
  if (j==8)
    Yi[7]=Y;            
  if (j==9)
    Yi[8]=Y;            
  if (j==10)
    Yi[9]=Y;
  if (j==11)
    Yi[10]=Y;
  if (j==12)
    Yi[11]=Y;                    
    
  end

////////////////////////////PS Data///////////////////////

always @(posedge Clk)
 begin
 if (j==1)
   PSi[0]=PS;
 if (j==2)
    PSi[1]=PS;        
  if (j==3)
    PSi[2]=PS;        
  if (j==4)
    PSi[3]=PS;            
  if (j==5)
    PSi[4]=PS;            
  if (j==6)
    PSi[5]=PS;            
  if (j==7)
    PSi[6]=PS;            
  if (j==8)
    PSi[7]=PS;            
  if (j==9)
    PSi[8]=PS;            
  if (j==10)
    PSi[9]=PS;
  if (j==11)
    PSi[10]=PS;
  if (j==12)
    PSi[11]=PS;                    
    
  end
  
  ///////////////////////////////////Next State Values/////////////////////////////////////
  
 always @(posedge Clk)
 begin
 if (j==1)
   NSi[0]=NS;
 if (j==2)
    NSi[1]=NS;        
  if (j==3)
    NSi[2]=NS;        
  if (j==4)
    NSi[3]=NS;            
  if (j==5)
    NSi[4]=NS;            
  if (j==6)
    NSi[5]=NS;            
  if (j==7)
    NSi[6]=NS;            
  if (j==8)
    NSi[7]=NS;            
  if (j==9)
    NSi[8]=NS;            
  if (j==10)
    NSi[9]=NS;
  if (j==11)
    NSi[10]=NS;
  if (j==12)
    NSi[11]=NS;                    
    
    
  end

endmodule

