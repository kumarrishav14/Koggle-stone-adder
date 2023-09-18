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

/// Auto Generated code. DO NOT EDIT BELOW CODE ///
module foc_block (
        input   reg [31:0]   p0,
        					g0,
        output  wire [31:0]  pn,
        					gn
);
	wire [31:0] p_temp1, g_temp1;
	wire [31:0] p_temp2, g_temp2;
	wire [31:0] p_temp3, g_temp3;
	wire [31:0] p_temp4, g_temp4;

	// Stage 1
	assign p_temp1[0] = p0[0];
	assign g_temp1[0] = g0[0];
	prop_gen_proc u_pg11 (.p0(p0[0]), .g0(g0[0]), .p1(p0[1]), .g1(g0[1]), .p(p_temp1[1]), .g(g_temp1[1]));
	prop_gen_proc u_pg12 (.p0(p0[1]), .g0(g0[1]), .p1(p0[2]), .g1(g0[2]), .p(p_temp1[2]), .g(g_temp1[2]));
	prop_gen_proc u_pg13 (.p0(p0[2]), .g0(g0[2]), .p1(p0[3]), .g1(g0[3]), .p(p_temp1[3]), .g(g_temp1[3]));
	prop_gen_proc u_pg14 (.p0(p0[3]), .g0(g0[3]), .p1(p0[4]), .g1(g0[4]), .p(p_temp1[4]), .g(g_temp1[4]));
	prop_gen_proc u_pg15 (.p0(p0[4]), .g0(g0[4]), .p1(p0[5]), .g1(g0[5]), .p(p_temp1[5]), .g(g_temp1[5]));
	prop_gen_proc u_pg16 (.p0(p0[5]), .g0(g0[5]), .p1(p0[6]), .g1(g0[6]), .p(p_temp1[6]), .g(g_temp1[6]));
	prop_gen_proc u_pg17 (.p0(p0[6]), .g0(g0[6]), .p1(p0[7]), .g1(g0[7]), .p(p_temp1[7]), .g(g_temp1[7]));
	prop_gen_proc u_pg18 (.p0(p0[7]), .g0(g0[7]), .p1(p0[8]), .g1(g0[8]), .p(p_temp1[8]), .g(g_temp1[8]));
	prop_gen_proc u_pg19 (.p0(p0[8]), .g0(g0[8]), .p1(p0[9]), .g1(g0[9]), .p(p_temp1[9]), .g(g_temp1[9]));
	prop_gen_proc u_pg110 (.p0(p0[9]), .g0(g0[9]), .p1(p0[10]), .g1(g0[10]), .p(p_temp1[10]), .g(g_temp1[10]));
	prop_gen_proc u_pg111 (.p0(p0[10]), .g0(g0[10]), .p1(p0[11]), .g1(g0[11]), .p(p_temp1[11]), .g(g_temp1[11]));
	prop_gen_proc u_pg112 (.p0(p0[11]), .g0(g0[11]), .p1(p0[12]), .g1(g0[12]), .p(p_temp1[12]), .g(g_temp1[12]));
	prop_gen_proc u_pg113 (.p0(p0[12]), .g0(g0[12]), .p1(p0[13]), .g1(g0[13]), .p(p_temp1[13]), .g(g_temp1[13]));
	prop_gen_proc u_pg114 (.p0(p0[13]), .g0(g0[13]), .p1(p0[14]), .g1(g0[14]), .p(p_temp1[14]), .g(g_temp1[14]));
	prop_gen_proc u_pg115 (.p0(p0[14]), .g0(g0[14]), .p1(p0[15]), .g1(g0[15]), .p(p_temp1[15]), .g(g_temp1[15]));
	prop_gen_proc u_pg116 (.p0(p0[15]), .g0(g0[15]), .p1(p0[16]), .g1(g0[16]), .p(p_temp1[16]), .g(g_temp1[16]));
	prop_gen_proc u_pg117 (.p0(p0[16]), .g0(g0[16]), .p1(p0[17]), .g1(g0[17]), .p(p_temp1[17]), .g(g_temp1[17]));
	prop_gen_proc u_pg118 (.p0(p0[17]), .g0(g0[17]), .p1(p0[18]), .g1(g0[18]), .p(p_temp1[18]), .g(g_temp1[18]));
	prop_gen_proc u_pg119 (.p0(p0[18]), .g0(g0[18]), .p1(p0[19]), .g1(g0[19]), .p(p_temp1[19]), .g(g_temp1[19]));
	prop_gen_proc u_pg120 (.p0(p0[19]), .g0(g0[19]), .p1(p0[20]), .g1(g0[20]), .p(p_temp1[20]), .g(g_temp1[20]));
	prop_gen_proc u_pg121 (.p0(p0[20]), .g0(g0[20]), .p1(p0[21]), .g1(g0[21]), .p(p_temp1[21]), .g(g_temp1[21]));
	prop_gen_proc u_pg122 (.p0(p0[21]), .g0(g0[21]), .p1(p0[22]), .g1(g0[22]), .p(p_temp1[22]), .g(g_temp1[22]));
	prop_gen_proc u_pg123 (.p0(p0[22]), .g0(g0[22]), .p1(p0[23]), .g1(g0[23]), .p(p_temp1[23]), .g(g_temp1[23]));
	prop_gen_proc u_pg124 (.p0(p0[23]), .g0(g0[23]), .p1(p0[24]), .g1(g0[24]), .p(p_temp1[24]), .g(g_temp1[24]));
	prop_gen_proc u_pg125 (.p0(p0[24]), .g0(g0[24]), .p1(p0[25]), .g1(g0[25]), .p(p_temp1[25]), .g(g_temp1[25]));
	prop_gen_proc u_pg126 (.p0(p0[25]), .g0(g0[25]), .p1(p0[26]), .g1(g0[26]), .p(p_temp1[26]), .g(g_temp1[26]));
	prop_gen_proc u_pg127 (.p0(p0[26]), .g0(g0[26]), .p1(p0[27]), .g1(g0[27]), .p(p_temp1[27]), .g(g_temp1[27]));
	prop_gen_proc u_pg128 (.p0(p0[27]), .g0(g0[27]), .p1(p0[28]), .g1(g0[28]), .p(p_temp1[28]), .g(g_temp1[28]));
	prop_gen_proc u_pg129 (.p0(p0[28]), .g0(g0[28]), .p1(p0[29]), .g1(g0[29]), .p(p_temp1[29]), .g(g_temp1[29]));
	prop_gen_proc u_pg130 (.p0(p0[29]), .g0(g0[29]), .p1(p0[30]), .g1(g0[30]), .p(p_temp1[30]), .g(g_temp1[30]));
	prop_gen_proc u_pg131 (.p0(p0[30]), .g0(g0[30]), .p1(p0[31]), .g1(g0[31]), .p(p_temp1[31]), .g(g_temp1[31]));

	// Stage 2
	assign p_temp2[2:0] = p_temp1[2:0];
	assign g_temp2[2:0] = g_temp1[2:0];
	prop_gen_proc u_pg23 (.p0(p_temp1[1]), .g0(g_temp1[1]), .p1(p_temp1[3]), .g1(g_temp1[3]), .p(p_temp2[3]), .g(g_temp2[3]));
	prop_gen_proc u_pg24 (.p0(p_temp1[2]), .g0(g_temp1[2]), .p1(p_temp1[4]), .g1(g_temp1[4]), .p(p_temp2[4]), .g(g_temp2[4]));
	prop_gen_proc u_pg25 (.p0(p_temp1[3]), .g0(g_temp1[3]), .p1(p_temp1[5]), .g1(g_temp1[5]), .p(p_temp2[5]), .g(g_temp2[5]));
	prop_gen_proc u_pg26 (.p0(p_temp1[4]), .g0(g_temp1[4]), .p1(p_temp1[6]), .g1(g_temp1[6]), .p(p_temp2[6]), .g(g_temp2[6]));
	prop_gen_proc u_pg27 (.p0(p_temp1[5]), .g0(g_temp1[5]), .p1(p_temp1[7]), .g1(g_temp1[7]), .p(p_temp2[7]), .g(g_temp2[7]));
	prop_gen_proc u_pg28 (.p0(p_temp1[6]), .g0(g_temp1[6]), .p1(p_temp1[8]), .g1(g_temp1[8]), .p(p_temp2[8]), .g(g_temp2[8]));
	prop_gen_proc u_pg29 (.p0(p_temp1[7]), .g0(g_temp1[7]), .p1(p_temp1[9]), .g1(g_temp1[9]), .p(p_temp2[9]), .g(g_temp2[9]));
	prop_gen_proc u_pg210 (.p0(p_temp1[8]), .g0(g_temp1[8]), .p1(p_temp1[10]), .g1(g_temp1[10]), .p(p_temp2[10]), .g(g_temp2[10]));
	prop_gen_proc u_pg211 (.p0(p_temp1[9]), .g0(g_temp1[9]), .p1(p_temp1[11]), .g1(g_temp1[11]), .p(p_temp2[11]), .g(g_temp2[11]));
	prop_gen_proc u_pg212 (.p0(p_temp1[10]), .g0(g_temp1[10]), .p1(p_temp1[12]), .g1(g_temp1[12]), .p(p_temp2[12]), .g(g_temp2[12]));
	prop_gen_proc u_pg213 (.p0(p_temp1[11]), .g0(g_temp1[11]), .p1(p_temp1[13]), .g1(g_temp1[13]), .p(p_temp2[13]), .g(g_temp2[13]));
	prop_gen_proc u_pg214 (.p0(p_temp1[12]), .g0(g_temp1[12]), .p1(p_temp1[14]), .g1(g_temp1[14]), .p(p_temp2[14]), .g(g_temp2[14]));
	prop_gen_proc u_pg215 (.p0(p_temp1[13]), .g0(g_temp1[13]), .p1(p_temp1[15]), .g1(g_temp1[15]), .p(p_temp2[15]), .g(g_temp2[15]));
	prop_gen_proc u_pg216 (.p0(p_temp1[14]), .g0(g_temp1[14]), .p1(p_temp1[16]), .g1(g_temp1[16]), .p(p_temp2[16]), .g(g_temp2[16]));
	prop_gen_proc u_pg217 (.p0(p_temp1[15]), .g0(g_temp1[15]), .p1(p_temp1[17]), .g1(g_temp1[17]), .p(p_temp2[17]), .g(g_temp2[17]));
	prop_gen_proc u_pg218 (.p0(p_temp1[16]), .g0(g_temp1[16]), .p1(p_temp1[18]), .g1(g_temp1[18]), .p(p_temp2[18]), .g(g_temp2[18]));
	prop_gen_proc u_pg219 (.p0(p_temp1[17]), .g0(g_temp1[17]), .p1(p_temp1[19]), .g1(g_temp1[19]), .p(p_temp2[19]), .g(g_temp2[19]));
	prop_gen_proc u_pg220 (.p0(p_temp1[18]), .g0(g_temp1[18]), .p1(p_temp1[20]), .g1(g_temp1[20]), .p(p_temp2[20]), .g(g_temp2[20]));
	prop_gen_proc u_pg221 (.p0(p_temp1[19]), .g0(g_temp1[19]), .p1(p_temp1[21]), .g1(g_temp1[21]), .p(p_temp2[21]), .g(g_temp2[21]));
	prop_gen_proc u_pg222 (.p0(p_temp1[20]), .g0(g_temp1[20]), .p1(p_temp1[22]), .g1(g_temp1[22]), .p(p_temp2[22]), .g(g_temp2[22]));
	prop_gen_proc u_pg223 (.p0(p_temp1[21]), .g0(g_temp1[21]), .p1(p_temp1[23]), .g1(g_temp1[23]), .p(p_temp2[23]), .g(g_temp2[23]));
	prop_gen_proc u_pg224 (.p0(p_temp1[22]), .g0(g_temp1[22]), .p1(p_temp1[24]), .g1(g_temp1[24]), .p(p_temp2[24]), .g(g_temp2[24]));
	prop_gen_proc u_pg225 (.p0(p_temp1[23]), .g0(g_temp1[23]), .p1(p_temp1[25]), .g1(g_temp1[25]), .p(p_temp2[25]), .g(g_temp2[25]));
	prop_gen_proc u_pg226 (.p0(p_temp1[24]), .g0(g_temp1[24]), .p1(p_temp1[26]), .g1(g_temp1[26]), .p(p_temp2[26]), .g(g_temp2[26]));
	prop_gen_proc u_pg227 (.p0(p_temp1[25]), .g0(g_temp1[25]), .p1(p_temp1[27]), .g1(g_temp1[27]), .p(p_temp2[27]), .g(g_temp2[27]));
	prop_gen_proc u_pg228 (.p0(p_temp1[26]), .g0(g_temp1[26]), .p1(p_temp1[28]), .g1(g_temp1[28]), .p(p_temp2[28]), .g(g_temp2[28]));
	prop_gen_proc u_pg229 (.p0(p_temp1[27]), .g0(g_temp1[27]), .p1(p_temp1[29]), .g1(g_temp1[29]), .p(p_temp2[29]), .g(g_temp2[29]));
	prop_gen_proc u_pg230 (.p0(p_temp1[28]), .g0(g_temp1[28]), .p1(p_temp1[30]), .g1(g_temp1[30]), .p(p_temp2[30]), .g(g_temp2[30]));
	prop_gen_proc u_pg231 (.p0(p_temp1[29]), .g0(g_temp1[29]), .p1(p_temp1[31]), .g1(g_temp1[31]), .p(p_temp2[31]), .g(g_temp2[31]));

	// Stage 3
	assign p_temp3[6:0] = p_temp2[6:0];
	assign g_temp3[6:0] = g_temp2[6:0];
	prop_gen_proc u_pg37 (.p0(p_temp2[3]), .g0(g_temp2[3]), .p1(p_temp2[7]), .g1(g_temp2[7]), .p(p_temp3[7]), .g(g_temp3[7]));
	prop_gen_proc u_pg38 (.p0(p_temp2[4]), .g0(g_temp2[4]), .p1(p_temp2[8]), .g1(g_temp2[8]), .p(p_temp3[8]), .g(g_temp3[8]));
	prop_gen_proc u_pg39 (.p0(p_temp2[5]), .g0(g_temp2[5]), .p1(p_temp2[9]), .g1(g_temp2[9]), .p(p_temp3[9]), .g(g_temp3[9]));
	prop_gen_proc u_pg310 (.p0(p_temp2[6]), .g0(g_temp2[6]), .p1(p_temp2[10]), .g1(g_temp2[10]), .p(p_temp3[10]), .g(g_temp3[10]));
	prop_gen_proc u_pg311 (.p0(p_temp2[7]), .g0(g_temp2[7]), .p1(p_temp2[11]), .g1(g_temp2[11]), .p(p_temp3[11]), .g(g_temp3[11]));
	prop_gen_proc u_pg312 (.p0(p_temp2[8]), .g0(g_temp2[8]), .p1(p_temp2[12]), .g1(g_temp2[12]), .p(p_temp3[12]), .g(g_temp3[12]));
	prop_gen_proc u_pg313 (.p0(p_temp2[9]), .g0(g_temp2[9]), .p1(p_temp2[13]), .g1(g_temp2[13]), .p(p_temp3[13]), .g(g_temp3[13]));
	prop_gen_proc u_pg314 (.p0(p_temp2[10]), .g0(g_temp2[10]), .p1(p_temp2[14]), .g1(g_temp2[14]), .p(p_temp3[14]), .g(g_temp3[14]));
	prop_gen_proc u_pg315 (.p0(p_temp2[11]), .g0(g_temp2[11]), .p1(p_temp2[15]), .g1(g_temp2[15]), .p(p_temp3[15]), .g(g_temp3[15]));
	prop_gen_proc u_pg316 (.p0(p_temp2[12]), .g0(g_temp2[12]), .p1(p_temp2[16]), .g1(g_temp2[16]), .p(p_temp3[16]), .g(g_temp3[16]));
	prop_gen_proc u_pg317 (.p0(p_temp2[13]), .g0(g_temp2[13]), .p1(p_temp2[17]), .g1(g_temp2[17]), .p(p_temp3[17]), .g(g_temp3[17]));
	prop_gen_proc u_pg318 (.p0(p_temp2[14]), .g0(g_temp2[14]), .p1(p_temp2[18]), .g1(g_temp2[18]), .p(p_temp3[18]), .g(g_temp3[18]));
	prop_gen_proc u_pg319 (.p0(p_temp2[15]), .g0(g_temp2[15]), .p1(p_temp2[19]), .g1(g_temp2[19]), .p(p_temp3[19]), .g(g_temp3[19]));
	prop_gen_proc u_pg320 (.p0(p_temp2[16]), .g0(g_temp2[16]), .p1(p_temp2[20]), .g1(g_temp2[20]), .p(p_temp3[20]), .g(g_temp3[20]));
	prop_gen_proc u_pg321 (.p0(p_temp2[17]), .g0(g_temp2[17]), .p1(p_temp2[21]), .g1(g_temp2[21]), .p(p_temp3[21]), .g(g_temp3[21]));
	prop_gen_proc u_pg322 (.p0(p_temp2[18]), .g0(g_temp2[18]), .p1(p_temp2[22]), .g1(g_temp2[22]), .p(p_temp3[22]), .g(g_temp3[22]));
	prop_gen_proc u_pg323 (.p0(p_temp2[19]), .g0(g_temp2[19]), .p1(p_temp2[23]), .g1(g_temp2[23]), .p(p_temp3[23]), .g(g_temp3[23]));
	prop_gen_proc u_pg324 (.p0(p_temp2[20]), .g0(g_temp2[20]), .p1(p_temp2[24]), .g1(g_temp2[24]), .p(p_temp3[24]), .g(g_temp3[24]));
	prop_gen_proc u_pg325 (.p0(p_temp2[21]), .g0(g_temp2[21]), .p1(p_temp2[25]), .g1(g_temp2[25]), .p(p_temp3[25]), .g(g_temp3[25]));
	prop_gen_proc u_pg326 (.p0(p_temp2[22]), .g0(g_temp2[22]), .p1(p_temp2[26]), .g1(g_temp2[26]), .p(p_temp3[26]), .g(g_temp3[26]));
	prop_gen_proc u_pg327 (.p0(p_temp2[23]), .g0(g_temp2[23]), .p1(p_temp2[27]), .g1(g_temp2[27]), .p(p_temp3[27]), .g(g_temp3[27]));
	prop_gen_proc u_pg328 (.p0(p_temp2[24]), .g0(g_temp2[24]), .p1(p_temp2[28]), .g1(g_temp2[28]), .p(p_temp3[28]), .g(g_temp3[28]));
	prop_gen_proc u_pg329 (.p0(p_temp2[25]), .g0(g_temp2[25]), .p1(p_temp2[29]), .g1(g_temp2[29]), .p(p_temp3[29]), .g(g_temp3[29]));
	prop_gen_proc u_pg330 (.p0(p_temp2[26]), .g0(g_temp2[26]), .p1(p_temp2[30]), .g1(g_temp2[30]), .p(p_temp3[30]), .g(g_temp3[30]));
	prop_gen_proc u_pg331 (.p0(p_temp2[27]), .g0(g_temp2[27]), .p1(p_temp2[31]), .g1(g_temp2[31]), .p(p_temp3[31]), .g(g_temp3[31]));

	// Stage 4
	assign p_temp4[14:0] = p_temp3[14:0];
	assign g_temp4[14:0] = g_temp3[14:0];
	prop_gen_proc u_pg415 (.p0(p_temp3[7]), .g0(g_temp3[7]), .p1(p_temp3[15]), .g1(g_temp3[15]), .p(p_temp4[15]), .g(g_temp4[15]));
	prop_gen_proc u_pg416 (.p0(p_temp3[8]), .g0(g_temp3[8]), .p1(p_temp3[16]), .g1(g_temp3[16]), .p(p_temp4[16]), .g(g_temp4[16]));
	prop_gen_proc u_pg417 (.p0(p_temp3[9]), .g0(g_temp3[9]), .p1(p_temp3[17]), .g1(g_temp3[17]), .p(p_temp4[17]), .g(g_temp4[17]));
	prop_gen_proc u_pg418 (.p0(p_temp3[10]), .g0(g_temp3[10]), .p1(p_temp3[18]), .g1(g_temp3[18]), .p(p_temp4[18]), .g(g_temp4[18]));
	prop_gen_proc u_pg419 (.p0(p_temp3[11]), .g0(g_temp3[11]), .p1(p_temp3[19]), .g1(g_temp3[19]), .p(p_temp4[19]), .g(g_temp4[19]));
	prop_gen_proc u_pg420 (.p0(p_temp3[12]), .g0(g_temp3[12]), .p1(p_temp3[20]), .g1(g_temp3[20]), .p(p_temp4[20]), .g(g_temp4[20]));
	prop_gen_proc u_pg421 (.p0(p_temp3[13]), .g0(g_temp3[13]), .p1(p_temp3[21]), .g1(g_temp3[21]), .p(p_temp4[21]), .g(g_temp4[21]));
	prop_gen_proc u_pg422 (.p0(p_temp3[14]), .g0(g_temp3[14]), .p1(p_temp3[22]), .g1(g_temp3[22]), .p(p_temp4[22]), .g(g_temp4[22]));
	prop_gen_proc u_pg423 (.p0(p_temp3[15]), .g0(g_temp3[15]), .p1(p_temp3[23]), .g1(g_temp3[23]), .p(p_temp4[23]), .g(g_temp4[23]));
	prop_gen_proc u_pg424 (.p0(p_temp3[16]), .g0(g_temp3[16]), .p1(p_temp3[24]), .g1(g_temp3[24]), .p(p_temp4[24]), .g(g_temp4[24]));
	prop_gen_proc u_pg425 (.p0(p_temp3[17]), .g0(g_temp3[17]), .p1(p_temp3[25]), .g1(g_temp3[25]), .p(p_temp4[25]), .g(g_temp4[25]));
	prop_gen_proc u_pg426 (.p0(p_temp3[18]), .g0(g_temp3[18]), .p1(p_temp3[26]), .g1(g_temp3[26]), .p(p_temp4[26]), .g(g_temp4[26]));
	prop_gen_proc u_pg427 (.p0(p_temp3[19]), .g0(g_temp3[19]), .p1(p_temp3[27]), .g1(g_temp3[27]), .p(p_temp4[27]), .g(g_temp4[27]));
	prop_gen_proc u_pg428 (.p0(p_temp3[20]), .g0(g_temp3[20]), .p1(p_temp3[28]), .g1(g_temp3[28]), .p(p_temp4[28]), .g(g_temp4[28]));
	prop_gen_proc u_pg429 (.p0(p_temp3[21]), .g0(g_temp3[21]), .p1(p_temp3[29]), .g1(g_temp3[29]), .p(p_temp4[29]), .g(g_temp4[29]));
	prop_gen_proc u_pg430 (.p0(p_temp3[22]), .g0(g_temp3[22]), .p1(p_temp3[30]), .g1(g_temp3[30]), .p(p_temp4[30]), .g(g_temp4[30]));
	prop_gen_proc u_pg431 (.p0(p_temp3[23]), .g0(g_temp3[23]), .p1(p_temp3[31]), .g1(g_temp3[31]), .p(p_temp4[31]), .g(g_temp4[31]));

	// Stage 5
	assign pn[30:0] = p_temp4[30:0];
	assign gn[30:0] = g_temp4[30:0];
	prop_gen_proc u_pg531 (.p0(p_temp4[15]), .g0(g_temp4[15]), .p1(p_temp4[31]), .g1(g_temp4[31]), .p(pn[31]), .g(gn[31]));
endmodule: foc_block