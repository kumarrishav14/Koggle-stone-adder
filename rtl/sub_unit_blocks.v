`ifdef GATE_DELAY
`timescale 1ps/1ps
`endif
module pre_proc(
    input   reg     a,
                    b,
    output  wire    p,
                    g
);
    `ifdef GATE_DELAY
    initial begin
    $display("delay sim"); 
    end
    assign #10 p = a ^ b;
    assign #10 g = a & b;
    `else 
    assign p = a ^ b;
    assign g = a & b;
    `endif 
endmodule

module prop_gen_proc(
    input   reg     p0,
                    g0,
                    p1,
                    g1,
    output  wire    p,
                    g
);
    `ifdef GATE_DELAY
    wire temp_g;
    assign #10 temp_g = g0 & p1;
    assign #10 g = temp_g | g1;
    assign #10 p = p0 & p1;
    `else
    wire temp_g = g0 & p1;
    assign g = temp_g | g1;
    assign p = p0 & p1;
    `endif
endmodule
module post_proc (
    input   reg     p,
                    cin,
                    g,
    output  wire    gn
);
    `ifdef GATE_DELAY
    assign #20 gn = g | (p & cin);
    `else
    assign gn = g | (p & cin);
    `endif
endmodule