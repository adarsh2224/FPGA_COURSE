module half_adder(input a, b, output sum, carry);
    assign sum = a ^ b;
    assign carry = a & b;
endmodule

module three_bit_multiplier(
    input [2:0] A, B,
    output [5:0] Product
);
    wire [2:0] PP0 = {A[2]&B[0], A[1]&B[0], A[0]&B[0]}; 
    wire [2:0] PP1 = {A[2]&B[1], A[1]&B[1], A[0]&B[1]}; 
    wire [2:0] PP2 = {A[2]&B[2], A[1]&B[2], A[0]&B[2]}; 

    wire s1, c1, s2, c2, s3, c3;
    half_adder ha1(PP0[1], PP1[0], s1, c1);
    half_adder ha2(PP0[2], PP1[1], s2, c2);
    wire s4, c4, s5, c5;
    half_adder ha3(s2, PP2[0], s4, c4);
    half_adder ha4(c2, PP1[2], s5, c5);
    assign Product[0] = PP0[0];
    assign Product[1] = s1;
    assign Product[2] = s4;
    assign Product[3] = s5 ^ c4;
    assign Product[4] = PP2[1] ^ c5 ^ c4;
    assign Product[5] = PP2[2] & c5;    
endmodule
