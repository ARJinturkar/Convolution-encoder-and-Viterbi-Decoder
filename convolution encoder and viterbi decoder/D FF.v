module SD_DFF(Clock,D,Q);
    input Clock;
    input D;
    output Q;
  	 reg Q;
  	 
  	 
  	 initial
  	 begin
  	   Q=1'b0;
	  end
	  
	  always @(posedge Clock)
	  begin
	    case({D})
	      1'b0:
	      begin 
	        Q=1'b0;
	      end
	      
	      1'b1:
	      begin
	       Q=1'b1;
	       end
endcase
end
endmodule