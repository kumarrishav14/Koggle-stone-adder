module ksa_adder #(
    parameter WIDTH=8
) (
    input   reg [WIDTH-1:0]   a,
                        b,
            reg         cin,
    output  wire [WIDTH-1:0]  sum,
            wire        cout 
);

    wire [WIDTH-1:0] p_pp, g_pp, p_foc, g_foc, gn1;
    pre_proc_block#(.WIDTH(WIDTH)) u_pp_block0 (
        .a(a), 
        .b(b), 
        .p(p_pp), 
        .g(g_pp)
    );

    foc_block u_foc_block0 (
        .p0(p_pp),
        .g0(g_pp),
        .gn(g_foc),
        .pn(p_foc)
    );

    post_proc_block#(.WIDTH(WIDTH)) u_post_proc (
        .pn(p_foc),
        .gn(g_foc),
        .cin(cin),
        .gn1(gn1),
        .cout(cout)
    );

    genvar i;
    generate
        for(i = 0; i< WIDTH; i=i+1) begin
            assign sum[i] = p_pp[i] ^ gn1[i];
        end
    endgenerate 
endmodule

module pre_proc_block #(parameter WIDTH=8) (
    input   reg [WIDTH-1:0]     a,
                                b,
    output  wire [WIDTH-1:0]    p,
                                g
);

    genvar i;
    generate
        for(i = 0; i< WIDTH; i=i+1) begin
            pre_proc u_pp0 (.a(a[i]), .b(b[i]), .p(p[i]), .g(g[i]));
        end
    endgenerate
endmodule

module post_proc_block #(
    parameter WIDTH=8
) (
    input   reg [WIDTH-1:0]     pn,
                                gn,
    input   reg                 cin,
    output  wire [WIDTH-1:0]    gn1,
            wire                cout
);
    genvar i;
    wire [WIDTH:0] temp_gn;
    assign temp_gn[0] = cin;
    generate
        for(i=0; i<WIDTH; i=i+1) begin
            post_proc u_post_p0(
                .p(pn[i]),
                .g(gn[i]),
                .cin(temp_gn[i]),
                .gn(temp_gn[i+1])
            );
        end
    endgenerate
    assign cout = temp_gn[WIDTH];
    assign gn1 = temp_gn[WIDTH-1:0];

endmodule

/*
///////////////////////////////////////////////////////////////////
// FOC block to calculate the propagate and generate value for 
// different stages.
// Input: 
//  p0 - propagate calculated at pre-proc stage
//  g0 - generate calculated at pre-proc stage
// Output:
//  pn - propagate calculated at nth stage (before post proc)
//  gn - generate calculated at nth stage (before post proc)
///////////////////////////////////////////////////////////////////

module foc_block #(
    parameter WIDTH=8
) (
    input   reg [WIDTH-1:0]     p0,
            reg [WIDTH-1:0]     g0,
    output  wire [WIDTH-1:0]    pn,
            wire [WIDTH-1:0]    gn
);

    wire [7:0] p_temp1, g_temp1;
    wire [7:0] p_temp2, g_temp2;

    // Stage  1
    assign p_temp1[0] = p0[0];
    assign g_temp1[0] = g0[0];
    prop_gen_proc u_pg11 (.p0(p0[0]), .g0(g0[0]), .p1(p0[1]), .g1(g0[1]), .p(p_temp1[1]), .g(g_temp1[1]));
    prop_gen_proc u_pg12 (.p0(p0[1]), .g0(g0[1]), .p1(p0[2]), .g1(g0[2]), .p(p_temp1[2]), .g(g_temp1[2]));
    prop_gen_proc u_pg13 (.p0(p0[2]), .g0(g0[2]), .p1(p0[3]), .g1(g0[3]), .p(p_temp1[3]), .g(g_temp1[3]));
    prop_gen_proc u_pg14 (.p0(p0[3]), .g0(g0[3]), .p1(p0[4]), .g1(g0[4]), .p(p_temp1[4]), .g(g_temp1[4]));
    prop_gen_proc u_pg15 (.p0(p0[4]), .g0(g0[4]), .p1(p0[5]), .g1(g0[5]), .p(p_temp1[5]), .g(g_temp1[5]));
    prop_gen_proc u_pg16 (.p0(p0[5]), .g0(g0[5]), .p1(p0[6]), .g1(g0[6]), .p(p_temp1[6]), .g(g_temp1[6]));
    prop_gen_proc u_pg17 (.p0(p0[6]), .g0(g0[6]), .p1(p0[7]), .g1(g0[7]), .p(p_temp1[7]), .g(g_temp1[7]));

    // Stage  2
    assign p_temp2[2:0] = p_temp1[2:0];
    assign g_temp2[2:0] = g_temp1[2:0];
    prop_gen_proc u_pg23 (.p0(p_temp1[1]), .g0(g_temp1[1]), .p1(p_temp1[3]), .g1(g_temp1[3]), .p(p_temp2[3]), .g(g_temp2[3]));
    prop_gen_proc u_pg24 (.p0(p_temp1[2]), .g0(g_temp1[2]), .p1(p_temp1[4]), .g1(g_temp1[4]), .p(p_temp2[4]), .g(g_temp2[4]));
    prop_gen_proc u_pg25 (.p0(p_temp1[3]), .g0(g_temp1[3]), .p1(p_temp1[5]), .g1(g_temp1[5]), .p(p_temp2[5]), .g(g_temp2[5]));
    prop_gen_proc u_pg26 (.p0(p_temp1[4]), .g0(g_temp1[4]), .p1(p_temp1[6]), .g1(g_temp1[6]), .p(p_temp2[6]), .g(g_temp2[6]));
    prop_gen_proc u_pg27 (.p0(p_temp1[5]), .g0(g_temp1[5]), .p1(p_temp1[7]), .g1(g_temp1[7]), .p(p_temp2[7]), .g(g_temp2[7]));

    // Stage  3
    assign pn[6:0] = p_temp2[6:0];
    assign gn[6:0] = g_temp2[6:0];
    prop_gen_proc u_pg37 (.p0(p_temp2[3]), .g0(g_temp2[3]), .p1(p_temp2[7]), .g1(g_temp2[7]), .p(pn[7]), .g(pn[7]));
endmodule */
