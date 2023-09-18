parameter WIDTH = `WIDTH;
parameter NUM_PKT = 50;
`timescale 1ns/1ns
//`include "ksa_adder.v"

module tb;
    reg [WIDTH-1:0]     a, b;
    reg                 cin;
    wire [WIDTH-1:0]    sum;
    wire                cout;

    ksa_adder #(WIDTH) dut(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    bit [31:0] a1, b1;
    bit cin1;
    event start_check;

    class transaction;
        rand bit [31:0] a, b;
        rand bit cin;
        bit [32:0] ideal_sum;
        bit [31:0] sum;
        bit cout;

        constraint cin_val {
            cin dist {0:=60, 1:=40};
        } 

        function void printf();
            $display("Driven packet -> a = %0h, b = %0h, cin = %0b", a, b, cin);
        endfunction

        function void check();
            ideal_sum = a + b + cin;
            if(sum == ideal_sum[31:0] && cout == ideal_sum[32]) begin
                $display("*** Output matched *** \nExpected: sum = %0h, cout = %0b; Actual sum = %0h, cout = %0b\n",ideal_sum[31:0], ideal_sum[32], sum, cout);
            end
            else begin
                if(sum != ideal_sum[31:0]) begin
                    $error("*** Sum is not matching*** \nExpected: sum = %0h, cout = %0b; Actual sum = %0h, cout = %0b\n",ideal_sum[31:0], ideal_sum[32], sum, cout);
                end
                else if(cout != ideal_sum[32]) begin
                    $error("*** Cout is not matching*** \nExpected: sum = %0h, cout = %0b; Actual sum = %0h, cout = %0b\n",ideal_sum[31:0], ideal_sum[32], sum, cout);
                end
            end
        endfunction
    endclass //transaction

    transaction tr;

    initial begin: driver
        #10;
        tr = new();
        repeat(NUM_PKT) begin
            tr.randomize();
            a <= tr.a;
            b <= tr.b;
            cin <= tr.cin;
            tr.printf();
            ->start_check;
            #40;
        end
        $finish();
    end

    initial begin: scoreboard
        forever begin
            @(start_check);
            #2;
            tr.sum = sum;
            tr.cout = cout;
            tr.check();
        end
    end
endmodule