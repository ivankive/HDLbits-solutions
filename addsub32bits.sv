module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    logic [31:0] wire1;
    logic wire2;
    
    assign wire1 = b ^ {32{sub}};
    
    add16 Firstadd16  ( .a(a[15:0]),   .b(wire1[15:0]),  .cin(sub),    .sum(sum[15:0]),  .cout(wire2));
    add16 Secondadd16 ( .a(a[31:16]),  .b(wire1[31:16]), .cin(wire2),  .sum(sum[31:16]), .cout());
    

    

endmodule