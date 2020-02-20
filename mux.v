//This module make 4:1 multiplexer task.It applies F = I0.s0'.s1' + I1.s0.s1' + I2.s0'.s1 + I3.s0.s1
module mux (muxOut ,I0,I1,I2,I3,s0,s1 );
    output muxOut;
    input I0,I1,I2,I3,s0,s1 ;
    wire not0,not1 , a1,a2,a3,a4;

    not(not0, s0); //s0'
    not(not1,s1);  //s1'

    and (a1,not0,not1,I0 ); //I0.s0'.s1'
    and (a2,not1,s0,I1);   //I1.s0.s1'
    and (a3,not0,s1,I2);  //I2.s0'.s1
    and (a4,s0,s1,I3);    //I3.s0.s1

    or (muxOut,a1,a2,a3,a4); // output of 4:1 multiplexer.

endmodule