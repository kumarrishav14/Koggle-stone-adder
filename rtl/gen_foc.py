import math
import sys

WIDTH = 8
if len(sys.argv) < 2:
    print("No arg passed. Using default width of 8")
else:
    if sys.argv[1].isdigit():
        WIDTH = int(sys.argv[1])
    else:
        print("Invalid width passed!!")
        sys.exit()

stage=int(math.log2(WIDTH))

f = open("rtl/foc.v","w",encoding="utf-8")

f.write('''///////////////////////////////////////////////////////////////////
// FOC block to calculate the propagate and generate value for 
// different stages.
// Input: 
//  p0 - propagate calculated at pre-proc stage
//  g0 - generate calculated at pre-proc stage
// Output:
//  pn - propagate calculated at nth stage (before post proc)
//  gn - generate calculated at nth stage (before post proc)
///////////////////////////////////////////////////////////////////

/// Auto Generated code. DO NOT EDIT BELOW CODE ///
''')

f.write(f'''module foc_block (
        input   reg [{WIDTH-1}:0]   p0,
        \t\t\t\t\tg0,
        output  wire [{WIDTH-1}:0]  pn,
        \t\t\t\t\tgn
);\n''')
for i in range(1,stage):
    f.write(f"\twire [{WIDTH-1}:0] p_temp{i}, g_temp{i};\n")
for i in range(1,stage+1):
    stage_start = int(math.pow(2,i)-1)
    f.write(f"\n\t// Stage {i}\n")
    if i==1:
        f.write("\tassign p_temp1[0] = p0[0];\n")
        f.write("\tassign g_temp1[0] = g0[0];\n")
    elif 1 < i <stage:
        f.write(f"\tassign p_temp{i}[{stage_start-1}:0] = p_temp{i-1}[{stage_start-1}:0];\n")
        f.write(f"\tassign g_temp{i}[{stage_start-1}:0] = g_temp{i-1}[{stage_start-1}:0];\n")
    else:
        f.write(f"\tassign pn[{stage_start-1}:0] = p_temp{i-1}[{stage_start-1}:0];\n")
        f.write(f"\tassign gn[{stage_start-1}:0] = g_temp{i-1}[{stage_start-1}:0];\n")

    for j in range(int(math.pow(2,i))-1, WIDTH):
        k = j-int(math.pow(2,i-1))
        if i==1:
            f.write(f"\tprop_gen_proc u_pg{i}{j} (.p0(p0[{j-1}]), .g0(g0[{j-1}]), .p1(p0[{j}]), .g1(g0[{j}]), .p(p_temp{i}[{j}]), .g(g_temp{i}[{j}]));\n")
        elif 1 < i <stage:
            f.write(f"\tprop_gen_proc u_pg{i}{j} (.p0(p_temp{i-1}[{k}]), .g0(g_temp{i-1}[{k}]), .p1(p_temp{i-1}[{j}]), .g1(g_temp{i-1}[{j}]), .p(p_temp{i}[{j}]), .g(g_temp{i}[{j}]));\n")
        else:
            f.write(f"\tprop_gen_proc u_pg{i}{j} (.p0(p_temp{i-1}[{k}]), .g0(g_temp{i-1}[{k}]), .p1(p_temp{i-1}[{j}]), .g1(g_temp{i-1}[{j}]), .p(pn[{j}]), .g(gn[{j}]));\n")

f.write("endmodule: foc_block")
f.close()
