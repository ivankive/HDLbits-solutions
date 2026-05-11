`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    
    logic middle_up;
    logic middle_down;
    
    assign middle_up = a & b;
    assign middle_down = c & d;
    
    assign out = middle_up | middle_down;
    assign out_n = ~out;

endmodule