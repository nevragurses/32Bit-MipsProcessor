//Module that make xor gate task.This module apply:  a xor b = (a or b) and  (not (a and b))
module xorGate ( result,a ,b); 
    output result;
    input a,b;
    wire x,y,z;
    or( x,a,b); // a+b 
    and(y,a,b);  // ab
    not(z,y);  // (ab)' 
    and (result,x,z); // (a+b)(ab)' = a xor b
endmodule   