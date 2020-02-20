//This module make 2:1 multiplexer task.It applies F = I0.s0'+ I1.s0
module mux2_to_1 (muxOut ,I0,I1,s0 );
    output muxOut;
    input I0,I1,s0 ;
    wire not0,a1,a2;

    not(not0, s0); //s0'

    and (a1,not0,I0 ); //I0.s0'
    and (a2,s0,I1);   //I1.s0
  
    or (muxOut,a1,a2); // output of 2:1 multiplexer.

endmodule