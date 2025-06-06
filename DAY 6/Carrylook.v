// 4 bit carry look adder

module CLA(
    input [3:0] A ,B,
    output [3:0] sum,
    output cout,
    input cin
);
    wire [3:0] P ,G,C;

    assign P[0] = A[0] ^ B[0];
    assign P[1] = A[1] ^ B[1];
    assign P[2] = A[2] ^ B[2];
    assign P[3] = A[3] ^ B[3];

    assign  G[0] = A[0]&B[0];
    assign  G[1] = A[1]&B[1];
    assign  G[2] = A[2]&B[2];
    assign  G[3] = A[3]&B[3];
    
    assign C[0] = cin;
    assign C[1] = G[0] | (P[0] & cin);
    assign C[2]= G[1] | (P[1] & G[0]) | (P[1] & P[0] & cin);
    assign C[3]= G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & cin);
    assign cout = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & P[1] & P[0] & cin);
    // assign C[0] = cin;   //we will pass the value of cin 
    // assign C[1] =  G[0] | (P[0]& C[0]);
    // assign C[2] =  G[1] | (P[1]& C[1]);
    // assign C[3] =  G[2] | (P[2]& C[2]);
    // assign cout =  G[3] | (P[3]& C[3]);

    assign sum[0] = P[0] ^ C[0];
    assign sum[1] = P[1] ^ C[1];
    assign sum[2] = P[2] ^ C[2];
    assign sum[3] = P[3] ^ C[3];

    endmodule