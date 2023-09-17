module pre_proc(
    input   reg     a,
                    b,
    output  wire    p,
                    g
);
    assign p = a ^ b;
    assign g = a & b;    
endmodule

module prop_gen_proc(
    input   reg     p0,
                    g0,
                    p1,
                    g1,
    output  wire    p,
                    g
);
    wire temp_g = g0 & p1;
    assign g = temp_g | g1;
    assign p = p0 & p1;
endmodule
module post_proc (
    input   reg     p,
                    cin,
                    g,
    output  wire    sum,
                    cout 
);
    assign cout = g;
    assign sum = p ^ cin;
endmodule