/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12
// Date      : Sun Oct 12 21:25:30 2025
/////////////////////////////////////////////////////////////


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_0_DW01_add_67 ( A, B, CI, 
        SUM, CO );
  input [20:0] A;
  input [20:0] B;
  output [20:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [20:1] carry;

  XOR3X1 U1_20 ( .A(A[20]), .B(B[20]), .C(carry[20]), .Y(SUM[20]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_1_DW01_add_68 ( A, B, CI, 
        SUM, CO );
  input [20:0] A;
  input [20:0] B;
  output [20:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [20:1] carry;

  XOR3X1 U1_20 ( .A(A[20]), .B(B[20]), .C(carry[20]), .Y(SUM[20]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_2_DW01_add_69 ( A, B, CI, 
        SUM, CO );
  input [20:0] A;
  input [20:0] B;
  output [20:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [20:1] carry;

  XOR3X1 U1_20 ( .A(A[20]), .B(B[20]), .C(carry[20]), .Y(SUM[20]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_3_DW01_add_70 ( A, B, CI, 
        SUM, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [19:1] carry;

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_19 ( .A(A[19]), .B(B[19]), .C(carry[19]), .Y(SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_4_DW01_add_71 ( A, B, CI, 
        SUM, CO );
  input [18:0] A;
  input [18:0] B;
  output [18:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [18:1] carry;

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_18 ( .A(A[18]), .B(B[18]), .C(carry[18]), .Y(SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_5_DW01_add_72 ( A, B, CI, 
        SUM, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [17:1] carry;

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_17 ( .A(A[17]), .B(B[17]), .C(carry[17]), .Y(SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_6_DW01_add_73 ( A, B, CI, 
        SUM, CO );
  input [20:0] A;
  input [20:0] B;
  output [20:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [20:1] carry;

  XOR3X1 U1_20 ( .A(A[20]), .B(B[20]), .C(carry[20]), .Y(SUM[20]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_7_DW01_add_74 ( A, B, CI, 
        SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:1] carry;

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  XOR3X1 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_8_DW01_add_75 ( A, B, CI, 
        SUM, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [17:1] carry;

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_17 ( .A(A[17]), .B(B[17]), .C(carry[17]), .Y(SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_9_DW01_add_76 ( A, B, CI, 
        SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:1] carry;

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_10_DW01_add_77 ( A, B, CI, 
        SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:1] carry;

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_11_DW01_add_78 ( A, B, CI, 
        SUM, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [19:1] carry;

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_19 ( .A(A[19]), .B(B[19]), .C(carry[19]), .Y(SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_12_DW01_add_79 ( A, B, CI, 
        SUM, CO );
  input [18:0] A;
  input [18:0] B;
  output [18:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [18:1] carry;

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_18 ( .A(A[18]), .B(B[18]), .C(carry[18]), .Y(SUM[18]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_13_DW01_add_80 ( A, B, CI, 
        SUM, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [17:1] carry;

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_17 ( .A(A[17]), .B(B[17]), .C(carry[17]), .Y(SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_14_DW01_add_81 ( A, B, CI, 
        SUM, CO );
  input [20:0] A;
  input [20:0] B;
  output [20:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [20:1] carry;

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_20 ( .A(A[20]), .B(B[20]), .C(carry[20]), .Y(SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_15_DW01_add_82 ( A, B, CI, 
        SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:1] carry;

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  XOR3X1 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_16_DW01_add_83 ( A, B, CI, 
        SUM, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [19:1] carry;

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3XL U1_19 ( .A(A[19]), .B(B[19]), .C(carry[19]), .Y(SUM[19]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_17_DW01_add_84 ( A, B, CI, 
        SUM, CO );
  input [20:0] A;
  input [20:0] B;
  output [20:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [20:1] carry;

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_20 ( .A(A[20]), .B(B[20]), .C(carry[20]), .Y(SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_18_DW01_add_85 ( A, B, CI, 
        SUM, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [19:1] carry;

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_19 ( .A(A[19]), .B(B[19]), .C(carry[19]), .Y(SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_19_DW01_add_86 ( A, B, CI, 
        SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:1] carry;

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  XOR3X1 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_20_DW01_add_87 ( A, B, CI, 
        SUM, CO );
  input [18:0] A;
  input [18:0] B;
  output [18:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [18:1] carry;

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3XL U1_18 ( .A(A[18]), .B(B[18]), .C(carry[18]), .Y(SUM[18]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_21_DW01_add_88 ( A, B, CI, 
        SUM, CO );
  input [18:0] A;
  input [18:0] B;
  output [18:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [18:1] carry;

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_18 ( .A(A[18]), .B(B[18]), .C(carry[18]), .Y(SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_22_DW01_add_89 ( A, B, CI, 
        SUM, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [17:1] carry;

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_17 ( .A(A[17]), .B(B[17]), .C(carry[17]), .Y(SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_23_DW01_add_90 ( A, B, CI, 
        SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:1] carry;

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_24_DW01_add_91 ( A, B, CI, 
        SUM, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [19:1] carry;

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_19 ( .A(A[19]), .B(B[19]), .C(carry[19]), .Y(SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_25_DW01_add_92 ( A, B, CI, 
        SUM, CO );
  input [18:0] A;
  input [18:0] B;
  output [18:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [18:1] carry;

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_18 ( .A(A[18]), .B(B[18]), .C(carry[18]), .Y(SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_26_DW01_add_93 ( A, B, CI, 
        SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:1] carry;

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  XOR3X1 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_27_DW01_add_94 ( A, B, CI, 
        SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:1] carry;

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_28_DW01_add_95 ( A, B, CI, 
        SUM, CO );
  input [18:0] A;
  input [18:0] B;
  output [18:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [18:1] carry;

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_18 ( .A(A[18]), .B(B[18]), .C(carry[18]), .Y(SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_29_DW01_add_96 ( A, B, CI, 
        SUM, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [17:1] carry;

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_17 ( .A(A[17]), .B(B[17]), .C(carry[17]), .Y(SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_30_DW01_add_97 ( A, B, CI, 
        SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:1] carry;

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_32 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n131, n132, n133, n134, n135, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200;

  CLKINVX1 U1 ( .A(n1), .Y(product[15]) );
  ADDFXL U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n78), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  CLKINVX1 U16 ( .A(n15), .Y(n16) );
  ADDFXL U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n22), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CLKINVX1 U19 ( .A(n21), .Y(n22) );
  CMPR42X1 U20 ( .A(n29), .B(n59), .C(n65), .D(n72), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n30), .D(n34), .ICI(n31), .S(n28), .ICO(
        n26), .CO(n27) );
  CLKINVX1 U22 ( .A(n29), .Y(n30) );
  CMPR42X1 U23 ( .A(n67), .B(n80), .C(n39), .D(n35), .ICI(n36), .S(n33), .ICO(
        n31), .CO(n32) );
  XNOR2X1 U24 ( .A(n73), .B(n61), .Y(n35) );
  OR2X1 U25 ( .A(n73), .B(n61), .Y(n34) );
  CMPR42X1 U26 ( .A(n52), .B(n62), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n81), .B(n68), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n69), .D(n75), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n53), .CI(n47), .CO(n44), .S(n45) );
  ADDHXL U30 ( .A(n83), .B(n70), .CO(n46), .S(n47) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n85), .B(n54), .CO(n50), .S(n51) );
  OAI22XL U33 ( .A0(n152), .A1(n144), .B0(n195), .B1(n96), .Y(n52) );
  AO21X1 U34 ( .A0(n152), .A1(n156), .B0(n88), .Y(n56) );
  OAI22XL U35 ( .A0(n152), .A1(n89), .B0(n195), .B1(n88), .Y(n15) );
  OAI22XL U36 ( .A0(n152), .A1(n90), .B0(n195), .B1(n89), .Y(n57) );
  OAI22XL U37 ( .A0(n152), .A1(n91), .B0(n195), .B1(n90), .Y(n58) );
  OAI22XL U38 ( .A0(n152), .A1(n92), .B0(n195), .B1(n91), .Y(n59) );
  OAI22XL U39 ( .A0(n152), .A1(n93), .B0(n156), .B1(n92), .Y(n60) );
  OAI22XL U40 ( .A0(n152), .A1(n94), .B0(n156), .B1(n93), .Y(n61) );
  OAI22XL U41 ( .A0(n194), .A1(n95), .B0(n156), .B1(n94), .Y(n62) );
  XNOR2X1 U43 ( .A(n148), .B(b[7]), .Y(n88) );
  XNOR2X1 U44 ( .A(n148), .B(b[6]), .Y(n89) );
  XNOR2X1 U45 ( .A(n148), .B(b[5]), .Y(n90) );
  XNOR2X1 U46 ( .A(n148), .B(b[4]), .Y(n91) );
  XNOR2X1 U47 ( .A(n148), .B(b[3]), .Y(n92) );
  XNOR2X1 U48 ( .A(n148), .B(b[2]), .Y(n93) );
  XNOR2X1 U49 ( .A(n148), .B(b[1]), .Y(n94) );
  OAI22XL U52 ( .A0(n153), .A1(n145), .B0(n196), .B1(n105), .Y(n53) );
  AO21X1 U53 ( .A0(n153), .A1(n157), .B0(n97), .Y(n64) );
  OAI22XL U54 ( .A0(n153), .A1(n98), .B0(n196), .B1(n97), .Y(n21) );
  OAI22XL U55 ( .A0(n153), .A1(n99), .B0(n196), .B1(n98), .Y(n65) );
  OAI22XL U56 ( .A0(n153), .A1(n100), .B0(n196), .B1(n99), .Y(n66) );
  OAI22XL U57 ( .A0(n153), .A1(n101), .B0(n196), .B1(n100), .Y(n67) );
  OAI22XL U58 ( .A0(n153), .A1(n102), .B0(n157), .B1(n101), .Y(n68) );
  OAI22XL U59 ( .A0(n153), .A1(n103), .B0(n157), .B1(n102), .Y(n69) );
  OAI22XL U60 ( .A0(n189), .A1(n104), .B0(n157), .B1(n103), .Y(n70) );
  XNOR2X1 U62 ( .A(n149), .B(b[7]), .Y(n97) );
  XNOR2X1 U63 ( .A(n149), .B(b[6]), .Y(n98) );
  XNOR2X1 U64 ( .A(n149), .B(b[5]), .Y(n99) );
  XNOR2X1 U65 ( .A(n149), .B(b[4]), .Y(n100) );
  XNOR2X1 U66 ( .A(n149), .B(b[3]), .Y(n101) );
  XNOR2X1 U67 ( .A(n149), .B(b[2]), .Y(n102) );
  XNOR2X1 U68 ( .A(n149), .B(b[1]), .Y(n103) );
  OAI22XL U71 ( .A0(n154), .A1(n146), .B0(n192), .B1(n114), .Y(n54) );
  AO21X1 U72 ( .A0(n154), .A1(n158), .B0(n106), .Y(n72) );
  OAI22XL U73 ( .A0(n154), .A1(n107), .B0(n192), .B1(n106), .Y(n29) );
  OAI22XL U74 ( .A0(n154), .A1(n108), .B0(n192), .B1(n107), .Y(n73) );
  OAI22XL U75 ( .A0(n154), .A1(n109), .B0(n192), .B1(n108), .Y(n74) );
  OAI22XL U76 ( .A0(n154), .A1(n110), .B0(n192), .B1(n109), .Y(n75) );
  OAI22XL U77 ( .A0(n154), .A1(n111), .B0(n158), .B1(n110), .Y(n76) );
  OAI22XL U78 ( .A0(n154), .A1(n112), .B0(n158), .B1(n111), .Y(n77) );
  OAI22XL U79 ( .A0(n191), .A1(n113), .B0(n158), .B1(n112), .Y(n78) );
  XNOR2X1 U81 ( .A(n150), .B(b[7]), .Y(n106) );
  XNOR2X1 U82 ( .A(n150), .B(b[6]), .Y(n107) );
  XNOR2X1 U83 ( .A(n150), .B(b[5]), .Y(n108) );
  XNOR2X1 U84 ( .A(n150), .B(b[4]), .Y(n109) );
  XNOR2X1 U85 ( .A(n150), .B(b[3]), .Y(n110) );
  XNOR2X1 U86 ( .A(n150), .B(b[2]), .Y(n111) );
  XNOR2X1 U87 ( .A(n150), .B(b[1]), .Y(n112) );
  OAI22XL U90 ( .A0(n155), .A1(n147), .B0(n123), .B1(n143), .Y(n55) );
  AO21X1 U91 ( .A0(n155), .A1(n159), .B0(n115), .Y(n80) );
  OAI22XL U92 ( .A0(n155), .A1(n116), .B0(n115), .B1(n143), .Y(n81) );
  OAI22XL U93 ( .A0(n155), .A1(n117), .B0(n116), .B1(n143), .Y(n82) );
  OAI22XL U94 ( .A0(n155), .A1(n118), .B0(n117), .B1(n143), .Y(n83) );
  OAI22XL U95 ( .A0(n155), .A1(n119), .B0(n118), .B1(n143), .Y(n84) );
  OAI22XL U96 ( .A0(n155), .A1(n120), .B0(n119), .B1(n143), .Y(n85) );
  OAI22XL U97 ( .A0(n155), .A1(n121), .B0(n120), .B1(n143), .Y(n86) );
  OAI22XL U98 ( .A0(n190), .A1(n122), .B0(n121), .B1(n143), .Y(n87) );
  XNOR2X1 U100 ( .A(n151), .B(b[7]), .Y(n115) );
  XNOR2X1 U101 ( .A(n151), .B(b[6]), .Y(n116) );
  XNOR2X1 U102 ( .A(n151), .B(b[5]), .Y(n117) );
  XNOR2X1 U103 ( .A(n151), .B(b[4]), .Y(n118) );
  XNOR2X1 U104 ( .A(n151), .B(b[3]), .Y(n119) );
  XNOR2X1 U105 ( .A(n151), .B(b[2]), .Y(n120) );
  XNOR2X1 U106 ( .A(n151), .B(b[1]), .Y(n121) );
  CLKINVX1 U112 ( .A(n148), .Y(n144) );
  CLKINVX1 U116 ( .A(n149), .Y(n145) );
  CLKINVX1 U120 ( .A(n150), .Y(n146) );
  CLKINVX1 U124 ( .A(n151), .Y(n147) );
  XOR2X1 U127 ( .A(a[6]), .B(a[7]), .Y(n132) );
  XNOR2X1 U128 ( .A(a[6]), .B(a[5]), .Y(n156) );
  XOR2X1 U130 ( .A(a[4]), .B(a[5]), .Y(n133) );
  XNOR2X1 U131 ( .A(a[4]), .B(a[3]), .Y(n157) );
  XOR2X1 U133 ( .A(a[2]), .B(a[3]), .Y(n134) );
  XNOR2X1 U134 ( .A(a[2]), .B(a[1]), .Y(n158) );
  XOR2X1 U136 ( .A(a[0]), .B(a[1]), .Y(n135) );
  CLKINVX1 U137 ( .A(a[0]), .Y(n159) );
  CLKINVX1 U140 ( .A(n198), .Y(n189) );
  CLKINVX1 U141 ( .A(n200), .Y(n190) );
  CLKINVX1 U142 ( .A(n199), .Y(n191) );
  CLKINVX1 U143 ( .A(n158), .Y(n142) );
  CLKINVX1 U144 ( .A(n142), .Y(n192) );
  CLKINVX1 U145 ( .A(b[0]), .Y(n131) );
  CLKINVX1 U146 ( .A(n131), .Y(n193) );
  CLKINVX1 U147 ( .A(n197), .Y(n194) );
  CLKINVX1 U148 ( .A(n156), .Y(n140) );
  CLKINVX1 U149 ( .A(n140), .Y(n195) );
  NAND2BXL U150 ( .AN(n193), .B(a[1]), .Y(n123) );
  NAND2BXL U151 ( .AN(n193), .B(a[3]), .Y(n114) );
  CLKINVX1 U152 ( .A(n157), .Y(n141) );
  CLKINVX1 U153 ( .A(n141), .Y(n196) );
  NOR2BXL U154 ( .AN(n193), .B(n159), .Y(product[0]) );
  XNOR2XL U155 ( .A(a[7]), .B(b[0]), .Y(n95) );
  XNOR2XL U156 ( .A(a[1]), .B(b[0]), .Y(n122) );
  NOR2BXL U157 ( .AN(n193), .B(n192), .Y(n79) );
  XNOR2XL U158 ( .A(a[3]), .B(b[0]), .Y(n113) );
  NOR2BXL U159 ( .AN(n193), .B(n196), .Y(n71) );
  NAND2BXL U160 ( .AN(n193), .B(a[7]), .Y(n96) );
  NAND2BXL U161 ( .AN(n193), .B(a[5]), .Y(n105) );
  XNOR2XL U162 ( .A(a[5]), .B(b[0]), .Y(n104) );
  NOR2BXL U163 ( .AN(n193), .B(n195), .Y(n63) );
  CLKBUFX3 U164 ( .A(n159), .Y(n143) );
  CLKBUFX3 U165 ( .A(a[1]), .Y(n151) );
  CLKBUFX3 U166 ( .A(a[3]), .Y(n150) );
  CLKBUFX3 U167 ( .A(a[5]), .Y(n149) );
  CLKBUFX3 U168 ( .A(a[7]), .Y(n148) );
  AND2X2 U169 ( .A(n132), .B(n156), .Y(n197) );
  CLKINVX1 U170 ( .A(n197), .Y(n152) );
  AND2X2 U171 ( .A(n133), .B(n157), .Y(n198) );
  CLKINVX1 U172 ( .A(n198), .Y(n153) );
  AND2X2 U173 ( .A(n134), .B(n158), .Y(n199) );
  CLKINVX1 U174 ( .A(n199), .Y(n154) );
  AND2X2 U175 ( .A(n135), .B(n159), .Y(n200) );
  CLKINVX1 U176 ( .A(n200), .Y(n155) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_33 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n131, n132, n133, n134, n135, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200;

  CLKINVX1 U1 ( .A(n1), .Y(product[15]) );
  ADDFXL U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n78), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  CLKINVX1 U16 ( .A(n15), .Y(n16) );
  ADDFXL U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n22), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CLKINVX1 U19 ( .A(n21), .Y(n22) );
  CMPR42X1 U20 ( .A(n29), .B(n59), .C(n65), .D(n72), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n30), .D(n34), .ICI(n31), .S(n28), .ICO(
        n26), .CO(n27) );
  CLKINVX1 U22 ( .A(n29), .Y(n30) );
  CMPR42X1 U23 ( .A(n67), .B(n80), .C(n39), .D(n35), .ICI(n36), .S(n33), .ICO(
        n31), .CO(n32) );
  XNOR2X1 U24 ( .A(n73), .B(n61), .Y(n35) );
  OR2X1 U25 ( .A(n73), .B(n61), .Y(n34) );
  CMPR42X1 U26 ( .A(n52), .B(n62), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n81), .B(n68), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n69), .D(n75), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n53), .CI(n47), .CO(n44), .S(n45) );
  ADDHXL U30 ( .A(n83), .B(n70), .CO(n46), .S(n47) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n85), .B(n54), .CO(n50), .S(n51) );
  OAI22XL U33 ( .A0(n152), .A1(n144), .B0(n195), .B1(n96), .Y(n52) );
  AO21X1 U34 ( .A0(n152), .A1(n156), .B0(n88), .Y(n56) );
  OAI22XL U35 ( .A0(n152), .A1(n89), .B0(n195), .B1(n88), .Y(n15) );
  OAI22XL U36 ( .A0(n152), .A1(n90), .B0(n195), .B1(n89), .Y(n57) );
  OAI22XL U37 ( .A0(n152), .A1(n91), .B0(n195), .B1(n90), .Y(n58) );
  OAI22XL U38 ( .A0(n152), .A1(n92), .B0(n195), .B1(n91), .Y(n59) );
  OAI22XL U39 ( .A0(n152), .A1(n93), .B0(n156), .B1(n92), .Y(n60) );
  OAI22XL U40 ( .A0(n152), .A1(n94), .B0(n156), .B1(n93), .Y(n61) );
  OAI22XL U41 ( .A0(n194), .A1(n95), .B0(n156), .B1(n94), .Y(n62) );
  XNOR2X1 U43 ( .A(n148), .B(b[7]), .Y(n88) );
  XNOR2X1 U44 ( .A(n148), .B(b[6]), .Y(n89) );
  XNOR2X1 U45 ( .A(n148), .B(b[5]), .Y(n90) );
  XNOR2X1 U46 ( .A(n148), .B(b[4]), .Y(n91) );
  XNOR2X1 U47 ( .A(n148), .B(b[3]), .Y(n92) );
  XNOR2X1 U48 ( .A(n148), .B(b[2]), .Y(n93) );
  XNOR2X1 U49 ( .A(n148), .B(b[1]), .Y(n94) );
  OAI22XL U52 ( .A0(n153), .A1(n145), .B0(n196), .B1(n105), .Y(n53) );
  AO21X1 U53 ( .A0(n153), .A1(n157), .B0(n97), .Y(n64) );
  OAI22XL U54 ( .A0(n153), .A1(n98), .B0(n196), .B1(n97), .Y(n21) );
  OAI22XL U55 ( .A0(n153), .A1(n99), .B0(n196), .B1(n98), .Y(n65) );
  OAI22XL U56 ( .A0(n153), .A1(n100), .B0(n196), .B1(n99), .Y(n66) );
  OAI22XL U57 ( .A0(n153), .A1(n101), .B0(n196), .B1(n100), .Y(n67) );
  OAI22XL U58 ( .A0(n153), .A1(n102), .B0(n157), .B1(n101), .Y(n68) );
  OAI22XL U59 ( .A0(n153), .A1(n103), .B0(n157), .B1(n102), .Y(n69) );
  OAI22XL U60 ( .A0(n189), .A1(n104), .B0(n157), .B1(n103), .Y(n70) );
  XNOR2X1 U62 ( .A(n149), .B(b[7]), .Y(n97) );
  XNOR2X1 U63 ( .A(n149), .B(b[6]), .Y(n98) );
  XNOR2X1 U64 ( .A(n149), .B(b[5]), .Y(n99) );
  XNOR2X1 U65 ( .A(n149), .B(b[4]), .Y(n100) );
  XNOR2X1 U66 ( .A(n149), .B(b[3]), .Y(n101) );
  XNOR2X1 U67 ( .A(n149), .B(b[2]), .Y(n102) );
  XNOR2X1 U68 ( .A(n149), .B(b[1]), .Y(n103) );
  OAI22XL U71 ( .A0(n154), .A1(n146), .B0(n192), .B1(n114), .Y(n54) );
  AO21X1 U72 ( .A0(n154), .A1(n158), .B0(n106), .Y(n72) );
  OAI22XL U73 ( .A0(n154), .A1(n107), .B0(n192), .B1(n106), .Y(n29) );
  OAI22XL U74 ( .A0(n154), .A1(n108), .B0(n192), .B1(n107), .Y(n73) );
  OAI22XL U75 ( .A0(n154), .A1(n109), .B0(n192), .B1(n108), .Y(n74) );
  OAI22XL U76 ( .A0(n154), .A1(n110), .B0(n192), .B1(n109), .Y(n75) );
  OAI22XL U77 ( .A0(n154), .A1(n111), .B0(n158), .B1(n110), .Y(n76) );
  OAI22XL U78 ( .A0(n154), .A1(n112), .B0(n158), .B1(n111), .Y(n77) );
  OAI22XL U79 ( .A0(n191), .A1(n113), .B0(n158), .B1(n112), .Y(n78) );
  XNOR2X1 U81 ( .A(n150), .B(b[7]), .Y(n106) );
  XNOR2X1 U82 ( .A(n150), .B(b[6]), .Y(n107) );
  XNOR2X1 U83 ( .A(n150), .B(b[5]), .Y(n108) );
  XNOR2X1 U84 ( .A(n150), .B(b[4]), .Y(n109) );
  XNOR2X1 U85 ( .A(n150), .B(b[3]), .Y(n110) );
  XNOR2X1 U86 ( .A(n150), .B(b[2]), .Y(n111) );
  XNOR2X1 U87 ( .A(n150), .B(b[1]), .Y(n112) );
  OAI22XL U90 ( .A0(n155), .A1(n147), .B0(n123), .B1(n143), .Y(n55) );
  AO21X1 U91 ( .A0(n155), .A1(n159), .B0(n115), .Y(n80) );
  OAI22XL U92 ( .A0(n155), .A1(n116), .B0(n115), .B1(n143), .Y(n81) );
  OAI22XL U93 ( .A0(n155), .A1(n117), .B0(n116), .B1(n143), .Y(n82) );
  OAI22XL U94 ( .A0(n155), .A1(n118), .B0(n117), .B1(n143), .Y(n83) );
  OAI22XL U95 ( .A0(n155), .A1(n119), .B0(n118), .B1(n143), .Y(n84) );
  OAI22XL U96 ( .A0(n155), .A1(n120), .B0(n119), .B1(n143), .Y(n85) );
  OAI22XL U97 ( .A0(n155), .A1(n121), .B0(n120), .B1(n143), .Y(n86) );
  OAI22XL U98 ( .A0(n190), .A1(n122), .B0(n121), .B1(n143), .Y(n87) );
  XNOR2X1 U100 ( .A(n151), .B(b[7]), .Y(n115) );
  XNOR2X1 U101 ( .A(n151), .B(b[6]), .Y(n116) );
  XNOR2X1 U102 ( .A(n151), .B(b[5]), .Y(n117) );
  XNOR2X1 U103 ( .A(n151), .B(b[4]), .Y(n118) );
  XNOR2X1 U104 ( .A(n151), .B(b[3]), .Y(n119) );
  XNOR2X1 U105 ( .A(n151), .B(b[2]), .Y(n120) );
  XNOR2X1 U106 ( .A(n151), .B(b[1]), .Y(n121) );
  CLKINVX1 U112 ( .A(n148), .Y(n144) );
  CLKINVX1 U116 ( .A(n149), .Y(n145) );
  CLKINVX1 U120 ( .A(n150), .Y(n146) );
  CLKINVX1 U124 ( .A(n151), .Y(n147) );
  XOR2X1 U127 ( .A(a[6]), .B(a[7]), .Y(n132) );
  XNOR2X1 U128 ( .A(a[6]), .B(a[5]), .Y(n156) );
  XOR2X1 U130 ( .A(a[4]), .B(a[5]), .Y(n133) );
  XNOR2X1 U131 ( .A(a[4]), .B(a[3]), .Y(n157) );
  XOR2X1 U133 ( .A(a[2]), .B(a[3]), .Y(n134) );
  XNOR2X1 U134 ( .A(a[2]), .B(a[1]), .Y(n158) );
  XOR2X1 U136 ( .A(a[0]), .B(a[1]), .Y(n135) );
  CLKINVX1 U137 ( .A(a[0]), .Y(n159) );
  CLKINVX1 U140 ( .A(n198), .Y(n189) );
  CLKINVX1 U141 ( .A(n200), .Y(n190) );
  CLKINVX1 U142 ( .A(n199), .Y(n191) );
  CLKINVX1 U143 ( .A(n158), .Y(n142) );
  CLKINVX1 U144 ( .A(n142), .Y(n192) );
  CLKINVX1 U145 ( .A(b[0]), .Y(n131) );
  CLKINVX1 U146 ( .A(n131), .Y(n193) );
  CLKINVX1 U147 ( .A(n197), .Y(n194) );
  CLKINVX1 U148 ( .A(n156), .Y(n140) );
  CLKINVX1 U149 ( .A(n140), .Y(n195) );
  NAND2BXL U150 ( .AN(n193), .B(a[1]), .Y(n123) );
  NAND2BXL U151 ( .AN(n193), .B(a[3]), .Y(n114) );
  CLKINVX1 U152 ( .A(n157), .Y(n141) );
  CLKINVX1 U153 ( .A(n141), .Y(n196) );
  NOR2BXL U154 ( .AN(n193), .B(n159), .Y(product[0]) );
  XNOR2XL U155 ( .A(a[7]), .B(b[0]), .Y(n95) );
  XNOR2XL U156 ( .A(a[1]), .B(b[0]), .Y(n122) );
  NOR2BXL U157 ( .AN(n193), .B(n192), .Y(n79) );
  XNOR2XL U158 ( .A(a[3]), .B(b[0]), .Y(n113) );
  NOR2BXL U159 ( .AN(n193), .B(n196), .Y(n71) );
  NAND2BXL U160 ( .AN(n193), .B(a[7]), .Y(n96) );
  NAND2BXL U161 ( .AN(n193), .B(a[5]), .Y(n105) );
  XNOR2XL U162 ( .A(a[5]), .B(b[0]), .Y(n104) );
  NOR2BXL U163 ( .AN(n193), .B(n195), .Y(n63) );
  CLKBUFX3 U164 ( .A(n159), .Y(n143) );
  CLKBUFX3 U165 ( .A(a[1]), .Y(n151) );
  CLKBUFX3 U166 ( .A(a[3]), .Y(n150) );
  CLKBUFX3 U167 ( .A(a[5]), .Y(n149) );
  CLKBUFX3 U168 ( .A(a[7]), .Y(n148) );
  AND2X2 U169 ( .A(n132), .B(n156), .Y(n197) );
  CLKINVX1 U170 ( .A(n197), .Y(n152) );
  AND2X2 U171 ( .A(n133), .B(n157), .Y(n198) );
  CLKINVX1 U172 ( .A(n198), .Y(n153) );
  AND2X2 U173 ( .A(n134), .B(n158), .Y(n199) );
  CLKINVX1 U174 ( .A(n199), .Y(n154) );
  AND2X2 U175 ( .A(n135), .B(n159), .Y(n200) );
  CLKINVX1 U176 ( .A(n200), .Y(n155) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_34 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n131, n132, n133, n134, n135, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200;

  CLKINVX1 U1 ( .A(n1), .Y(product[15]) );
  ADDFXL U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n78), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  CLKINVX1 U16 ( .A(n15), .Y(n16) );
  ADDFXL U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n22), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CLKINVX1 U19 ( .A(n21), .Y(n22) );
  CMPR42X1 U20 ( .A(n29), .B(n59), .C(n65), .D(n72), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n30), .D(n34), .ICI(n31), .S(n28), .ICO(
        n26), .CO(n27) );
  CLKINVX1 U22 ( .A(n29), .Y(n30) );
  CMPR42X1 U23 ( .A(n67), .B(n80), .C(n39), .D(n35), .ICI(n36), .S(n33), .ICO(
        n31), .CO(n32) );
  XNOR2X1 U24 ( .A(n73), .B(n61), .Y(n35) );
  OR2X1 U25 ( .A(n73), .B(n61), .Y(n34) );
  CMPR42X1 U26 ( .A(n52), .B(n62), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n81), .B(n68), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n69), .D(n75), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n53), .CI(n47), .CO(n44), .S(n45) );
  ADDHXL U30 ( .A(n83), .B(n70), .CO(n46), .S(n47) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n85), .B(n54), .CO(n50), .S(n51) );
  OAI22XL U33 ( .A0(n152), .A1(n144), .B0(n195), .B1(n96), .Y(n52) );
  AO21X1 U34 ( .A0(n152), .A1(n156), .B0(n88), .Y(n56) );
  OAI22XL U35 ( .A0(n152), .A1(n89), .B0(n195), .B1(n88), .Y(n15) );
  OAI22XL U36 ( .A0(n152), .A1(n90), .B0(n195), .B1(n89), .Y(n57) );
  OAI22XL U37 ( .A0(n152), .A1(n91), .B0(n195), .B1(n90), .Y(n58) );
  OAI22XL U38 ( .A0(n152), .A1(n92), .B0(n195), .B1(n91), .Y(n59) );
  OAI22XL U39 ( .A0(n152), .A1(n93), .B0(n156), .B1(n92), .Y(n60) );
  OAI22XL U40 ( .A0(n152), .A1(n94), .B0(n156), .B1(n93), .Y(n61) );
  OAI22XL U41 ( .A0(n194), .A1(n95), .B0(n156), .B1(n94), .Y(n62) );
  XNOR2X1 U43 ( .A(n148), .B(b[7]), .Y(n88) );
  XNOR2X1 U44 ( .A(n148), .B(b[6]), .Y(n89) );
  XNOR2X1 U45 ( .A(n148), .B(b[5]), .Y(n90) );
  XNOR2X1 U46 ( .A(n148), .B(b[4]), .Y(n91) );
  XNOR2X1 U47 ( .A(n148), .B(b[3]), .Y(n92) );
  XNOR2X1 U48 ( .A(n148), .B(b[2]), .Y(n93) );
  XNOR2X1 U49 ( .A(n148), .B(b[1]), .Y(n94) );
  OAI22XL U52 ( .A0(n153), .A1(n145), .B0(n196), .B1(n105), .Y(n53) );
  AO21X1 U53 ( .A0(n153), .A1(n157), .B0(n97), .Y(n64) );
  OAI22XL U54 ( .A0(n153), .A1(n98), .B0(n196), .B1(n97), .Y(n21) );
  OAI22XL U55 ( .A0(n153), .A1(n99), .B0(n196), .B1(n98), .Y(n65) );
  OAI22XL U56 ( .A0(n153), .A1(n100), .B0(n196), .B1(n99), .Y(n66) );
  OAI22XL U57 ( .A0(n153), .A1(n101), .B0(n196), .B1(n100), .Y(n67) );
  OAI22XL U58 ( .A0(n153), .A1(n102), .B0(n157), .B1(n101), .Y(n68) );
  OAI22XL U59 ( .A0(n153), .A1(n103), .B0(n157), .B1(n102), .Y(n69) );
  OAI22XL U60 ( .A0(n189), .A1(n104), .B0(n157), .B1(n103), .Y(n70) );
  XNOR2X1 U62 ( .A(n149), .B(b[7]), .Y(n97) );
  XNOR2X1 U63 ( .A(n149), .B(b[6]), .Y(n98) );
  XNOR2X1 U64 ( .A(n149), .B(b[5]), .Y(n99) );
  XNOR2X1 U65 ( .A(n149), .B(b[4]), .Y(n100) );
  XNOR2X1 U66 ( .A(n149), .B(b[3]), .Y(n101) );
  XNOR2X1 U67 ( .A(n149), .B(b[2]), .Y(n102) );
  XNOR2X1 U68 ( .A(n149), .B(b[1]), .Y(n103) );
  OAI22XL U71 ( .A0(n154), .A1(n146), .B0(n192), .B1(n114), .Y(n54) );
  AO21X1 U72 ( .A0(n154), .A1(n158), .B0(n106), .Y(n72) );
  OAI22XL U73 ( .A0(n154), .A1(n107), .B0(n192), .B1(n106), .Y(n29) );
  OAI22XL U74 ( .A0(n154), .A1(n108), .B0(n192), .B1(n107), .Y(n73) );
  OAI22XL U75 ( .A0(n154), .A1(n109), .B0(n192), .B1(n108), .Y(n74) );
  OAI22XL U76 ( .A0(n154), .A1(n110), .B0(n192), .B1(n109), .Y(n75) );
  OAI22XL U77 ( .A0(n154), .A1(n111), .B0(n158), .B1(n110), .Y(n76) );
  OAI22XL U78 ( .A0(n154), .A1(n112), .B0(n158), .B1(n111), .Y(n77) );
  OAI22XL U79 ( .A0(n191), .A1(n113), .B0(n158), .B1(n112), .Y(n78) );
  XNOR2X1 U81 ( .A(n150), .B(b[7]), .Y(n106) );
  XNOR2X1 U82 ( .A(n150), .B(b[6]), .Y(n107) );
  XNOR2X1 U83 ( .A(n150), .B(b[5]), .Y(n108) );
  XNOR2X1 U84 ( .A(n150), .B(b[4]), .Y(n109) );
  XNOR2X1 U85 ( .A(n150), .B(b[3]), .Y(n110) );
  XNOR2X1 U86 ( .A(n150), .B(b[2]), .Y(n111) );
  XNOR2X1 U87 ( .A(n150), .B(b[1]), .Y(n112) );
  OAI22XL U90 ( .A0(n155), .A1(n147), .B0(n123), .B1(n143), .Y(n55) );
  AO21X1 U91 ( .A0(n155), .A1(n159), .B0(n115), .Y(n80) );
  OAI22XL U92 ( .A0(n155), .A1(n116), .B0(n115), .B1(n143), .Y(n81) );
  OAI22XL U93 ( .A0(n155), .A1(n117), .B0(n116), .B1(n143), .Y(n82) );
  OAI22XL U94 ( .A0(n155), .A1(n118), .B0(n117), .B1(n143), .Y(n83) );
  OAI22XL U95 ( .A0(n155), .A1(n119), .B0(n118), .B1(n143), .Y(n84) );
  OAI22XL U96 ( .A0(n155), .A1(n120), .B0(n119), .B1(n143), .Y(n85) );
  OAI22XL U97 ( .A0(n155), .A1(n121), .B0(n120), .B1(n143), .Y(n86) );
  OAI22XL U98 ( .A0(n190), .A1(n122), .B0(n121), .B1(n143), .Y(n87) );
  XNOR2X1 U100 ( .A(n151), .B(b[7]), .Y(n115) );
  XNOR2X1 U101 ( .A(n151), .B(b[6]), .Y(n116) );
  XNOR2X1 U102 ( .A(n151), .B(b[5]), .Y(n117) );
  XNOR2X1 U103 ( .A(n151), .B(b[4]), .Y(n118) );
  XNOR2X1 U104 ( .A(n151), .B(b[3]), .Y(n119) );
  XNOR2X1 U105 ( .A(n151), .B(b[2]), .Y(n120) );
  XNOR2X1 U106 ( .A(n151), .B(b[1]), .Y(n121) );
  CLKINVX1 U112 ( .A(n148), .Y(n144) );
  CLKINVX1 U116 ( .A(n149), .Y(n145) );
  CLKINVX1 U120 ( .A(n150), .Y(n146) );
  CLKINVX1 U124 ( .A(n151), .Y(n147) );
  XOR2X1 U127 ( .A(a[6]), .B(a[7]), .Y(n132) );
  XNOR2X1 U128 ( .A(a[6]), .B(a[5]), .Y(n156) );
  XOR2X1 U130 ( .A(a[4]), .B(a[5]), .Y(n133) );
  XNOR2X1 U131 ( .A(a[4]), .B(a[3]), .Y(n157) );
  XOR2X1 U133 ( .A(a[2]), .B(a[3]), .Y(n134) );
  XNOR2X1 U134 ( .A(a[2]), .B(a[1]), .Y(n158) );
  XOR2X1 U136 ( .A(a[0]), .B(a[1]), .Y(n135) );
  CLKINVX1 U137 ( .A(a[0]), .Y(n159) );
  CLKINVX1 U140 ( .A(n198), .Y(n189) );
  CLKINVX1 U141 ( .A(n200), .Y(n190) );
  CLKINVX1 U142 ( .A(n199), .Y(n191) );
  CLKINVX1 U143 ( .A(n158), .Y(n142) );
  CLKINVX1 U144 ( .A(n142), .Y(n192) );
  CLKINVX1 U145 ( .A(b[0]), .Y(n131) );
  CLKINVX1 U146 ( .A(n131), .Y(n193) );
  CLKINVX1 U147 ( .A(n197), .Y(n194) );
  CLKINVX1 U148 ( .A(n156), .Y(n140) );
  CLKINVX1 U149 ( .A(n140), .Y(n195) );
  NAND2BXL U150 ( .AN(n193), .B(a[1]), .Y(n123) );
  NAND2BXL U151 ( .AN(n193), .B(a[3]), .Y(n114) );
  CLKINVX1 U152 ( .A(n157), .Y(n141) );
  CLKINVX1 U153 ( .A(n141), .Y(n196) );
  NOR2BXL U154 ( .AN(n193), .B(n159), .Y(product[0]) );
  XNOR2XL U155 ( .A(a[7]), .B(b[0]), .Y(n95) );
  XNOR2XL U156 ( .A(a[1]), .B(b[0]), .Y(n122) );
  NOR2BXL U157 ( .AN(n193), .B(n192), .Y(n79) );
  XNOR2XL U158 ( .A(a[3]), .B(b[0]), .Y(n113) );
  NOR2BXL U159 ( .AN(n193), .B(n196), .Y(n71) );
  NAND2BXL U160 ( .AN(n193), .B(a[7]), .Y(n96) );
  NAND2BXL U161 ( .AN(n193), .B(a[5]), .Y(n105) );
  XNOR2XL U162 ( .A(a[5]), .B(b[0]), .Y(n104) );
  NOR2BXL U163 ( .AN(n193), .B(n195), .Y(n63) );
  CLKBUFX3 U164 ( .A(n159), .Y(n143) );
  CLKBUFX3 U165 ( .A(a[1]), .Y(n151) );
  CLKBUFX3 U166 ( .A(a[3]), .Y(n150) );
  CLKBUFX3 U167 ( .A(a[5]), .Y(n149) );
  CLKBUFX3 U168 ( .A(a[7]), .Y(n148) );
  AND2X2 U169 ( .A(n132), .B(n156), .Y(n197) );
  CLKINVX1 U170 ( .A(n197), .Y(n152) );
  AND2X2 U171 ( .A(n133), .B(n157), .Y(n198) );
  CLKINVX1 U172 ( .A(n198), .Y(n153) );
  AND2X2 U173 ( .A(n134), .B(n158), .Y(n199) );
  CLKINVX1 U174 ( .A(n199), .Y(n154) );
  AND2X2 U175 ( .A(n135), .B(n159), .Y(n200) );
  CLKINVX1 U176 ( .A(n200), .Y(n155) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_35 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n131, n132, n133, n134, n135, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200;

  CLKINVX1 U1 ( .A(n1), .Y(product[15]) );
  ADDFXL U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n78), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  CLKINVX1 U16 ( .A(n15), .Y(n16) );
  ADDFXL U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n22), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CLKINVX1 U19 ( .A(n21), .Y(n22) );
  CMPR42X1 U20 ( .A(n29), .B(n59), .C(n65), .D(n72), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n30), .D(n34), .ICI(n31), .S(n28), .ICO(
        n26), .CO(n27) );
  CLKINVX1 U22 ( .A(n29), .Y(n30) );
  CMPR42X1 U23 ( .A(n67), .B(n80), .C(n39), .D(n35), .ICI(n36), .S(n33), .ICO(
        n31), .CO(n32) );
  XNOR2X1 U24 ( .A(n73), .B(n61), .Y(n35) );
  OR2X1 U25 ( .A(n73), .B(n61), .Y(n34) );
  CMPR42X1 U26 ( .A(n52), .B(n62), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n81), .B(n68), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n69), .D(n75), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n53), .CI(n47), .CO(n44), .S(n45) );
  ADDHXL U30 ( .A(n83), .B(n70), .CO(n46), .S(n47) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n85), .B(n54), .CO(n50), .S(n51) );
  OAI22XL U33 ( .A0(n152), .A1(n144), .B0(n195), .B1(n96), .Y(n52) );
  AO21X1 U34 ( .A0(n152), .A1(n156), .B0(n88), .Y(n56) );
  OAI22XL U35 ( .A0(n152), .A1(n89), .B0(n195), .B1(n88), .Y(n15) );
  OAI22XL U36 ( .A0(n152), .A1(n90), .B0(n195), .B1(n89), .Y(n57) );
  OAI22XL U37 ( .A0(n152), .A1(n91), .B0(n195), .B1(n90), .Y(n58) );
  OAI22XL U38 ( .A0(n152), .A1(n92), .B0(n195), .B1(n91), .Y(n59) );
  OAI22XL U39 ( .A0(n152), .A1(n93), .B0(n156), .B1(n92), .Y(n60) );
  OAI22XL U40 ( .A0(n152), .A1(n94), .B0(n156), .B1(n93), .Y(n61) );
  OAI22XL U41 ( .A0(n194), .A1(n95), .B0(n156), .B1(n94), .Y(n62) );
  XNOR2X1 U43 ( .A(n148), .B(b[7]), .Y(n88) );
  XNOR2X1 U44 ( .A(n148), .B(b[6]), .Y(n89) );
  XNOR2X1 U45 ( .A(n148), .B(b[5]), .Y(n90) );
  XNOR2X1 U46 ( .A(n148), .B(b[4]), .Y(n91) );
  XNOR2X1 U47 ( .A(n148), .B(b[3]), .Y(n92) );
  XNOR2X1 U48 ( .A(n148), .B(b[2]), .Y(n93) );
  XNOR2X1 U49 ( .A(n148), .B(b[1]), .Y(n94) );
  OAI22XL U52 ( .A0(n153), .A1(n145), .B0(n196), .B1(n105), .Y(n53) );
  AO21X1 U53 ( .A0(n153), .A1(n157), .B0(n97), .Y(n64) );
  OAI22XL U54 ( .A0(n153), .A1(n98), .B0(n196), .B1(n97), .Y(n21) );
  OAI22XL U55 ( .A0(n153), .A1(n99), .B0(n196), .B1(n98), .Y(n65) );
  OAI22XL U56 ( .A0(n153), .A1(n100), .B0(n196), .B1(n99), .Y(n66) );
  OAI22XL U57 ( .A0(n153), .A1(n101), .B0(n196), .B1(n100), .Y(n67) );
  OAI22XL U58 ( .A0(n153), .A1(n102), .B0(n157), .B1(n101), .Y(n68) );
  OAI22XL U59 ( .A0(n153), .A1(n103), .B0(n157), .B1(n102), .Y(n69) );
  OAI22XL U60 ( .A0(n189), .A1(n104), .B0(n157), .B1(n103), .Y(n70) );
  XNOR2X1 U62 ( .A(n149), .B(b[7]), .Y(n97) );
  XNOR2X1 U63 ( .A(n149), .B(b[6]), .Y(n98) );
  XNOR2X1 U64 ( .A(n149), .B(b[5]), .Y(n99) );
  XNOR2X1 U65 ( .A(n149), .B(b[4]), .Y(n100) );
  XNOR2X1 U66 ( .A(n149), .B(b[3]), .Y(n101) );
  XNOR2X1 U67 ( .A(n149), .B(b[2]), .Y(n102) );
  XNOR2X1 U68 ( .A(n149), .B(b[1]), .Y(n103) );
  OAI22XL U71 ( .A0(n154), .A1(n146), .B0(n192), .B1(n114), .Y(n54) );
  AO21X1 U72 ( .A0(n154), .A1(n158), .B0(n106), .Y(n72) );
  OAI22XL U73 ( .A0(n154), .A1(n107), .B0(n192), .B1(n106), .Y(n29) );
  OAI22XL U74 ( .A0(n154), .A1(n108), .B0(n192), .B1(n107), .Y(n73) );
  OAI22XL U75 ( .A0(n154), .A1(n109), .B0(n192), .B1(n108), .Y(n74) );
  OAI22XL U76 ( .A0(n154), .A1(n110), .B0(n192), .B1(n109), .Y(n75) );
  OAI22XL U77 ( .A0(n154), .A1(n111), .B0(n158), .B1(n110), .Y(n76) );
  OAI22XL U78 ( .A0(n154), .A1(n112), .B0(n158), .B1(n111), .Y(n77) );
  OAI22XL U79 ( .A0(n191), .A1(n113), .B0(n158), .B1(n112), .Y(n78) );
  XNOR2X1 U81 ( .A(n150), .B(b[7]), .Y(n106) );
  XNOR2X1 U82 ( .A(n150), .B(b[6]), .Y(n107) );
  XNOR2X1 U83 ( .A(n150), .B(b[5]), .Y(n108) );
  XNOR2X1 U84 ( .A(n150), .B(b[4]), .Y(n109) );
  XNOR2X1 U85 ( .A(n150), .B(b[3]), .Y(n110) );
  XNOR2X1 U86 ( .A(n150), .B(b[2]), .Y(n111) );
  XNOR2X1 U87 ( .A(n150), .B(b[1]), .Y(n112) );
  OAI22XL U90 ( .A0(n155), .A1(n147), .B0(n123), .B1(n143), .Y(n55) );
  AO21X1 U91 ( .A0(n155), .A1(n159), .B0(n115), .Y(n80) );
  OAI22XL U92 ( .A0(n155), .A1(n116), .B0(n115), .B1(n143), .Y(n81) );
  OAI22XL U93 ( .A0(n155), .A1(n117), .B0(n116), .B1(n143), .Y(n82) );
  OAI22XL U94 ( .A0(n155), .A1(n118), .B0(n117), .B1(n143), .Y(n83) );
  OAI22XL U95 ( .A0(n155), .A1(n119), .B0(n118), .B1(n143), .Y(n84) );
  OAI22XL U96 ( .A0(n155), .A1(n120), .B0(n119), .B1(n143), .Y(n85) );
  OAI22XL U97 ( .A0(n155), .A1(n121), .B0(n120), .B1(n143), .Y(n86) );
  OAI22XL U98 ( .A0(n190), .A1(n122), .B0(n121), .B1(n143), .Y(n87) );
  XNOR2X1 U100 ( .A(n151), .B(b[7]), .Y(n115) );
  XNOR2X1 U101 ( .A(n151), .B(b[6]), .Y(n116) );
  XNOR2X1 U102 ( .A(n151), .B(b[5]), .Y(n117) );
  XNOR2X1 U103 ( .A(n151), .B(b[4]), .Y(n118) );
  XNOR2X1 U104 ( .A(n151), .B(b[3]), .Y(n119) );
  XNOR2X1 U105 ( .A(n151), .B(b[2]), .Y(n120) );
  XNOR2X1 U106 ( .A(n151), .B(b[1]), .Y(n121) );
  CLKINVX1 U112 ( .A(n148), .Y(n144) );
  CLKINVX1 U116 ( .A(n149), .Y(n145) );
  CLKINVX1 U120 ( .A(n150), .Y(n146) );
  CLKINVX1 U124 ( .A(n151), .Y(n147) );
  XOR2X1 U127 ( .A(a[6]), .B(a[7]), .Y(n132) );
  XNOR2X1 U128 ( .A(a[6]), .B(a[5]), .Y(n156) );
  XOR2X1 U130 ( .A(a[4]), .B(a[5]), .Y(n133) );
  XNOR2X1 U131 ( .A(a[4]), .B(a[3]), .Y(n157) );
  XOR2X1 U133 ( .A(a[2]), .B(a[3]), .Y(n134) );
  XNOR2X1 U134 ( .A(a[2]), .B(a[1]), .Y(n158) );
  XOR2X1 U136 ( .A(a[0]), .B(a[1]), .Y(n135) );
  CLKINVX1 U137 ( .A(a[0]), .Y(n159) );
  CLKINVX1 U140 ( .A(n198), .Y(n189) );
  CLKINVX1 U141 ( .A(n200), .Y(n190) );
  CLKINVX1 U142 ( .A(n199), .Y(n191) );
  CLKINVX1 U143 ( .A(n158), .Y(n142) );
  CLKINVX1 U144 ( .A(n142), .Y(n192) );
  CLKINVX1 U145 ( .A(b[0]), .Y(n131) );
  CLKINVX1 U146 ( .A(n131), .Y(n193) );
  CLKINVX1 U147 ( .A(n197), .Y(n194) );
  CLKINVX1 U148 ( .A(n156), .Y(n140) );
  CLKINVX1 U149 ( .A(n140), .Y(n195) );
  NAND2BXL U150 ( .AN(n193), .B(a[1]), .Y(n123) );
  NAND2BXL U151 ( .AN(n193), .B(a[3]), .Y(n114) );
  CLKINVX1 U152 ( .A(n157), .Y(n141) );
  CLKINVX1 U153 ( .A(n141), .Y(n196) );
  NOR2BXL U154 ( .AN(n193), .B(n159), .Y(product[0]) );
  XNOR2XL U155 ( .A(a[7]), .B(b[0]), .Y(n95) );
  XNOR2XL U156 ( .A(a[1]), .B(b[0]), .Y(n122) );
  NOR2BXL U157 ( .AN(n193), .B(n192), .Y(n79) );
  XNOR2XL U158 ( .A(a[3]), .B(b[0]), .Y(n113) );
  NOR2BXL U159 ( .AN(n193), .B(n196), .Y(n71) );
  NAND2BXL U160 ( .AN(n193), .B(a[7]), .Y(n96) );
  NAND2BXL U161 ( .AN(n193), .B(a[5]), .Y(n105) );
  XNOR2XL U162 ( .A(a[5]), .B(b[0]), .Y(n104) );
  NOR2BXL U163 ( .AN(n193), .B(n195), .Y(n63) );
  CLKBUFX3 U164 ( .A(n159), .Y(n143) );
  CLKBUFX3 U165 ( .A(a[1]), .Y(n151) );
  CLKBUFX3 U166 ( .A(a[3]), .Y(n150) );
  CLKBUFX3 U167 ( .A(a[5]), .Y(n149) );
  CLKBUFX3 U168 ( .A(a[7]), .Y(n148) );
  AND2X2 U169 ( .A(n132), .B(n156), .Y(n197) );
  CLKINVX1 U170 ( .A(n197), .Y(n152) );
  AND2X2 U171 ( .A(n133), .B(n157), .Y(n198) );
  CLKINVX1 U172 ( .A(n198), .Y(n153) );
  AND2X2 U173 ( .A(n134), .B(n158), .Y(n199) );
  CLKINVX1 U174 ( .A(n199), .Y(n154) );
  AND2X2 U175 ( .A(n135), .B(n159), .Y(n200) );
  CLKINVX1 U176 ( .A(n200), .Y(n155) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_36 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n131, n132, n133, n134, n135, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200;

  CLKINVX1 U1 ( .A(n1), .Y(product[15]) );
  ADDFXL U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n78), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  CLKINVX1 U16 ( .A(n15), .Y(n16) );
  ADDFXL U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n22), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CLKINVX1 U19 ( .A(n21), .Y(n22) );
  CMPR42X1 U20 ( .A(n29), .B(n59), .C(n65), .D(n72), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n30), .D(n34), .ICI(n31), .S(n28), .ICO(
        n26), .CO(n27) );
  CLKINVX1 U22 ( .A(n29), .Y(n30) );
  CMPR42X1 U23 ( .A(n67), .B(n80), .C(n39), .D(n35), .ICI(n36), .S(n33), .ICO(
        n31), .CO(n32) );
  XNOR2X1 U24 ( .A(n73), .B(n61), .Y(n35) );
  OR2X1 U25 ( .A(n73), .B(n61), .Y(n34) );
  CMPR42X1 U26 ( .A(n52), .B(n62), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n81), .B(n68), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n69), .D(n75), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n53), .CI(n47), .CO(n44), .S(n45) );
  ADDHXL U30 ( .A(n83), .B(n70), .CO(n46), .S(n47) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n85), .B(n54), .CO(n50), .S(n51) );
  OAI22XL U33 ( .A0(n152), .A1(n144), .B0(n193), .B1(n96), .Y(n52) );
  AO21X1 U34 ( .A0(n152), .A1(n156), .B0(n88), .Y(n56) );
  OAI22XL U35 ( .A0(n152), .A1(n89), .B0(n193), .B1(n88), .Y(n15) );
  OAI22XL U36 ( .A0(n152), .A1(n90), .B0(n193), .B1(n89), .Y(n57) );
  OAI22XL U37 ( .A0(n152), .A1(n91), .B0(n193), .B1(n90), .Y(n58) );
  OAI22XL U38 ( .A0(n152), .A1(n92), .B0(n193), .B1(n91), .Y(n59) );
  OAI22XL U39 ( .A0(n152), .A1(n93), .B0(n156), .B1(n92), .Y(n60) );
  OAI22XL U40 ( .A0(n152), .A1(n94), .B0(n156), .B1(n93), .Y(n61) );
  OAI22XL U41 ( .A0(n194), .A1(n95), .B0(n156), .B1(n94), .Y(n62) );
  XNOR2X1 U43 ( .A(n148), .B(b[7]), .Y(n88) );
  XNOR2X1 U44 ( .A(n148), .B(b[6]), .Y(n89) );
  XNOR2X1 U45 ( .A(n148), .B(b[5]), .Y(n90) );
  XNOR2X1 U46 ( .A(n148), .B(b[4]), .Y(n91) );
  XNOR2X1 U47 ( .A(n148), .B(b[3]), .Y(n92) );
  XNOR2X1 U48 ( .A(n148), .B(b[2]), .Y(n93) );
  XNOR2X1 U49 ( .A(n148), .B(b[1]), .Y(n94) );
  OAI22XL U52 ( .A0(n153), .A1(n145), .B0(n196), .B1(n105), .Y(n53) );
  AO21X1 U53 ( .A0(n153), .A1(n157), .B0(n97), .Y(n64) );
  OAI22XL U54 ( .A0(n153), .A1(n98), .B0(n196), .B1(n97), .Y(n21) );
  OAI22XL U55 ( .A0(n153), .A1(n99), .B0(n196), .B1(n98), .Y(n65) );
  OAI22XL U56 ( .A0(n153), .A1(n100), .B0(n196), .B1(n99), .Y(n66) );
  OAI22XL U57 ( .A0(n153), .A1(n101), .B0(n196), .B1(n100), .Y(n67) );
  OAI22XL U58 ( .A0(n153), .A1(n102), .B0(n157), .B1(n101), .Y(n68) );
  OAI22XL U59 ( .A0(n153), .A1(n103), .B0(n157), .B1(n102), .Y(n69) );
  OAI22XL U60 ( .A0(n189), .A1(n104), .B0(n157), .B1(n103), .Y(n70) );
  XNOR2X1 U62 ( .A(n149), .B(b[7]), .Y(n97) );
  XNOR2X1 U63 ( .A(n149), .B(b[6]), .Y(n98) );
  XNOR2X1 U64 ( .A(n149), .B(b[5]), .Y(n99) );
  XNOR2X1 U65 ( .A(n149), .B(b[4]), .Y(n100) );
  XNOR2X1 U66 ( .A(n149), .B(b[3]), .Y(n101) );
  XNOR2X1 U67 ( .A(n149), .B(b[2]), .Y(n102) );
  XNOR2X1 U68 ( .A(n149), .B(b[1]), .Y(n103) );
  OAI22XL U71 ( .A0(n154), .A1(n146), .B0(n192), .B1(n114), .Y(n54) );
  AO21X1 U72 ( .A0(n154), .A1(n158), .B0(n106), .Y(n72) );
  OAI22XL U73 ( .A0(n154), .A1(n107), .B0(n192), .B1(n106), .Y(n29) );
  OAI22XL U74 ( .A0(n154), .A1(n108), .B0(n192), .B1(n107), .Y(n73) );
  OAI22XL U75 ( .A0(n154), .A1(n109), .B0(n192), .B1(n108), .Y(n74) );
  OAI22XL U76 ( .A0(n154), .A1(n110), .B0(n192), .B1(n109), .Y(n75) );
  OAI22XL U77 ( .A0(n154), .A1(n111), .B0(n158), .B1(n110), .Y(n76) );
  OAI22XL U78 ( .A0(n154), .A1(n112), .B0(n158), .B1(n111), .Y(n77) );
  OAI22XL U79 ( .A0(n191), .A1(n113), .B0(n158), .B1(n112), .Y(n78) );
  XNOR2X1 U81 ( .A(n150), .B(b[7]), .Y(n106) );
  XNOR2X1 U82 ( .A(n150), .B(b[6]), .Y(n107) );
  XNOR2X1 U83 ( .A(n150), .B(b[5]), .Y(n108) );
  XNOR2X1 U84 ( .A(n150), .B(b[4]), .Y(n109) );
  XNOR2X1 U85 ( .A(n150), .B(b[3]), .Y(n110) );
  XNOR2X1 U86 ( .A(n150), .B(b[2]), .Y(n111) );
  XNOR2X1 U87 ( .A(n150), .B(b[1]), .Y(n112) );
  OAI22XL U90 ( .A0(n155), .A1(n147), .B0(n123), .B1(n143), .Y(n55) );
  AO21X1 U91 ( .A0(n155), .A1(n159), .B0(n115), .Y(n80) );
  OAI22XL U92 ( .A0(n155), .A1(n116), .B0(n115), .B1(n143), .Y(n81) );
  OAI22XL U93 ( .A0(n155), .A1(n117), .B0(n116), .B1(n143), .Y(n82) );
  OAI22XL U94 ( .A0(n155), .A1(n118), .B0(n117), .B1(n143), .Y(n83) );
  OAI22XL U95 ( .A0(n155), .A1(n119), .B0(n118), .B1(n143), .Y(n84) );
  OAI22XL U96 ( .A0(n155), .A1(n120), .B0(n119), .B1(n143), .Y(n85) );
  OAI22XL U97 ( .A0(n155), .A1(n121), .B0(n120), .B1(n143), .Y(n86) );
  OAI22XL U98 ( .A0(n190), .A1(n122), .B0(n121), .B1(n143), .Y(n87) );
  XNOR2X1 U100 ( .A(n151), .B(b[7]), .Y(n115) );
  XNOR2X1 U101 ( .A(n151), .B(b[6]), .Y(n116) );
  XNOR2X1 U102 ( .A(n151), .B(b[5]), .Y(n117) );
  XNOR2X1 U103 ( .A(n151), .B(b[4]), .Y(n118) );
  XNOR2X1 U104 ( .A(n151), .B(b[3]), .Y(n119) );
  XNOR2X1 U105 ( .A(n151), .B(b[2]), .Y(n120) );
  XNOR2X1 U106 ( .A(n151), .B(b[1]), .Y(n121) );
  CLKINVX1 U112 ( .A(n148), .Y(n144) );
  CLKINVX1 U116 ( .A(n149), .Y(n145) );
  CLKINVX1 U120 ( .A(n150), .Y(n146) );
  CLKINVX1 U124 ( .A(n151), .Y(n147) );
  XOR2X1 U127 ( .A(a[6]), .B(a[7]), .Y(n132) );
  XNOR2X1 U128 ( .A(a[6]), .B(a[5]), .Y(n156) );
  XOR2X1 U130 ( .A(a[4]), .B(a[5]), .Y(n133) );
  XNOR2X1 U131 ( .A(a[4]), .B(a[3]), .Y(n157) );
  XOR2X1 U133 ( .A(a[2]), .B(a[3]), .Y(n134) );
  XNOR2X1 U134 ( .A(a[2]), .B(a[1]), .Y(n158) );
  XOR2X1 U136 ( .A(a[0]), .B(a[1]), .Y(n135) );
  CLKINVX1 U137 ( .A(a[0]), .Y(n159) );
  CLKINVX1 U140 ( .A(n198), .Y(n189) );
  CLKINVX1 U141 ( .A(n200), .Y(n190) );
  CLKINVX1 U142 ( .A(n199), .Y(n191) );
  CLKINVX1 U143 ( .A(n158), .Y(n142) );
  CLKINVX1 U144 ( .A(n142), .Y(n192) );
  CLKINVX1 U145 ( .A(n156), .Y(n140) );
  CLKINVX1 U146 ( .A(n140), .Y(n193) );
  CLKINVX1 U147 ( .A(n197), .Y(n194) );
  CLKINVX1 U148 ( .A(b[0]), .Y(n131) );
  CLKINVX1 U149 ( .A(n131), .Y(n195) );
  NAND2BXL U150 ( .AN(n195), .B(a[1]), .Y(n123) );
  NAND2BXL U151 ( .AN(n195), .B(a[3]), .Y(n114) );
  CLKINVX1 U152 ( .A(n157), .Y(n141) );
  CLKINVX1 U153 ( .A(n141), .Y(n196) );
  NOR2BXL U154 ( .AN(n195), .B(n159), .Y(product[0]) );
  XNOR2XL U155 ( .A(a[7]), .B(b[0]), .Y(n95) );
  XNOR2XL U156 ( .A(a[1]), .B(b[0]), .Y(n122) );
  NOR2BXL U157 ( .AN(n195), .B(n192), .Y(n79) );
  XNOR2XL U158 ( .A(a[3]), .B(b[0]), .Y(n113) );
  NOR2BXL U159 ( .AN(n195), .B(n196), .Y(n71) );
  NAND2BXL U160 ( .AN(n195), .B(a[7]), .Y(n96) );
  NAND2BXL U161 ( .AN(n195), .B(a[5]), .Y(n105) );
  XNOR2XL U162 ( .A(a[5]), .B(b[0]), .Y(n104) );
  NOR2BXL U163 ( .AN(n195), .B(n193), .Y(n63) );
  CLKBUFX3 U164 ( .A(n159), .Y(n143) );
  CLKBUFX3 U165 ( .A(a[1]), .Y(n151) );
  CLKBUFX3 U166 ( .A(a[3]), .Y(n150) );
  CLKBUFX3 U167 ( .A(a[5]), .Y(n149) );
  CLKBUFX3 U168 ( .A(a[7]), .Y(n148) );
  AND2X2 U169 ( .A(n132), .B(n156), .Y(n197) );
  CLKINVX1 U170 ( .A(n197), .Y(n152) );
  AND2X2 U171 ( .A(n133), .B(n157), .Y(n198) );
  CLKINVX1 U172 ( .A(n198), .Y(n153) );
  AND2X2 U173 ( .A(n134), .B(n158), .Y(n199) );
  CLKINVX1 U174 ( .A(n199), .Y(n154) );
  AND2X2 U175 ( .A(n135), .B(n159), .Y(n200) );
  CLKINVX1 U176 ( .A(n200), .Y(n155) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_37 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n131, n132, n133, n134, n135, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200;

  CLKINVX1 U1 ( .A(n1), .Y(product[15]) );
  ADDFXL U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n78), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  CLKINVX1 U16 ( .A(n15), .Y(n16) );
  ADDFXL U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n22), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CLKINVX1 U19 ( .A(n21), .Y(n22) );
  CMPR42X1 U20 ( .A(n29), .B(n59), .C(n65), .D(n72), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n30), .D(n34), .ICI(n31), .S(n28), .ICO(
        n26), .CO(n27) );
  CLKINVX1 U22 ( .A(n29), .Y(n30) );
  CMPR42X1 U23 ( .A(n67), .B(n80), .C(n39), .D(n35), .ICI(n36), .S(n33), .ICO(
        n31), .CO(n32) );
  XNOR2X1 U24 ( .A(n73), .B(n61), .Y(n35) );
  OR2X1 U25 ( .A(n73), .B(n61), .Y(n34) );
  CMPR42X1 U26 ( .A(n52), .B(n62), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n81), .B(n68), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n69), .D(n75), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n53), .CI(n47), .CO(n44), .S(n45) );
  ADDHXL U30 ( .A(n83), .B(n70), .CO(n46), .S(n47) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n85), .B(n54), .CO(n50), .S(n51) );
  OAI22XL U33 ( .A0(n152), .A1(n144), .B0(n193), .B1(n96), .Y(n52) );
  AO21X1 U34 ( .A0(n152), .A1(n156), .B0(n88), .Y(n56) );
  OAI22XL U35 ( .A0(n152), .A1(n89), .B0(n193), .B1(n88), .Y(n15) );
  OAI22XL U36 ( .A0(n152), .A1(n90), .B0(n193), .B1(n89), .Y(n57) );
  OAI22XL U37 ( .A0(n152), .A1(n91), .B0(n193), .B1(n90), .Y(n58) );
  OAI22XL U38 ( .A0(n152), .A1(n92), .B0(n193), .B1(n91), .Y(n59) );
  OAI22XL U39 ( .A0(n152), .A1(n93), .B0(n156), .B1(n92), .Y(n60) );
  OAI22XL U40 ( .A0(n152), .A1(n94), .B0(n156), .B1(n93), .Y(n61) );
  OAI22XL U41 ( .A0(n194), .A1(n95), .B0(n156), .B1(n94), .Y(n62) );
  XNOR2X1 U43 ( .A(n148), .B(b[7]), .Y(n88) );
  XNOR2X1 U44 ( .A(n148), .B(b[6]), .Y(n89) );
  XNOR2X1 U45 ( .A(n148), .B(b[5]), .Y(n90) );
  XNOR2X1 U46 ( .A(n148), .B(b[4]), .Y(n91) );
  XNOR2X1 U47 ( .A(n148), .B(b[3]), .Y(n92) );
  XNOR2X1 U48 ( .A(n148), .B(b[2]), .Y(n93) );
  XNOR2X1 U49 ( .A(n148), .B(b[1]), .Y(n94) );
  OAI22XL U52 ( .A0(n153), .A1(n145), .B0(n196), .B1(n105), .Y(n53) );
  AO21X1 U53 ( .A0(n153), .A1(n157), .B0(n97), .Y(n64) );
  OAI22XL U54 ( .A0(n153), .A1(n98), .B0(n196), .B1(n97), .Y(n21) );
  OAI22XL U55 ( .A0(n153), .A1(n99), .B0(n196), .B1(n98), .Y(n65) );
  OAI22XL U56 ( .A0(n153), .A1(n100), .B0(n196), .B1(n99), .Y(n66) );
  OAI22XL U57 ( .A0(n153), .A1(n101), .B0(n196), .B1(n100), .Y(n67) );
  OAI22XL U58 ( .A0(n153), .A1(n102), .B0(n157), .B1(n101), .Y(n68) );
  OAI22XL U59 ( .A0(n153), .A1(n103), .B0(n157), .B1(n102), .Y(n69) );
  OAI22XL U60 ( .A0(n189), .A1(n104), .B0(n157), .B1(n103), .Y(n70) );
  XNOR2X1 U62 ( .A(n149), .B(b[7]), .Y(n97) );
  XNOR2X1 U63 ( .A(n149), .B(b[6]), .Y(n98) );
  XNOR2X1 U64 ( .A(n149), .B(b[5]), .Y(n99) );
  XNOR2X1 U65 ( .A(n149), .B(b[4]), .Y(n100) );
  XNOR2X1 U66 ( .A(n149), .B(b[3]), .Y(n101) );
  XNOR2X1 U67 ( .A(n149), .B(b[2]), .Y(n102) );
  XNOR2X1 U68 ( .A(n149), .B(b[1]), .Y(n103) );
  OAI22XL U71 ( .A0(n154), .A1(n146), .B0(n192), .B1(n114), .Y(n54) );
  AO21X1 U72 ( .A0(n154), .A1(n158), .B0(n106), .Y(n72) );
  OAI22XL U73 ( .A0(n154), .A1(n107), .B0(n192), .B1(n106), .Y(n29) );
  OAI22XL U74 ( .A0(n154), .A1(n108), .B0(n192), .B1(n107), .Y(n73) );
  OAI22XL U75 ( .A0(n154), .A1(n109), .B0(n192), .B1(n108), .Y(n74) );
  OAI22XL U76 ( .A0(n154), .A1(n110), .B0(n192), .B1(n109), .Y(n75) );
  OAI22XL U77 ( .A0(n154), .A1(n111), .B0(n158), .B1(n110), .Y(n76) );
  OAI22XL U78 ( .A0(n154), .A1(n112), .B0(n158), .B1(n111), .Y(n77) );
  OAI22XL U79 ( .A0(n191), .A1(n113), .B0(n158), .B1(n112), .Y(n78) );
  XNOR2X1 U81 ( .A(n150), .B(b[7]), .Y(n106) );
  XNOR2X1 U82 ( .A(n150), .B(b[6]), .Y(n107) );
  XNOR2X1 U83 ( .A(n150), .B(b[5]), .Y(n108) );
  XNOR2X1 U84 ( .A(n150), .B(b[4]), .Y(n109) );
  XNOR2X1 U85 ( .A(n150), .B(b[3]), .Y(n110) );
  XNOR2X1 U86 ( .A(n150), .B(b[2]), .Y(n111) );
  XNOR2X1 U87 ( .A(n150), .B(b[1]), .Y(n112) );
  OAI22XL U90 ( .A0(n155), .A1(n147), .B0(n123), .B1(n143), .Y(n55) );
  AO21X1 U91 ( .A0(n155), .A1(n159), .B0(n115), .Y(n80) );
  OAI22XL U92 ( .A0(n155), .A1(n116), .B0(n115), .B1(n143), .Y(n81) );
  OAI22XL U93 ( .A0(n155), .A1(n117), .B0(n116), .B1(n143), .Y(n82) );
  OAI22XL U94 ( .A0(n155), .A1(n118), .B0(n117), .B1(n143), .Y(n83) );
  OAI22XL U95 ( .A0(n155), .A1(n119), .B0(n118), .B1(n143), .Y(n84) );
  OAI22XL U96 ( .A0(n155), .A1(n120), .B0(n119), .B1(n143), .Y(n85) );
  OAI22XL U97 ( .A0(n155), .A1(n121), .B0(n120), .B1(n143), .Y(n86) );
  OAI22XL U98 ( .A0(n190), .A1(n122), .B0(n121), .B1(n143), .Y(n87) );
  XNOR2X1 U100 ( .A(n151), .B(b[7]), .Y(n115) );
  XNOR2X1 U101 ( .A(n151), .B(b[6]), .Y(n116) );
  XNOR2X1 U102 ( .A(n151), .B(b[5]), .Y(n117) );
  XNOR2X1 U103 ( .A(n151), .B(b[4]), .Y(n118) );
  XNOR2X1 U104 ( .A(n151), .B(b[3]), .Y(n119) );
  XNOR2X1 U105 ( .A(n151), .B(b[2]), .Y(n120) );
  XNOR2X1 U106 ( .A(n151), .B(b[1]), .Y(n121) );
  CLKINVX1 U112 ( .A(n148), .Y(n144) );
  CLKINVX1 U116 ( .A(n149), .Y(n145) );
  CLKINVX1 U120 ( .A(n150), .Y(n146) );
  CLKINVX1 U124 ( .A(n151), .Y(n147) );
  XOR2X1 U127 ( .A(a[6]), .B(a[7]), .Y(n132) );
  XNOR2X1 U128 ( .A(a[6]), .B(a[5]), .Y(n156) );
  XOR2X1 U130 ( .A(a[4]), .B(a[5]), .Y(n133) );
  XNOR2X1 U131 ( .A(a[4]), .B(a[3]), .Y(n157) );
  XOR2X1 U133 ( .A(a[2]), .B(a[3]), .Y(n134) );
  XNOR2X1 U134 ( .A(a[2]), .B(a[1]), .Y(n158) );
  XOR2X1 U136 ( .A(a[0]), .B(a[1]), .Y(n135) );
  CLKINVX1 U137 ( .A(a[0]), .Y(n159) );
  CLKINVX1 U140 ( .A(n198), .Y(n189) );
  CLKINVX1 U141 ( .A(n200), .Y(n190) );
  CLKINVX1 U142 ( .A(n199), .Y(n191) );
  CLKINVX1 U143 ( .A(n158), .Y(n142) );
  CLKINVX1 U144 ( .A(n142), .Y(n192) );
  CLKINVX1 U145 ( .A(n156), .Y(n140) );
  CLKINVX1 U146 ( .A(n140), .Y(n193) );
  CLKINVX1 U147 ( .A(n197), .Y(n194) );
  CLKINVX1 U148 ( .A(b[0]), .Y(n131) );
  CLKINVX1 U149 ( .A(n131), .Y(n195) );
  NAND2BXL U150 ( .AN(n195), .B(a[1]), .Y(n123) );
  NAND2BXL U151 ( .AN(n195), .B(a[3]), .Y(n114) );
  CLKINVX1 U152 ( .A(n157), .Y(n141) );
  CLKINVX1 U153 ( .A(n141), .Y(n196) );
  NOR2BXL U154 ( .AN(n195), .B(n159), .Y(product[0]) );
  XNOR2XL U155 ( .A(a[7]), .B(b[0]), .Y(n95) );
  XNOR2XL U156 ( .A(a[1]), .B(b[0]), .Y(n122) );
  NOR2BXL U157 ( .AN(n195), .B(n192), .Y(n79) );
  XNOR2XL U158 ( .A(a[3]), .B(b[0]), .Y(n113) );
  NOR2BXL U159 ( .AN(n195), .B(n196), .Y(n71) );
  NAND2BXL U160 ( .AN(n195), .B(a[7]), .Y(n96) );
  NAND2BXL U161 ( .AN(n195), .B(a[5]), .Y(n105) );
  XNOR2XL U162 ( .A(a[5]), .B(b[0]), .Y(n104) );
  NOR2BXL U163 ( .AN(n195), .B(n193), .Y(n63) );
  CLKBUFX3 U164 ( .A(n159), .Y(n143) );
  CLKBUFX3 U165 ( .A(a[1]), .Y(n151) );
  CLKBUFX3 U166 ( .A(a[3]), .Y(n150) );
  CLKBUFX3 U167 ( .A(a[5]), .Y(n149) );
  CLKBUFX3 U168 ( .A(a[7]), .Y(n148) );
  AND2X2 U169 ( .A(n132), .B(n156), .Y(n197) );
  CLKINVX1 U170 ( .A(n197), .Y(n152) );
  AND2X2 U171 ( .A(n133), .B(n157), .Y(n198) );
  CLKINVX1 U172 ( .A(n198), .Y(n153) );
  AND2X2 U173 ( .A(n134), .B(n158), .Y(n199) );
  CLKINVX1 U174 ( .A(n199), .Y(n154) );
  AND2X2 U175 ( .A(n135), .B(n159), .Y(n200) );
  CLKINVX1 U176 ( .A(n200), .Y(n155) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_38 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n131, n132, n133, n134, n135, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200;

  CLKINVX1 U1 ( .A(n1), .Y(product[15]) );
  ADDFXL U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n78), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  CLKINVX1 U16 ( .A(n15), .Y(n16) );
  ADDFXL U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n22), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CLKINVX1 U19 ( .A(n21), .Y(n22) );
  CMPR42X1 U20 ( .A(n29), .B(n59), .C(n65), .D(n72), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n30), .D(n34), .ICI(n31), .S(n28), .ICO(
        n26), .CO(n27) );
  CLKINVX1 U22 ( .A(n29), .Y(n30) );
  CMPR42X1 U23 ( .A(n67), .B(n80), .C(n39), .D(n35), .ICI(n36), .S(n33), .ICO(
        n31), .CO(n32) );
  XNOR2X1 U24 ( .A(n73), .B(n61), .Y(n35) );
  OR2X1 U25 ( .A(n73), .B(n61), .Y(n34) );
  CMPR42X1 U26 ( .A(n52), .B(n62), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n81), .B(n68), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n69), .D(n75), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n53), .CI(n47), .CO(n44), .S(n45) );
  ADDHXL U30 ( .A(n83), .B(n70), .CO(n46), .S(n47) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n85), .B(n54), .CO(n50), .S(n51) );
  OAI22XL U33 ( .A0(n152), .A1(n144), .B0(n196), .B1(n96), .Y(n52) );
  AO21X1 U34 ( .A0(n152), .A1(n156), .B0(n88), .Y(n56) );
  OAI22XL U35 ( .A0(n152), .A1(n89), .B0(n196), .B1(n88), .Y(n15) );
  OAI22XL U36 ( .A0(n152), .A1(n90), .B0(n196), .B1(n89), .Y(n57) );
  OAI22XL U37 ( .A0(n152), .A1(n91), .B0(n196), .B1(n90), .Y(n58) );
  OAI22XL U38 ( .A0(n152), .A1(n92), .B0(n196), .B1(n91), .Y(n59) );
  OAI22XL U39 ( .A0(n152), .A1(n93), .B0(n156), .B1(n92), .Y(n60) );
  OAI22XL U40 ( .A0(n152), .A1(n94), .B0(n156), .B1(n93), .Y(n61) );
  OAI22XL U41 ( .A0(n194), .A1(n95), .B0(n156), .B1(n94), .Y(n62) );
  XNOR2X1 U43 ( .A(n148), .B(b[7]), .Y(n88) );
  XNOR2X1 U44 ( .A(n148), .B(b[6]), .Y(n89) );
  XNOR2X1 U45 ( .A(n148), .B(b[5]), .Y(n90) );
  XNOR2X1 U46 ( .A(n148), .B(b[4]), .Y(n91) );
  XNOR2X1 U47 ( .A(n148), .B(b[3]), .Y(n92) );
  XNOR2X1 U48 ( .A(n148), .B(b[2]), .Y(n93) );
  XNOR2X1 U49 ( .A(n148), .B(b[1]), .Y(n94) );
  OAI22XL U52 ( .A0(n153), .A1(n145), .B0(n193), .B1(n105), .Y(n53) );
  AO21X1 U53 ( .A0(n153), .A1(n157), .B0(n97), .Y(n64) );
  OAI22XL U54 ( .A0(n153), .A1(n98), .B0(n193), .B1(n97), .Y(n21) );
  OAI22XL U55 ( .A0(n153), .A1(n99), .B0(n193), .B1(n98), .Y(n65) );
  OAI22XL U56 ( .A0(n153), .A1(n100), .B0(n193), .B1(n99), .Y(n66) );
  OAI22XL U57 ( .A0(n153), .A1(n101), .B0(n193), .B1(n100), .Y(n67) );
  OAI22XL U58 ( .A0(n153), .A1(n102), .B0(n157), .B1(n101), .Y(n68) );
  OAI22XL U59 ( .A0(n153), .A1(n103), .B0(n157), .B1(n102), .Y(n69) );
  OAI22XL U60 ( .A0(n191), .A1(n104), .B0(n157), .B1(n103), .Y(n70) );
  XNOR2X1 U62 ( .A(n149), .B(b[7]), .Y(n97) );
  XNOR2X1 U63 ( .A(n149), .B(b[6]), .Y(n98) );
  XNOR2X1 U64 ( .A(n149), .B(b[5]), .Y(n99) );
  XNOR2X1 U65 ( .A(n149), .B(b[4]), .Y(n100) );
  XNOR2X1 U66 ( .A(n149), .B(b[3]), .Y(n101) );
  XNOR2X1 U67 ( .A(n149), .B(b[2]), .Y(n102) );
  XNOR2X1 U68 ( .A(n149), .B(b[1]), .Y(n103) );
  OAI22XL U71 ( .A0(n154), .A1(n146), .B0(n192), .B1(n114), .Y(n54) );
  AO21X1 U72 ( .A0(n154), .A1(n158), .B0(n106), .Y(n72) );
  OAI22XL U73 ( .A0(n154), .A1(n107), .B0(n192), .B1(n106), .Y(n29) );
  OAI22XL U74 ( .A0(n154), .A1(n108), .B0(n192), .B1(n107), .Y(n73) );
  OAI22XL U75 ( .A0(n154), .A1(n109), .B0(n192), .B1(n108), .Y(n74) );
  OAI22XL U76 ( .A0(n154), .A1(n110), .B0(n192), .B1(n109), .Y(n75) );
  OAI22XL U77 ( .A0(n154), .A1(n111), .B0(n158), .B1(n110), .Y(n76) );
  OAI22XL U78 ( .A0(n154), .A1(n112), .B0(n158), .B1(n111), .Y(n77) );
  OAI22XL U79 ( .A0(n190), .A1(n113), .B0(n158), .B1(n112), .Y(n78) );
  XNOR2X1 U81 ( .A(n150), .B(b[7]), .Y(n106) );
  XNOR2X1 U82 ( .A(n150), .B(b[6]), .Y(n107) );
  XNOR2X1 U83 ( .A(n150), .B(b[5]), .Y(n108) );
  XNOR2X1 U84 ( .A(n150), .B(b[4]), .Y(n109) );
  XNOR2X1 U85 ( .A(n150), .B(b[3]), .Y(n110) );
  XNOR2X1 U86 ( .A(n150), .B(b[2]), .Y(n111) );
  XNOR2X1 U87 ( .A(n150), .B(b[1]), .Y(n112) );
  OAI22XL U90 ( .A0(n155), .A1(n147), .B0(n123), .B1(n143), .Y(n55) );
  AO21X1 U91 ( .A0(n155), .A1(n159), .B0(n115), .Y(n80) );
  OAI22XL U92 ( .A0(n155), .A1(n116), .B0(n115), .B1(n143), .Y(n81) );
  OAI22XL U93 ( .A0(n155), .A1(n117), .B0(n116), .B1(n143), .Y(n82) );
  OAI22XL U94 ( .A0(n155), .A1(n118), .B0(n117), .B1(n143), .Y(n83) );
  OAI22XL U95 ( .A0(n155), .A1(n119), .B0(n118), .B1(n143), .Y(n84) );
  OAI22XL U96 ( .A0(n155), .A1(n120), .B0(n119), .B1(n143), .Y(n85) );
  OAI22XL U97 ( .A0(n155), .A1(n121), .B0(n120), .B1(n143), .Y(n86) );
  OAI22XL U98 ( .A0(n189), .A1(n122), .B0(n121), .B1(n143), .Y(n87) );
  XNOR2X1 U100 ( .A(n151), .B(b[7]), .Y(n115) );
  XNOR2X1 U101 ( .A(n151), .B(b[6]), .Y(n116) );
  XNOR2X1 U102 ( .A(n151), .B(b[5]), .Y(n117) );
  XNOR2X1 U103 ( .A(n151), .B(b[4]), .Y(n118) );
  XNOR2X1 U104 ( .A(n151), .B(b[3]), .Y(n119) );
  XNOR2X1 U105 ( .A(n151), .B(b[2]), .Y(n120) );
  XNOR2X1 U106 ( .A(n151), .B(b[1]), .Y(n121) );
  CLKINVX1 U112 ( .A(n148), .Y(n144) );
  CLKINVX1 U116 ( .A(n149), .Y(n145) );
  CLKINVX1 U120 ( .A(n150), .Y(n146) );
  CLKINVX1 U124 ( .A(n151), .Y(n147) );
  XOR2X1 U127 ( .A(a[6]), .B(a[7]), .Y(n132) );
  XNOR2X1 U128 ( .A(a[6]), .B(a[5]), .Y(n156) );
  XOR2X1 U130 ( .A(a[4]), .B(a[5]), .Y(n133) );
  XNOR2X1 U131 ( .A(a[4]), .B(a[3]), .Y(n157) );
  XOR2X1 U133 ( .A(a[2]), .B(a[3]), .Y(n134) );
  XNOR2X1 U134 ( .A(a[2]), .B(a[1]), .Y(n158) );
  XOR2X1 U136 ( .A(a[0]), .B(a[1]), .Y(n135) );
  CLKINVX1 U137 ( .A(a[0]), .Y(n159) );
  CLKINVX1 U140 ( .A(n200), .Y(n189) );
  CLKINVX1 U141 ( .A(n199), .Y(n190) );
  CLKINVX1 U142 ( .A(n198), .Y(n191) );
  CLKINVX1 U143 ( .A(n158), .Y(n142) );
  CLKINVX1 U144 ( .A(n142), .Y(n192) );
  CLKINVX1 U145 ( .A(n157), .Y(n141) );
  CLKINVX1 U146 ( .A(n141), .Y(n193) );
  CLKINVX1 U147 ( .A(n197), .Y(n194) );
  CLKINVX1 U148 ( .A(b[0]), .Y(n131) );
  CLKINVX1 U149 ( .A(n131), .Y(n195) );
  NAND2BXL U150 ( .AN(n195), .B(a[1]), .Y(n123) );
  NAND2BXL U151 ( .AN(n195), .B(a[3]), .Y(n114) );
  CLKINVX1 U152 ( .A(n156), .Y(n140) );
  CLKINVX1 U153 ( .A(n140), .Y(n196) );
  NOR2BXL U154 ( .AN(n195), .B(n159), .Y(product[0]) );
  XNOR2XL U155 ( .A(a[7]), .B(b[0]), .Y(n95) );
  XNOR2XL U156 ( .A(a[1]), .B(b[0]), .Y(n122) );
  NOR2BXL U157 ( .AN(n195), .B(n192), .Y(n79) );
  XNOR2XL U158 ( .A(a[3]), .B(b[0]), .Y(n113) );
  NOR2BXL U159 ( .AN(n195), .B(n193), .Y(n71) );
  NAND2BXL U160 ( .AN(n195), .B(a[7]), .Y(n96) );
  NAND2BXL U161 ( .AN(n195), .B(a[5]), .Y(n105) );
  XNOR2XL U162 ( .A(a[5]), .B(b[0]), .Y(n104) );
  NOR2BXL U163 ( .AN(n195), .B(n196), .Y(n63) );
  CLKBUFX3 U164 ( .A(n159), .Y(n143) );
  CLKBUFX3 U165 ( .A(a[1]), .Y(n151) );
  CLKBUFX3 U166 ( .A(a[3]), .Y(n150) );
  CLKBUFX3 U167 ( .A(a[5]), .Y(n149) );
  CLKBUFX3 U168 ( .A(a[7]), .Y(n148) );
  AND2X2 U169 ( .A(n132), .B(n156), .Y(n197) );
  CLKINVX1 U170 ( .A(n197), .Y(n152) );
  AND2X2 U171 ( .A(n133), .B(n157), .Y(n198) );
  CLKINVX1 U172 ( .A(n198), .Y(n153) );
  AND2X2 U173 ( .A(n134), .B(n158), .Y(n199) );
  CLKINVX1 U174 ( .A(n199), .Y(n154) );
  AND2X2 U175 ( .A(n135), .B(n159), .Y(n200) );
  CLKINVX1 U176 ( .A(n200), .Y(n155) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_39 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n131, n132, n133, n134, n135, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200;

  CLKINVX1 U1 ( .A(n1), .Y(product[15]) );
  ADDFXL U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n78), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  CLKINVX1 U16 ( .A(n15), .Y(n16) );
  ADDFXL U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n22), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CLKINVX1 U19 ( .A(n21), .Y(n22) );
  CMPR42X1 U20 ( .A(n29), .B(n59), .C(n65), .D(n72), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n30), .D(n34), .ICI(n31), .S(n28), .ICO(
        n26), .CO(n27) );
  CLKINVX1 U22 ( .A(n29), .Y(n30) );
  CMPR42X1 U23 ( .A(n67), .B(n80), .C(n39), .D(n35), .ICI(n36), .S(n33), .ICO(
        n31), .CO(n32) );
  XNOR2X1 U24 ( .A(n73), .B(n61), .Y(n35) );
  OR2X1 U25 ( .A(n73), .B(n61), .Y(n34) );
  CMPR42X1 U26 ( .A(n52), .B(n62), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n81), .B(n68), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n69), .D(n75), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n53), .CI(n47), .CO(n44), .S(n45) );
  ADDHXL U30 ( .A(n83), .B(n70), .CO(n46), .S(n47) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n85), .B(n54), .CO(n50), .S(n51) );
  OAI22XL U33 ( .A0(n152), .A1(n144), .B0(n196), .B1(n96), .Y(n52) );
  AO21X1 U34 ( .A0(n152), .A1(n156), .B0(n88), .Y(n56) );
  OAI22XL U35 ( .A0(n152), .A1(n89), .B0(n196), .B1(n88), .Y(n15) );
  OAI22XL U36 ( .A0(n152), .A1(n90), .B0(n196), .B1(n89), .Y(n57) );
  OAI22XL U37 ( .A0(n152), .A1(n91), .B0(n196), .B1(n90), .Y(n58) );
  OAI22XL U38 ( .A0(n152), .A1(n92), .B0(n196), .B1(n91), .Y(n59) );
  OAI22XL U39 ( .A0(n152), .A1(n93), .B0(n156), .B1(n92), .Y(n60) );
  OAI22XL U40 ( .A0(n152), .A1(n94), .B0(n156), .B1(n93), .Y(n61) );
  OAI22XL U41 ( .A0(n194), .A1(n95), .B0(n156), .B1(n94), .Y(n62) );
  XNOR2X1 U43 ( .A(n148), .B(b[7]), .Y(n88) );
  XNOR2X1 U44 ( .A(n148), .B(b[6]), .Y(n89) );
  XNOR2X1 U45 ( .A(n148), .B(b[5]), .Y(n90) );
  XNOR2X1 U46 ( .A(n148), .B(b[4]), .Y(n91) );
  XNOR2X1 U47 ( .A(n148), .B(b[3]), .Y(n92) );
  XNOR2X1 U48 ( .A(n148), .B(b[2]), .Y(n93) );
  XNOR2X1 U49 ( .A(n148), .B(b[1]), .Y(n94) );
  OAI22XL U52 ( .A0(n153), .A1(n145), .B0(n193), .B1(n105), .Y(n53) );
  AO21X1 U53 ( .A0(n153), .A1(n157), .B0(n97), .Y(n64) );
  OAI22XL U54 ( .A0(n153), .A1(n98), .B0(n193), .B1(n97), .Y(n21) );
  OAI22XL U55 ( .A0(n153), .A1(n99), .B0(n193), .B1(n98), .Y(n65) );
  OAI22XL U56 ( .A0(n153), .A1(n100), .B0(n193), .B1(n99), .Y(n66) );
  OAI22XL U57 ( .A0(n153), .A1(n101), .B0(n193), .B1(n100), .Y(n67) );
  OAI22XL U58 ( .A0(n153), .A1(n102), .B0(n157), .B1(n101), .Y(n68) );
  OAI22XL U59 ( .A0(n153), .A1(n103), .B0(n157), .B1(n102), .Y(n69) );
  OAI22XL U60 ( .A0(n191), .A1(n104), .B0(n157), .B1(n103), .Y(n70) );
  XNOR2X1 U62 ( .A(n149), .B(b[7]), .Y(n97) );
  XNOR2X1 U63 ( .A(n149), .B(b[6]), .Y(n98) );
  XNOR2X1 U64 ( .A(n149), .B(b[5]), .Y(n99) );
  XNOR2X1 U65 ( .A(n149), .B(b[4]), .Y(n100) );
  XNOR2X1 U66 ( .A(n149), .B(b[3]), .Y(n101) );
  XNOR2X1 U67 ( .A(n149), .B(b[2]), .Y(n102) );
  XNOR2X1 U68 ( .A(n149), .B(b[1]), .Y(n103) );
  OAI22XL U71 ( .A0(n154), .A1(n146), .B0(n192), .B1(n114), .Y(n54) );
  AO21X1 U72 ( .A0(n154), .A1(n158), .B0(n106), .Y(n72) );
  OAI22XL U73 ( .A0(n154), .A1(n107), .B0(n192), .B1(n106), .Y(n29) );
  OAI22XL U74 ( .A0(n154), .A1(n108), .B0(n192), .B1(n107), .Y(n73) );
  OAI22XL U75 ( .A0(n154), .A1(n109), .B0(n192), .B1(n108), .Y(n74) );
  OAI22XL U76 ( .A0(n154), .A1(n110), .B0(n192), .B1(n109), .Y(n75) );
  OAI22XL U77 ( .A0(n154), .A1(n111), .B0(n158), .B1(n110), .Y(n76) );
  OAI22XL U78 ( .A0(n154), .A1(n112), .B0(n158), .B1(n111), .Y(n77) );
  OAI22XL U79 ( .A0(n190), .A1(n113), .B0(n158), .B1(n112), .Y(n78) );
  XNOR2X1 U81 ( .A(n150), .B(b[7]), .Y(n106) );
  XNOR2X1 U82 ( .A(n150), .B(b[6]), .Y(n107) );
  XNOR2X1 U83 ( .A(n150), .B(b[5]), .Y(n108) );
  XNOR2X1 U84 ( .A(n150), .B(b[4]), .Y(n109) );
  XNOR2X1 U85 ( .A(n150), .B(b[3]), .Y(n110) );
  XNOR2X1 U86 ( .A(n150), .B(b[2]), .Y(n111) );
  XNOR2X1 U87 ( .A(n150), .B(b[1]), .Y(n112) );
  OAI22XL U90 ( .A0(n155), .A1(n147), .B0(n123), .B1(n143), .Y(n55) );
  AO21X1 U91 ( .A0(n155), .A1(n159), .B0(n115), .Y(n80) );
  OAI22XL U92 ( .A0(n155), .A1(n116), .B0(n115), .B1(n143), .Y(n81) );
  OAI22XL U93 ( .A0(n155), .A1(n117), .B0(n116), .B1(n143), .Y(n82) );
  OAI22XL U94 ( .A0(n155), .A1(n118), .B0(n117), .B1(n143), .Y(n83) );
  OAI22XL U95 ( .A0(n155), .A1(n119), .B0(n118), .B1(n143), .Y(n84) );
  OAI22XL U96 ( .A0(n155), .A1(n120), .B0(n119), .B1(n143), .Y(n85) );
  OAI22XL U97 ( .A0(n155), .A1(n121), .B0(n120), .B1(n143), .Y(n86) );
  OAI22XL U98 ( .A0(n189), .A1(n122), .B0(n121), .B1(n143), .Y(n87) );
  XNOR2X1 U100 ( .A(n151), .B(b[7]), .Y(n115) );
  XNOR2X1 U101 ( .A(n151), .B(b[6]), .Y(n116) );
  XNOR2X1 U102 ( .A(n151), .B(b[5]), .Y(n117) );
  XNOR2X1 U103 ( .A(n151), .B(b[4]), .Y(n118) );
  XNOR2X1 U104 ( .A(n151), .B(b[3]), .Y(n119) );
  XNOR2X1 U105 ( .A(n151), .B(b[2]), .Y(n120) );
  XNOR2X1 U106 ( .A(n151), .B(b[1]), .Y(n121) );
  CLKINVX1 U112 ( .A(n148), .Y(n144) );
  CLKINVX1 U116 ( .A(n149), .Y(n145) );
  CLKINVX1 U120 ( .A(n150), .Y(n146) );
  CLKINVX1 U124 ( .A(n151), .Y(n147) );
  XOR2X1 U127 ( .A(a[6]), .B(a[7]), .Y(n132) );
  XNOR2X1 U128 ( .A(a[6]), .B(a[5]), .Y(n156) );
  XOR2X1 U130 ( .A(a[4]), .B(a[5]), .Y(n133) );
  XNOR2X1 U131 ( .A(a[4]), .B(a[3]), .Y(n157) );
  XOR2X1 U133 ( .A(a[2]), .B(a[3]), .Y(n134) );
  XNOR2X1 U134 ( .A(a[2]), .B(a[1]), .Y(n158) );
  XOR2X1 U136 ( .A(a[0]), .B(a[1]), .Y(n135) );
  CLKINVX1 U137 ( .A(a[0]), .Y(n159) );
  CLKINVX1 U140 ( .A(n200), .Y(n189) );
  CLKINVX1 U141 ( .A(n199), .Y(n190) );
  CLKINVX1 U142 ( .A(n198), .Y(n191) );
  CLKINVX1 U143 ( .A(n158), .Y(n142) );
  CLKINVX1 U144 ( .A(n142), .Y(n192) );
  CLKINVX1 U145 ( .A(n157), .Y(n141) );
  CLKINVX1 U146 ( .A(n141), .Y(n193) );
  CLKINVX1 U147 ( .A(n197), .Y(n194) );
  CLKINVX1 U148 ( .A(b[0]), .Y(n131) );
  CLKINVX1 U149 ( .A(n131), .Y(n195) );
  NAND2BXL U150 ( .AN(n195), .B(a[1]), .Y(n123) );
  NAND2BXL U151 ( .AN(n195), .B(a[3]), .Y(n114) );
  CLKINVX1 U152 ( .A(n156), .Y(n140) );
  CLKINVX1 U153 ( .A(n140), .Y(n196) );
  NOR2BXL U154 ( .AN(n195), .B(n159), .Y(product[0]) );
  XNOR2XL U155 ( .A(a[7]), .B(b[0]), .Y(n95) );
  XNOR2XL U156 ( .A(a[1]), .B(b[0]), .Y(n122) );
  NOR2BXL U157 ( .AN(n195), .B(n192), .Y(n79) );
  XNOR2XL U158 ( .A(a[3]), .B(b[0]), .Y(n113) );
  NOR2BXL U159 ( .AN(n195), .B(n193), .Y(n71) );
  NAND2BXL U160 ( .AN(n195), .B(a[7]), .Y(n96) );
  NAND2BXL U161 ( .AN(n195), .B(a[5]), .Y(n105) );
  XNOR2XL U162 ( .A(a[5]), .B(b[0]), .Y(n104) );
  NOR2BXL U163 ( .AN(n195), .B(n196), .Y(n63) );
  CLKBUFX3 U164 ( .A(n159), .Y(n143) );
  CLKBUFX3 U165 ( .A(a[1]), .Y(n151) );
  CLKBUFX3 U166 ( .A(a[3]), .Y(n150) );
  CLKBUFX3 U167 ( .A(a[5]), .Y(n149) );
  CLKBUFX3 U168 ( .A(a[7]), .Y(n148) );
  AND2X2 U169 ( .A(n132), .B(n156), .Y(n197) );
  CLKINVX1 U170 ( .A(n197), .Y(n152) );
  AND2X2 U171 ( .A(n133), .B(n157), .Y(n198) );
  CLKINVX1 U172 ( .A(n198), .Y(n153) );
  AND2X2 U173 ( .A(n134), .B(n158), .Y(n199) );
  CLKINVX1 U174 ( .A(n199), .Y(n154) );
  AND2X2 U175 ( .A(n135), .B(n159), .Y(n200) );
  CLKINVX1 U176 ( .A(n200), .Y(n155) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_40 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n131, n132, n133, n134, n135, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200;

  CLKINVX1 U1 ( .A(n1), .Y(product[15]) );
  ADDFXL U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n78), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  CLKINVX1 U16 ( .A(n15), .Y(n16) );
  ADDFXL U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n22), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CLKINVX1 U19 ( .A(n21), .Y(n22) );
  CMPR42X1 U20 ( .A(n29), .B(n59), .C(n65), .D(n72), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n30), .D(n34), .ICI(n31), .S(n28), .ICO(
        n26), .CO(n27) );
  CLKINVX1 U22 ( .A(n29), .Y(n30) );
  CMPR42X1 U23 ( .A(n67), .B(n80), .C(n39), .D(n35), .ICI(n36), .S(n33), .ICO(
        n31), .CO(n32) );
  XNOR2X1 U24 ( .A(n73), .B(n61), .Y(n35) );
  OR2X1 U25 ( .A(n73), .B(n61), .Y(n34) );
  CMPR42X1 U26 ( .A(n52), .B(n62), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n81), .B(n68), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n69), .D(n75), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n53), .CI(n47), .CO(n44), .S(n45) );
  ADDHXL U30 ( .A(n83), .B(n70), .CO(n46), .S(n47) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n85), .B(n54), .CO(n50), .S(n51) );
  OAI22XL U33 ( .A0(n152), .A1(n144), .B0(n193), .B1(n96), .Y(n52) );
  AO21X1 U34 ( .A0(n152), .A1(n156), .B0(n88), .Y(n56) );
  OAI22XL U35 ( .A0(n152), .A1(n89), .B0(n193), .B1(n88), .Y(n15) );
  OAI22XL U36 ( .A0(n152), .A1(n90), .B0(n193), .B1(n89), .Y(n57) );
  OAI22XL U37 ( .A0(n152), .A1(n91), .B0(n193), .B1(n90), .Y(n58) );
  OAI22XL U38 ( .A0(n152), .A1(n92), .B0(n193), .B1(n91), .Y(n59) );
  OAI22XL U39 ( .A0(n152), .A1(n93), .B0(n156), .B1(n92), .Y(n60) );
  OAI22XL U40 ( .A0(n152), .A1(n94), .B0(n156), .B1(n93), .Y(n61) );
  OAI22XL U41 ( .A0(n194), .A1(n95), .B0(n156), .B1(n94), .Y(n62) );
  XNOR2X1 U43 ( .A(n148), .B(b[7]), .Y(n88) );
  XNOR2X1 U44 ( .A(n148), .B(b[6]), .Y(n89) );
  XNOR2X1 U45 ( .A(n148), .B(b[5]), .Y(n90) );
  XNOR2X1 U46 ( .A(n148), .B(b[4]), .Y(n91) );
  XNOR2X1 U47 ( .A(n148), .B(b[3]), .Y(n92) );
  XNOR2X1 U48 ( .A(n148), .B(b[2]), .Y(n93) );
  XNOR2X1 U49 ( .A(n148), .B(b[1]), .Y(n94) );
  OAI22XL U52 ( .A0(n153), .A1(n145), .B0(n196), .B1(n105), .Y(n53) );
  AO21X1 U53 ( .A0(n153), .A1(n157), .B0(n97), .Y(n64) );
  OAI22XL U54 ( .A0(n153), .A1(n98), .B0(n196), .B1(n97), .Y(n21) );
  OAI22XL U55 ( .A0(n153), .A1(n99), .B0(n196), .B1(n98), .Y(n65) );
  OAI22XL U56 ( .A0(n153), .A1(n100), .B0(n196), .B1(n99), .Y(n66) );
  OAI22XL U57 ( .A0(n153), .A1(n101), .B0(n196), .B1(n100), .Y(n67) );
  OAI22XL U58 ( .A0(n153), .A1(n102), .B0(n157), .B1(n101), .Y(n68) );
  OAI22XL U59 ( .A0(n153), .A1(n103), .B0(n157), .B1(n102), .Y(n69) );
  OAI22XL U60 ( .A0(n189), .A1(n104), .B0(n157), .B1(n103), .Y(n70) );
  XNOR2X1 U62 ( .A(n149), .B(b[7]), .Y(n97) );
  XNOR2X1 U63 ( .A(n149), .B(b[6]), .Y(n98) );
  XNOR2X1 U64 ( .A(n149), .B(b[5]), .Y(n99) );
  XNOR2X1 U65 ( .A(n149), .B(b[4]), .Y(n100) );
  XNOR2X1 U66 ( .A(n149), .B(b[3]), .Y(n101) );
  XNOR2X1 U67 ( .A(n149), .B(b[2]), .Y(n102) );
  XNOR2X1 U68 ( .A(n149), .B(b[1]), .Y(n103) );
  OAI22XL U71 ( .A0(n154), .A1(n146), .B0(n192), .B1(n114), .Y(n54) );
  AO21X1 U72 ( .A0(n154), .A1(n158), .B0(n106), .Y(n72) );
  OAI22XL U73 ( .A0(n154), .A1(n107), .B0(n192), .B1(n106), .Y(n29) );
  OAI22XL U74 ( .A0(n154), .A1(n108), .B0(n192), .B1(n107), .Y(n73) );
  OAI22XL U75 ( .A0(n154), .A1(n109), .B0(n192), .B1(n108), .Y(n74) );
  OAI22XL U76 ( .A0(n154), .A1(n110), .B0(n192), .B1(n109), .Y(n75) );
  OAI22XL U77 ( .A0(n154), .A1(n111), .B0(n158), .B1(n110), .Y(n76) );
  OAI22XL U78 ( .A0(n154), .A1(n112), .B0(n158), .B1(n111), .Y(n77) );
  OAI22XL U79 ( .A0(n191), .A1(n113), .B0(n158), .B1(n112), .Y(n78) );
  XNOR2X1 U81 ( .A(n150), .B(b[7]), .Y(n106) );
  XNOR2X1 U82 ( .A(n150), .B(b[6]), .Y(n107) );
  XNOR2X1 U83 ( .A(n150), .B(b[5]), .Y(n108) );
  XNOR2X1 U84 ( .A(n150), .B(b[4]), .Y(n109) );
  XNOR2X1 U85 ( .A(n150), .B(b[3]), .Y(n110) );
  XNOR2X1 U86 ( .A(n150), .B(b[2]), .Y(n111) );
  XNOR2X1 U87 ( .A(n150), .B(b[1]), .Y(n112) );
  OAI22XL U90 ( .A0(n155), .A1(n147), .B0(n123), .B1(n143), .Y(n55) );
  AO21X1 U91 ( .A0(n155), .A1(n159), .B0(n115), .Y(n80) );
  OAI22XL U92 ( .A0(n155), .A1(n116), .B0(n115), .B1(n143), .Y(n81) );
  OAI22XL U93 ( .A0(n155), .A1(n117), .B0(n116), .B1(n143), .Y(n82) );
  OAI22XL U94 ( .A0(n155), .A1(n118), .B0(n117), .B1(n143), .Y(n83) );
  OAI22XL U95 ( .A0(n155), .A1(n119), .B0(n118), .B1(n143), .Y(n84) );
  OAI22XL U96 ( .A0(n155), .A1(n120), .B0(n119), .B1(n143), .Y(n85) );
  OAI22XL U97 ( .A0(n155), .A1(n121), .B0(n120), .B1(n143), .Y(n86) );
  OAI22XL U98 ( .A0(n190), .A1(n122), .B0(n121), .B1(n143), .Y(n87) );
  XNOR2X1 U100 ( .A(n151), .B(b[7]), .Y(n115) );
  XNOR2X1 U101 ( .A(n151), .B(b[6]), .Y(n116) );
  XNOR2X1 U102 ( .A(n151), .B(b[5]), .Y(n117) );
  XNOR2X1 U103 ( .A(n151), .B(b[4]), .Y(n118) );
  XNOR2X1 U104 ( .A(n151), .B(b[3]), .Y(n119) );
  XNOR2X1 U105 ( .A(n151), .B(b[2]), .Y(n120) );
  XNOR2X1 U106 ( .A(n151), .B(b[1]), .Y(n121) );
  CLKINVX1 U112 ( .A(n148), .Y(n144) );
  CLKINVX1 U116 ( .A(n149), .Y(n145) );
  CLKINVX1 U120 ( .A(n150), .Y(n146) );
  CLKINVX1 U124 ( .A(n151), .Y(n147) );
  XOR2X1 U127 ( .A(a[6]), .B(a[7]), .Y(n132) );
  XNOR2X1 U128 ( .A(a[6]), .B(a[5]), .Y(n156) );
  XOR2X1 U130 ( .A(a[4]), .B(a[5]), .Y(n133) );
  XNOR2X1 U131 ( .A(a[4]), .B(a[3]), .Y(n157) );
  XOR2X1 U133 ( .A(a[2]), .B(a[3]), .Y(n134) );
  XNOR2X1 U134 ( .A(a[2]), .B(a[1]), .Y(n158) );
  XOR2X1 U136 ( .A(a[0]), .B(a[1]), .Y(n135) );
  CLKINVX1 U137 ( .A(a[0]), .Y(n159) );
  CLKINVX1 U140 ( .A(n198), .Y(n189) );
  CLKINVX1 U141 ( .A(n200), .Y(n190) );
  CLKINVX1 U142 ( .A(n199), .Y(n191) );
  CLKINVX1 U143 ( .A(n158), .Y(n142) );
  CLKINVX1 U144 ( .A(n142), .Y(n192) );
  CLKINVX1 U145 ( .A(n156), .Y(n140) );
  CLKINVX1 U146 ( .A(n140), .Y(n193) );
  CLKINVX1 U147 ( .A(n197), .Y(n194) );
  CLKINVX1 U148 ( .A(b[0]), .Y(n131) );
  CLKINVX1 U149 ( .A(n131), .Y(n195) );
  NAND2BXL U150 ( .AN(n195), .B(a[1]), .Y(n123) );
  NAND2BXL U151 ( .AN(n195), .B(a[3]), .Y(n114) );
  CLKINVX1 U152 ( .A(n157), .Y(n141) );
  CLKINVX1 U153 ( .A(n141), .Y(n196) );
  NOR2BXL U154 ( .AN(n195), .B(n159), .Y(product[0]) );
  XNOR2XL U155 ( .A(a[7]), .B(b[0]), .Y(n95) );
  XNOR2XL U156 ( .A(a[1]), .B(b[0]), .Y(n122) );
  NOR2BXL U157 ( .AN(n195), .B(n192), .Y(n79) );
  XNOR2XL U158 ( .A(a[3]), .B(b[0]), .Y(n113) );
  NOR2BXL U159 ( .AN(n195), .B(n196), .Y(n71) );
  NAND2BXL U160 ( .AN(n195), .B(a[7]), .Y(n96) );
  NAND2BXL U161 ( .AN(n195), .B(a[5]), .Y(n105) );
  XNOR2XL U162 ( .A(a[5]), .B(b[0]), .Y(n104) );
  NOR2BXL U163 ( .AN(n195), .B(n193), .Y(n63) );
  CLKBUFX3 U164 ( .A(n159), .Y(n143) );
  CLKBUFX3 U165 ( .A(a[1]), .Y(n151) );
  CLKBUFX3 U166 ( .A(a[3]), .Y(n150) );
  CLKBUFX3 U167 ( .A(a[5]), .Y(n149) );
  CLKBUFX3 U168 ( .A(a[7]), .Y(n148) );
  AND2X2 U169 ( .A(n132), .B(n156), .Y(n197) );
  CLKINVX1 U170 ( .A(n197), .Y(n152) );
  AND2X2 U171 ( .A(n133), .B(n157), .Y(n198) );
  CLKINVX1 U172 ( .A(n198), .Y(n153) );
  AND2X2 U173 ( .A(n134), .B(n158), .Y(n199) );
  CLKINVX1 U174 ( .A(n199), .Y(n154) );
  AND2X2 U175 ( .A(n135), .B(n159), .Y(n200) );
  CLKINVX1 U176 ( .A(n200), .Y(n155) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_41 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n131, n132, n133, n134, n135, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200;

  CLKINVX1 U1 ( .A(n1), .Y(product[15]) );
  ADDFXL U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n78), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  CLKINVX1 U16 ( .A(n15), .Y(n16) );
  ADDFXL U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n22), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CLKINVX1 U19 ( .A(n21), .Y(n22) );
  CMPR42X1 U20 ( .A(n29), .B(n59), .C(n65), .D(n72), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n30), .D(n34), .ICI(n31), .S(n28), .ICO(
        n26), .CO(n27) );
  CLKINVX1 U22 ( .A(n29), .Y(n30) );
  CMPR42X1 U23 ( .A(n67), .B(n80), .C(n39), .D(n35), .ICI(n36), .S(n33), .ICO(
        n31), .CO(n32) );
  XNOR2X1 U24 ( .A(n73), .B(n61), .Y(n35) );
  OR2X1 U25 ( .A(n73), .B(n61), .Y(n34) );
  CMPR42X1 U26 ( .A(n52), .B(n62), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n81), .B(n68), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n69), .D(n75), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n53), .CI(n47), .CO(n44), .S(n45) );
  ADDHXL U30 ( .A(n83), .B(n70), .CO(n46), .S(n47) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n85), .B(n54), .CO(n50), .S(n51) );
  OAI22XL U33 ( .A0(n152), .A1(n144), .B0(n193), .B1(n96), .Y(n52) );
  AO21X1 U34 ( .A0(n152), .A1(n156), .B0(n88), .Y(n56) );
  OAI22XL U35 ( .A0(n152), .A1(n89), .B0(n193), .B1(n88), .Y(n15) );
  OAI22XL U36 ( .A0(n152), .A1(n90), .B0(n193), .B1(n89), .Y(n57) );
  OAI22XL U37 ( .A0(n152), .A1(n91), .B0(n193), .B1(n90), .Y(n58) );
  OAI22XL U38 ( .A0(n152), .A1(n92), .B0(n193), .B1(n91), .Y(n59) );
  OAI22XL U39 ( .A0(n152), .A1(n93), .B0(n156), .B1(n92), .Y(n60) );
  OAI22XL U40 ( .A0(n152), .A1(n94), .B0(n156), .B1(n93), .Y(n61) );
  OAI22XL U41 ( .A0(n194), .A1(n95), .B0(n156), .B1(n94), .Y(n62) );
  XNOR2X1 U43 ( .A(n148), .B(b[7]), .Y(n88) );
  XNOR2X1 U44 ( .A(n148), .B(b[6]), .Y(n89) );
  XNOR2X1 U45 ( .A(n148), .B(b[5]), .Y(n90) );
  XNOR2X1 U46 ( .A(n148), .B(b[4]), .Y(n91) );
  XNOR2X1 U47 ( .A(n148), .B(b[3]), .Y(n92) );
  XNOR2X1 U48 ( .A(n148), .B(b[2]), .Y(n93) );
  XNOR2X1 U49 ( .A(n148), .B(b[1]), .Y(n94) );
  OAI22XL U52 ( .A0(n153), .A1(n145), .B0(n196), .B1(n105), .Y(n53) );
  AO21X1 U53 ( .A0(n153), .A1(n157), .B0(n97), .Y(n64) );
  OAI22XL U54 ( .A0(n153), .A1(n98), .B0(n196), .B1(n97), .Y(n21) );
  OAI22XL U55 ( .A0(n153), .A1(n99), .B0(n196), .B1(n98), .Y(n65) );
  OAI22XL U56 ( .A0(n153), .A1(n100), .B0(n196), .B1(n99), .Y(n66) );
  OAI22XL U57 ( .A0(n153), .A1(n101), .B0(n196), .B1(n100), .Y(n67) );
  OAI22XL U58 ( .A0(n153), .A1(n102), .B0(n157), .B1(n101), .Y(n68) );
  OAI22XL U59 ( .A0(n153), .A1(n103), .B0(n157), .B1(n102), .Y(n69) );
  OAI22XL U60 ( .A0(n189), .A1(n104), .B0(n157), .B1(n103), .Y(n70) );
  XNOR2X1 U62 ( .A(n149), .B(b[7]), .Y(n97) );
  XNOR2X1 U63 ( .A(n149), .B(b[6]), .Y(n98) );
  XNOR2X1 U64 ( .A(n149), .B(b[5]), .Y(n99) );
  XNOR2X1 U65 ( .A(n149), .B(b[4]), .Y(n100) );
  XNOR2X1 U66 ( .A(n149), .B(b[3]), .Y(n101) );
  XNOR2X1 U67 ( .A(n149), .B(b[2]), .Y(n102) );
  XNOR2X1 U68 ( .A(n149), .B(b[1]), .Y(n103) );
  OAI22XL U71 ( .A0(n154), .A1(n146), .B0(n192), .B1(n114), .Y(n54) );
  AO21X1 U72 ( .A0(n154), .A1(n158), .B0(n106), .Y(n72) );
  OAI22XL U73 ( .A0(n154), .A1(n107), .B0(n192), .B1(n106), .Y(n29) );
  OAI22XL U74 ( .A0(n154), .A1(n108), .B0(n192), .B1(n107), .Y(n73) );
  OAI22XL U75 ( .A0(n154), .A1(n109), .B0(n192), .B1(n108), .Y(n74) );
  OAI22XL U76 ( .A0(n154), .A1(n110), .B0(n192), .B1(n109), .Y(n75) );
  OAI22XL U77 ( .A0(n154), .A1(n111), .B0(n158), .B1(n110), .Y(n76) );
  OAI22XL U78 ( .A0(n154), .A1(n112), .B0(n158), .B1(n111), .Y(n77) );
  OAI22XL U79 ( .A0(n191), .A1(n113), .B0(n158), .B1(n112), .Y(n78) );
  XNOR2X1 U81 ( .A(n150), .B(b[7]), .Y(n106) );
  XNOR2X1 U82 ( .A(n150), .B(b[6]), .Y(n107) );
  XNOR2X1 U83 ( .A(n150), .B(b[5]), .Y(n108) );
  XNOR2X1 U84 ( .A(n150), .B(b[4]), .Y(n109) );
  XNOR2X1 U85 ( .A(n150), .B(b[3]), .Y(n110) );
  XNOR2X1 U86 ( .A(n150), .B(b[2]), .Y(n111) );
  XNOR2X1 U87 ( .A(n150), .B(b[1]), .Y(n112) );
  OAI22XL U90 ( .A0(n155), .A1(n147), .B0(n123), .B1(n143), .Y(n55) );
  AO21X1 U91 ( .A0(n155), .A1(n159), .B0(n115), .Y(n80) );
  OAI22XL U92 ( .A0(n155), .A1(n116), .B0(n115), .B1(n143), .Y(n81) );
  OAI22XL U93 ( .A0(n155), .A1(n117), .B0(n116), .B1(n143), .Y(n82) );
  OAI22XL U94 ( .A0(n155), .A1(n118), .B0(n117), .B1(n143), .Y(n83) );
  OAI22XL U95 ( .A0(n155), .A1(n119), .B0(n118), .B1(n143), .Y(n84) );
  OAI22XL U96 ( .A0(n155), .A1(n120), .B0(n119), .B1(n143), .Y(n85) );
  OAI22XL U97 ( .A0(n155), .A1(n121), .B0(n120), .B1(n143), .Y(n86) );
  OAI22XL U98 ( .A0(n190), .A1(n122), .B0(n121), .B1(n143), .Y(n87) );
  XNOR2X1 U100 ( .A(n151), .B(b[7]), .Y(n115) );
  XNOR2X1 U101 ( .A(n151), .B(b[6]), .Y(n116) );
  XNOR2X1 U102 ( .A(n151), .B(b[5]), .Y(n117) );
  XNOR2X1 U103 ( .A(n151), .B(b[4]), .Y(n118) );
  XNOR2X1 U104 ( .A(n151), .B(b[3]), .Y(n119) );
  XNOR2X1 U105 ( .A(n151), .B(b[2]), .Y(n120) );
  XNOR2X1 U106 ( .A(n151), .B(b[1]), .Y(n121) );
  CLKINVX1 U112 ( .A(n148), .Y(n144) );
  CLKINVX1 U116 ( .A(n149), .Y(n145) );
  CLKINVX1 U120 ( .A(n150), .Y(n146) );
  CLKINVX1 U124 ( .A(n151), .Y(n147) );
  XOR2X1 U127 ( .A(a[6]), .B(a[7]), .Y(n132) );
  XNOR2X1 U128 ( .A(a[6]), .B(a[5]), .Y(n156) );
  XOR2X1 U130 ( .A(a[4]), .B(a[5]), .Y(n133) );
  XNOR2X1 U131 ( .A(a[4]), .B(a[3]), .Y(n157) );
  XOR2X1 U133 ( .A(a[2]), .B(a[3]), .Y(n134) );
  XNOR2X1 U134 ( .A(a[2]), .B(a[1]), .Y(n158) );
  XOR2X1 U136 ( .A(a[0]), .B(a[1]), .Y(n135) );
  CLKINVX1 U137 ( .A(a[0]), .Y(n159) );
  CLKINVX1 U140 ( .A(n198), .Y(n189) );
  CLKINVX1 U141 ( .A(n200), .Y(n190) );
  CLKINVX1 U142 ( .A(n199), .Y(n191) );
  CLKINVX1 U143 ( .A(n158), .Y(n142) );
  CLKINVX1 U144 ( .A(n142), .Y(n192) );
  CLKINVX1 U145 ( .A(n156), .Y(n140) );
  CLKINVX1 U146 ( .A(n140), .Y(n193) );
  CLKINVX1 U147 ( .A(n197), .Y(n194) );
  CLKINVX1 U148 ( .A(b[0]), .Y(n131) );
  CLKINVX1 U149 ( .A(n131), .Y(n195) );
  NAND2BXL U150 ( .AN(n195), .B(a[1]), .Y(n123) );
  NAND2BXL U151 ( .AN(n195), .B(a[3]), .Y(n114) );
  CLKINVX1 U152 ( .A(n157), .Y(n141) );
  CLKINVX1 U153 ( .A(n141), .Y(n196) );
  NOR2BXL U154 ( .AN(n195), .B(n159), .Y(product[0]) );
  XNOR2XL U155 ( .A(a[7]), .B(b[0]), .Y(n95) );
  XNOR2XL U156 ( .A(a[1]), .B(b[0]), .Y(n122) );
  NOR2BXL U157 ( .AN(n195), .B(n192), .Y(n79) );
  XNOR2XL U158 ( .A(a[3]), .B(b[0]), .Y(n113) );
  NOR2BXL U159 ( .AN(n195), .B(n196), .Y(n71) );
  NAND2BXL U160 ( .AN(n195), .B(a[7]), .Y(n96) );
  NAND2BXL U161 ( .AN(n195), .B(a[5]), .Y(n105) );
  XNOR2XL U162 ( .A(a[5]), .B(b[0]), .Y(n104) );
  NOR2BXL U163 ( .AN(n195), .B(n193), .Y(n63) );
  CLKBUFX3 U164 ( .A(n159), .Y(n143) );
  CLKBUFX3 U165 ( .A(a[1]), .Y(n151) );
  CLKBUFX3 U166 ( .A(a[3]), .Y(n150) );
  CLKBUFX3 U167 ( .A(a[5]), .Y(n149) );
  CLKBUFX3 U168 ( .A(a[7]), .Y(n148) );
  AND2X2 U169 ( .A(n132), .B(n156), .Y(n197) );
  CLKINVX1 U170 ( .A(n197), .Y(n152) );
  AND2X2 U171 ( .A(n133), .B(n157), .Y(n198) );
  CLKINVX1 U172 ( .A(n198), .Y(n153) );
  AND2X2 U173 ( .A(n134), .B(n158), .Y(n199) );
  CLKINVX1 U174 ( .A(n199), .Y(n154) );
  AND2X2 U175 ( .A(n135), .B(n159), .Y(n200) );
  CLKINVX1 U176 ( .A(n200), .Y(n155) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_42 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n131, n132, n133, n134, n135, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200;

  CLKINVX1 U1 ( .A(n1), .Y(product[15]) );
  ADDFXL U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n78), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  CLKINVX1 U16 ( .A(n15), .Y(n16) );
  ADDFXL U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n22), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CLKINVX1 U19 ( .A(n21), .Y(n22) );
  CMPR42X1 U20 ( .A(n29), .B(n59), .C(n65), .D(n72), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n30), .D(n34), .ICI(n31), .S(n28), .ICO(
        n26), .CO(n27) );
  CLKINVX1 U22 ( .A(n29), .Y(n30) );
  CMPR42X1 U23 ( .A(n67), .B(n80), .C(n39), .D(n35), .ICI(n36), .S(n33), .ICO(
        n31), .CO(n32) );
  XNOR2X1 U24 ( .A(n73), .B(n61), .Y(n35) );
  OR2X1 U25 ( .A(n73), .B(n61), .Y(n34) );
  CMPR42X1 U26 ( .A(n52), .B(n62), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n81), .B(n68), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n69), .D(n75), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n53), .CI(n47), .CO(n44), .S(n45) );
  ADDHXL U30 ( .A(n83), .B(n70), .CO(n46), .S(n47) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n85), .B(n54), .CO(n50), .S(n51) );
  OAI22XL U33 ( .A0(n152), .A1(n144), .B0(n193), .B1(n96), .Y(n52) );
  AO21X1 U34 ( .A0(n152), .A1(n156), .B0(n88), .Y(n56) );
  OAI22XL U35 ( .A0(n152), .A1(n89), .B0(n193), .B1(n88), .Y(n15) );
  OAI22XL U36 ( .A0(n152), .A1(n90), .B0(n193), .B1(n89), .Y(n57) );
  OAI22XL U37 ( .A0(n152), .A1(n91), .B0(n193), .B1(n90), .Y(n58) );
  OAI22XL U38 ( .A0(n152), .A1(n92), .B0(n193), .B1(n91), .Y(n59) );
  OAI22XL U39 ( .A0(n152), .A1(n93), .B0(n156), .B1(n92), .Y(n60) );
  OAI22XL U40 ( .A0(n152), .A1(n94), .B0(n156), .B1(n93), .Y(n61) );
  OAI22XL U41 ( .A0(n194), .A1(n95), .B0(n156), .B1(n94), .Y(n62) );
  XNOR2X1 U43 ( .A(n148), .B(b[7]), .Y(n88) );
  XNOR2X1 U44 ( .A(n148), .B(b[6]), .Y(n89) );
  XNOR2X1 U45 ( .A(n148), .B(b[5]), .Y(n90) );
  XNOR2X1 U46 ( .A(n148), .B(b[4]), .Y(n91) );
  XNOR2X1 U47 ( .A(n148), .B(b[3]), .Y(n92) );
  XNOR2X1 U48 ( .A(n148), .B(b[2]), .Y(n93) );
  XNOR2X1 U49 ( .A(n148), .B(b[1]), .Y(n94) );
  OAI22XL U52 ( .A0(n153), .A1(n145), .B0(n196), .B1(n105), .Y(n53) );
  AO21X1 U53 ( .A0(n153), .A1(n157), .B0(n97), .Y(n64) );
  OAI22XL U54 ( .A0(n153), .A1(n98), .B0(n196), .B1(n97), .Y(n21) );
  OAI22XL U55 ( .A0(n153), .A1(n99), .B0(n196), .B1(n98), .Y(n65) );
  OAI22XL U56 ( .A0(n153), .A1(n100), .B0(n196), .B1(n99), .Y(n66) );
  OAI22XL U57 ( .A0(n153), .A1(n101), .B0(n196), .B1(n100), .Y(n67) );
  OAI22XL U58 ( .A0(n153), .A1(n102), .B0(n157), .B1(n101), .Y(n68) );
  OAI22XL U59 ( .A0(n153), .A1(n103), .B0(n157), .B1(n102), .Y(n69) );
  OAI22XL U60 ( .A0(n189), .A1(n104), .B0(n157), .B1(n103), .Y(n70) );
  XNOR2X1 U62 ( .A(n149), .B(b[7]), .Y(n97) );
  XNOR2X1 U63 ( .A(n149), .B(b[6]), .Y(n98) );
  XNOR2X1 U64 ( .A(n149), .B(b[5]), .Y(n99) );
  XNOR2X1 U65 ( .A(n149), .B(b[4]), .Y(n100) );
  XNOR2X1 U66 ( .A(n149), .B(b[3]), .Y(n101) );
  XNOR2X1 U67 ( .A(n149), .B(b[2]), .Y(n102) );
  XNOR2X1 U68 ( .A(n149), .B(b[1]), .Y(n103) );
  OAI22XL U71 ( .A0(n154), .A1(n146), .B0(n192), .B1(n114), .Y(n54) );
  AO21X1 U72 ( .A0(n154), .A1(n158), .B0(n106), .Y(n72) );
  OAI22XL U73 ( .A0(n154), .A1(n107), .B0(n192), .B1(n106), .Y(n29) );
  OAI22XL U74 ( .A0(n154), .A1(n108), .B0(n192), .B1(n107), .Y(n73) );
  OAI22XL U75 ( .A0(n154), .A1(n109), .B0(n192), .B1(n108), .Y(n74) );
  OAI22XL U76 ( .A0(n154), .A1(n110), .B0(n192), .B1(n109), .Y(n75) );
  OAI22XL U77 ( .A0(n154), .A1(n111), .B0(n158), .B1(n110), .Y(n76) );
  OAI22XL U78 ( .A0(n154), .A1(n112), .B0(n158), .B1(n111), .Y(n77) );
  OAI22XL U79 ( .A0(n191), .A1(n113), .B0(n158), .B1(n112), .Y(n78) );
  XNOR2X1 U81 ( .A(n150), .B(b[7]), .Y(n106) );
  XNOR2X1 U82 ( .A(n150), .B(b[6]), .Y(n107) );
  XNOR2X1 U83 ( .A(n150), .B(b[5]), .Y(n108) );
  XNOR2X1 U84 ( .A(n150), .B(b[4]), .Y(n109) );
  XNOR2X1 U85 ( .A(n150), .B(b[3]), .Y(n110) );
  XNOR2X1 U86 ( .A(n150), .B(b[2]), .Y(n111) );
  XNOR2X1 U87 ( .A(n150), .B(b[1]), .Y(n112) );
  OAI22XL U90 ( .A0(n155), .A1(n147), .B0(n123), .B1(n143), .Y(n55) );
  AO21X1 U91 ( .A0(n155), .A1(n159), .B0(n115), .Y(n80) );
  OAI22XL U92 ( .A0(n155), .A1(n116), .B0(n115), .B1(n143), .Y(n81) );
  OAI22XL U93 ( .A0(n155), .A1(n117), .B0(n116), .B1(n143), .Y(n82) );
  OAI22XL U94 ( .A0(n155), .A1(n118), .B0(n117), .B1(n143), .Y(n83) );
  OAI22XL U95 ( .A0(n155), .A1(n119), .B0(n118), .B1(n143), .Y(n84) );
  OAI22XL U96 ( .A0(n155), .A1(n120), .B0(n119), .B1(n143), .Y(n85) );
  OAI22XL U97 ( .A0(n155), .A1(n121), .B0(n120), .B1(n143), .Y(n86) );
  OAI22XL U98 ( .A0(n190), .A1(n122), .B0(n121), .B1(n143), .Y(n87) );
  XNOR2X1 U100 ( .A(n151), .B(b[7]), .Y(n115) );
  XNOR2X1 U101 ( .A(n151), .B(b[6]), .Y(n116) );
  XNOR2X1 U102 ( .A(n151), .B(b[5]), .Y(n117) );
  XNOR2X1 U103 ( .A(n151), .B(b[4]), .Y(n118) );
  XNOR2X1 U104 ( .A(n151), .B(b[3]), .Y(n119) );
  XNOR2X1 U105 ( .A(n151), .B(b[2]), .Y(n120) );
  XNOR2X1 U106 ( .A(n151), .B(b[1]), .Y(n121) );
  CLKINVX1 U112 ( .A(n148), .Y(n144) );
  CLKINVX1 U116 ( .A(n149), .Y(n145) );
  CLKINVX1 U120 ( .A(n150), .Y(n146) );
  CLKINVX1 U124 ( .A(n151), .Y(n147) );
  XOR2X1 U127 ( .A(a[6]), .B(a[7]), .Y(n132) );
  XNOR2X1 U128 ( .A(a[6]), .B(a[5]), .Y(n156) );
  XOR2X1 U130 ( .A(a[4]), .B(a[5]), .Y(n133) );
  XNOR2X1 U131 ( .A(a[4]), .B(a[3]), .Y(n157) );
  XOR2X1 U133 ( .A(a[2]), .B(a[3]), .Y(n134) );
  XNOR2X1 U134 ( .A(a[2]), .B(a[1]), .Y(n158) );
  XOR2X1 U136 ( .A(a[0]), .B(a[1]), .Y(n135) );
  CLKINVX1 U137 ( .A(a[0]), .Y(n159) );
  CLKINVX1 U140 ( .A(n198), .Y(n189) );
  CLKINVX1 U141 ( .A(n200), .Y(n190) );
  CLKINVX1 U142 ( .A(n199), .Y(n191) );
  CLKINVX1 U143 ( .A(n158), .Y(n142) );
  CLKINVX1 U144 ( .A(n142), .Y(n192) );
  CLKINVX1 U145 ( .A(n156), .Y(n140) );
  CLKINVX1 U146 ( .A(n140), .Y(n193) );
  CLKINVX1 U147 ( .A(n197), .Y(n194) );
  CLKINVX1 U148 ( .A(b[0]), .Y(n131) );
  CLKINVX1 U149 ( .A(n131), .Y(n195) );
  NAND2BXL U150 ( .AN(n195), .B(a[1]), .Y(n123) );
  NAND2BXL U151 ( .AN(n195), .B(a[3]), .Y(n114) );
  CLKINVX1 U152 ( .A(n157), .Y(n141) );
  CLKINVX1 U153 ( .A(n141), .Y(n196) );
  NOR2BXL U154 ( .AN(n195), .B(n159), .Y(product[0]) );
  XNOR2XL U155 ( .A(a[7]), .B(b[0]), .Y(n95) );
  XNOR2XL U156 ( .A(a[1]), .B(b[0]), .Y(n122) );
  NOR2BXL U157 ( .AN(n195), .B(n192), .Y(n79) );
  XNOR2XL U158 ( .A(a[3]), .B(b[0]), .Y(n113) );
  NOR2BXL U159 ( .AN(n195), .B(n196), .Y(n71) );
  NAND2BXL U160 ( .AN(n195), .B(a[7]), .Y(n96) );
  NAND2BXL U161 ( .AN(n195), .B(a[5]), .Y(n105) );
  XNOR2XL U162 ( .A(a[5]), .B(b[0]), .Y(n104) );
  NOR2BXL U163 ( .AN(n195), .B(n193), .Y(n63) );
  CLKBUFX3 U164 ( .A(n159), .Y(n143) );
  CLKBUFX3 U165 ( .A(a[1]), .Y(n151) );
  CLKBUFX3 U166 ( .A(a[3]), .Y(n150) );
  CLKBUFX3 U167 ( .A(a[5]), .Y(n149) );
  CLKBUFX3 U168 ( .A(a[7]), .Y(n148) );
  AND2X2 U169 ( .A(n132), .B(n156), .Y(n197) );
  CLKINVX1 U170 ( .A(n197), .Y(n152) );
  AND2X2 U171 ( .A(n133), .B(n157), .Y(n198) );
  CLKINVX1 U172 ( .A(n198), .Y(n153) );
  AND2X2 U173 ( .A(n134), .B(n158), .Y(n199) );
  CLKINVX1 U174 ( .A(n199), .Y(n154) );
  AND2X2 U175 ( .A(n135), .B(n159), .Y(n200) );
  CLKINVX1 U176 ( .A(n200), .Y(n155) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_43 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n131, n132, n133, n134, n135, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200;

  CLKINVX1 U1 ( .A(n1), .Y(product[15]) );
  ADDFXL U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n78), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  CLKINVX1 U16 ( .A(n15), .Y(n16) );
  ADDFXL U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n22), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CLKINVX1 U19 ( .A(n21), .Y(n22) );
  CMPR42X1 U20 ( .A(n29), .B(n59), .C(n65), .D(n72), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n30), .D(n34), .ICI(n31), .S(n28), .ICO(
        n26), .CO(n27) );
  CLKINVX1 U22 ( .A(n29), .Y(n30) );
  CMPR42X1 U23 ( .A(n67), .B(n80), .C(n39), .D(n35), .ICI(n36), .S(n33), .ICO(
        n31), .CO(n32) );
  XNOR2X1 U24 ( .A(n73), .B(n61), .Y(n35) );
  OR2X1 U25 ( .A(n73), .B(n61), .Y(n34) );
  CMPR42X1 U26 ( .A(n52), .B(n62), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n81), .B(n68), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n69), .D(n75), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n53), .CI(n47), .CO(n44), .S(n45) );
  ADDHXL U30 ( .A(n83), .B(n70), .CO(n46), .S(n47) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n85), .B(n54), .CO(n50), .S(n51) );
  OAI22XL U33 ( .A0(n152), .A1(n144), .B0(n193), .B1(n96), .Y(n52) );
  AO21X1 U34 ( .A0(n152), .A1(n156), .B0(n88), .Y(n56) );
  OAI22XL U35 ( .A0(n152), .A1(n89), .B0(n193), .B1(n88), .Y(n15) );
  OAI22XL U36 ( .A0(n152), .A1(n90), .B0(n193), .B1(n89), .Y(n57) );
  OAI22XL U37 ( .A0(n152), .A1(n91), .B0(n193), .B1(n90), .Y(n58) );
  OAI22XL U38 ( .A0(n152), .A1(n92), .B0(n193), .B1(n91), .Y(n59) );
  OAI22XL U39 ( .A0(n152), .A1(n93), .B0(n156), .B1(n92), .Y(n60) );
  OAI22XL U40 ( .A0(n152), .A1(n94), .B0(n156), .B1(n93), .Y(n61) );
  OAI22XL U41 ( .A0(n194), .A1(n95), .B0(n156), .B1(n94), .Y(n62) );
  XNOR2X1 U43 ( .A(n148), .B(b[7]), .Y(n88) );
  XNOR2X1 U44 ( .A(n148), .B(b[6]), .Y(n89) );
  XNOR2X1 U45 ( .A(n148), .B(b[5]), .Y(n90) );
  XNOR2X1 U46 ( .A(n148), .B(b[4]), .Y(n91) );
  XNOR2X1 U47 ( .A(n148), .B(b[3]), .Y(n92) );
  XNOR2X1 U48 ( .A(n148), .B(b[2]), .Y(n93) );
  XNOR2X1 U49 ( .A(n148), .B(b[1]), .Y(n94) );
  OAI22XL U52 ( .A0(n153), .A1(n145), .B0(n196), .B1(n105), .Y(n53) );
  AO21X1 U53 ( .A0(n153), .A1(n157), .B0(n97), .Y(n64) );
  OAI22XL U54 ( .A0(n153), .A1(n98), .B0(n196), .B1(n97), .Y(n21) );
  OAI22XL U55 ( .A0(n153), .A1(n99), .B0(n196), .B1(n98), .Y(n65) );
  OAI22XL U56 ( .A0(n153), .A1(n100), .B0(n196), .B1(n99), .Y(n66) );
  OAI22XL U57 ( .A0(n153), .A1(n101), .B0(n196), .B1(n100), .Y(n67) );
  OAI22XL U58 ( .A0(n153), .A1(n102), .B0(n157), .B1(n101), .Y(n68) );
  OAI22XL U59 ( .A0(n153), .A1(n103), .B0(n157), .B1(n102), .Y(n69) );
  OAI22XL U60 ( .A0(n189), .A1(n104), .B0(n157), .B1(n103), .Y(n70) );
  XNOR2X1 U62 ( .A(n149), .B(b[7]), .Y(n97) );
  XNOR2X1 U63 ( .A(n149), .B(b[6]), .Y(n98) );
  XNOR2X1 U64 ( .A(n149), .B(b[5]), .Y(n99) );
  XNOR2X1 U65 ( .A(n149), .B(b[4]), .Y(n100) );
  XNOR2X1 U66 ( .A(n149), .B(b[3]), .Y(n101) );
  XNOR2X1 U67 ( .A(n149), .B(b[2]), .Y(n102) );
  XNOR2X1 U68 ( .A(n149), .B(b[1]), .Y(n103) );
  OAI22XL U71 ( .A0(n154), .A1(n146), .B0(n192), .B1(n114), .Y(n54) );
  AO21X1 U72 ( .A0(n154), .A1(n158), .B0(n106), .Y(n72) );
  OAI22XL U73 ( .A0(n154), .A1(n107), .B0(n192), .B1(n106), .Y(n29) );
  OAI22XL U74 ( .A0(n154), .A1(n108), .B0(n192), .B1(n107), .Y(n73) );
  OAI22XL U75 ( .A0(n154), .A1(n109), .B0(n192), .B1(n108), .Y(n74) );
  OAI22XL U76 ( .A0(n154), .A1(n110), .B0(n192), .B1(n109), .Y(n75) );
  OAI22XL U77 ( .A0(n154), .A1(n111), .B0(n158), .B1(n110), .Y(n76) );
  OAI22XL U78 ( .A0(n154), .A1(n112), .B0(n158), .B1(n111), .Y(n77) );
  OAI22XL U79 ( .A0(n191), .A1(n113), .B0(n158), .B1(n112), .Y(n78) );
  XNOR2X1 U81 ( .A(n150), .B(b[7]), .Y(n106) );
  XNOR2X1 U82 ( .A(n150), .B(b[6]), .Y(n107) );
  XNOR2X1 U83 ( .A(n150), .B(b[5]), .Y(n108) );
  XNOR2X1 U84 ( .A(n150), .B(b[4]), .Y(n109) );
  XNOR2X1 U85 ( .A(n150), .B(b[3]), .Y(n110) );
  XNOR2X1 U86 ( .A(n150), .B(b[2]), .Y(n111) );
  XNOR2X1 U87 ( .A(n150), .B(b[1]), .Y(n112) );
  OAI22XL U90 ( .A0(n155), .A1(n147), .B0(n123), .B1(n143), .Y(n55) );
  AO21X1 U91 ( .A0(n155), .A1(n159), .B0(n115), .Y(n80) );
  OAI22XL U92 ( .A0(n155), .A1(n116), .B0(n115), .B1(n143), .Y(n81) );
  OAI22XL U93 ( .A0(n155), .A1(n117), .B0(n116), .B1(n143), .Y(n82) );
  OAI22XL U94 ( .A0(n155), .A1(n118), .B0(n117), .B1(n143), .Y(n83) );
  OAI22XL U95 ( .A0(n155), .A1(n119), .B0(n118), .B1(n143), .Y(n84) );
  OAI22XL U96 ( .A0(n155), .A1(n120), .B0(n119), .B1(n143), .Y(n85) );
  OAI22XL U97 ( .A0(n155), .A1(n121), .B0(n120), .B1(n143), .Y(n86) );
  OAI22XL U98 ( .A0(n190), .A1(n122), .B0(n121), .B1(n143), .Y(n87) );
  XNOR2X1 U100 ( .A(n151), .B(b[7]), .Y(n115) );
  XNOR2X1 U101 ( .A(n151), .B(b[6]), .Y(n116) );
  XNOR2X1 U102 ( .A(n151), .B(b[5]), .Y(n117) );
  XNOR2X1 U103 ( .A(n151), .B(b[4]), .Y(n118) );
  XNOR2X1 U104 ( .A(n151), .B(b[3]), .Y(n119) );
  XNOR2X1 U105 ( .A(n151), .B(b[2]), .Y(n120) );
  XNOR2X1 U106 ( .A(n151), .B(b[1]), .Y(n121) );
  CLKINVX1 U112 ( .A(n148), .Y(n144) );
  CLKINVX1 U116 ( .A(n149), .Y(n145) );
  CLKINVX1 U120 ( .A(n150), .Y(n146) );
  CLKINVX1 U124 ( .A(n151), .Y(n147) );
  XOR2X1 U127 ( .A(a[6]), .B(a[7]), .Y(n132) );
  XNOR2X1 U128 ( .A(a[6]), .B(a[5]), .Y(n156) );
  XOR2X1 U130 ( .A(a[4]), .B(a[5]), .Y(n133) );
  XNOR2X1 U131 ( .A(a[4]), .B(a[3]), .Y(n157) );
  XOR2X1 U133 ( .A(a[2]), .B(a[3]), .Y(n134) );
  XNOR2X1 U134 ( .A(a[2]), .B(a[1]), .Y(n158) );
  XOR2X1 U136 ( .A(a[0]), .B(a[1]), .Y(n135) );
  CLKINVX1 U137 ( .A(a[0]), .Y(n159) );
  CLKINVX1 U140 ( .A(n198), .Y(n189) );
  CLKINVX1 U141 ( .A(n200), .Y(n190) );
  CLKINVX1 U142 ( .A(n199), .Y(n191) );
  CLKINVX1 U143 ( .A(n158), .Y(n142) );
  CLKINVX1 U144 ( .A(n142), .Y(n192) );
  CLKINVX1 U145 ( .A(n156), .Y(n140) );
  CLKINVX1 U146 ( .A(n140), .Y(n193) );
  CLKINVX1 U147 ( .A(n197), .Y(n194) );
  CLKINVX1 U148 ( .A(b[0]), .Y(n131) );
  CLKINVX1 U149 ( .A(n131), .Y(n195) );
  NAND2BXL U150 ( .AN(n195), .B(a[1]), .Y(n123) );
  NAND2BXL U151 ( .AN(n195), .B(a[3]), .Y(n114) );
  CLKINVX1 U152 ( .A(n157), .Y(n141) );
  CLKINVX1 U153 ( .A(n141), .Y(n196) );
  NOR2BXL U154 ( .AN(n195), .B(n159), .Y(product[0]) );
  XNOR2XL U155 ( .A(a[7]), .B(b[0]), .Y(n95) );
  XNOR2XL U156 ( .A(a[1]), .B(b[0]), .Y(n122) );
  NOR2BXL U157 ( .AN(n195), .B(n192), .Y(n79) );
  XNOR2XL U158 ( .A(a[3]), .B(b[0]), .Y(n113) );
  NOR2BXL U159 ( .AN(n195), .B(n196), .Y(n71) );
  NAND2BXL U160 ( .AN(n195), .B(a[7]), .Y(n96) );
  NAND2BXL U161 ( .AN(n195), .B(a[5]), .Y(n105) );
  XNOR2XL U162 ( .A(a[5]), .B(b[0]), .Y(n104) );
  NOR2BXL U163 ( .AN(n195), .B(n193), .Y(n63) );
  CLKBUFX3 U164 ( .A(n159), .Y(n143) );
  CLKBUFX3 U165 ( .A(a[1]), .Y(n151) );
  CLKBUFX3 U166 ( .A(a[3]), .Y(n150) );
  CLKBUFX3 U167 ( .A(a[5]), .Y(n149) );
  CLKBUFX3 U168 ( .A(a[7]), .Y(n148) );
  AND2X2 U169 ( .A(n132), .B(n156), .Y(n197) );
  CLKINVX1 U170 ( .A(n197), .Y(n152) );
  AND2X2 U171 ( .A(n133), .B(n157), .Y(n198) );
  CLKINVX1 U172 ( .A(n198), .Y(n153) );
  AND2X2 U173 ( .A(n134), .B(n158), .Y(n199) );
  CLKINVX1 U174 ( .A(n199), .Y(n154) );
  AND2X2 U175 ( .A(n135), .B(n159), .Y(n200) );
  CLKINVX1 U176 ( .A(n200), .Y(n155) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_44 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n131, n132, n133, n134, n135, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200;

  CLKINVX1 U1 ( .A(n1), .Y(product[15]) );
  ADDFXL U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n78), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  CLKINVX1 U16 ( .A(n15), .Y(n16) );
  ADDFXL U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n22), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CLKINVX1 U19 ( .A(n21), .Y(n22) );
  CMPR42X1 U20 ( .A(n29), .B(n59), .C(n65), .D(n72), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n30), .D(n34), .ICI(n31), .S(n28), .ICO(
        n26), .CO(n27) );
  CLKINVX1 U22 ( .A(n29), .Y(n30) );
  CMPR42X1 U23 ( .A(n67), .B(n80), .C(n39), .D(n35), .ICI(n36), .S(n33), .ICO(
        n31), .CO(n32) );
  XNOR2X1 U24 ( .A(n73), .B(n61), .Y(n35) );
  OR2X1 U25 ( .A(n73), .B(n61), .Y(n34) );
  CMPR42X1 U26 ( .A(n52), .B(n62), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n81), .B(n68), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n69), .D(n75), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n53), .CI(n47), .CO(n44), .S(n45) );
  ADDHXL U30 ( .A(n83), .B(n70), .CO(n46), .S(n47) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n85), .B(n54), .CO(n50), .S(n51) );
  OAI22XL U33 ( .A0(n152), .A1(n144), .B0(n193), .B1(n96), .Y(n52) );
  AO21X1 U34 ( .A0(n152), .A1(n156), .B0(n88), .Y(n56) );
  OAI22XL U35 ( .A0(n152), .A1(n89), .B0(n193), .B1(n88), .Y(n15) );
  OAI22XL U36 ( .A0(n152), .A1(n90), .B0(n193), .B1(n89), .Y(n57) );
  OAI22XL U37 ( .A0(n152), .A1(n91), .B0(n193), .B1(n90), .Y(n58) );
  OAI22XL U38 ( .A0(n152), .A1(n92), .B0(n193), .B1(n91), .Y(n59) );
  OAI22XL U39 ( .A0(n152), .A1(n93), .B0(n156), .B1(n92), .Y(n60) );
  OAI22XL U40 ( .A0(n152), .A1(n94), .B0(n156), .B1(n93), .Y(n61) );
  OAI22XL U41 ( .A0(n194), .A1(n95), .B0(n156), .B1(n94), .Y(n62) );
  XNOR2X1 U43 ( .A(n148), .B(b[7]), .Y(n88) );
  XNOR2X1 U44 ( .A(n148), .B(b[6]), .Y(n89) );
  XNOR2X1 U45 ( .A(n148), .B(b[5]), .Y(n90) );
  XNOR2X1 U46 ( .A(n148), .B(b[4]), .Y(n91) );
  XNOR2X1 U47 ( .A(n148), .B(b[3]), .Y(n92) );
  XNOR2X1 U48 ( .A(n148), .B(b[2]), .Y(n93) );
  XNOR2X1 U49 ( .A(n148), .B(b[1]), .Y(n94) );
  OAI22XL U52 ( .A0(n153), .A1(n145), .B0(n196), .B1(n105), .Y(n53) );
  AO21X1 U53 ( .A0(n153), .A1(n157), .B0(n97), .Y(n64) );
  OAI22XL U54 ( .A0(n153), .A1(n98), .B0(n196), .B1(n97), .Y(n21) );
  OAI22XL U55 ( .A0(n153), .A1(n99), .B0(n196), .B1(n98), .Y(n65) );
  OAI22XL U56 ( .A0(n153), .A1(n100), .B0(n196), .B1(n99), .Y(n66) );
  OAI22XL U57 ( .A0(n153), .A1(n101), .B0(n196), .B1(n100), .Y(n67) );
  OAI22XL U58 ( .A0(n153), .A1(n102), .B0(n157), .B1(n101), .Y(n68) );
  OAI22XL U59 ( .A0(n153), .A1(n103), .B0(n157), .B1(n102), .Y(n69) );
  OAI22XL U60 ( .A0(n189), .A1(n104), .B0(n157), .B1(n103), .Y(n70) );
  XNOR2X1 U62 ( .A(n149), .B(b[7]), .Y(n97) );
  XNOR2X1 U63 ( .A(n149), .B(b[6]), .Y(n98) );
  XNOR2X1 U64 ( .A(n149), .B(b[5]), .Y(n99) );
  XNOR2X1 U65 ( .A(n149), .B(b[4]), .Y(n100) );
  XNOR2X1 U66 ( .A(n149), .B(b[3]), .Y(n101) );
  XNOR2X1 U67 ( .A(n149), .B(b[2]), .Y(n102) );
  XNOR2X1 U68 ( .A(n149), .B(b[1]), .Y(n103) );
  OAI22XL U71 ( .A0(n154), .A1(n146), .B0(n192), .B1(n114), .Y(n54) );
  AO21X1 U72 ( .A0(n154), .A1(n158), .B0(n106), .Y(n72) );
  OAI22XL U73 ( .A0(n154), .A1(n107), .B0(n192), .B1(n106), .Y(n29) );
  OAI22XL U74 ( .A0(n154), .A1(n108), .B0(n192), .B1(n107), .Y(n73) );
  OAI22XL U75 ( .A0(n154), .A1(n109), .B0(n192), .B1(n108), .Y(n74) );
  OAI22XL U76 ( .A0(n154), .A1(n110), .B0(n192), .B1(n109), .Y(n75) );
  OAI22XL U77 ( .A0(n154), .A1(n111), .B0(n158), .B1(n110), .Y(n76) );
  OAI22XL U78 ( .A0(n154), .A1(n112), .B0(n158), .B1(n111), .Y(n77) );
  OAI22XL U79 ( .A0(n191), .A1(n113), .B0(n158), .B1(n112), .Y(n78) );
  XNOR2X1 U81 ( .A(n150), .B(b[7]), .Y(n106) );
  XNOR2X1 U82 ( .A(n150), .B(b[6]), .Y(n107) );
  XNOR2X1 U83 ( .A(n150), .B(b[5]), .Y(n108) );
  XNOR2X1 U84 ( .A(n150), .B(b[4]), .Y(n109) );
  XNOR2X1 U85 ( .A(n150), .B(b[3]), .Y(n110) );
  XNOR2X1 U86 ( .A(n150), .B(b[2]), .Y(n111) );
  XNOR2X1 U87 ( .A(n150), .B(b[1]), .Y(n112) );
  OAI22XL U90 ( .A0(n155), .A1(n147), .B0(n123), .B1(n143), .Y(n55) );
  AO21X1 U91 ( .A0(n155), .A1(n159), .B0(n115), .Y(n80) );
  OAI22XL U92 ( .A0(n155), .A1(n116), .B0(n115), .B1(n143), .Y(n81) );
  OAI22XL U93 ( .A0(n155), .A1(n117), .B0(n116), .B1(n143), .Y(n82) );
  OAI22XL U94 ( .A0(n155), .A1(n118), .B0(n117), .B1(n143), .Y(n83) );
  OAI22XL U95 ( .A0(n155), .A1(n119), .B0(n118), .B1(n143), .Y(n84) );
  OAI22XL U96 ( .A0(n155), .A1(n120), .B0(n119), .B1(n143), .Y(n85) );
  OAI22XL U97 ( .A0(n155), .A1(n121), .B0(n120), .B1(n143), .Y(n86) );
  OAI22XL U98 ( .A0(n190), .A1(n122), .B0(n121), .B1(n143), .Y(n87) );
  XNOR2X1 U100 ( .A(n151), .B(b[7]), .Y(n115) );
  XNOR2X1 U101 ( .A(n151), .B(b[6]), .Y(n116) );
  XNOR2X1 U102 ( .A(n151), .B(b[5]), .Y(n117) );
  XNOR2X1 U103 ( .A(n151), .B(b[4]), .Y(n118) );
  XNOR2X1 U104 ( .A(n151), .B(b[3]), .Y(n119) );
  XNOR2X1 U105 ( .A(n151), .B(b[2]), .Y(n120) );
  XNOR2X1 U106 ( .A(n151), .B(b[1]), .Y(n121) );
  CLKINVX1 U112 ( .A(n148), .Y(n144) );
  CLKINVX1 U116 ( .A(n149), .Y(n145) );
  CLKINVX1 U120 ( .A(n150), .Y(n146) );
  CLKINVX1 U124 ( .A(n151), .Y(n147) );
  XOR2X1 U127 ( .A(a[6]), .B(a[7]), .Y(n132) );
  XNOR2X1 U128 ( .A(a[6]), .B(a[5]), .Y(n156) );
  XOR2X1 U130 ( .A(a[4]), .B(a[5]), .Y(n133) );
  XNOR2X1 U131 ( .A(a[4]), .B(a[3]), .Y(n157) );
  XOR2X1 U133 ( .A(a[2]), .B(a[3]), .Y(n134) );
  XNOR2X1 U134 ( .A(a[2]), .B(a[1]), .Y(n158) );
  XOR2X1 U136 ( .A(a[0]), .B(a[1]), .Y(n135) );
  CLKINVX1 U137 ( .A(a[0]), .Y(n159) );
  CLKINVX1 U140 ( .A(n198), .Y(n189) );
  CLKINVX1 U141 ( .A(n200), .Y(n190) );
  CLKINVX1 U142 ( .A(n199), .Y(n191) );
  CLKINVX1 U143 ( .A(n158), .Y(n142) );
  CLKINVX1 U144 ( .A(n142), .Y(n192) );
  CLKINVX1 U145 ( .A(n156), .Y(n140) );
  CLKINVX1 U146 ( .A(n140), .Y(n193) );
  CLKINVX1 U147 ( .A(n197), .Y(n194) );
  CLKINVX1 U148 ( .A(b[0]), .Y(n131) );
  CLKINVX1 U149 ( .A(n131), .Y(n195) );
  NAND2BXL U150 ( .AN(n195), .B(a[1]), .Y(n123) );
  NAND2BXL U151 ( .AN(n195), .B(a[3]), .Y(n114) );
  CLKINVX1 U152 ( .A(n157), .Y(n141) );
  CLKINVX1 U153 ( .A(n141), .Y(n196) );
  NOR2BXL U154 ( .AN(n195), .B(n159), .Y(product[0]) );
  XNOR2XL U155 ( .A(a[7]), .B(b[0]), .Y(n95) );
  XNOR2XL U156 ( .A(a[1]), .B(b[0]), .Y(n122) );
  NOR2BXL U157 ( .AN(n195), .B(n192), .Y(n79) );
  XNOR2XL U158 ( .A(a[3]), .B(b[0]), .Y(n113) );
  NOR2BXL U159 ( .AN(n195), .B(n196), .Y(n71) );
  NAND2BXL U160 ( .AN(n195), .B(a[7]), .Y(n96) );
  NAND2BXL U161 ( .AN(n195), .B(a[5]), .Y(n105) );
  XNOR2XL U162 ( .A(a[5]), .B(b[0]), .Y(n104) );
  NOR2BXL U163 ( .AN(n195), .B(n193), .Y(n63) );
  CLKBUFX3 U164 ( .A(n159), .Y(n143) );
  CLKBUFX3 U165 ( .A(a[1]), .Y(n151) );
  CLKBUFX3 U166 ( .A(a[3]), .Y(n150) );
  CLKBUFX3 U167 ( .A(a[5]), .Y(n149) );
  CLKBUFX3 U168 ( .A(a[7]), .Y(n148) );
  AND2X2 U169 ( .A(n132), .B(n156), .Y(n197) );
  CLKINVX1 U170 ( .A(n197), .Y(n152) );
  AND2X2 U171 ( .A(n133), .B(n157), .Y(n198) );
  CLKINVX1 U172 ( .A(n198), .Y(n153) );
  AND2X2 U173 ( .A(n134), .B(n158), .Y(n199) );
  CLKINVX1 U174 ( .A(n199), .Y(n154) );
  AND2X2 U175 ( .A(n135), .B(n159), .Y(n200) );
  CLKINVX1 U176 ( .A(n200), .Y(n155) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_45 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n131, n132, n133, n134, n135, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200;

  CLKINVX1 U1 ( .A(n1), .Y(product[15]) );
  ADDFXL U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n78), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  CLKINVX1 U16 ( .A(n15), .Y(n16) );
  ADDFXL U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n22), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CLKINVX1 U19 ( .A(n21), .Y(n22) );
  CMPR42X1 U20 ( .A(n29), .B(n59), .C(n65), .D(n72), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n30), .D(n34), .ICI(n31), .S(n28), .ICO(
        n26), .CO(n27) );
  CLKINVX1 U22 ( .A(n29), .Y(n30) );
  CMPR42X1 U23 ( .A(n67), .B(n80), .C(n39), .D(n35), .ICI(n36), .S(n33), .ICO(
        n31), .CO(n32) );
  XNOR2X1 U24 ( .A(n73), .B(n61), .Y(n35) );
  OR2X1 U25 ( .A(n73), .B(n61), .Y(n34) );
  CMPR42X1 U26 ( .A(n52), .B(n62), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n81), .B(n68), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n69), .D(n75), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n53), .CI(n47), .CO(n44), .S(n45) );
  ADDHXL U30 ( .A(n83), .B(n70), .CO(n46), .S(n47) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n85), .B(n54), .CO(n50), .S(n51) );
  OAI22XL U33 ( .A0(n152), .A1(n144), .B0(n193), .B1(n96), .Y(n52) );
  AO21X1 U34 ( .A0(n152), .A1(n156), .B0(n88), .Y(n56) );
  OAI22XL U35 ( .A0(n152), .A1(n89), .B0(n193), .B1(n88), .Y(n15) );
  OAI22XL U36 ( .A0(n152), .A1(n90), .B0(n193), .B1(n89), .Y(n57) );
  OAI22XL U37 ( .A0(n152), .A1(n91), .B0(n193), .B1(n90), .Y(n58) );
  OAI22XL U38 ( .A0(n152), .A1(n92), .B0(n193), .B1(n91), .Y(n59) );
  OAI22XL U39 ( .A0(n152), .A1(n93), .B0(n156), .B1(n92), .Y(n60) );
  OAI22XL U40 ( .A0(n152), .A1(n94), .B0(n156), .B1(n93), .Y(n61) );
  OAI22XL U41 ( .A0(n194), .A1(n95), .B0(n156), .B1(n94), .Y(n62) );
  XNOR2X1 U43 ( .A(n148), .B(b[7]), .Y(n88) );
  XNOR2X1 U44 ( .A(n148), .B(b[6]), .Y(n89) );
  XNOR2X1 U45 ( .A(n148), .B(b[5]), .Y(n90) );
  XNOR2X1 U46 ( .A(n148), .B(b[4]), .Y(n91) );
  XNOR2X1 U47 ( .A(n148), .B(b[3]), .Y(n92) );
  XNOR2X1 U48 ( .A(n148), .B(b[2]), .Y(n93) );
  XNOR2X1 U49 ( .A(n148), .B(b[1]), .Y(n94) );
  OAI22XL U52 ( .A0(n153), .A1(n145), .B0(n196), .B1(n105), .Y(n53) );
  AO21X1 U53 ( .A0(n153), .A1(n157), .B0(n97), .Y(n64) );
  OAI22XL U54 ( .A0(n153), .A1(n98), .B0(n196), .B1(n97), .Y(n21) );
  OAI22XL U55 ( .A0(n153), .A1(n99), .B0(n196), .B1(n98), .Y(n65) );
  OAI22XL U56 ( .A0(n153), .A1(n100), .B0(n196), .B1(n99), .Y(n66) );
  OAI22XL U57 ( .A0(n153), .A1(n101), .B0(n196), .B1(n100), .Y(n67) );
  OAI22XL U58 ( .A0(n153), .A1(n102), .B0(n157), .B1(n101), .Y(n68) );
  OAI22XL U59 ( .A0(n153), .A1(n103), .B0(n157), .B1(n102), .Y(n69) );
  OAI22XL U60 ( .A0(n189), .A1(n104), .B0(n157), .B1(n103), .Y(n70) );
  XNOR2X1 U62 ( .A(n149), .B(b[7]), .Y(n97) );
  XNOR2X1 U63 ( .A(n149), .B(b[6]), .Y(n98) );
  XNOR2X1 U64 ( .A(n149), .B(b[5]), .Y(n99) );
  XNOR2X1 U65 ( .A(n149), .B(b[4]), .Y(n100) );
  XNOR2X1 U66 ( .A(n149), .B(b[3]), .Y(n101) );
  XNOR2X1 U67 ( .A(n149), .B(b[2]), .Y(n102) );
  XNOR2X1 U68 ( .A(n149), .B(b[1]), .Y(n103) );
  OAI22XL U71 ( .A0(n154), .A1(n146), .B0(n192), .B1(n114), .Y(n54) );
  AO21X1 U72 ( .A0(n154), .A1(n158), .B0(n106), .Y(n72) );
  OAI22XL U73 ( .A0(n154), .A1(n107), .B0(n192), .B1(n106), .Y(n29) );
  OAI22XL U74 ( .A0(n154), .A1(n108), .B0(n192), .B1(n107), .Y(n73) );
  OAI22XL U75 ( .A0(n154), .A1(n109), .B0(n192), .B1(n108), .Y(n74) );
  OAI22XL U76 ( .A0(n154), .A1(n110), .B0(n192), .B1(n109), .Y(n75) );
  OAI22XL U77 ( .A0(n154), .A1(n111), .B0(n158), .B1(n110), .Y(n76) );
  OAI22XL U78 ( .A0(n154), .A1(n112), .B0(n158), .B1(n111), .Y(n77) );
  OAI22XL U79 ( .A0(n191), .A1(n113), .B0(n158), .B1(n112), .Y(n78) );
  XNOR2X1 U81 ( .A(n150), .B(b[7]), .Y(n106) );
  XNOR2X1 U82 ( .A(n150), .B(b[6]), .Y(n107) );
  XNOR2X1 U83 ( .A(n150), .B(b[5]), .Y(n108) );
  XNOR2X1 U84 ( .A(n150), .B(b[4]), .Y(n109) );
  XNOR2X1 U85 ( .A(n150), .B(b[3]), .Y(n110) );
  XNOR2X1 U86 ( .A(n150), .B(b[2]), .Y(n111) );
  XNOR2X1 U87 ( .A(n150), .B(b[1]), .Y(n112) );
  OAI22XL U90 ( .A0(n155), .A1(n147), .B0(n123), .B1(n143), .Y(n55) );
  AO21X1 U91 ( .A0(n155), .A1(n159), .B0(n115), .Y(n80) );
  OAI22XL U92 ( .A0(n155), .A1(n116), .B0(n115), .B1(n143), .Y(n81) );
  OAI22XL U93 ( .A0(n155), .A1(n117), .B0(n116), .B1(n143), .Y(n82) );
  OAI22XL U94 ( .A0(n155), .A1(n118), .B0(n117), .B1(n143), .Y(n83) );
  OAI22XL U95 ( .A0(n155), .A1(n119), .B0(n118), .B1(n143), .Y(n84) );
  OAI22XL U96 ( .A0(n155), .A1(n120), .B0(n119), .B1(n143), .Y(n85) );
  OAI22XL U97 ( .A0(n155), .A1(n121), .B0(n120), .B1(n143), .Y(n86) );
  OAI22XL U98 ( .A0(n190), .A1(n122), .B0(n121), .B1(n143), .Y(n87) );
  XNOR2X1 U100 ( .A(n151), .B(b[7]), .Y(n115) );
  XNOR2X1 U101 ( .A(n151), .B(b[6]), .Y(n116) );
  XNOR2X1 U102 ( .A(n151), .B(b[5]), .Y(n117) );
  XNOR2X1 U103 ( .A(n151), .B(b[4]), .Y(n118) );
  XNOR2X1 U104 ( .A(n151), .B(b[3]), .Y(n119) );
  XNOR2X1 U105 ( .A(n151), .B(b[2]), .Y(n120) );
  XNOR2X1 U106 ( .A(n151), .B(b[1]), .Y(n121) );
  CLKINVX1 U112 ( .A(n148), .Y(n144) );
  CLKINVX1 U116 ( .A(n149), .Y(n145) );
  CLKINVX1 U120 ( .A(n150), .Y(n146) );
  CLKINVX1 U124 ( .A(n151), .Y(n147) );
  XOR2X1 U127 ( .A(a[6]), .B(a[7]), .Y(n132) );
  XNOR2X1 U128 ( .A(a[6]), .B(a[5]), .Y(n156) );
  XOR2X1 U130 ( .A(a[4]), .B(a[5]), .Y(n133) );
  XNOR2X1 U131 ( .A(a[4]), .B(a[3]), .Y(n157) );
  XOR2X1 U133 ( .A(a[2]), .B(a[3]), .Y(n134) );
  XNOR2X1 U134 ( .A(a[2]), .B(a[1]), .Y(n158) );
  XOR2X1 U136 ( .A(a[0]), .B(a[1]), .Y(n135) );
  CLKINVX1 U137 ( .A(a[0]), .Y(n159) );
  CLKINVX1 U140 ( .A(n198), .Y(n189) );
  CLKINVX1 U141 ( .A(n200), .Y(n190) );
  CLKINVX1 U142 ( .A(n199), .Y(n191) );
  CLKINVX1 U143 ( .A(n158), .Y(n142) );
  CLKINVX1 U144 ( .A(n142), .Y(n192) );
  CLKINVX1 U145 ( .A(n156), .Y(n140) );
  CLKINVX1 U146 ( .A(n140), .Y(n193) );
  CLKINVX1 U147 ( .A(n197), .Y(n194) );
  CLKINVX1 U148 ( .A(b[0]), .Y(n131) );
  CLKINVX1 U149 ( .A(n131), .Y(n195) );
  NAND2BXL U150 ( .AN(n195), .B(a[1]), .Y(n123) );
  NAND2BXL U151 ( .AN(n195), .B(a[3]), .Y(n114) );
  CLKINVX1 U152 ( .A(n157), .Y(n141) );
  CLKINVX1 U153 ( .A(n141), .Y(n196) );
  NOR2BXL U154 ( .AN(n195), .B(n159), .Y(product[0]) );
  XNOR2XL U155 ( .A(a[7]), .B(b[0]), .Y(n95) );
  XNOR2XL U156 ( .A(a[1]), .B(b[0]), .Y(n122) );
  NOR2BXL U157 ( .AN(n195), .B(n192), .Y(n79) );
  XNOR2XL U158 ( .A(a[3]), .B(b[0]), .Y(n113) );
  NOR2BXL U159 ( .AN(n195), .B(n196), .Y(n71) );
  NAND2BXL U160 ( .AN(n195), .B(a[7]), .Y(n96) );
  NAND2BXL U161 ( .AN(n195), .B(a[5]), .Y(n105) );
  XNOR2XL U162 ( .A(a[5]), .B(b[0]), .Y(n104) );
  NOR2BXL U163 ( .AN(n195), .B(n193), .Y(n63) );
  CLKBUFX3 U164 ( .A(n159), .Y(n143) );
  CLKBUFX3 U165 ( .A(a[1]), .Y(n151) );
  CLKBUFX3 U166 ( .A(a[3]), .Y(n150) );
  CLKBUFX3 U167 ( .A(a[5]), .Y(n149) );
  CLKBUFX3 U168 ( .A(a[7]), .Y(n148) );
  AND2X2 U169 ( .A(n132), .B(n156), .Y(n197) );
  CLKINVX1 U170 ( .A(n197), .Y(n152) );
  AND2X2 U171 ( .A(n133), .B(n157), .Y(n198) );
  CLKINVX1 U172 ( .A(n198), .Y(n153) );
  AND2X2 U173 ( .A(n134), .B(n158), .Y(n199) );
  CLKINVX1 U174 ( .A(n199), .Y(n154) );
  AND2X2 U175 ( .A(n135), .B(n159), .Y(n200) );
  CLKINVX1 U176 ( .A(n200), .Y(n155) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_46 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n131, n132, n133, n134, n135, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200;

  CLKINVX1 U1 ( .A(n1), .Y(product[15]) );
  ADDFXL U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n78), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  CLKINVX1 U16 ( .A(n15), .Y(n16) );
  ADDFXL U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n22), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CLKINVX1 U19 ( .A(n21), .Y(n22) );
  CMPR42X1 U20 ( .A(n29), .B(n59), .C(n65), .D(n72), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n30), .D(n34), .ICI(n31), .S(n28), .ICO(
        n26), .CO(n27) );
  CLKINVX1 U22 ( .A(n29), .Y(n30) );
  CMPR42X1 U23 ( .A(n67), .B(n80), .C(n39), .D(n35), .ICI(n36), .S(n33), .ICO(
        n31), .CO(n32) );
  XNOR2X1 U24 ( .A(n73), .B(n61), .Y(n35) );
  OR2X1 U25 ( .A(n73), .B(n61), .Y(n34) );
  CMPR42X1 U26 ( .A(n52), .B(n62), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n81), .B(n68), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n69), .D(n75), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n53), .CI(n47), .CO(n44), .S(n45) );
  ADDHXL U30 ( .A(n83), .B(n70), .CO(n46), .S(n47) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n85), .B(n54), .CO(n50), .S(n51) );
  OAI22XL U33 ( .A0(n152), .A1(n144), .B0(n196), .B1(n96), .Y(n52) );
  AO21X1 U34 ( .A0(n152), .A1(n156), .B0(n88), .Y(n56) );
  OAI22XL U35 ( .A0(n152), .A1(n89), .B0(n196), .B1(n88), .Y(n15) );
  OAI22XL U36 ( .A0(n152), .A1(n90), .B0(n196), .B1(n89), .Y(n57) );
  OAI22XL U37 ( .A0(n152), .A1(n91), .B0(n196), .B1(n90), .Y(n58) );
  OAI22XL U38 ( .A0(n152), .A1(n92), .B0(n196), .B1(n91), .Y(n59) );
  OAI22XL U39 ( .A0(n152), .A1(n93), .B0(n156), .B1(n92), .Y(n60) );
  OAI22XL U40 ( .A0(n152), .A1(n94), .B0(n156), .B1(n93), .Y(n61) );
  OAI22XL U41 ( .A0(n194), .A1(n95), .B0(n156), .B1(n94), .Y(n62) );
  XNOR2X1 U43 ( .A(n148), .B(b[7]), .Y(n88) );
  XNOR2X1 U44 ( .A(n148), .B(b[6]), .Y(n89) );
  XNOR2X1 U45 ( .A(n148), .B(b[5]), .Y(n90) );
  XNOR2X1 U46 ( .A(n148), .B(b[4]), .Y(n91) );
  XNOR2X1 U47 ( .A(n148), .B(b[3]), .Y(n92) );
  XNOR2X1 U48 ( .A(n148), .B(b[2]), .Y(n93) );
  XNOR2X1 U49 ( .A(n148), .B(b[1]), .Y(n94) );
  OAI22XL U52 ( .A0(n153), .A1(n145), .B0(n193), .B1(n105), .Y(n53) );
  AO21X1 U53 ( .A0(n153), .A1(n157), .B0(n97), .Y(n64) );
  OAI22XL U54 ( .A0(n153), .A1(n98), .B0(n193), .B1(n97), .Y(n21) );
  OAI22XL U55 ( .A0(n153), .A1(n99), .B0(n193), .B1(n98), .Y(n65) );
  OAI22XL U56 ( .A0(n153), .A1(n100), .B0(n193), .B1(n99), .Y(n66) );
  OAI22XL U57 ( .A0(n153), .A1(n101), .B0(n193), .B1(n100), .Y(n67) );
  OAI22XL U58 ( .A0(n153), .A1(n102), .B0(n157), .B1(n101), .Y(n68) );
  OAI22XL U59 ( .A0(n153), .A1(n103), .B0(n157), .B1(n102), .Y(n69) );
  OAI22XL U60 ( .A0(n191), .A1(n104), .B0(n157), .B1(n103), .Y(n70) );
  XNOR2X1 U62 ( .A(n149), .B(b[7]), .Y(n97) );
  XNOR2X1 U63 ( .A(n149), .B(b[6]), .Y(n98) );
  XNOR2X1 U64 ( .A(n149), .B(b[5]), .Y(n99) );
  XNOR2X1 U65 ( .A(n149), .B(b[4]), .Y(n100) );
  XNOR2X1 U66 ( .A(n149), .B(b[3]), .Y(n101) );
  XNOR2X1 U67 ( .A(n149), .B(b[2]), .Y(n102) );
  XNOR2X1 U68 ( .A(n149), .B(b[1]), .Y(n103) );
  OAI22XL U71 ( .A0(n154), .A1(n146), .B0(n192), .B1(n114), .Y(n54) );
  AO21X1 U72 ( .A0(n154), .A1(n158), .B0(n106), .Y(n72) );
  OAI22XL U73 ( .A0(n154), .A1(n107), .B0(n192), .B1(n106), .Y(n29) );
  OAI22XL U74 ( .A0(n154), .A1(n108), .B0(n192), .B1(n107), .Y(n73) );
  OAI22XL U75 ( .A0(n154), .A1(n109), .B0(n192), .B1(n108), .Y(n74) );
  OAI22XL U76 ( .A0(n154), .A1(n110), .B0(n192), .B1(n109), .Y(n75) );
  OAI22XL U77 ( .A0(n154), .A1(n111), .B0(n158), .B1(n110), .Y(n76) );
  OAI22XL U78 ( .A0(n154), .A1(n112), .B0(n158), .B1(n111), .Y(n77) );
  OAI22XL U79 ( .A0(n190), .A1(n113), .B0(n158), .B1(n112), .Y(n78) );
  XNOR2X1 U81 ( .A(n150), .B(b[7]), .Y(n106) );
  XNOR2X1 U82 ( .A(n150), .B(b[6]), .Y(n107) );
  XNOR2X1 U83 ( .A(n150), .B(b[5]), .Y(n108) );
  XNOR2X1 U84 ( .A(n150), .B(b[4]), .Y(n109) );
  XNOR2X1 U85 ( .A(n150), .B(b[3]), .Y(n110) );
  XNOR2X1 U86 ( .A(n150), .B(b[2]), .Y(n111) );
  XNOR2X1 U87 ( .A(n150), .B(b[1]), .Y(n112) );
  OAI22XL U90 ( .A0(n155), .A1(n147), .B0(n123), .B1(n143), .Y(n55) );
  AO21X1 U91 ( .A0(n155), .A1(n159), .B0(n115), .Y(n80) );
  OAI22XL U92 ( .A0(n155), .A1(n116), .B0(n115), .B1(n143), .Y(n81) );
  OAI22XL U93 ( .A0(n155), .A1(n117), .B0(n116), .B1(n143), .Y(n82) );
  OAI22XL U94 ( .A0(n155), .A1(n118), .B0(n117), .B1(n143), .Y(n83) );
  OAI22XL U95 ( .A0(n155), .A1(n119), .B0(n118), .B1(n143), .Y(n84) );
  OAI22XL U96 ( .A0(n155), .A1(n120), .B0(n119), .B1(n143), .Y(n85) );
  OAI22XL U97 ( .A0(n155), .A1(n121), .B0(n120), .B1(n143), .Y(n86) );
  OAI22XL U98 ( .A0(n189), .A1(n122), .B0(n121), .B1(n143), .Y(n87) );
  XNOR2X1 U100 ( .A(n151), .B(b[7]), .Y(n115) );
  XNOR2X1 U101 ( .A(n151), .B(b[6]), .Y(n116) );
  XNOR2X1 U102 ( .A(n151), .B(b[5]), .Y(n117) );
  XNOR2X1 U103 ( .A(n151), .B(b[4]), .Y(n118) );
  XNOR2X1 U104 ( .A(n151), .B(b[3]), .Y(n119) );
  XNOR2X1 U105 ( .A(n151), .B(b[2]), .Y(n120) );
  XNOR2X1 U106 ( .A(n151), .B(b[1]), .Y(n121) );
  CLKINVX1 U112 ( .A(n148), .Y(n144) );
  CLKINVX1 U116 ( .A(n149), .Y(n145) );
  CLKINVX1 U120 ( .A(n150), .Y(n146) );
  CLKINVX1 U124 ( .A(n151), .Y(n147) );
  XOR2X1 U127 ( .A(a[6]), .B(a[7]), .Y(n132) );
  XNOR2X1 U128 ( .A(a[6]), .B(a[5]), .Y(n156) );
  XOR2X1 U130 ( .A(a[4]), .B(a[5]), .Y(n133) );
  XNOR2X1 U131 ( .A(a[4]), .B(a[3]), .Y(n157) );
  XOR2X1 U133 ( .A(a[2]), .B(a[3]), .Y(n134) );
  XNOR2X1 U134 ( .A(a[2]), .B(a[1]), .Y(n158) );
  XOR2X1 U136 ( .A(a[0]), .B(a[1]), .Y(n135) );
  CLKINVX1 U137 ( .A(a[0]), .Y(n159) );
  CLKINVX1 U140 ( .A(n200), .Y(n189) );
  CLKINVX1 U141 ( .A(n199), .Y(n190) );
  CLKINVX1 U142 ( .A(n198), .Y(n191) );
  CLKINVX1 U143 ( .A(n158), .Y(n142) );
  CLKINVX1 U144 ( .A(n142), .Y(n192) );
  CLKINVX1 U145 ( .A(n157), .Y(n141) );
  CLKINVX1 U146 ( .A(n141), .Y(n193) );
  CLKINVX1 U147 ( .A(n197), .Y(n194) );
  CLKINVX1 U148 ( .A(b[0]), .Y(n131) );
  CLKINVX1 U149 ( .A(n131), .Y(n195) );
  NAND2BXL U150 ( .AN(n195), .B(a[1]), .Y(n123) );
  NAND2BXL U151 ( .AN(n195), .B(a[3]), .Y(n114) );
  CLKINVX1 U152 ( .A(n156), .Y(n140) );
  CLKINVX1 U153 ( .A(n140), .Y(n196) );
  NOR2BXL U154 ( .AN(n195), .B(n159), .Y(product[0]) );
  XNOR2XL U155 ( .A(a[7]), .B(b[0]), .Y(n95) );
  XNOR2XL U156 ( .A(a[1]), .B(b[0]), .Y(n122) );
  NOR2BXL U157 ( .AN(n195), .B(n192), .Y(n79) );
  XNOR2XL U158 ( .A(a[3]), .B(b[0]), .Y(n113) );
  NOR2BXL U159 ( .AN(n195), .B(n193), .Y(n71) );
  NAND2BXL U160 ( .AN(n195), .B(a[7]), .Y(n96) );
  NAND2BXL U161 ( .AN(n195), .B(a[5]), .Y(n105) );
  XNOR2XL U162 ( .A(a[5]), .B(b[0]), .Y(n104) );
  NOR2BXL U163 ( .AN(n195), .B(n196), .Y(n63) );
  CLKBUFX3 U164 ( .A(n159), .Y(n143) );
  CLKBUFX3 U165 ( .A(a[1]), .Y(n151) );
  CLKBUFX3 U166 ( .A(a[3]), .Y(n150) );
  CLKBUFX3 U167 ( .A(a[5]), .Y(n149) );
  CLKBUFX3 U168 ( .A(a[7]), .Y(n148) );
  AND2X2 U169 ( .A(n132), .B(n156), .Y(n197) );
  CLKINVX1 U170 ( .A(n197), .Y(n152) );
  AND2X2 U171 ( .A(n133), .B(n157), .Y(n198) );
  CLKINVX1 U172 ( .A(n198), .Y(n153) );
  AND2X2 U173 ( .A(n134), .B(n158), .Y(n199) );
  CLKINVX1 U174 ( .A(n199), .Y(n154) );
  AND2X2 U175 ( .A(n135), .B(n159), .Y(n200) );
  CLKINVX1 U176 ( .A(n200), .Y(n155) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_47 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n131, n132, n133, n134, n135, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200;

  CLKINVX1 U1 ( .A(n1), .Y(product[15]) );
  ADDFXL U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n78), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  CLKINVX1 U16 ( .A(n15), .Y(n16) );
  ADDFXL U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n22), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CLKINVX1 U19 ( .A(n21), .Y(n22) );
  CMPR42X1 U20 ( .A(n29), .B(n59), .C(n65), .D(n72), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n30), .D(n34), .ICI(n31), .S(n28), .ICO(
        n26), .CO(n27) );
  CLKINVX1 U22 ( .A(n29), .Y(n30) );
  CMPR42X1 U23 ( .A(n67), .B(n80), .C(n39), .D(n35), .ICI(n36), .S(n33), .ICO(
        n31), .CO(n32) );
  XNOR2X1 U24 ( .A(n73), .B(n61), .Y(n35) );
  OR2X1 U25 ( .A(n73), .B(n61), .Y(n34) );
  CMPR42X1 U26 ( .A(n52), .B(n62), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n81), .B(n68), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n69), .D(n75), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n53), .CI(n47), .CO(n44), .S(n45) );
  ADDHXL U30 ( .A(n83), .B(n70), .CO(n46), .S(n47) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n85), .B(n54), .CO(n50), .S(n51) );
  OAI22XL U33 ( .A0(n152), .A1(n144), .B0(n196), .B1(n96), .Y(n52) );
  AO21X1 U34 ( .A0(n152), .A1(n156), .B0(n88), .Y(n56) );
  OAI22XL U35 ( .A0(n152), .A1(n89), .B0(n196), .B1(n88), .Y(n15) );
  OAI22XL U36 ( .A0(n152), .A1(n90), .B0(n196), .B1(n89), .Y(n57) );
  OAI22XL U37 ( .A0(n152), .A1(n91), .B0(n196), .B1(n90), .Y(n58) );
  OAI22XL U38 ( .A0(n152), .A1(n92), .B0(n196), .B1(n91), .Y(n59) );
  OAI22XL U39 ( .A0(n152), .A1(n93), .B0(n156), .B1(n92), .Y(n60) );
  OAI22XL U40 ( .A0(n152), .A1(n94), .B0(n156), .B1(n93), .Y(n61) );
  OAI22XL U41 ( .A0(n194), .A1(n95), .B0(n156), .B1(n94), .Y(n62) );
  XNOR2X1 U43 ( .A(n148), .B(b[7]), .Y(n88) );
  XNOR2X1 U44 ( .A(n148), .B(b[6]), .Y(n89) );
  XNOR2X1 U45 ( .A(n148), .B(b[5]), .Y(n90) );
  XNOR2X1 U46 ( .A(n148), .B(b[4]), .Y(n91) );
  XNOR2X1 U47 ( .A(n148), .B(b[3]), .Y(n92) );
  XNOR2X1 U48 ( .A(n148), .B(b[2]), .Y(n93) );
  XNOR2X1 U49 ( .A(n148), .B(b[1]), .Y(n94) );
  OAI22XL U52 ( .A0(n153), .A1(n145), .B0(n193), .B1(n105), .Y(n53) );
  AO21X1 U53 ( .A0(n153), .A1(n157), .B0(n97), .Y(n64) );
  OAI22XL U54 ( .A0(n153), .A1(n98), .B0(n193), .B1(n97), .Y(n21) );
  OAI22XL U55 ( .A0(n153), .A1(n99), .B0(n193), .B1(n98), .Y(n65) );
  OAI22XL U56 ( .A0(n153), .A1(n100), .B0(n193), .B1(n99), .Y(n66) );
  OAI22XL U57 ( .A0(n153), .A1(n101), .B0(n193), .B1(n100), .Y(n67) );
  OAI22XL U58 ( .A0(n153), .A1(n102), .B0(n157), .B1(n101), .Y(n68) );
  OAI22XL U59 ( .A0(n153), .A1(n103), .B0(n157), .B1(n102), .Y(n69) );
  OAI22XL U60 ( .A0(n191), .A1(n104), .B0(n157), .B1(n103), .Y(n70) );
  XNOR2X1 U62 ( .A(n149), .B(b[7]), .Y(n97) );
  XNOR2X1 U63 ( .A(n149), .B(b[6]), .Y(n98) );
  XNOR2X1 U64 ( .A(n149), .B(b[5]), .Y(n99) );
  XNOR2X1 U65 ( .A(n149), .B(b[4]), .Y(n100) );
  XNOR2X1 U66 ( .A(n149), .B(b[3]), .Y(n101) );
  XNOR2X1 U67 ( .A(n149), .B(b[2]), .Y(n102) );
  XNOR2X1 U68 ( .A(n149), .B(b[1]), .Y(n103) );
  OAI22XL U71 ( .A0(n154), .A1(n146), .B0(n192), .B1(n114), .Y(n54) );
  AO21X1 U72 ( .A0(n154), .A1(n158), .B0(n106), .Y(n72) );
  OAI22XL U73 ( .A0(n154), .A1(n107), .B0(n192), .B1(n106), .Y(n29) );
  OAI22XL U74 ( .A0(n154), .A1(n108), .B0(n192), .B1(n107), .Y(n73) );
  OAI22XL U75 ( .A0(n154), .A1(n109), .B0(n192), .B1(n108), .Y(n74) );
  OAI22XL U76 ( .A0(n154), .A1(n110), .B0(n192), .B1(n109), .Y(n75) );
  OAI22XL U77 ( .A0(n154), .A1(n111), .B0(n158), .B1(n110), .Y(n76) );
  OAI22XL U78 ( .A0(n154), .A1(n112), .B0(n158), .B1(n111), .Y(n77) );
  OAI22XL U79 ( .A0(n190), .A1(n113), .B0(n158), .B1(n112), .Y(n78) );
  XNOR2X1 U81 ( .A(n150), .B(b[7]), .Y(n106) );
  XNOR2X1 U82 ( .A(n150), .B(b[6]), .Y(n107) );
  XNOR2X1 U83 ( .A(n150), .B(b[5]), .Y(n108) );
  XNOR2X1 U84 ( .A(n150), .B(b[4]), .Y(n109) );
  XNOR2X1 U85 ( .A(n150), .B(b[3]), .Y(n110) );
  XNOR2X1 U86 ( .A(n150), .B(b[2]), .Y(n111) );
  XNOR2X1 U87 ( .A(n150), .B(b[1]), .Y(n112) );
  OAI22XL U90 ( .A0(n155), .A1(n147), .B0(n123), .B1(n143), .Y(n55) );
  AO21X1 U91 ( .A0(n155), .A1(n159), .B0(n115), .Y(n80) );
  OAI22XL U92 ( .A0(n155), .A1(n116), .B0(n115), .B1(n143), .Y(n81) );
  OAI22XL U93 ( .A0(n155), .A1(n117), .B0(n116), .B1(n143), .Y(n82) );
  OAI22XL U94 ( .A0(n155), .A1(n118), .B0(n117), .B1(n143), .Y(n83) );
  OAI22XL U95 ( .A0(n155), .A1(n119), .B0(n118), .B1(n143), .Y(n84) );
  OAI22XL U96 ( .A0(n155), .A1(n120), .B0(n119), .B1(n143), .Y(n85) );
  OAI22XL U97 ( .A0(n155), .A1(n121), .B0(n120), .B1(n143), .Y(n86) );
  OAI22XL U98 ( .A0(n189), .A1(n122), .B0(n121), .B1(n143), .Y(n87) );
  XNOR2X1 U100 ( .A(n151), .B(b[7]), .Y(n115) );
  XNOR2X1 U101 ( .A(n151), .B(b[6]), .Y(n116) );
  XNOR2X1 U102 ( .A(n151), .B(b[5]), .Y(n117) );
  XNOR2X1 U103 ( .A(n151), .B(b[4]), .Y(n118) );
  XNOR2X1 U104 ( .A(n151), .B(b[3]), .Y(n119) );
  XNOR2X1 U105 ( .A(n151), .B(b[2]), .Y(n120) );
  XNOR2X1 U106 ( .A(n151), .B(b[1]), .Y(n121) );
  CLKINVX1 U112 ( .A(n148), .Y(n144) );
  CLKINVX1 U116 ( .A(n149), .Y(n145) );
  CLKINVX1 U120 ( .A(n150), .Y(n146) );
  CLKINVX1 U124 ( .A(n151), .Y(n147) );
  XOR2X1 U127 ( .A(a[6]), .B(a[7]), .Y(n132) );
  XNOR2X1 U128 ( .A(a[6]), .B(a[5]), .Y(n156) );
  XOR2X1 U130 ( .A(a[4]), .B(a[5]), .Y(n133) );
  XNOR2X1 U131 ( .A(a[4]), .B(a[3]), .Y(n157) );
  XOR2X1 U133 ( .A(a[2]), .B(a[3]), .Y(n134) );
  XNOR2X1 U134 ( .A(a[2]), .B(a[1]), .Y(n158) );
  XOR2X1 U136 ( .A(a[0]), .B(a[1]), .Y(n135) );
  CLKINVX1 U137 ( .A(a[0]), .Y(n159) );
  CLKINVX1 U140 ( .A(n200), .Y(n189) );
  CLKINVX1 U141 ( .A(n199), .Y(n190) );
  CLKINVX1 U142 ( .A(n198), .Y(n191) );
  CLKINVX1 U143 ( .A(n158), .Y(n142) );
  CLKINVX1 U144 ( .A(n142), .Y(n192) );
  CLKINVX1 U145 ( .A(n157), .Y(n141) );
  CLKINVX1 U146 ( .A(n141), .Y(n193) );
  CLKINVX1 U147 ( .A(n197), .Y(n194) );
  CLKINVX1 U148 ( .A(b[0]), .Y(n131) );
  CLKINVX1 U149 ( .A(n131), .Y(n195) );
  NAND2BXL U150 ( .AN(n195), .B(a[1]), .Y(n123) );
  NAND2BXL U151 ( .AN(n195), .B(a[3]), .Y(n114) );
  CLKINVX1 U152 ( .A(n156), .Y(n140) );
  CLKINVX1 U153 ( .A(n140), .Y(n196) );
  NOR2BXL U154 ( .AN(n195), .B(n159), .Y(product[0]) );
  XNOR2XL U155 ( .A(a[7]), .B(b[0]), .Y(n95) );
  XNOR2XL U156 ( .A(a[1]), .B(b[0]), .Y(n122) );
  NOR2BXL U157 ( .AN(n195), .B(n192), .Y(n79) );
  XNOR2XL U158 ( .A(a[3]), .B(b[0]), .Y(n113) );
  NOR2BXL U159 ( .AN(n195), .B(n193), .Y(n71) );
  NAND2BXL U160 ( .AN(n195), .B(a[7]), .Y(n96) );
  NAND2BXL U161 ( .AN(n195), .B(a[5]), .Y(n105) );
  XNOR2XL U162 ( .A(a[5]), .B(b[0]), .Y(n104) );
  NOR2BXL U163 ( .AN(n195), .B(n196), .Y(n63) );
  CLKBUFX3 U164 ( .A(n159), .Y(n143) );
  CLKBUFX3 U165 ( .A(a[1]), .Y(n151) );
  CLKBUFX3 U166 ( .A(a[3]), .Y(n150) );
  CLKBUFX3 U167 ( .A(a[5]), .Y(n149) );
  CLKBUFX3 U168 ( .A(a[7]), .Y(n148) );
  AND2X2 U169 ( .A(n132), .B(n156), .Y(n197) );
  CLKINVX1 U170 ( .A(n197), .Y(n152) );
  AND2X2 U171 ( .A(n133), .B(n157), .Y(n198) );
  CLKINVX1 U172 ( .A(n198), .Y(n153) );
  AND2X2 U173 ( .A(n134), .B(n158), .Y(n199) );
  CLKINVX1 U174 ( .A(n199), .Y(n154) );
  AND2X2 U175 ( .A(n135), .B(n159), .Y(n200) );
  CLKINVX1 U176 ( .A(n200), .Y(n155) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_48 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n131, n132, n133, n134, n135, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200;

  CLKINVX1 U1 ( .A(n1), .Y(product[15]) );
  ADDFXL U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n78), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  CLKINVX1 U16 ( .A(n15), .Y(n16) );
  ADDFXL U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n22), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CLKINVX1 U19 ( .A(n21), .Y(n22) );
  CMPR42X1 U20 ( .A(n29), .B(n59), .C(n65), .D(n72), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n30), .D(n34), .ICI(n31), .S(n28), .ICO(
        n26), .CO(n27) );
  CLKINVX1 U22 ( .A(n29), .Y(n30) );
  CMPR42X1 U23 ( .A(n67), .B(n80), .C(n39), .D(n35), .ICI(n36), .S(n33), .ICO(
        n31), .CO(n32) );
  XNOR2X1 U24 ( .A(n73), .B(n61), .Y(n35) );
  OR2X1 U25 ( .A(n73), .B(n61), .Y(n34) );
  CMPR42X1 U26 ( .A(n52), .B(n62), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n81), .B(n68), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n69), .D(n75), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n53), .CI(n47), .CO(n44), .S(n45) );
  ADDHXL U30 ( .A(n83), .B(n70), .CO(n46), .S(n47) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n85), .B(n54), .CO(n50), .S(n51) );
  OAI22XL U33 ( .A0(n152), .A1(n144), .B0(n193), .B1(n96), .Y(n52) );
  AO21X1 U34 ( .A0(n152), .A1(n156), .B0(n88), .Y(n56) );
  OAI22XL U35 ( .A0(n152), .A1(n89), .B0(n193), .B1(n88), .Y(n15) );
  OAI22XL U36 ( .A0(n152), .A1(n90), .B0(n193), .B1(n89), .Y(n57) );
  OAI22XL U37 ( .A0(n152), .A1(n91), .B0(n193), .B1(n90), .Y(n58) );
  OAI22XL U38 ( .A0(n152), .A1(n92), .B0(n193), .B1(n91), .Y(n59) );
  OAI22XL U39 ( .A0(n152), .A1(n93), .B0(n156), .B1(n92), .Y(n60) );
  OAI22XL U40 ( .A0(n152), .A1(n94), .B0(n156), .B1(n93), .Y(n61) );
  OAI22XL U41 ( .A0(n194), .A1(n95), .B0(n156), .B1(n94), .Y(n62) );
  XNOR2X1 U43 ( .A(n148), .B(b[7]), .Y(n88) );
  XNOR2X1 U44 ( .A(n148), .B(b[6]), .Y(n89) );
  XNOR2X1 U45 ( .A(n148), .B(b[5]), .Y(n90) );
  XNOR2X1 U46 ( .A(n148), .B(b[4]), .Y(n91) );
  XNOR2X1 U47 ( .A(n148), .B(b[3]), .Y(n92) );
  XNOR2X1 U48 ( .A(n148), .B(b[2]), .Y(n93) );
  XNOR2X1 U49 ( .A(n148), .B(b[1]), .Y(n94) );
  OAI22XL U52 ( .A0(n153), .A1(n145), .B0(n196), .B1(n105), .Y(n53) );
  AO21X1 U53 ( .A0(n153), .A1(n157), .B0(n97), .Y(n64) );
  OAI22XL U54 ( .A0(n153), .A1(n98), .B0(n196), .B1(n97), .Y(n21) );
  OAI22XL U55 ( .A0(n153), .A1(n99), .B0(n196), .B1(n98), .Y(n65) );
  OAI22XL U56 ( .A0(n153), .A1(n100), .B0(n196), .B1(n99), .Y(n66) );
  OAI22XL U57 ( .A0(n153), .A1(n101), .B0(n196), .B1(n100), .Y(n67) );
  OAI22XL U58 ( .A0(n153), .A1(n102), .B0(n157), .B1(n101), .Y(n68) );
  OAI22XL U59 ( .A0(n153), .A1(n103), .B0(n157), .B1(n102), .Y(n69) );
  OAI22XL U60 ( .A0(n189), .A1(n104), .B0(n157), .B1(n103), .Y(n70) );
  XNOR2X1 U62 ( .A(n149), .B(b[7]), .Y(n97) );
  XNOR2X1 U63 ( .A(n149), .B(b[6]), .Y(n98) );
  XNOR2X1 U64 ( .A(n149), .B(b[5]), .Y(n99) );
  XNOR2X1 U65 ( .A(n149), .B(b[4]), .Y(n100) );
  XNOR2X1 U66 ( .A(n149), .B(b[3]), .Y(n101) );
  XNOR2X1 U67 ( .A(n149), .B(b[2]), .Y(n102) );
  XNOR2X1 U68 ( .A(n149), .B(b[1]), .Y(n103) );
  OAI22XL U71 ( .A0(n154), .A1(n146), .B0(n192), .B1(n114), .Y(n54) );
  AO21X1 U72 ( .A0(n154), .A1(n158), .B0(n106), .Y(n72) );
  OAI22XL U73 ( .A0(n154), .A1(n107), .B0(n192), .B1(n106), .Y(n29) );
  OAI22XL U74 ( .A0(n154), .A1(n108), .B0(n192), .B1(n107), .Y(n73) );
  OAI22XL U75 ( .A0(n154), .A1(n109), .B0(n192), .B1(n108), .Y(n74) );
  OAI22XL U76 ( .A0(n154), .A1(n110), .B0(n192), .B1(n109), .Y(n75) );
  OAI22XL U77 ( .A0(n154), .A1(n111), .B0(n158), .B1(n110), .Y(n76) );
  OAI22XL U78 ( .A0(n154), .A1(n112), .B0(n158), .B1(n111), .Y(n77) );
  OAI22XL U79 ( .A0(n191), .A1(n113), .B0(n158), .B1(n112), .Y(n78) );
  XNOR2X1 U81 ( .A(n150), .B(b[7]), .Y(n106) );
  XNOR2X1 U82 ( .A(n150), .B(b[6]), .Y(n107) );
  XNOR2X1 U83 ( .A(n150), .B(b[5]), .Y(n108) );
  XNOR2X1 U84 ( .A(n150), .B(b[4]), .Y(n109) );
  XNOR2X1 U85 ( .A(n150), .B(b[3]), .Y(n110) );
  XNOR2X1 U86 ( .A(n150), .B(b[2]), .Y(n111) );
  XNOR2X1 U87 ( .A(n150), .B(b[1]), .Y(n112) );
  OAI22XL U90 ( .A0(n155), .A1(n147), .B0(n123), .B1(n143), .Y(n55) );
  AO21X1 U91 ( .A0(n155), .A1(n159), .B0(n115), .Y(n80) );
  OAI22XL U92 ( .A0(n155), .A1(n116), .B0(n115), .B1(n143), .Y(n81) );
  OAI22XL U93 ( .A0(n155), .A1(n117), .B0(n116), .B1(n143), .Y(n82) );
  OAI22XL U94 ( .A0(n155), .A1(n118), .B0(n117), .B1(n143), .Y(n83) );
  OAI22XL U95 ( .A0(n155), .A1(n119), .B0(n118), .B1(n143), .Y(n84) );
  OAI22XL U96 ( .A0(n155), .A1(n120), .B0(n119), .B1(n143), .Y(n85) );
  OAI22XL U97 ( .A0(n155), .A1(n121), .B0(n120), .B1(n143), .Y(n86) );
  OAI22XL U98 ( .A0(n190), .A1(n122), .B0(n121), .B1(n143), .Y(n87) );
  XNOR2X1 U100 ( .A(n151), .B(b[7]), .Y(n115) );
  XNOR2X1 U101 ( .A(n151), .B(b[6]), .Y(n116) );
  XNOR2X1 U102 ( .A(n151), .B(b[5]), .Y(n117) );
  XNOR2X1 U103 ( .A(n151), .B(b[4]), .Y(n118) );
  XNOR2X1 U104 ( .A(n151), .B(b[3]), .Y(n119) );
  XNOR2X1 U105 ( .A(n151), .B(b[2]), .Y(n120) );
  XNOR2X1 U106 ( .A(n151), .B(b[1]), .Y(n121) );
  CLKINVX1 U112 ( .A(n148), .Y(n144) );
  CLKINVX1 U116 ( .A(n149), .Y(n145) );
  CLKINVX1 U120 ( .A(n150), .Y(n146) );
  CLKINVX1 U124 ( .A(n151), .Y(n147) );
  XOR2X1 U127 ( .A(a[6]), .B(a[7]), .Y(n132) );
  XNOR2X1 U128 ( .A(a[6]), .B(a[5]), .Y(n156) );
  XOR2X1 U130 ( .A(a[4]), .B(a[5]), .Y(n133) );
  XNOR2X1 U131 ( .A(a[4]), .B(a[3]), .Y(n157) );
  XOR2X1 U133 ( .A(a[2]), .B(a[3]), .Y(n134) );
  XNOR2X1 U134 ( .A(a[2]), .B(a[1]), .Y(n158) );
  XOR2X1 U136 ( .A(a[0]), .B(a[1]), .Y(n135) );
  CLKINVX1 U137 ( .A(a[0]), .Y(n159) );
  CLKINVX1 U140 ( .A(n198), .Y(n189) );
  CLKINVX1 U141 ( .A(n200), .Y(n190) );
  CLKINVX1 U142 ( .A(n199), .Y(n191) );
  CLKINVX1 U143 ( .A(n158), .Y(n142) );
  CLKINVX1 U144 ( .A(n142), .Y(n192) );
  CLKINVX1 U145 ( .A(n156), .Y(n140) );
  CLKINVX1 U146 ( .A(n140), .Y(n193) );
  CLKINVX1 U147 ( .A(n197), .Y(n194) );
  CLKINVX1 U148 ( .A(b[0]), .Y(n131) );
  CLKINVX1 U149 ( .A(n131), .Y(n195) );
  NAND2BXL U150 ( .AN(n195), .B(a[1]), .Y(n123) );
  NAND2BXL U151 ( .AN(n195), .B(a[3]), .Y(n114) );
  CLKINVX1 U152 ( .A(n157), .Y(n141) );
  CLKINVX1 U153 ( .A(n141), .Y(n196) );
  NOR2BXL U154 ( .AN(n195), .B(n159), .Y(product[0]) );
  XNOR2XL U155 ( .A(a[7]), .B(b[0]), .Y(n95) );
  XNOR2XL U156 ( .A(a[1]), .B(b[0]), .Y(n122) );
  NOR2BXL U157 ( .AN(n195), .B(n192), .Y(n79) );
  XNOR2XL U158 ( .A(a[3]), .B(b[0]), .Y(n113) );
  NOR2BXL U159 ( .AN(n195), .B(n196), .Y(n71) );
  NAND2BXL U160 ( .AN(n195), .B(a[7]), .Y(n96) );
  NAND2BXL U161 ( .AN(n195), .B(a[5]), .Y(n105) );
  XNOR2XL U162 ( .A(a[5]), .B(b[0]), .Y(n104) );
  NOR2BXL U163 ( .AN(n195), .B(n193), .Y(n63) );
  CLKBUFX3 U164 ( .A(n159), .Y(n143) );
  CLKBUFX3 U165 ( .A(a[1]), .Y(n151) );
  CLKBUFX3 U166 ( .A(a[3]), .Y(n150) );
  CLKBUFX3 U167 ( .A(a[5]), .Y(n149) );
  CLKBUFX3 U168 ( .A(a[7]), .Y(n148) );
  AND2X2 U169 ( .A(n132), .B(n156), .Y(n197) );
  CLKINVX1 U170 ( .A(n197), .Y(n152) );
  AND2X2 U171 ( .A(n133), .B(n157), .Y(n198) );
  CLKINVX1 U172 ( .A(n198), .Y(n153) );
  AND2X2 U173 ( .A(n134), .B(n158), .Y(n199) );
  CLKINVX1 U174 ( .A(n199), .Y(n154) );
  AND2X2 U175 ( .A(n135), .B(n159), .Y(n200) );
  CLKINVX1 U176 ( .A(n200), .Y(n155) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_49 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n131, n132, n133, n134, n135, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200;

  CLKINVX1 U1 ( .A(n1), .Y(product[15]) );
  ADDFXL U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n78), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  CLKINVX1 U16 ( .A(n15), .Y(n16) );
  ADDFXL U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n22), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CLKINVX1 U19 ( .A(n21), .Y(n22) );
  CMPR42X1 U20 ( .A(n29), .B(n59), .C(n65), .D(n72), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n30), .D(n34), .ICI(n31), .S(n28), .ICO(
        n26), .CO(n27) );
  CLKINVX1 U22 ( .A(n29), .Y(n30) );
  CMPR42X1 U23 ( .A(n67), .B(n80), .C(n39), .D(n35), .ICI(n36), .S(n33), .ICO(
        n31), .CO(n32) );
  XNOR2X1 U24 ( .A(n73), .B(n61), .Y(n35) );
  OR2X1 U25 ( .A(n73), .B(n61), .Y(n34) );
  CMPR42X1 U26 ( .A(n52), .B(n62), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n81), .B(n68), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n69), .D(n75), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n53), .CI(n47), .CO(n44), .S(n45) );
  ADDHXL U30 ( .A(n83), .B(n70), .CO(n46), .S(n47) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n85), .B(n54), .CO(n50), .S(n51) );
  OAI22XL U33 ( .A0(n152), .A1(n144), .B0(n193), .B1(n96), .Y(n52) );
  AO21X1 U34 ( .A0(n152), .A1(n156), .B0(n88), .Y(n56) );
  OAI22XL U35 ( .A0(n152), .A1(n89), .B0(n193), .B1(n88), .Y(n15) );
  OAI22XL U36 ( .A0(n152), .A1(n90), .B0(n193), .B1(n89), .Y(n57) );
  OAI22XL U37 ( .A0(n152), .A1(n91), .B0(n193), .B1(n90), .Y(n58) );
  OAI22XL U38 ( .A0(n152), .A1(n92), .B0(n193), .B1(n91), .Y(n59) );
  OAI22XL U39 ( .A0(n152), .A1(n93), .B0(n156), .B1(n92), .Y(n60) );
  OAI22XL U40 ( .A0(n152), .A1(n94), .B0(n156), .B1(n93), .Y(n61) );
  OAI22XL U41 ( .A0(n194), .A1(n95), .B0(n156), .B1(n94), .Y(n62) );
  XNOR2X1 U43 ( .A(n148), .B(b[7]), .Y(n88) );
  XNOR2X1 U44 ( .A(n148), .B(b[6]), .Y(n89) );
  XNOR2X1 U45 ( .A(n148), .B(b[5]), .Y(n90) );
  XNOR2X1 U46 ( .A(n148), .B(b[4]), .Y(n91) );
  XNOR2X1 U47 ( .A(n148), .B(b[3]), .Y(n92) );
  XNOR2X1 U48 ( .A(n148), .B(b[2]), .Y(n93) );
  XNOR2X1 U49 ( .A(n148), .B(b[1]), .Y(n94) );
  OAI22XL U52 ( .A0(n153), .A1(n145), .B0(n196), .B1(n105), .Y(n53) );
  AO21X1 U53 ( .A0(n153), .A1(n157), .B0(n97), .Y(n64) );
  OAI22XL U54 ( .A0(n153), .A1(n98), .B0(n196), .B1(n97), .Y(n21) );
  OAI22XL U55 ( .A0(n153), .A1(n99), .B0(n196), .B1(n98), .Y(n65) );
  OAI22XL U56 ( .A0(n153), .A1(n100), .B0(n196), .B1(n99), .Y(n66) );
  OAI22XL U57 ( .A0(n153), .A1(n101), .B0(n196), .B1(n100), .Y(n67) );
  OAI22XL U58 ( .A0(n153), .A1(n102), .B0(n157), .B1(n101), .Y(n68) );
  OAI22XL U59 ( .A0(n153), .A1(n103), .B0(n157), .B1(n102), .Y(n69) );
  OAI22XL U60 ( .A0(n189), .A1(n104), .B0(n157), .B1(n103), .Y(n70) );
  XNOR2X1 U62 ( .A(n149), .B(b[7]), .Y(n97) );
  XNOR2X1 U63 ( .A(n149), .B(b[6]), .Y(n98) );
  XNOR2X1 U64 ( .A(n149), .B(b[5]), .Y(n99) );
  XNOR2X1 U65 ( .A(n149), .B(b[4]), .Y(n100) );
  XNOR2X1 U66 ( .A(n149), .B(b[3]), .Y(n101) );
  XNOR2X1 U67 ( .A(n149), .B(b[2]), .Y(n102) );
  XNOR2X1 U68 ( .A(n149), .B(b[1]), .Y(n103) );
  OAI22XL U71 ( .A0(n154), .A1(n146), .B0(n192), .B1(n114), .Y(n54) );
  AO21X1 U72 ( .A0(n154), .A1(n158), .B0(n106), .Y(n72) );
  OAI22XL U73 ( .A0(n154), .A1(n107), .B0(n192), .B1(n106), .Y(n29) );
  OAI22XL U74 ( .A0(n154), .A1(n108), .B0(n192), .B1(n107), .Y(n73) );
  OAI22XL U75 ( .A0(n154), .A1(n109), .B0(n192), .B1(n108), .Y(n74) );
  OAI22XL U76 ( .A0(n154), .A1(n110), .B0(n192), .B1(n109), .Y(n75) );
  OAI22XL U77 ( .A0(n154), .A1(n111), .B0(n158), .B1(n110), .Y(n76) );
  OAI22XL U78 ( .A0(n154), .A1(n112), .B0(n158), .B1(n111), .Y(n77) );
  OAI22XL U79 ( .A0(n191), .A1(n113), .B0(n158), .B1(n112), .Y(n78) );
  XNOR2X1 U81 ( .A(n150), .B(b[7]), .Y(n106) );
  XNOR2X1 U82 ( .A(n150), .B(b[6]), .Y(n107) );
  XNOR2X1 U83 ( .A(n150), .B(b[5]), .Y(n108) );
  XNOR2X1 U84 ( .A(n150), .B(b[4]), .Y(n109) );
  XNOR2X1 U85 ( .A(n150), .B(b[3]), .Y(n110) );
  XNOR2X1 U86 ( .A(n150), .B(b[2]), .Y(n111) );
  XNOR2X1 U87 ( .A(n150), .B(b[1]), .Y(n112) );
  OAI22XL U90 ( .A0(n155), .A1(n147), .B0(n123), .B1(n143), .Y(n55) );
  AO21X1 U91 ( .A0(n155), .A1(n159), .B0(n115), .Y(n80) );
  OAI22XL U92 ( .A0(n155), .A1(n116), .B0(n115), .B1(n143), .Y(n81) );
  OAI22XL U93 ( .A0(n155), .A1(n117), .B0(n116), .B1(n143), .Y(n82) );
  OAI22XL U94 ( .A0(n155), .A1(n118), .B0(n117), .B1(n143), .Y(n83) );
  OAI22XL U95 ( .A0(n155), .A1(n119), .B0(n118), .B1(n143), .Y(n84) );
  OAI22XL U96 ( .A0(n155), .A1(n120), .B0(n119), .B1(n143), .Y(n85) );
  OAI22XL U97 ( .A0(n155), .A1(n121), .B0(n120), .B1(n143), .Y(n86) );
  OAI22XL U98 ( .A0(n190), .A1(n122), .B0(n121), .B1(n143), .Y(n87) );
  XNOR2X1 U100 ( .A(n151), .B(b[7]), .Y(n115) );
  XNOR2X1 U101 ( .A(n151), .B(b[6]), .Y(n116) );
  XNOR2X1 U102 ( .A(n151), .B(b[5]), .Y(n117) );
  XNOR2X1 U103 ( .A(n151), .B(b[4]), .Y(n118) );
  XNOR2X1 U104 ( .A(n151), .B(b[3]), .Y(n119) );
  XNOR2X1 U105 ( .A(n151), .B(b[2]), .Y(n120) );
  XNOR2X1 U106 ( .A(n151), .B(b[1]), .Y(n121) );
  CLKINVX1 U112 ( .A(n148), .Y(n144) );
  CLKINVX1 U116 ( .A(n149), .Y(n145) );
  CLKINVX1 U120 ( .A(n150), .Y(n146) );
  CLKINVX1 U124 ( .A(n151), .Y(n147) );
  XOR2X1 U127 ( .A(a[6]), .B(a[7]), .Y(n132) );
  XNOR2X1 U128 ( .A(a[6]), .B(a[5]), .Y(n156) );
  XOR2X1 U130 ( .A(a[4]), .B(a[5]), .Y(n133) );
  XNOR2X1 U131 ( .A(a[4]), .B(a[3]), .Y(n157) );
  XOR2X1 U133 ( .A(a[2]), .B(a[3]), .Y(n134) );
  XNOR2X1 U134 ( .A(a[2]), .B(a[1]), .Y(n158) );
  XOR2X1 U136 ( .A(a[0]), .B(a[1]), .Y(n135) );
  CLKINVX1 U137 ( .A(a[0]), .Y(n159) );
  CLKINVX1 U140 ( .A(n198), .Y(n189) );
  CLKINVX1 U141 ( .A(n200), .Y(n190) );
  CLKINVX1 U142 ( .A(n199), .Y(n191) );
  CLKINVX1 U143 ( .A(n158), .Y(n142) );
  CLKINVX1 U144 ( .A(n142), .Y(n192) );
  CLKINVX1 U145 ( .A(n156), .Y(n140) );
  CLKINVX1 U146 ( .A(n140), .Y(n193) );
  CLKINVX1 U147 ( .A(n197), .Y(n194) );
  CLKINVX1 U148 ( .A(b[0]), .Y(n131) );
  CLKINVX1 U149 ( .A(n131), .Y(n195) );
  NAND2BXL U150 ( .AN(n195), .B(a[1]), .Y(n123) );
  NAND2BXL U151 ( .AN(n195), .B(a[3]), .Y(n114) );
  CLKINVX1 U152 ( .A(n157), .Y(n141) );
  CLKINVX1 U153 ( .A(n141), .Y(n196) );
  NOR2BXL U154 ( .AN(n195), .B(n159), .Y(product[0]) );
  XNOR2XL U155 ( .A(a[7]), .B(b[0]), .Y(n95) );
  XNOR2XL U156 ( .A(a[1]), .B(b[0]), .Y(n122) );
  NOR2BXL U157 ( .AN(n195), .B(n192), .Y(n79) );
  XNOR2XL U158 ( .A(a[3]), .B(b[0]), .Y(n113) );
  NOR2BXL U159 ( .AN(n195), .B(n196), .Y(n71) );
  NAND2BXL U160 ( .AN(n195), .B(a[7]), .Y(n96) );
  NAND2BXL U161 ( .AN(n195), .B(a[5]), .Y(n105) );
  XNOR2XL U162 ( .A(a[5]), .B(b[0]), .Y(n104) );
  NOR2BXL U163 ( .AN(n195), .B(n193), .Y(n63) );
  CLKBUFX3 U164 ( .A(n159), .Y(n143) );
  CLKBUFX3 U165 ( .A(a[1]), .Y(n151) );
  CLKBUFX3 U166 ( .A(a[3]), .Y(n150) );
  CLKBUFX3 U167 ( .A(a[5]), .Y(n149) );
  CLKBUFX3 U168 ( .A(a[7]), .Y(n148) );
  AND2X2 U169 ( .A(n132), .B(n156), .Y(n197) );
  CLKINVX1 U170 ( .A(n197), .Y(n152) );
  AND2X2 U171 ( .A(n133), .B(n157), .Y(n198) );
  CLKINVX1 U172 ( .A(n198), .Y(n153) );
  AND2X2 U173 ( .A(n134), .B(n158), .Y(n199) );
  CLKINVX1 U174 ( .A(n199), .Y(n154) );
  AND2X2 U175 ( .A(n135), .B(n159), .Y(n200) );
  CLKINVX1 U176 ( .A(n200), .Y(n155) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_50 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n131, n132, n133, n134, n135, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200;

  CLKINVX1 U1 ( .A(n1), .Y(product[15]) );
  ADDFXL U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n78), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  CLKINVX1 U16 ( .A(n15), .Y(n16) );
  ADDFXL U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n22), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CLKINVX1 U19 ( .A(n21), .Y(n22) );
  CMPR42X1 U20 ( .A(n29), .B(n59), .C(n65), .D(n72), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n30), .D(n34), .ICI(n31), .S(n28), .ICO(
        n26), .CO(n27) );
  CLKINVX1 U22 ( .A(n29), .Y(n30) );
  CMPR42X1 U23 ( .A(n67), .B(n80), .C(n39), .D(n35), .ICI(n36), .S(n33), .ICO(
        n31), .CO(n32) );
  XNOR2X1 U24 ( .A(n73), .B(n61), .Y(n35) );
  OR2X1 U25 ( .A(n73), .B(n61), .Y(n34) );
  CMPR42X1 U26 ( .A(n52), .B(n62), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n81), .B(n68), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n69), .D(n75), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n53), .CI(n47), .CO(n44), .S(n45) );
  ADDHXL U30 ( .A(n83), .B(n70), .CO(n46), .S(n47) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n85), .B(n54), .CO(n50), .S(n51) );
  OAI22XL U33 ( .A0(n152), .A1(n144), .B0(n193), .B1(n96), .Y(n52) );
  AO21X1 U34 ( .A0(n152), .A1(n156), .B0(n88), .Y(n56) );
  OAI22XL U35 ( .A0(n152), .A1(n89), .B0(n193), .B1(n88), .Y(n15) );
  OAI22XL U36 ( .A0(n152), .A1(n90), .B0(n193), .B1(n89), .Y(n57) );
  OAI22XL U37 ( .A0(n152), .A1(n91), .B0(n193), .B1(n90), .Y(n58) );
  OAI22XL U38 ( .A0(n152), .A1(n92), .B0(n193), .B1(n91), .Y(n59) );
  OAI22XL U39 ( .A0(n152), .A1(n93), .B0(n156), .B1(n92), .Y(n60) );
  OAI22XL U40 ( .A0(n152), .A1(n94), .B0(n156), .B1(n93), .Y(n61) );
  OAI22XL U41 ( .A0(n194), .A1(n95), .B0(n156), .B1(n94), .Y(n62) );
  XNOR2X1 U43 ( .A(n148), .B(b[7]), .Y(n88) );
  XNOR2X1 U44 ( .A(n148), .B(b[6]), .Y(n89) );
  XNOR2X1 U45 ( .A(n148), .B(b[5]), .Y(n90) );
  XNOR2X1 U46 ( .A(n148), .B(b[4]), .Y(n91) );
  XNOR2X1 U47 ( .A(n148), .B(b[3]), .Y(n92) );
  XNOR2X1 U48 ( .A(n148), .B(b[2]), .Y(n93) );
  XNOR2X1 U49 ( .A(n148), .B(b[1]), .Y(n94) );
  OAI22XL U52 ( .A0(n153), .A1(n145), .B0(n196), .B1(n105), .Y(n53) );
  AO21X1 U53 ( .A0(n153), .A1(n157), .B0(n97), .Y(n64) );
  OAI22XL U54 ( .A0(n153), .A1(n98), .B0(n196), .B1(n97), .Y(n21) );
  OAI22XL U55 ( .A0(n153), .A1(n99), .B0(n196), .B1(n98), .Y(n65) );
  OAI22XL U56 ( .A0(n153), .A1(n100), .B0(n196), .B1(n99), .Y(n66) );
  OAI22XL U57 ( .A0(n153), .A1(n101), .B0(n196), .B1(n100), .Y(n67) );
  OAI22XL U58 ( .A0(n153), .A1(n102), .B0(n157), .B1(n101), .Y(n68) );
  OAI22XL U59 ( .A0(n153), .A1(n103), .B0(n157), .B1(n102), .Y(n69) );
  OAI22XL U60 ( .A0(n189), .A1(n104), .B0(n157), .B1(n103), .Y(n70) );
  XNOR2X1 U62 ( .A(n149), .B(b[7]), .Y(n97) );
  XNOR2X1 U63 ( .A(n149), .B(b[6]), .Y(n98) );
  XNOR2X1 U64 ( .A(n149), .B(b[5]), .Y(n99) );
  XNOR2X1 U65 ( .A(n149), .B(b[4]), .Y(n100) );
  XNOR2X1 U66 ( .A(n149), .B(b[3]), .Y(n101) );
  XNOR2X1 U67 ( .A(n149), .B(b[2]), .Y(n102) );
  XNOR2X1 U68 ( .A(n149), .B(b[1]), .Y(n103) );
  OAI22XL U71 ( .A0(n154), .A1(n146), .B0(n192), .B1(n114), .Y(n54) );
  AO21X1 U72 ( .A0(n154), .A1(n158), .B0(n106), .Y(n72) );
  OAI22XL U73 ( .A0(n154), .A1(n107), .B0(n192), .B1(n106), .Y(n29) );
  OAI22XL U74 ( .A0(n154), .A1(n108), .B0(n192), .B1(n107), .Y(n73) );
  OAI22XL U75 ( .A0(n154), .A1(n109), .B0(n192), .B1(n108), .Y(n74) );
  OAI22XL U76 ( .A0(n154), .A1(n110), .B0(n192), .B1(n109), .Y(n75) );
  OAI22XL U77 ( .A0(n154), .A1(n111), .B0(n158), .B1(n110), .Y(n76) );
  OAI22XL U78 ( .A0(n154), .A1(n112), .B0(n158), .B1(n111), .Y(n77) );
  OAI22XL U79 ( .A0(n191), .A1(n113), .B0(n158), .B1(n112), .Y(n78) );
  XNOR2X1 U81 ( .A(n150), .B(b[7]), .Y(n106) );
  XNOR2X1 U82 ( .A(n150), .B(b[6]), .Y(n107) );
  XNOR2X1 U83 ( .A(n150), .B(b[5]), .Y(n108) );
  XNOR2X1 U84 ( .A(n150), .B(b[4]), .Y(n109) );
  XNOR2X1 U85 ( .A(n150), .B(b[3]), .Y(n110) );
  XNOR2X1 U86 ( .A(n150), .B(b[2]), .Y(n111) );
  XNOR2X1 U87 ( .A(n150), .B(b[1]), .Y(n112) );
  OAI22XL U90 ( .A0(n155), .A1(n147), .B0(n123), .B1(n143), .Y(n55) );
  AO21X1 U91 ( .A0(n155), .A1(n159), .B0(n115), .Y(n80) );
  OAI22XL U92 ( .A0(n155), .A1(n116), .B0(n115), .B1(n143), .Y(n81) );
  OAI22XL U93 ( .A0(n155), .A1(n117), .B0(n116), .B1(n143), .Y(n82) );
  OAI22XL U94 ( .A0(n155), .A1(n118), .B0(n117), .B1(n143), .Y(n83) );
  OAI22XL U95 ( .A0(n155), .A1(n119), .B0(n118), .B1(n143), .Y(n84) );
  OAI22XL U96 ( .A0(n155), .A1(n120), .B0(n119), .B1(n143), .Y(n85) );
  OAI22XL U97 ( .A0(n155), .A1(n121), .B0(n120), .B1(n143), .Y(n86) );
  OAI22XL U98 ( .A0(n190), .A1(n122), .B0(n121), .B1(n143), .Y(n87) );
  XNOR2X1 U100 ( .A(n151), .B(b[7]), .Y(n115) );
  XNOR2X1 U101 ( .A(n151), .B(b[6]), .Y(n116) );
  XNOR2X1 U102 ( .A(n151), .B(b[5]), .Y(n117) );
  XNOR2X1 U103 ( .A(n151), .B(b[4]), .Y(n118) );
  XNOR2X1 U104 ( .A(n151), .B(b[3]), .Y(n119) );
  XNOR2X1 U105 ( .A(n151), .B(b[2]), .Y(n120) );
  XNOR2X1 U106 ( .A(n151), .B(b[1]), .Y(n121) );
  CLKINVX1 U112 ( .A(n148), .Y(n144) );
  CLKINVX1 U116 ( .A(n149), .Y(n145) );
  CLKINVX1 U120 ( .A(n150), .Y(n146) );
  CLKINVX1 U124 ( .A(n151), .Y(n147) );
  XOR2X1 U127 ( .A(a[6]), .B(a[7]), .Y(n132) );
  XNOR2X1 U128 ( .A(a[6]), .B(a[5]), .Y(n156) );
  XOR2X1 U130 ( .A(a[4]), .B(a[5]), .Y(n133) );
  XNOR2X1 U131 ( .A(a[4]), .B(a[3]), .Y(n157) );
  XOR2X1 U133 ( .A(a[2]), .B(a[3]), .Y(n134) );
  XNOR2X1 U134 ( .A(a[2]), .B(a[1]), .Y(n158) );
  XOR2X1 U136 ( .A(a[0]), .B(a[1]), .Y(n135) );
  CLKINVX1 U137 ( .A(a[0]), .Y(n159) );
  CLKINVX1 U140 ( .A(n198), .Y(n189) );
  CLKINVX1 U141 ( .A(n200), .Y(n190) );
  CLKINVX1 U142 ( .A(n199), .Y(n191) );
  CLKINVX1 U143 ( .A(n158), .Y(n142) );
  CLKINVX1 U144 ( .A(n142), .Y(n192) );
  CLKINVX1 U145 ( .A(n156), .Y(n140) );
  CLKINVX1 U146 ( .A(n140), .Y(n193) );
  CLKINVX1 U147 ( .A(n197), .Y(n194) );
  CLKINVX1 U148 ( .A(b[0]), .Y(n131) );
  CLKINVX1 U149 ( .A(n131), .Y(n195) );
  NAND2BXL U150 ( .AN(n195), .B(a[1]), .Y(n123) );
  NAND2BXL U151 ( .AN(n195), .B(a[3]), .Y(n114) );
  CLKINVX1 U152 ( .A(n157), .Y(n141) );
  CLKINVX1 U153 ( .A(n141), .Y(n196) );
  NOR2BXL U154 ( .AN(n195), .B(n159), .Y(product[0]) );
  XNOR2XL U155 ( .A(a[7]), .B(b[0]), .Y(n95) );
  XNOR2XL U156 ( .A(a[1]), .B(b[0]), .Y(n122) );
  NOR2BXL U157 ( .AN(n195), .B(n192), .Y(n79) );
  XNOR2XL U158 ( .A(a[3]), .B(b[0]), .Y(n113) );
  NOR2BXL U159 ( .AN(n195), .B(n196), .Y(n71) );
  NAND2BXL U160 ( .AN(n195), .B(a[7]), .Y(n96) );
  NAND2BXL U161 ( .AN(n195), .B(a[5]), .Y(n105) );
  XNOR2XL U162 ( .A(a[5]), .B(b[0]), .Y(n104) );
  NOR2BXL U163 ( .AN(n195), .B(n193), .Y(n63) );
  CLKBUFX3 U164 ( .A(n159), .Y(n143) );
  CLKBUFX3 U165 ( .A(a[1]), .Y(n151) );
  CLKBUFX3 U166 ( .A(a[3]), .Y(n150) );
  CLKBUFX3 U167 ( .A(a[5]), .Y(n149) );
  CLKBUFX3 U168 ( .A(a[7]), .Y(n148) );
  AND2X2 U169 ( .A(n132), .B(n156), .Y(n197) );
  CLKINVX1 U170 ( .A(n197), .Y(n152) );
  AND2X2 U171 ( .A(n133), .B(n157), .Y(n198) );
  CLKINVX1 U172 ( .A(n198), .Y(n153) );
  AND2X2 U173 ( .A(n134), .B(n158), .Y(n199) );
  CLKINVX1 U174 ( .A(n199), .Y(n154) );
  AND2X2 U175 ( .A(n135), .B(n159), .Y(n200) );
  CLKINVX1 U176 ( .A(n200), .Y(n155) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_51 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n131, n132, n133, n134, n135, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200;

  CLKINVX1 U1 ( .A(n1), .Y(product[15]) );
  ADDFXL U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n78), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  CLKINVX1 U16 ( .A(n15), .Y(n16) );
  ADDFXL U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n22), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CLKINVX1 U19 ( .A(n21), .Y(n22) );
  CMPR42X1 U20 ( .A(n29), .B(n59), .C(n65), .D(n72), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n30), .D(n34), .ICI(n31), .S(n28), .ICO(
        n26), .CO(n27) );
  CLKINVX1 U22 ( .A(n29), .Y(n30) );
  CMPR42X1 U23 ( .A(n67), .B(n80), .C(n39), .D(n35), .ICI(n36), .S(n33), .ICO(
        n31), .CO(n32) );
  XNOR2X1 U24 ( .A(n73), .B(n61), .Y(n35) );
  OR2X1 U25 ( .A(n73), .B(n61), .Y(n34) );
  CMPR42X1 U26 ( .A(n52), .B(n62), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n81), .B(n68), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n69), .D(n75), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n53), .CI(n47), .CO(n44), .S(n45) );
  ADDHXL U30 ( .A(n83), .B(n70), .CO(n46), .S(n47) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n85), .B(n54), .CO(n50), .S(n51) );
  OAI22XL U33 ( .A0(n152), .A1(n144), .B0(n193), .B1(n96), .Y(n52) );
  AO21X1 U34 ( .A0(n152), .A1(n156), .B0(n88), .Y(n56) );
  OAI22XL U35 ( .A0(n152), .A1(n89), .B0(n193), .B1(n88), .Y(n15) );
  OAI22XL U36 ( .A0(n152), .A1(n90), .B0(n193), .B1(n89), .Y(n57) );
  OAI22XL U37 ( .A0(n152), .A1(n91), .B0(n193), .B1(n90), .Y(n58) );
  OAI22XL U38 ( .A0(n152), .A1(n92), .B0(n193), .B1(n91), .Y(n59) );
  OAI22XL U39 ( .A0(n152), .A1(n93), .B0(n156), .B1(n92), .Y(n60) );
  OAI22XL U40 ( .A0(n152), .A1(n94), .B0(n156), .B1(n93), .Y(n61) );
  OAI22XL U41 ( .A0(n194), .A1(n95), .B0(n156), .B1(n94), .Y(n62) );
  XNOR2X1 U43 ( .A(n148), .B(b[7]), .Y(n88) );
  XNOR2X1 U44 ( .A(n148), .B(b[6]), .Y(n89) );
  XNOR2X1 U45 ( .A(n148), .B(b[5]), .Y(n90) );
  XNOR2X1 U46 ( .A(n148), .B(b[4]), .Y(n91) );
  XNOR2X1 U47 ( .A(n148), .B(b[3]), .Y(n92) );
  XNOR2X1 U48 ( .A(n148), .B(b[2]), .Y(n93) );
  XNOR2X1 U49 ( .A(n148), .B(b[1]), .Y(n94) );
  OAI22XL U52 ( .A0(n153), .A1(n145), .B0(n196), .B1(n105), .Y(n53) );
  AO21X1 U53 ( .A0(n153), .A1(n157), .B0(n97), .Y(n64) );
  OAI22XL U54 ( .A0(n153), .A1(n98), .B0(n196), .B1(n97), .Y(n21) );
  OAI22XL U55 ( .A0(n153), .A1(n99), .B0(n196), .B1(n98), .Y(n65) );
  OAI22XL U56 ( .A0(n153), .A1(n100), .B0(n196), .B1(n99), .Y(n66) );
  OAI22XL U57 ( .A0(n153), .A1(n101), .B0(n196), .B1(n100), .Y(n67) );
  OAI22XL U58 ( .A0(n153), .A1(n102), .B0(n157), .B1(n101), .Y(n68) );
  OAI22XL U59 ( .A0(n153), .A1(n103), .B0(n157), .B1(n102), .Y(n69) );
  OAI22XL U60 ( .A0(n189), .A1(n104), .B0(n157), .B1(n103), .Y(n70) );
  XNOR2X1 U62 ( .A(n149), .B(b[7]), .Y(n97) );
  XNOR2X1 U63 ( .A(n149), .B(b[6]), .Y(n98) );
  XNOR2X1 U64 ( .A(n149), .B(b[5]), .Y(n99) );
  XNOR2X1 U65 ( .A(n149), .B(b[4]), .Y(n100) );
  XNOR2X1 U66 ( .A(n149), .B(b[3]), .Y(n101) );
  XNOR2X1 U67 ( .A(n149), .B(b[2]), .Y(n102) );
  XNOR2X1 U68 ( .A(n149), .B(b[1]), .Y(n103) );
  OAI22XL U71 ( .A0(n154), .A1(n146), .B0(n192), .B1(n114), .Y(n54) );
  AO21X1 U72 ( .A0(n154), .A1(n158), .B0(n106), .Y(n72) );
  OAI22XL U73 ( .A0(n154), .A1(n107), .B0(n192), .B1(n106), .Y(n29) );
  OAI22XL U74 ( .A0(n154), .A1(n108), .B0(n192), .B1(n107), .Y(n73) );
  OAI22XL U75 ( .A0(n154), .A1(n109), .B0(n192), .B1(n108), .Y(n74) );
  OAI22XL U76 ( .A0(n154), .A1(n110), .B0(n192), .B1(n109), .Y(n75) );
  OAI22XL U77 ( .A0(n154), .A1(n111), .B0(n158), .B1(n110), .Y(n76) );
  OAI22XL U78 ( .A0(n154), .A1(n112), .B0(n158), .B1(n111), .Y(n77) );
  OAI22XL U79 ( .A0(n191), .A1(n113), .B0(n158), .B1(n112), .Y(n78) );
  XNOR2X1 U81 ( .A(n150), .B(b[7]), .Y(n106) );
  XNOR2X1 U82 ( .A(n150), .B(b[6]), .Y(n107) );
  XNOR2X1 U83 ( .A(n150), .B(b[5]), .Y(n108) );
  XNOR2X1 U84 ( .A(n150), .B(b[4]), .Y(n109) );
  XNOR2X1 U85 ( .A(n150), .B(b[3]), .Y(n110) );
  XNOR2X1 U86 ( .A(n150), .B(b[2]), .Y(n111) );
  XNOR2X1 U87 ( .A(n150), .B(b[1]), .Y(n112) );
  OAI22XL U90 ( .A0(n155), .A1(n147), .B0(n123), .B1(n143), .Y(n55) );
  AO21X1 U91 ( .A0(n155), .A1(n159), .B0(n115), .Y(n80) );
  OAI22XL U92 ( .A0(n155), .A1(n116), .B0(n115), .B1(n143), .Y(n81) );
  OAI22XL U93 ( .A0(n155), .A1(n117), .B0(n116), .B1(n143), .Y(n82) );
  OAI22XL U94 ( .A0(n155), .A1(n118), .B0(n117), .B1(n143), .Y(n83) );
  OAI22XL U95 ( .A0(n155), .A1(n119), .B0(n118), .B1(n143), .Y(n84) );
  OAI22XL U96 ( .A0(n155), .A1(n120), .B0(n119), .B1(n143), .Y(n85) );
  OAI22XL U97 ( .A0(n155), .A1(n121), .B0(n120), .B1(n143), .Y(n86) );
  OAI22XL U98 ( .A0(n190), .A1(n122), .B0(n121), .B1(n143), .Y(n87) );
  XNOR2X1 U100 ( .A(n151), .B(b[7]), .Y(n115) );
  XNOR2X1 U101 ( .A(n151), .B(b[6]), .Y(n116) );
  XNOR2X1 U102 ( .A(n151), .B(b[5]), .Y(n117) );
  XNOR2X1 U103 ( .A(n151), .B(b[4]), .Y(n118) );
  XNOR2X1 U104 ( .A(n151), .B(b[3]), .Y(n119) );
  XNOR2X1 U105 ( .A(n151), .B(b[2]), .Y(n120) );
  XNOR2X1 U106 ( .A(n151), .B(b[1]), .Y(n121) );
  CLKINVX1 U112 ( .A(n148), .Y(n144) );
  CLKINVX1 U116 ( .A(n149), .Y(n145) );
  CLKINVX1 U120 ( .A(n150), .Y(n146) );
  CLKINVX1 U124 ( .A(n151), .Y(n147) );
  XOR2X1 U127 ( .A(a[6]), .B(a[7]), .Y(n132) );
  XNOR2X1 U128 ( .A(a[6]), .B(a[5]), .Y(n156) );
  XOR2X1 U130 ( .A(a[4]), .B(a[5]), .Y(n133) );
  XNOR2X1 U131 ( .A(a[4]), .B(a[3]), .Y(n157) );
  XOR2X1 U133 ( .A(a[2]), .B(a[3]), .Y(n134) );
  XNOR2X1 U134 ( .A(a[2]), .B(a[1]), .Y(n158) );
  XOR2X1 U136 ( .A(a[0]), .B(a[1]), .Y(n135) );
  CLKINVX1 U137 ( .A(a[0]), .Y(n159) );
  CLKINVX1 U140 ( .A(n198), .Y(n189) );
  CLKINVX1 U141 ( .A(n200), .Y(n190) );
  CLKINVX1 U142 ( .A(n199), .Y(n191) );
  CLKINVX1 U143 ( .A(n158), .Y(n142) );
  CLKINVX1 U144 ( .A(n142), .Y(n192) );
  CLKINVX1 U145 ( .A(n156), .Y(n140) );
  CLKINVX1 U146 ( .A(n140), .Y(n193) );
  CLKINVX1 U147 ( .A(n197), .Y(n194) );
  CLKINVX1 U148 ( .A(b[0]), .Y(n131) );
  CLKINVX1 U149 ( .A(n131), .Y(n195) );
  NAND2BXL U150 ( .AN(n195), .B(a[1]), .Y(n123) );
  NAND2BXL U151 ( .AN(n195), .B(a[3]), .Y(n114) );
  CLKINVX1 U152 ( .A(n157), .Y(n141) );
  CLKINVX1 U153 ( .A(n141), .Y(n196) );
  NOR2BXL U154 ( .AN(n195), .B(n159), .Y(product[0]) );
  XNOR2XL U155 ( .A(a[7]), .B(b[0]), .Y(n95) );
  XNOR2XL U156 ( .A(a[1]), .B(b[0]), .Y(n122) );
  NOR2BXL U157 ( .AN(n195), .B(n192), .Y(n79) );
  XNOR2XL U158 ( .A(a[3]), .B(b[0]), .Y(n113) );
  NOR2BXL U159 ( .AN(n195), .B(n196), .Y(n71) );
  NAND2BXL U160 ( .AN(n195), .B(a[7]), .Y(n96) );
  NAND2BXL U161 ( .AN(n195), .B(a[5]), .Y(n105) );
  XNOR2XL U162 ( .A(a[5]), .B(b[0]), .Y(n104) );
  NOR2BXL U163 ( .AN(n195), .B(n193), .Y(n63) );
  CLKBUFX3 U164 ( .A(n159), .Y(n143) );
  CLKBUFX3 U165 ( .A(a[1]), .Y(n151) );
  CLKBUFX3 U166 ( .A(a[3]), .Y(n150) );
  CLKBUFX3 U167 ( .A(a[5]), .Y(n149) );
  CLKBUFX3 U168 ( .A(a[7]), .Y(n148) );
  AND2X2 U169 ( .A(n132), .B(n156), .Y(n197) );
  CLKINVX1 U170 ( .A(n197), .Y(n152) );
  AND2X2 U171 ( .A(n133), .B(n157), .Y(n198) );
  CLKINVX1 U172 ( .A(n198), .Y(n153) );
  AND2X2 U173 ( .A(n134), .B(n158), .Y(n199) );
  CLKINVX1 U174 ( .A(n199), .Y(n154) );
  AND2X2 U175 ( .A(n135), .B(n159), .Y(n200) );
  CLKINVX1 U176 ( .A(n200), .Y(n155) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_52 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n131, n132, n133, n134, n135, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200;

  CLKINVX1 U1 ( .A(n1), .Y(product[15]) );
  ADDFXL U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n78), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  CLKINVX1 U16 ( .A(n15), .Y(n16) );
  ADDFXL U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n22), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CLKINVX1 U19 ( .A(n21), .Y(n22) );
  CMPR42X1 U20 ( .A(n29), .B(n59), .C(n65), .D(n72), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n30), .D(n34), .ICI(n31), .S(n28), .ICO(
        n26), .CO(n27) );
  CLKINVX1 U22 ( .A(n29), .Y(n30) );
  CMPR42X1 U23 ( .A(n67), .B(n80), .C(n39), .D(n35), .ICI(n36), .S(n33), .ICO(
        n31), .CO(n32) );
  XNOR2X1 U24 ( .A(n73), .B(n61), .Y(n35) );
  OR2X1 U25 ( .A(n73), .B(n61), .Y(n34) );
  CMPR42X1 U26 ( .A(n52), .B(n62), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n81), .B(n68), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n69), .D(n75), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n53), .CI(n47), .CO(n44), .S(n45) );
  ADDHXL U30 ( .A(n83), .B(n70), .CO(n46), .S(n47) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n85), .B(n54), .CO(n50), .S(n51) );
  OAI22XL U33 ( .A0(n152), .A1(n144), .B0(n193), .B1(n96), .Y(n52) );
  AO21X1 U34 ( .A0(n152), .A1(n156), .B0(n88), .Y(n56) );
  OAI22XL U35 ( .A0(n152), .A1(n89), .B0(n193), .B1(n88), .Y(n15) );
  OAI22XL U36 ( .A0(n152), .A1(n90), .B0(n193), .B1(n89), .Y(n57) );
  OAI22XL U37 ( .A0(n152), .A1(n91), .B0(n193), .B1(n90), .Y(n58) );
  OAI22XL U38 ( .A0(n152), .A1(n92), .B0(n193), .B1(n91), .Y(n59) );
  OAI22XL U39 ( .A0(n152), .A1(n93), .B0(n156), .B1(n92), .Y(n60) );
  OAI22XL U40 ( .A0(n152), .A1(n94), .B0(n156), .B1(n93), .Y(n61) );
  OAI22XL U41 ( .A0(n194), .A1(n95), .B0(n156), .B1(n94), .Y(n62) );
  XNOR2X1 U43 ( .A(n148), .B(b[7]), .Y(n88) );
  XNOR2X1 U44 ( .A(n148), .B(b[6]), .Y(n89) );
  XNOR2X1 U45 ( .A(n148), .B(b[5]), .Y(n90) );
  XNOR2X1 U46 ( .A(n148), .B(b[4]), .Y(n91) );
  XNOR2X1 U47 ( .A(n148), .B(b[3]), .Y(n92) );
  XNOR2X1 U48 ( .A(n148), .B(b[2]), .Y(n93) );
  XNOR2X1 U49 ( .A(n148), .B(b[1]), .Y(n94) );
  OAI22XL U52 ( .A0(n153), .A1(n145), .B0(n196), .B1(n105), .Y(n53) );
  AO21X1 U53 ( .A0(n153), .A1(n157), .B0(n97), .Y(n64) );
  OAI22XL U54 ( .A0(n153), .A1(n98), .B0(n196), .B1(n97), .Y(n21) );
  OAI22XL U55 ( .A0(n153), .A1(n99), .B0(n196), .B1(n98), .Y(n65) );
  OAI22XL U56 ( .A0(n153), .A1(n100), .B0(n196), .B1(n99), .Y(n66) );
  OAI22XL U57 ( .A0(n153), .A1(n101), .B0(n196), .B1(n100), .Y(n67) );
  OAI22XL U58 ( .A0(n153), .A1(n102), .B0(n157), .B1(n101), .Y(n68) );
  OAI22XL U59 ( .A0(n153), .A1(n103), .B0(n157), .B1(n102), .Y(n69) );
  OAI22XL U60 ( .A0(n189), .A1(n104), .B0(n157), .B1(n103), .Y(n70) );
  XNOR2X1 U62 ( .A(n149), .B(b[7]), .Y(n97) );
  XNOR2X1 U63 ( .A(n149), .B(b[6]), .Y(n98) );
  XNOR2X1 U64 ( .A(n149), .B(b[5]), .Y(n99) );
  XNOR2X1 U65 ( .A(n149), .B(b[4]), .Y(n100) );
  XNOR2X1 U66 ( .A(n149), .B(b[3]), .Y(n101) );
  XNOR2X1 U67 ( .A(n149), .B(b[2]), .Y(n102) );
  XNOR2X1 U68 ( .A(n149), .B(b[1]), .Y(n103) );
  OAI22XL U71 ( .A0(n154), .A1(n146), .B0(n192), .B1(n114), .Y(n54) );
  AO21X1 U72 ( .A0(n154), .A1(n158), .B0(n106), .Y(n72) );
  OAI22XL U73 ( .A0(n154), .A1(n107), .B0(n192), .B1(n106), .Y(n29) );
  OAI22XL U74 ( .A0(n154), .A1(n108), .B0(n192), .B1(n107), .Y(n73) );
  OAI22XL U75 ( .A0(n154), .A1(n109), .B0(n192), .B1(n108), .Y(n74) );
  OAI22XL U76 ( .A0(n154), .A1(n110), .B0(n192), .B1(n109), .Y(n75) );
  OAI22XL U77 ( .A0(n154), .A1(n111), .B0(n158), .B1(n110), .Y(n76) );
  OAI22XL U78 ( .A0(n154), .A1(n112), .B0(n158), .B1(n111), .Y(n77) );
  OAI22XL U79 ( .A0(n191), .A1(n113), .B0(n158), .B1(n112), .Y(n78) );
  XNOR2X1 U81 ( .A(n150), .B(b[7]), .Y(n106) );
  XNOR2X1 U82 ( .A(n150), .B(b[6]), .Y(n107) );
  XNOR2X1 U83 ( .A(n150), .B(b[5]), .Y(n108) );
  XNOR2X1 U84 ( .A(n150), .B(b[4]), .Y(n109) );
  XNOR2X1 U85 ( .A(n150), .B(b[3]), .Y(n110) );
  XNOR2X1 U86 ( .A(n150), .B(b[2]), .Y(n111) );
  XNOR2X1 U87 ( .A(n150), .B(b[1]), .Y(n112) );
  OAI22XL U90 ( .A0(n155), .A1(n147), .B0(n123), .B1(n143), .Y(n55) );
  AO21X1 U91 ( .A0(n155), .A1(n159), .B0(n115), .Y(n80) );
  OAI22XL U92 ( .A0(n155), .A1(n116), .B0(n115), .B1(n143), .Y(n81) );
  OAI22XL U93 ( .A0(n155), .A1(n117), .B0(n116), .B1(n143), .Y(n82) );
  OAI22XL U94 ( .A0(n155), .A1(n118), .B0(n117), .B1(n143), .Y(n83) );
  OAI22XL U95 ( .A0(n155), .A1(n119), .B0(n118), .B1(n143), .Y(n84) );
  OAI22XL U96 ( .A0(n155), .A1(n120), .B0(n119), .B1(n143), .Y(n85) );
  OAI22XL U97 ( .A0(n155), .A1(n121), .B0(n120), .B1(n143), .Y(n86) );
  OAI22XL U98 ( .A0(n190), .A1(n122), .B0(n121), .B1(n143), .Y(n87) );
  XNOR2X1 U100 ( .A(n151), .B(b[7]), .Y(n115) );
  XNOR2X1 U101 ( .A(n151), .B(b[6]), .Y(n116) );
  XNOR2X1 U102 ( .A(n151), .B(b[5]), .Y(n117) );
  XNOR2X1 U103 ( .A(n151), .B(b[4]), .Y(n118) );
  XNOR2X1 U104 ( .A(n151), .B(b[3]), .Y(n119) );
  XNOR2X1 U105 ( .A(n151), .B(b[2]), .Y(n120) );
  XNOR2X1 U106 ( .A(n151), .B(b[1]), .Y(n121) );
  CLKINVX1 U112 ( .A(n148), .Y(n144) );
  CLKINVX1 U116 ( .A(n149), .Y(n145) );
  CLKINVX1 U120 ( .A(n150), .Y(n146) );
  CLKINVX1 U124 ( .A(n151), .Y(n147) );
  XOR2X1 U127 ( .A(a[6]), .B(a[7]), .Y(n132) );
  XNOR2X1 U128 ( .A(a[6]), .B(a[5]), .Y(n156) );
  XOR2X1 U130 ( .A(a[4]), .B(a[5]), .Y(n133) );
  XNOR2X1 U131 ( .A(a[4]), .B(a[3]), .Y(n157) );
  XOR2X1 U133 ( .A(a[2]), .B(a[3]), .Y(n134) );
  XNOR2X1 U134 ( .A(a[2]), .B(a[1]), .Y(n158) );
  XOR2X1 U136 ( .A(a[0]), .B(a[1]), .Y(n135) );
  CLKINVX1 U137 ( .A(a[0]), .Y(n159) );
  CLKINVX1 U140 ( .A(n198), .Y(n189) );
  CLKINVX1 U141 ( .A(n200), .Y(n190) );
  CLKINVX1 U142 ( .A(n199), .Y(n191) );
  CLKINVX1 U143 ( .A(n158), .Y(n142) );
  CLKINVX1 U144 ( .A(n142), .Y(n192) );
  CLKINVX1 U145 ( .A(n156), .Y(n140) );
  CLKINVX1 U146 ( .A(n140), .Y(n193) );
  CLKINVX1 U147 ( .A(n197), .Y(n194) );
  CLKINVX1 U148 ( .A(b[0]), .Y(n131) );
  CLKINVX1 U149 ( .A(n131), .Y(n195) );
  NAND2BXL U150 ( .AN(n195), .B(a[1]), .Y(n123) );
  NAND2BXL U151 ( .AN(n195), .B(a[3]), .Y(n114) );
  CLKINVX1 U152 ( .A(n157), .Y(n141) );
  CLKINVX1 U153 ( .A(n141), .Y(n196) );
  NOR2BXL U154 ( .AN(n195), .B(n159), .Y(product[0]) );
  XNOR2XL U155 ( .A(a[7]), .B(b[0]), .Y(n95) );
  XNOR2XL U156 ( .A(a[1]), .B(b[0]), .Y(n122) );
  NOR2BXL U157 ( .AN(n195), .B(n192), .Y(n79) );
  XNOR2XL U158 ( .A(a[3]), .B(b[0]), .Y(n113) );
  NOR2BXL U159 ( .AN(n195), .B(n196), .Y(n71) );
  NAND2BXL U160 ( .AN(n195), .B(a[7]), .Y(n96) );
  NAND2BXL U161 ( .AN(n195), .B(a[5]), .Y(n105) );
  XNOR2XL U162 ( .A(a[5]), .B(b[0]), .Y(n104) );
  NOR2BXL U163 ( .AN(n195), .B(n193), .Y(n63) );
  CLKBUFX3 U164 ( .A(n159), .Y(n143) );
  CLKBUFX3 U165 ( .A(a[1]), .Y(n151) );
  CLKBUFX3 U166 ( .A(a[3]), .Y(n150) );
  CLKBUFX3 U167 ( .A(a[5]), .Y(n149) );
  CLKBUFX3 U168 ( .A(a[7]), .Y(n148) );
  AND2X2 U169 ( .A(n132), .B(n156), .Y(n197) );
  CLKINVX1 U170 ( .A(n197), .Y(n152) );
  AND2X2 U171 ( .A(n133), .B(n157), .Y(n198) );
  CLKINVX1 U172 ( .A(n198), .Y(n153) );
  AND2X2 U173 ( .A(n134), .B(n158), .Y(n199) );
  CLKINVX1 U174 ( .A(n199), .Y(n154) );
  AND2X2 U175 ( .A(n135), .B(n159), .Y(n200) );
  CLKINVX1 U176 ( .A(n200), .Y(n155) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_53 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n131, n132, n133, n134, n135, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200;

  CLKINVX1 U1 ( .A(n1), .Y(product[15]) );
  ADDFXL U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n78), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  CLKINVX1 U16 ( .A(n15), .Y(n16) );
  ADDFXL U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n22), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CLKINVX1 U19 ( .A(n21), .Y(n22) );
  CMPR42X1 U20 ( .A(n29), .B(n59), .C(n65), .D(n72), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n30), .D(n34), .ICI(n31), .S(n28), .ICO(
        n26), .CO(n27) );
  CLKINVX1 U22 ( .A(n29), .Y(n30) );
  CMPR42X1 U23 ( .A(n67), .B(n80), .C(n39), .D(n35), .ICI(n36), .S(n33), .ICO(
        n31), .CO(n32) );
  XNOR2X1 U24 ( .A(n73), .B(n61), .Y(n35) );
  OR2X1 U25 ( .A(n73), .B(n61), .Y(n34) );
  CMPR42X1 U26 ( .A(n52), .B(n62), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n81), .B(n68), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n69), .D(n75), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n53), .CI(n47), .CO(n44), .S(n45) );
  ADDHXL U30 ( .A(n83), .B(n70), .CO(n46), .S(n47) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n85), .B(n54), .CO(n50), .S(n51) );
  OAI22XL U33 ( .A0(n152), .A1(n144), .B0(n193), .B1(n96), .Y(n52) );
  AO21X1 U34 ( .A0(n152), .A1(n156), .B0(n88), .Y(n56) );
  OAI22XL U35 ( .A0(n152), .A1(n89), .B0(n193), .B1(n88), .Y(n15) );
  OAI22XL U36 ( .A0(n152), .A1(n90), .B0(n193), .B1(n89), .Y(n57) );
  OAI22XL U37 ( .A0(n152), .A1(n91), .B0(n193), .B1(n90), .Y(n58) );
  OAI22XL U38 ( .A0(n152), .A1(n92), .B0(n193), .B1(n91), .Y(n59) );
  OAI22XL U39 ( .A0(n152), .A1(n93), .B0(n156), .B1(n92), .Y(n60) );
  OAI22XL U40 ( .A0(n152), .A1(n94), .B0(n156), .B1(n93), .Y(n61) );
  OAI22XL U41 ( .A0(n194), .A1(n95), .B0(n156), .B1(n94), .Y(n62) );
  XNOR2X1 U43 ( .A(n148), .B(b[7]), .Y(n88) );
  XNOR2X1 U44 ( .A(n148), .B(b[6]), .Y(n89) );
  XNOR2X1 U45 ( .A(n148), .B(b[5]), .Y(n90) );
  XNOR2X1 U46 ( .A(n148), .B(b[4]), .Y(n91) );
  XNOR2X1 U47 ( .A(n148), .B(b[3]), .Y(n92) );
  XNOR2X1 U48 ( .A(n148), .B(b[2]), .Y(n93) );
  XNOR2X1 U49 ( .A(n148), .B(b[1]), .Y(n94) );
  OAI22XL U52 ( .A0(n153), .A1(n145), .B0(n196), .B1(n105), .Y(n53) );
  AO21X1 U53 ( .A0(n153), .A1(n157), .B0(n97), .Y(n64) );
  OAI22XL U54 ( .A0(n153), .A1(n98), .B0(n196), .B1(n97), .Y(n21) );
  OAI22XL U55 ( .A0(n153), .A1(n99), .B0(n196), .B1(n98), .Y(n65) );
  OAI22XL U56 ( .A0(n153), .A1(n100), .B0(n196), .B1(n99), .Y(n66) );
  OAI22XL U57 ( .A0(n153), .A1(n101), .B0(n196), .B1(n100), .Y(n67) );
  OAI22XL U58 ( .A0(n153), .A1(n102), .B0(n157), .B1(n101), .Y(n68) );
  OAI22XL U59 ( .A0(n153), .A1(n103), .B0(n157), .B1(n102), .Y(n69) );
  OAI22XL U60 ( .A0(n189), .A1(n104), .B0(n157), .B1(n103), .Y(n70) );
  XNOR2X1 U62 ( .A(n149), .B(b[7]), .Y(n97) );
  XNOR2X1 U63 ( .A(n149), .B(b[6]), .Y(n98) );
  XNOR2X1 U64 ( .A(n149), .B(b[5]), .Y(n99) );
  XNOR2X1 U65 ( .A(n149), .B(b[4]), .Y(n100) );
  XNOR2X1 U66 ( .A(n149), .B(b[3]), .Y(n101) );
  XNOR2X1 U67 ( .A(n149), .B(b[2]), .Y(n102) );
  XNOR2X1 U68 ( .A(n149), .B(b[1]), .Y(n103) );
  OAI22XL U71 ( .A0(n154), .A1(n146), .B0(n192), .B1(n114), .Y(n54) );
  AO21X1 U72 ( .A0(n154), .A1(n158), .B0(n106), .Y(n72) );
  OAI22XL U73 ( .A0(n154), .A1(n107), .B0(n192), .B1(n106), .Y(n29) );
  OAI22XL U74 ( .A0(n154), .A1(n108), .B0(n192), .B1(n107), .Y(n73) );
  OAI22XL U75 ( .A0(n154), .A1(n109), .B0(n192), .B1(n108), .Y(n74) );
  OAI22XL U76 ( .A0(n154), .A1(n110), .B0(n192), .B1(n109), .Y(n75) );
  OAI22XL U77 ( .A0(n154), .A1(n111), .B0(n158), .B1(n110), .Y(n76) );
  OAI22XL U78 ( .A0(n154), .A1(n112), .B0(n158), .B1(n111), .Y(n77) );
  OAI22XL U79 ( .A0(n191), .A1(n113), .B0(n158), .B1(n112), .Y(n78) );
  XNOR2X1 U81 ( .A(n150), .B(b[7]), .Y(n106) );
  XNOR2X1 U82 ( .A(n150), .B(b[6]), .Y(n107) );
  XNOR2X1 U83 ( .A(n150), .B(b[5]), .Y(n108) );
  XNOR2X1 U84 ( .A(n150), .B(b[4]), .Y(n109) );
  XNOR2X1 U85 ( .A(n150), .B(b[3]), .Y(n110) );
  XNOR2X1 U86 ( .A(n150), .B(b[2]), .Y(n111) );
  XNOR2X1 U87 ( .A(n150), .B(b[1]), .Y(n112) );
  OAI22XL U90 ( .A0(n155), .A1(n147), .B0(n123), .B1(n143), .Y(n55) );
  AO21X1 U91 ( .A0(n155), .A1(n159), .B0(n115), .Y(n80) );
  OAI22XL U92 ( .A0(n155), .A1(n116), .B0(n115), .B1(n143), .Y(n81) );
  OAI22XL U93 ( .A0(n155), .A1(n117), .B0(n116), .B1(n143), .Y(n82) );
  OAI22XL U94 ( .A0(n155), .A1(n118), .B0(n117), .B1(n143), .Y(n83) );
  OAI22XL U95 ( .A0(n155), .A1(n119), .B0(n118), .B1(n143), .Y(n84) );
  OAI22XL U96 ( .A0(n155), .A1(n120), .B0(n119), .B1(n143), .Y(n85) );
  OAI22XL U97 ( .A0(n155), .A1(n121), .B0(n120), .B1(n143), .Y(n86) );
  OAI22XL U98 ( .A0(n190), .A1(n122), .B0(n121), .B1(n143), .Y(n87) );
  XNOR2X1 U100 ( .A(n151), .B(b[7]), .Y(n115) );
  XNOR2X1 U101 ( .A(n151), .B(b[6]), .Y(n116) );
  XNOR2X1 U102 ( .A(n151), .B(b[5]), .Y(n117) );
  XNOR2X1 U103 ( .A(n151), .B(b[4]), .Y(n118) );
  XNOR2X1 U104 ( .A(n151), .B(b[3]), .Y(n119) );
  XNOR2X1 U105 ( .A(n151), .B(b[2]), .Y(n120) );
  XNOR2X1 U106 ( .A(n151), .B(b[1]), .Y(n121) );
  CLKINVX1 U112 ( .A(n148), .Y(n144) );
  CLKINVX1 U116 ( .A(n149), .Y(n145) );
  CLKINVX1 U120 ( .A(n150), .Y(n146) );
  CLKINVX1 U124 ( .A(n151), .Y(n147) );
  XOR2X1 U127 ( .A(a[6]), .B(a[7]), .Y(n132) );
  XNOR2X1 U128 ( .A(a[6]), .B(a[5]), .Y(n156) );
  XOR2X1 U130 ( .A(a[4]), .B(a[5]), .Y(n133) );
  XNOR2X1 U131 ( .A(a[4]), .B(a[3]), .Y(n157) );
  XOR2X1 U133 ( .A(a[2]), .B(a[3]), .Y(n134) );
  XNOR2X1 U134 ( .A(a[2]), .B(a[1]), .Y(n158) );
  XOR2X1 U136 ( .A(a[0]), .B(a[1]), .Y(n135) );
  CLKINVX1 U137 ( .A(a[0]), .Y(n159) );
  CLKINVX1 U140 ( .A(n198), .Y(n189) );
  CLKINVX1 U141 ( .A(n200), .Y(n190) );
  CLKINVX1 U142 ( .A(n199), .Y(n191) );
  CLKINVX1 U143 ( .A(n158), .Y(n142) );
  CLKINVX1 U144 ( .A(n142), .Y(n192) );
  CLKINVX1 U145 ( .A(n156), .Y(n140) );
  CLKINVX1 U146 ( .A(n140), .Y(n193) );
  CLKINVX1 U147 ( .A(n197), .Y(n194) );
  CLKINVX1 U148 ( .A(b[0]), .Y(n131) );
  CLKINVX1 U149 ( .A(n131), .Y(n195) );
  NAND2BXL U150 ( .AN(n195), .B(a[1]), .Y(n123) );
  NAND2BXL U151 ( .AN(n195), .B(a[3]), .Y(n114) );
  CLKINVX1 U152 ( .A(n157), .Y(n141) );
  CLKINVX1 U153 ( .A(n141), .Y(n196) );
  NOR2BXL U154 ( .AN(n195), .B(n159), .Y(product[0]) );
  XNOR2XL U155 ( .A(a[7]), .B(b[0]), .Y(n95) );
  XNOR2XL U156 ( .A(a[1]), .B(b[0]), .Y(n122) );
  NOR2BXL U157 ( .AN(n195), .B(n192), .Y(n79) );
  XNOR2XL U158 ( .A(a[3]), .B(b[0]), .Y(n113) );
  NOR2BXL U159 ( .AN(n195), .B(n196), .Y(n71) );
  NAND2BXL U160 ( .AN(n195), .B(a[7]), .Y(n96) );
  NAND2BXL U161 ( .AN(n195), .B(a[5]), .Y(n105) );
  XNOR2XL U162 ( .A(a[5]), .B(b[0]), .Y(n104) );
  NOR2BXL U163 ( .AN(n195), .B(n193), .Y(n63) );
  CLKBUFX3 U164 ( .A(n159), .Y(n143) );
  CLKBUFX3 U165 ( .A(a[1]), .Y(n151) );
  CLKBUFX3 U166 ( .A(a[3]), .Y(n150) );
  CLKBUFX3 U167 ( .A(a[5]), .Y(n149) );
  CLKBUFX3 U168 ( .A(a[7]), .Y(n148) );
  AND2X2 U169 ( .A(n132), .B(n156), .Y(n197) );
  CLKINVX1 U170 ( .A(n197), .Y(n152) );
  AND2X2 U171 ( .A(n133), .B(n157), .Y(n198) );
  CLKINVX1 U172 ( .A(n198), .Y(n153) );
  AND2X2 U173 ( .A(n134), .B(n158), .Y(n199) );
  CLKINVX1 U174 ( .A(n199), .Y(n154) );
  AND2X2 U175 ( .A(n135), .B(n159), .Y(n200) );
  CLKINVX1 U176 ( .A(n200), .Y(n155) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_54 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n131, n132, n133, n134, n135, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200;

  CLKINVX1 U1 ( .A(n1), .Y(product[15]) );
  ADDFXL U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n78), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  CLKINVX1 U16 ( .A(n15), .Y(n16) );
  ADDFXL U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n22), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CLKINVX1 U19 ( .A(n21), .Y(n22) );
  CMPR42X1 U20 ( .A(n29), .B(n59), .C(n65), .D(n72), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n30), .D(n34), .ICI(n31), .S(n28), .ICO(
        n26), .CO(n27) );
  CLKINVX1 U22 ( .A(n29), .Y(n30) );
  CMPR42X1 U23 ( .A(n67), .B(n80), .C(n39), .D(n35), .ICI(n36), .S(n33), .ICO(
        n31), .CO(n32) );
  XNOR2X1 U24 ( .A(n73), .B(n61), .Y(n35) );
  OR2X1 U25 ( .A(n73), .B(n61), .Y(n34) );
  CMPR42X1 U26 ( .A(n52), .B(n62), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n81), .B(n68), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n69), .D(n75), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n53), .CI(n47), .CO(n44), .S(n45) );
  ADDHXL U30 ( .A(n83), .B(n70), .CO(n46), .S(n47) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n85), .B(n54), .CO(n50), .S(n51) );
  OAI22XL U33 ( .A0(n152), .A1(n144), .B0(n196), .B1(n96), .Y(n52) );
  AO21X1 U34 ( .A0(n152), .A1(n156), .B0(n88), .Y(n56) );
  OAI22XL U35 ( .A0(n152), .A1(n89), .B0(n196), .B1(n88), .Y(n15) );
  OAI22XL U36 ( .A0(n152), .A1(n90), .B0(n196), .B1(n89), .Y(n57) );
  OAI22XL U37 ( .A0(n152), .A1(n91), .B0(n196), .B1(n90), .Y(n58) );
  OAI22XL U38 ( .A0(n152), .A1(n92), .B0(n196), .B1(n91), .Y(n59) );
  OAI22XL U39 ( .A0(n152), .A1(n93), .B0(n156), .B1(n92), .Y(n60) );
  OAI22XL U40 ( .A0(n152), .A1(n94), .B0(n156), .B1(n93), .Y(n61) );
  OAI22XL U41 ( .A0(n194), .A1(n95), .B0(n156), .B1(n94), .Y(n62) );
  XNOR2X1 U43 ( .A(n148), .B(b[7]), .Y(n88) );
  XNOR2X1 U44 ( .A(n148), .B(b[6]), .Y(n89) );
  XNOR2X1 U45 ( .A(n148), .B(b[5]), .Y(n90) );
  XNOR2X1 U46 ( .A(n148), .B(b[4]), .Y(n91) );
  XNOR2X1 U47 ( .A(n148), .B(b[3]), .Y(n92) );
  XNOR2X1 U48 ( .A(n148), .B(b[2]), .Y(n93) );
  XNOR2X1 U49 ( .A(n148), .B(b[1]), .Y(n94) );
  OAI22XL U52 ( .A0(n153), .A1(n145), .B0(n193), .B1(n105), .Y(n53) );
  AO21X1 U53 ( .A0(n153), .A1(n157), .B0(n97), .Y(n64) );
  OAI22XL U54 ( .A0(n153), .A1(n98), .B0(n193), .B1(n97), .Y(n21) );
  OAI22XL U55 ( .A0(n153), .A1(n99), .B0(n193), .B1(n98), .Y(n65) );
  OAI22XL U56 ( .A0(n153), .A1(n100), .B0(n193), .B1(n99), .Y(n66) );
  OAI22XL U57 ( .A0(n153), .A1(n101), .B0(n193), .B1(n100), .Y(n67) );
  OAI22XL U58 ( .A0(n153), .A1(n102), .B0(n157), .B1(n101), .Y(n68) );
  OAI22XL U59 ( .A0(n153), .A1(n103), .B0(n157), .B1(n102), .Y(n69) );
  OAI22XL U60 ( .A0(n191), .A1(n104), .B0(n157), .B1(n103), .Y(n70) );
  XNOR2X1 U62 ( .A(n149), .B(b[7]), .Y(n97) );
  XNOR2X1 U63 ( .A(n149), .B(b[6]), .Y(n98) );
  XNOR2X1 U64 ( .A(n149), .B(b[5]), .Y(n99) );
  XNOR2X1 U65 ( .A(n149), .B(b[4]), .Y(n100) );
  XNOR2X1 U66 ( .A(n149), .B(b[3]), .Y(n101) );
  XNOR2X1 U67 ( .A(n149), .B(b[2]), .Y(n102) );
  XNOR2X1 U68 ( .A(n149), .B(b[1]), .Y(n103) );
  OAI22XL U71 ( .A0(n154), .A1(n146), .B0(n192), .B1(n114), .Y(n54) );
  AO21X1 U72 ( .A0(n154), .A1(n158), .B0(n106), .Y(n72) );
  OAI22XL U73 ( .A0(n154), .A1(n107), .B0(n192), .B1(n106), .Y(n29) );
  OAI22XL U74 ( .A0(n154), .A1(n108), .B0(n192), .B1(n107), .Y(n73) );
  OAI22XL U75 ( .A0(n154), .A1(n109), .B0(n192), .B1(n108), .Y(n74) );
  OAI22XL U76 ( .A0(n154), .A1(n110), .B0(n192), .B1(n109), .Y(n75) );
  OAI22XL U77 ( .A0(n154), .A1(n111), .B0(n158), .B1(n110), .Y(n76) );
  OAI22XL U78 ( .A0(n154), .A1(n112), .B0(n158), .B1(n111), .Y(n77) );
  OAI22XL U79 ( .A0(n190), .A1(n113), .B0(n158), .B1(n112), .Y(n78) );
  XNOR2X1 U81 ( .A(n150), .B(b[7]), .Y(n106) );
  XNOR2X1 U82 ( .A(n150), .B(b[6]), .Y(n107) );
  XNOR2X1 U83 ( .A(n150), .B(b[5]), .Y(n108) );
  XNOR2X1 U84 ( .A(n150), .B(b[4]), .Y(n109) );
  XNOR2X1 U85 ( .A(n150), .B(b[3]), .Y(n110) );
  XNOR2X1 U86 ( .A(n150), .B(b[2]), .Y(n111) );
  XNOR2X1 U87 ( .A(n150), .B(b[1]), .Y(n112) );
  OAI22XL U90 ( .A0(n155), .A1(n147), .B0(n123), .B1(n143), .Y(n55) );
  AO21X1 U91 ( .A0(n155), .A1(n159), .B0(n115), .Y(n80) );
  OAI22XL U92 ( .A0(n155), .A1(n116), .B0(n115), .B1(n143), .Y(n81) );
  OAI22XL U93 ( .A0(n155), .A1(n117), .B0(n116), .B1(n143), .Y(n82) );
  OAI22XL U94 ( .A0(n155), .A1(n118), .B0(n117), .B1(n143), .Y(n83) );
  OAI22XL U95 ( .A0(n155), .A1(n119), .B0(n118), .B1(n143), .Y(n84) );
  OAI22XL U96 ( .A0(n155), .A1(n120), .B0(n119), .B1(n143), .Y(n85) );
  OAI22XL U97 ( .A0(n155), .A1(n121), .B0(n120), .B1(n143), .Y(n86) );
  OAI22XL U98 ( .A0(n189), .A1(n122), .B0(n121), .B1(n143), .Y(n87) );
  XNOR2X1 U100 ( .A(n151), .B(b[7]), .Y(n115) );
  XNOR2X1 U101 ( .A(n151), .B(b[6]), .Y(n116) );
  XNOR2X1 U102 ( .A(n151), .B(b[5]), .Y(n117) );
  XNOR2X1 U103 ( .A(n151), .B(b[4]), .Y(n118) );
  XNOR2X1 U104 ( .A(n151), .B(b[3]), .Y(n119) );
  XNOR2X1 U105 ( .A(n151), .B(b[2]), .Y(n120) );
  XNOR2X1 U106 ( .A(n151), .B(b[1]), .Y(n121) );
  CLKINVX1 U112 ( .A(n148), .Y(n144) );
  CLKINVX1 U116 ( .A(n149), .Y(n145) );
  CLKINVX1 U120 ( .A(n150), .Y(n146) );
  CLKINVX1 U124 ( .A(n151), .Y(n147) );
  XOR2X1 U127 ( .A(a[6]), .B(a[7]), .Y(n132) );
  XNOR2X1 U128 ( .A(a[6]), .B(a[5]), .Y(n156) );
  XOR2X1 U130 ( .A(a[4]), .B(a[5]), .Y(n133) );
  XNOR2X1 U131 ( .A(a[4]), .B(a[3]), .Y(n157) );
  XOR2X1 U133 ( .A(a[2]), .B(a[3]), .Y(n134) );
  XNOR2X1 U134 ( .A(a[2]), .B(a[1]), .Y(n158) );
  XOR2X1 U136 ( .A(a[0]), .B(a[1]), .Y(n135) );
  CLKINVX1 U137 ( .A(a[0]), .Y(n159) );
  CLKINVX1 U140 ( .A(n200), .Y(n189) );
  CLKINVX1 U141 ( .A(n199), .Y(n190) );
  CLKINVX1 U142 ( .A(n198), .Y(n191) );
  CLKINVX1 U143 ( .A(n158), .Y(n142) );
  CLKINVX1 U144 ( .A(n142), .Y(n192) );
  CLKINVX1 U145 ( .A(n157), .Y(n141) );
  CLKINVX1 U146 ( .A(n141), .Y(n193) );
  CLKINVX1 U147 ( .A(n197), .Y(n194) );
  CLKINVX1 U148 ( .A(b[0]), .Y(n131) );
  CLKINVX1 U149 ( .A(n131), .Y(n195) );
  NAND2BXL U150 ( .AN(n195), .B(a[1]), .Y(n123) );
  NAND2BXL U151 ( .AN(n195), .B(a[3]), .Y(n114) );
  CLKINVX1 U152 ( .A(n156), .Y(n140) );
  CLKINVX1 U153 ( .A(n140), .Y(n196) );
  NOR2BXL U154 ( .AN(n195), .B(n159), .Y(product[0]) );
  XNOR2XL U155 ( .A(a[7]), .B(b[0]), .Y(n95) );
  XNOR2XL U156 ( .A(a[1]), .B(b[0]), .Y(n122) );
  NOR2BXL U157 ( .AN(n195), .B(n192), .Y(n79) );
  XNOR2XL U158 ( .A(a[3]), .B(b[0]), .Y(n113) );
  NOR2BXL U159 ( .AN(n195), .B(n193), .Y(n71) );
  NAND2BXL U160 ( .AN(n195), .B(a[7]), .Y(n96) );
  NAND2BXL U161 ( .AN(n195), .B(a[5]), .Y(n105) );
  XNOR2XL U162 ( .A(a[5]), .B(b[0]), .Y(n104) );
  NOR2BXL U163 ( .AN(n195), .B(n196), .Y(n63) );
  CLKBUFX3 U164 ( .A(n159), .Y(n143) );
  CLKBUFX3 U165 ( .A(a[1]), .Y(n151) );
  CLKBUFX3 U166 ( .A(a[3]), .Y(n150) );
  CLKBUFX3 U167 ( .A(a[5]), .Y(n149) );
  CLKBUFX3 U168 ( .A(a[7]), .Y(n148) );
  AND2X2 U169 ( .A(n132), .B(n156), .Y(n197) );
  CLKINVX1 U170 ( .A(n197), .Y(n152) );
  AND2X2 U171 ( .A(n133), .B(n157), .Y(n198) );
  CLKINVX1 U172 ( .A(n198), .Y(n153) );
  AND2X2 U173 ( .A(n134), .B(n158), .Y(n199) );
  CLKINVX1 U174 ( .A(n199), .Y(n154) );
  AND2X2 U175 ( .A(n135), .B(n159), .Y(n200) );
  CLKINVX1 U176 ( .A(n200), .Y(n155) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_55 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n131, n132, n133, n134, n135, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200;

  CLKINVX1 U1 ( .A(n1), .Y(product[15]) );
  ADDFXL U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n78), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  CLKINVX1 U16 ( .A(n15), .Y(n16) );
  ADDFXL U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n22), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CLKINVX1 U19 ( .A(n21), .Y(n22) );
  CMPR42X1 U20 ( .A(n29), .B(n59), .C(n65), .D(n72), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n30), .D(n34), .ICI(n31), .S(n28), .ICO(
        n26), .CO(n27) );
  CLKINVX1 U22 ( .A(n29), .Y(n30) );
  CMPR42X1 U23 ( .A(n67), .B(n80), .C(n39), .D(n35), .ICI(n36), .S(n33), .ICO(
        n31), .CO(n32) );
  XNOR2X1 U24 ( .A(n73), .B(n61), .Y(n35) );
  OR2X1 U25 ( .A(n73), .B(n61), .Y(n34) );
  CMPR42X1 U26 ( .A(n52), .B(n62), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n81), .B(n68), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n69), .D(n75), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n53), .CI(n47), .CO(n44), .S(n45) );
  ADDHXL U30 ( .A(n83), .B(n70), .CO(n46), .S(n47) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n85), .B(n54), .CO(n50), .S(n51) );
  OAI22XL U33 ( .A0(n152), .A1(n144), .B0(n196), .B1(n96), .Y(n52) );
  AO21X1 U34 ( .A0(n152), .A1(n156), .B0(n88), .Y(n56) );
  OAI22XL U35 ( .A0(n152), .A1(n89), .B0(n196), .B1(n88), .Y(n15) );
  OAI22XL U36 ( .A0(n152), .A1(n90), .B0(n196), .B1(n89), .Y(n57) );
  OAI22XL U37 ( .A0(n152), .A1(n91), .B0(n196), .B1(n90), .Y(n58) );
  OAI22XL U38 ( .A0(n152), .A1(n92), .B0(n196), .B1(n91), .Y(n59) );
  OAI22XL U39 ( .A0(n152), .A1(n93), .B0(n156), .B1(n92), .Y(n60) );
  OAI22XL U40 ( .A0(n152), .A1(n94), .B0(n156), .B1(n93), .Y(n61) );
  OAI22XL U41 ( .A0(n194), .A1(n95), .B0(n156), .B1(n94), .Y(n62) );
  XNOR2X1 U43 ( .A(n148), .B(b[7]), .Y(n88) );
  XNOR2X1 U44 ( .A(n148), .B(b[6]), .Y(n89) );
  XNOR2X1 U45 ( .A(n148), .B(b[5]), .Y(n90) );
  XNOR2X1 U46 ( .A(n148), .B(b[4]), .Y(n91) );
  XNOR2X1 U47 ( .A(n148), .B(b[3]), .Y(n92) );
  XNOR2X1 U48 ( .A(n148), .B(b[2]), .Y(n93) );
  XNOR2X1 U49 ( .A(n148), .B(b[1]), .Y(n94) );
  OAI22XL U52 ( .A0(n153), .A1(n145), .B0(n193), .B1(n105), .Y(n53) );
  AO21X1 U53 ( .A0(n153), .A1(n157), .B0(n97), .Y(n64) );
  OAI22XL U54 ( .A0(n153), .A1(n98), .B0(n193), .B1(n97), .Y(n21) );
  OAI22XL U55 ( .A0(n153), .A1(n99), .B0(n193), .B1(n98), .Y(n65) );
  OAI22XL U56 ( .A0(n153), .A1(n100), .B0(n193), .B1(n99), .Y(n66) );
  OAI22XL U57 ( .A0(n153), .A1(n101), .B0(n193), .B1(n100), .Y(n67) );
  OAI22XL U58 ( .A0(n153), .A1(n102), .B0(n157), .B1(n101), .Y(n68) );
  OAI22XL U59 ( .A0(n153), .A1(n103), .B0(n157), .B1(n102), .Y(n69) );
  OAI22XL U60 ( .A0(n191), .A1(n104), .B0(n157), .B1(n103), .Y(n70) );
  XNOR2X1 U62 ( .A(n149), .B(b[7]), .Y(n97) );
  XNOR2X1 U63 ( .A(n149), .B(b[6]), .Y(n98) );
  XNOR2X1 U64 ( .A(n149), .B(b[5]), .Y(n99) );
  XNOR2X1 U65 ( .A(n149), .B(b[4]), .Y(n100) );
  XNOR2X1 U66 ( .A(n149), .B(b[3]), .Y(n101) );
  XNOR2X1 U67 ( .A(n149), .B(b[2]), .Y(n102) );
  XNOR2X1 U68 ( .A(n149), .B(b[1]), .Y(n103) );
  OAI22XL U71 ( .A0(n154), .A1(n146), .B0(n192), .B1(n114), .Y(n54) );
  AO21X1 U72 ( .A0(n154), .A1(n158), .B0(n106), .Y(n72) );
  OAI22XL U73 ( .A0(n154), .A1(n107), .B0(n192), .B1(n106), .Y(n29) );
  OAI22XL U74 ( .A0(n154), .A1(n108), .B0(n192), .B1(n107), .Y(n73) );
  OAI22XL U75 ( .A0(n154), .A1(n109), .B0(n192), .B1(n108), .Y(n74) );
  OAI22XL U76 ( .A0(n154), .A1(n110), .B0(n192), .B1(n109), .Y(n75) );
  OAI22XL U77 ( .A0(n154), .A1(n111), .B0(n158), .B1(n110), .Y(n76) );
  OAI22XL U78 ( .A0(n154), .A1(n112), .B0(n158), .B1(n111), .Y(n77) );
  OAI22XL U79 ( .A0(n190), .A1(n113), .B0(n158), .B1(n112), .Y(n78) );
  XNOR2X1 U81 ( .A(n150), .B(b[7]), .Y(n106) );
  XNOR2X1 U82 ( .A(n150), .B(b[6]), .Y(n107) );
  XNOR2X1 U83 ( .A(n150), .B(b[5]), .Y(n108) );
  XNOR2X1 U84 ( .A(n150), .B(b[4]), .Y(n109) );
  XNOR2X1 U85 ( .A(n150), .B(b[3]), .Y(n110) );
  XNOR2X1 U86 ( .A(n150), .B(b[2]), .Y(n111) );
  XNOR2X1 U87 ( .A(n150), .B(b[1]), .Y(n112) );
  OAI22XL U90 ( .A0(n155), .A1(n147), .B0(n123), .B1(n143), .Y(n55) );
  AO21X1 U91 ( .A0(n155), .A1(n159), .B0(n115), .Y(n80) );
  OAI22XL U92 ( .A0(n155), .A1(n116), .B0(n115), .B1(n143), .Y(n81) );
  OAI22XL U93 ( .A0(n155), .A1(n117), .B0(n116), .B1(n143), .Y(n82) );
  OAI22XL U94 ( .A0(n155), .A1(n118), .B0(n117), .B1(n143), .Y(n83) );
  OAI22XL U95 ( .A0(n155), .A1(n119), .B0(n118), .B1(n143), .Y(n84) );
  OAI22XL U96 ( .A0(n155), .A1(n120), .B0(n119), .B1(n143), .Y(n85) );
  OAI22XL U97 ( .A0(n155), .A1(n121), .B0(n120), .B1(n143), .Y(n86) );
  OAI22XL U98 ( .A0(n189), .A1(n122), .B0(n121), .B1(n143), .Y(n87) );
  XNOR2X1 U100 ( .A(n151), .B(b[7]), .Y(n115) );
  XNOR2X1 U101 ( .A(n151), .B(b[6]), .Y(n116) );
  XNOR2X1 U102 ( .A(n151), .B(b[5]), .Y(n117) );
  XNOR2X1 U103 ( .A(n151), .B(b[4]), .Y(n118) );
  XNOR2X1 U104 ( .A(n151), .B(b[3]), .Y(n119) );
  XNOR2X1 U105 ( .A(n151), .B(b[2]), .Y(n120) );
  XNOR2X1 U106 ( .A(n151), .B(b[1]), .Y(n121) );
  CLKINVX1 U112 ( .A(n148), .Y(n144) );
  CLKINVX1 U116 ( .A(n149), .Y(n145) );
  CLKINVX1 U120 ( .A(n150), .Y(n146) );
  CLKINVX1 U124 ( .A(n151), .Y(n147) );
  XOR2X1 U127 ( .A(a[6]), .B(a[7]), .Y(n132) );
  XNOR2X1 U128 ( .A(a[6]), .B(a[5]), .Y(n156) );
  XOR2X1 U130 ( .A(a[4]), .B(a[5]), .Y(n133) );
  XNOR2X1 U131 ( .A(a[4]), .B(a[3]), .Y(n157) );
  XOR2X1 U133 ( .A(a[2]), .B(a[3]), .Y(n134) );
  XNOR2X1 U134 ( .A(a[2]), .B(a[1]), .Y(n158) );
  XOR2X1 U136 ( .A(a[0]), .B(a[1]), .Y(n135) );
  CLKINVX1 U137 ( .A(a[0]), .Y(n159) );
  CLKINVX1 U140 ( .A(n200), .Y(n189) );
  CLKINVX1 U141 ( .A(n199), .Y(n190) );
  CLKINVX1 U142 ( .A(n198), .Y(n191) );
  CLKINVX1 U143 ( .A(n158), .Y(n142) );
  CLKINVX1 U144 ( .A(n142), .Y(n192) );
  CLKINVX1 U145 ( .A(n157), .Y(n141) );
  CLKINVX1 U146 ( .A(n141), .Y(n193) );
  CLKINVX1 U147 ( .A(n197), .Y(n194) );
  CLKINVX1 U148 ( .A(b[0]), .Y(n131) );
  CLKINVX1 U149 ( .A(n131), .Y(n195) );
  NAND2BXL U150 ( .AN(n195), .B(a[1]), .Y(n123) );
  NAND2BXL U151 ( .AN(n195), .B(a[3]), .Y(n114) );
  CLKINVX1 U152 ( .A(n156), .Y(n140) );
  CLKINVX1 U153 ( .A(n140), .Y(n196) );
  NOR2BXL U154 ( .AN(n195), .B(n159), .Y(product[0]) );
  XNOR2XL U155 ( .A(a[7]), .B(b[0]), .Y(n95) );
  XNOR2XL U156 ( .A(a[1]), .B(b[0]), .Y(n122) );
  NOR2BXL U157 ( .AN(n195), .B(n192), .Y(n79) );
  XNOR2XL U158 ( .A(a[3]), .B(b[0]), .Y(n113) );
  NOR2BXL U159 ( .AN(n195), .B(n193), .Y(n71) );
  NAND2BXL U160 ( .AN(n195), .B(a[7]), .Y(n96) );
  NAND2BXL U161 ( .AN(n195), .B(a[5]), .Y(n105) );
  XNOR2XL U162 ( .A(a[5]), .B(b[0]), .Y(n104) );
  NOR2BXL U163 ( .AN(n195), .B(n196), .Y(n63) );
  CLKBUFX3 U164 ( .A(n159), .Y(n143) );
  CLKBUFX3 U165 ( .A(a[1]), .Y(n151) );
  CLKBUFX3 U166 ( .A(a[3]), .Y(n150) );
  CLKBUFX3 U167 ( .A(a[5]), .Y(n149) );
  CLKBUFX3 U168 ( .A(a[7]), .Y(n148) );
  AND2X2 U169 ( .A(n132), .B(n156), .Y(n197) );
  CLKINVX1 U170 ( .A(n197), .Y(n152) );
  AND2X2 U171 ( .A(n133), .B(n157), .Y(n198) );
  CLKINVX1 U172 ( .A(n198), .Y(n153) );
  AND2X2 U173 ( .A(n134), .B(n158), .Y(n199) );
  CLKINVX1 U174 ( .A(n199), .Y(n154) );
  AND2X2 U175 ( .A(n135), .B(n159), .Y(n200) );
  CLKINVX1 U176 ( .A(n200), .Y(n155) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_56 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n131, n132, n133, n134, n135, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200;

  CLKINVX1 U1 ( .A(n1), .Y(product[15]) );
  ADDFXL U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n78), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  CLKINVX1 U16 ( .A(n15), .Y(n16) );
  ADDFXL U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n22), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CLKINVX1 U19 ( .A(n21), .Y(n22) );
  CMPR42X1 U20 ( .A(n29), .B(n59), .C(n65), .D(n72), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n30), .D(n34), .ICI(n31), .S(n28), .ICO(
        n26), .CO(n27) );
  CLKINVX1 U22 ( .A(n29), .Y(n30) );
  CMPR42X1 U23 ( .A(n67), .B(n80), .C(n39), .D(n35), .ICI(n36), .S(n33), .ICO(
        n31), .CO(n32) );
  XNOR2X1 U24 ( .A(n73), .B(n61), .Y(n35) );
  OR2X1 U25 ( .A(n73), .B(n61), .Y(n34) );
  CMPR42X1 U26 ( .A(n52), .B(n62), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n81), .B(n68), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n69), .D(n75), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n53), .CI(n47), .CO(n44), .S(n45) );
  ADDHXL U30 ( .A(n83), .B(n70), .CO(n46), .S(n47) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n85), .B(n54), .CO(n50), .S(n51) );
  OAI22XL U33 ( .A0(n152), .A1(n144), .B0(n193), .B1(n96), .Y(n52) );
  AO21X1 U34 ( .A0(n152), .A1(n156), .B0(n88), .Y(n56) );
  OAI22XL U35 ( .A0(n152), .A1(n89), .B0(n193), .B1(n88), .Y(n15) );
  OAI22XL U36 ( .A0(n152), .A1(n90), .B0(n193), .B1(n89), .Y(n57) );
  OAI22XL U37 ( .A0(n152), .A1(n91), .B0(n193), .B1(n90), .Y(n58) );
  OAI22XL U38 ( .A0(n152), .A1(n92), .B0(n193), .B1(n91), .Y(n59) );
  OAI22XL U39 ( .A0(n152), .A1(n93), .B0(n156), .B1(n92), .Y(n60) );
  OAI22XL U40 ( .A0(n152), .A1(n94), .B0(n156), .B1(n93), .Y(n61) );
  OAI22XL U41 ( .A0(n194), .A1(n95), .B0(n156), .B1(n94), .Y(n62) );
  XNOR2X1 U43 ( .A(n148), .B(b[7]), .Y(n88) );
  XNOR2X1 U44 ( .A(n148), .B(b[6]), .Y(n89) );
  XNOR2X1 U45 ( .A(n148), .B(b[5]), .Y(n90) );
  XNOR2X1 U46 ( .A(n148), .B(b[4]), .Y(n91) );
  XNOR2X1 U47 ( .A(n148), .B(b[3]), .Y(n92) );
  XNOR2X1 U48 ( .A(n148), .B(b[2]), .Y(n93) );
  XNOR2X1 U49 ( .A(n148), .B(b[1]), .Y(n94) );
  OAI22XL U52 ( .A0(n153), .A1(n145), .B0(n196), .B1(n105), .Y(n53) );
  AO21X1 U53 ( .A0(n153), .A1(n157), .B0(n97), .Y(n64) );
  OAI22XL U54 ( .A0(n153), .A1(n98), .B0(n196), .B1(n97), .Y(n21) );
  OAI22XL U55 ( .A0(n153), .A1(n99), .B0(n196), .B1(n98), .Y(n65) );
  OAI22XL U56 ( .A0(n153), .A1(n100), .B0(n196), .B1(n99), .Y(n66) );
  OAI22XL U57 ( .A0(n153), .A1(n101), .B0(n196), .B1(n100), .Y(n67) );
  OAI22XL U58 ( .A0(n153), .A1(n102), .B0(n157), .B1(n101), .Y(n68) );
  OAI22XL U59 ( .A0(n153), .A1(n103), .B0(n157), .B1(n102), .Y(n69) );
  OAI22XL U60 ( .A0(n189), .A1(n104), .B0(n157), .B1(n103), .Y(n70) );
  XNOR2X1 U62 ( .A(n149), .B(b[7]), .Y(n97) );
  XNOR2X1 U63 ( .A(n149), .B(b[6]), .Y(n98) );
  XNOR2X1 U64 ( .A(n149), .B(b[5]), .Y(n99) );
  XNOR2X1 U65 ( .A(n149), .B(b[4]), .Y(n100) );
  XNOR2X1 U66 ( .A(n149), .B(b[3]), .Y(n101) );
  XNOR2X1 U67 ( .A(n149), .B(b[2]), .Y(n102) );
  XNOR2X1 U68 ( .A(n149), .B(b[1]), .Y(n103) );
  OAI22XL U71 ( .A0(n154), .A1(n146), .B0(n192), .B1(n114), .Y(n54) );
  AO21X1 U72 ( .A0(n154), .A1(n158), .B0(n106), .Y(n72) );
  OAI22XL U73 ( .A0(n154), .A1(n107), .B0(n192), .B1(n106), .Y(n29) );
  OAI22XL U74 ( .A0(n154), .A1(n108), .B0(n192), .B1(n107), .Y(n73) );
  OAI22XL U75 ( .A0(n154), .A1(n109), .B0(n192), .B1(n108), .Y(n74) );
  OAI22XL U76 ( .A0(n154), .A1(n110), .B0(n192), .B1(n109), .Y(n75) );
  OAI22XL U77 ( .A0(n154), .A1(n111), .B0(n158), .B1(n110), .Y(n76) );
  OAI22XL U78 ( .A0(n154), .A1(n112), .B0(n158), .B1(n111), .Y(n77) );
  OAI22XL U79 ( .A0(n191), .A1(n113), .B0(n158), .B1(n112), .Y(n78) );
  XNOR2X1 U81 ( .A(n150), .B(b[7]), .Y(n106) );
  XNOR2X1 U82 ( .A(n150), .B(b[6]), .Y(n107) );
  XNOR2X1 U83 ( .A(n150), .B(b[5]), .Y(n108) );
  XNOR2X1 U84 ( .A(n150), .B(b[4]), .Y(n109) );
  XNOR2X1 U85 ( .A(n150), .B(b[3]), .Y(n110) );
  XNOR2X1 U86 ( .A(n150), .B(b[2]), .Y(n111) );
  XNOR2X1 U87 ( .A(n150), .B(b[1]), .Y(n112) );
  OAI22XL U90 ( .A0(n155), .A1(n147), .B0(n123), .B1(n143), .Y(n55) );
  AO21X1 U91 ( .A0(n155), .A1(n159), .B0(n115), .Y(n80) );
  OAI22XL U92 ( .A0(n155), .A1(n116), .B0(n115), .B1(n143), .Y(n81) );
  OAI22XL U93 ( .A0(n155), .A1(n117), .B0(n116), .B1(n143), .Y(n82) );
  OAI22XL U94 ( .A0(n155), .A1(n118), .B0(n117), .B1(n143), .Y(n83) );
  OAI22XL U95 ( .A0(n155), .A1(n119), .B0(n118), .B1(n143), .Y(n84) );
  OAI22XL U96 ( .A0(n155), .A1(n120), .B0(n119), .B1(n143), .Y(n85) );
  OAI22XL U97 ( .A0(n155), .A1(n121), .B0(n120), .B1(n143), .Y(n86) );
  OAI22XL U98 ( .A0(n190), .A1(n122), .B0(n121), .B1(n143), .Y(n87) );
  XNOR2X1 U100 ( .A(n151), .B(b[7]), .Y(n115) );
  XNOR2X1 U101 ( .A(n151), .B(b[6]), .Y(n116) );
  XNOR2X1 U102 ( .A(n151), .B(b[5]), .Y(n117) );
  XNOR2X1 U103 ( .A(n151), .B(b[4]), .Y(n118) );
  XNOR2X1 U104 ( .A(n151), .B(b[3]), .Y(n119) );
  XNOR2X1 U105 ( .A(n151), .B(b[2]), .Y(n120) );
  XNOR2X1 U106 ( .A(n151), .B(b[1]), .Y(n121) );
  CLKINVX1 U112 ( .A(n148), .Y(n144) );
  CLKINVX1 U116 ( .A(n149), .Y(n145) );
  CLKINVX1 U120 ( .A(n150), .Y(n146) );
  CLKINVX1 U124 ( .A(n151), .Y(n147) );
  XOR2X1 U127 ( .A(a[6]), .B(a[7]), .Y(n132) );
  XNOR2X1 U128 ( .A(a[6]), .B(a[5]), .Y(n156) );
  XOR2X1 U130 ( .A(a[4]), .B(a[5]), .Y(n133) );
  XNOR2X1 U131 ( .A(a[4]), .B(a[3]), .Y(n157) );
  XOR2X1 U133 ( .A(a[2]), .B(a[3]), .Y(n134) );
  XNOR2X1 U134 ( .A(a[2]), .B(a[1]), .Y(n158) );
  XOR2X1 U136 ( .A(a[0]), .B(a[1]), .Y(n135) );
  CLKINVX1 U137 ( .A(a[0]), .Y(n159) );
  CLKINVX1 U140 ( .A(n198), .Y(n189) );
  CLKINVX1 U141 ( .A(n200), .Y(n190) );
  CLKINVX1 U142 ( .A(n199), .Y(n191) );
  CLKINVX1 U143 ( .A(n158), .Y(n142) );
  CLKINVX1 U144 ( .A(n142), .Y(n192) );
  CLKINVX1 U145 ( .A(n156), .Y(n140) );
  CLKINVX1 U146 ( .A(n140), .Y(n193) );
  CLKINVX1 U147 ( .A(n197), .Y(n194) );
  CLKINVX1 U148 ( .A(b[0]), .Y(n131) );
  CLKINVX1 U149 ( .A(n131), .Y(n195) );
  NAND2BXL U150 ( .AN(n195), .B(a[1]), .Y(n123) );
  NAND2BXL U151 ( .AN(n195), .B(a[3]), .Y(n114) );
  CLKINVX1 U152 ( .A(n157), .Y(n141) );
  CLKINVX1 U153 ( .A(n141), .Y(n196) );
  NOR2BXL U154 ( .AN(n195), .B(n159), .Y(product[0]) );
  XNOR2XL U155 ( .A(a[7]), .B(b[0]), .Y(n95) );
  XNOR2XL U156 ( .A(a[1]), .B(b[0]), .Y(n122) );
  NOR2BXL U157 ( .AN(n195), .B(n192), .Y(n79) );
  XNOR2XL U158 ( .A(a[3]), .B(b[0]), .Y(n113) );
  NOR2BXL U159 ( .AN(n195), .B(n196), .Y(n71) );
  NAND2BXL U160 ( .AN(n195), .B(a[7]), .Y(n96) );
  NAND2BXL U161 ( .AN(n195), .B(a[5]), .Y(n105) );
  XNOR2XL U162 ( .A(a[5]), .B(b[0]), .Y(n104) );
  NOR2BXL U163 ( .AN(n195), .B(n193), .Y(n63) );
  CLKBUFX3 U164 ( .A(n159), .Y(n143) );
  CLKBUFX3 U165 ( .A(a[1]), .Y(n151) );
  CLKBUFX3 U166 ( .A(a[3]), .Y(n150) );
  CLKBUFX3 U167 ( .A(a[5]), .Y(n149) );
  CLKBUFX3 U168 ( .A(a[7]), .Y(n148) );
  AND2X2 U169 ( .A(n132), .B(n156), .Y(n197) );
  CLKINVX1 U170 ( .A(n197), .Y(n152) );
  AND2X2 U171 ( .A(n133), .B(n157), .Y(n198) );
  CLKINVX1 U172 ( .A(n198), .Y(n153) );
  AND2X2 U173 ( .A(n134), .B(n158), .Y(n199) );
  CLKINVX1 U174 ( .A(n199), .Y(n154) );
  AND2X2 U175 ( .A(n135), .B(n159), .Y(n200) );
  CLKINVX1 U176 ( .A(n200), .Y(n155) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_57 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n131, n132, n133, n134, n135, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200;

  CLKINVX1 U1 ( .A(n1), .Y(product[15]) );
  ADDFXL U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n78), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  CLKINVX1 U16 ( .A(n15), .Y(n16) );
  ADDFXL U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n22), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CLKINVX1 U19 ( .A(n21), .Y(n22) );
  CMPR42X1 U20 ( .A(n29), .B(n59), .C(n65), .D(n72), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n30), .D(n34), .ICI(n31), .S(n28), .ICO(
        n26), .CO(n27) );
  CLKINVX1 U22 ( .A(n29), .Y(n30) );
  CMPR42X1 U23 ( .A(n67), .B(n80), .C(n39), .D(n35), .ICI(n36), .S(n33), .ICO(
        n31), .CO(n32) );
  XNOR2X1 U24 ( .A(n73), .B(n61), .Y(n35) );
  OR2X1 U25 ( .A(n73), .B(n61), .Y(n34) );
  CMPR42X1 U26 ( .A(n52), .B(n62), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n81), .B(n68), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n69), .D(n75), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n53), .CI(n47), .CO(n44), .S(n45) );
  ADDHXL U30 ( .A(n83), .B(n70), .CO(n46), .S(n47) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n85), .B(n54), .CO(n50), .S(n51) );
  OAI22XL U33 ( .A0(n152), .A1(n144), .B0(n193), .B1(n96), .Y(n52) );
  AO21X1 U34 ( .A0(n152), .A1(n156), .B0(n88), .Y(n56) );
  OAI22XL U35 ( .A0(n152), .A1(n89), .B0(n193), .B1(n88), .Y(n15) );
  OAI22XL U36 ( .A0(n152), .A1(n90), .B0(n193), .B1(n89), .Y(n57) );
  OAI22XL U37 ( .A0(n152), .A1(n91), .B0(n193), .B1(n90), .Y(n58) );
  OAI22XL U38 ( .A0(n152), .A1(n92), .B0(n193), .B1(n91), .Y(n59) );
  OAI22XL U39 ( .A0(n152), .A1(n93), .B0(n156), .B1(n92), .Y(n60) );
  OAI22XL U40 ( .A0(n152), .A1(n94), .B0(n156), .B1(n93), .Y(n61) );
  OAI22XL U41 ( .A0(n194), .A1(n95), .B0(n156), .B1(n94), .Y(n62) );
  XNOR2X1 U43 ( .A(n148), .B(b[7]), .Y(n88) );
  XNOR2X1 U44 ( .A(n148), .B(b[6]), .Y(n89) );
  XNOR2X1 U45 ( .A(n148), .B(b[5]), .Y(n90) );
  XNOR2X1 U46 ( .A(n148), .B(b[4]), .Y(n91) );
  XNOR2X1 U47 ( .A(n148), .B(b[3]), .Y(n92) );
  XNOR2X1 U48 ( .A(n148), .B(b[2]), .Y(n93) );
  XNOR2X1 U49 ( .A(n148), .B(b[1]), .Y(n94) );
  OAI22XL U52 ( .A0(n153), .A1(n145), .B0(n196), .B1(n105), .Y(n53) );
  AO21X1 U53 ( .A0(n153), .A1(n157), .B0(n97), .Y(n64) );
  OAI22XL U54 ( .A0(n153), .A1(n98), .B0(n196), .B1(n97), .Y(n21) );
  OAI22XL U55 ( .A0(n153), .A1(n99), .B0(n196), .B1(n98), .Y(n65) );
  OAI22XL U56 ( .A0(n153), .A1(n100), .B0(n196), .B1(n99), .Y(n66) );
  OAI22XL U57 ( .A0(n153), .A1(n101), .B0(n196), .B1(n100), .Y(n67) );
  OAI22XL U58 ( .A0(n153), .A1(n102), .B0(n157), .B1(n101), .Y(n68) );
  OAI22XL U59 ( .A0(n153), .A1(n103), .B0(n157), .B1(n102), .Y(n69) );
  OAI22XL U60 ( .A0(n189), .A1(n104), .B0(n157), .B1(n103), .Y(n70) );
  XNOR2X1 U62 ( .A(n149), .B(b[7]), .Y(n97) );
  XNOR2X1 U63 ( .A(n149), .B(b[6]), .Y(n98) );
  XNOR2X1 U64 ( .A(n149), .B(b[5]), .Y(n99) );
  XNOR2X1 U65 ( .A(n149), .B(b[4]), .Y(n100) );
  XNOR2X1 U66 ( .A(n149), .B(b[3]), .Y(n101) );
  XNOR2X1 U67 ( .A(n149), .B(b[2]), .Y(n102) );
  XNOR2X1 U68 ( .A(n149), .B(b[1]), .Y(n103) );
  OAI22XL U71 ( .A0(n154), .A1(n146), .B0(n192), .B1(n114), .Y(n54) );
  AO21X1 U72 ( .A0(n154), .A1(n158), .B0(n106), .Y(n72) );
  OAI22XL U73 ( .A0(n154), .A1(n107), .B0(n192), .B1(n106), .Y(n29) );
  OAI22XL U74 ( .A0(n154), .A1(n108), .B0(n192), .B1(n107), .Y(n73) );
  OAI22XL U75 ( .A0(n154), .A1(n109), .B0(n192), .B1(n108), .Y(n74) );
  OAI22XL U76 ( .A0(n154), .A1(n110), .B0(n192), .B1(n109), .Y(n75) );
  OAI22XL U77 ( .A0(n154), .A1(n111), .B0(n158), .B1(n110), .Y(n76) );
  OAI22XL U78 ( .A0(n154), .A1(n112), .B0(n158), .B1(n111), .Y(n77) );
  OAI22XL U79 ( .A0(n191), .A1(n113), .B0(n158), .B1(n112), .Y(n78) );
  XNOR2X1 U81 ( .A(n150), .B(b[7]), .Y(n106) );
  XNOR2X1 U82 ( .A(n150), .B(b[6]), .Y(n107) );
  XNOR2X1 U83 ( .A(n150), .B(b[5]), .Y(n108) );
  XNOR2X1 U84 ( .A(n150), .B(b[4]), .Y(n109) );
  XNOR2X1 U85 ( .A(n150), .B(b[3]), .Y(n110) );
  XNOR2X1 U86 ( .A(n150), .B(b[2]), .Y(n111) );
  XNOR2X1 U87 ( .A(n150), .B(b[1]), .Y(n112) );
  OAI22XL U90 ( .A0(n155), .A1(n147), .B0(n123), .B1(n143), .Y(n55) );
  AO21X1 U91 ( .A0(n155), .A1(n159), .B0(n115), .Y(n80) );
  OAI22XL U92 ( .A0(n155), .A1(n116), .B0(n115), .B1(n143), .Y(n81) );
  OAI22XL U93 ( .A0(n155), .A1(n117), .B0(n116), .B1(n143), .Y(n82) );
  OAI22XL U94 ( .A0(n155), .A1(n118), .B0(n117), .B1(n143), .Y(n83) );
  OAI22XL U95 ( .A0(n155), .A1(n119), .B0(n118), .B1(n143), .Y(n84) );
  OAI22XL U96 ( .A0(n155), .A1(n120), .B0(n119), .B1(n143), .Y(n85) );
  OAI22XL U97 ( .A0(n155), .A1(n121), .B0(n120), .B1(n143), .Y(n86) );
  OAI22XL U98 ( .A0(n190), .A1(n122), .B0(n121), .B1(n143), .Y(n87) );
  XNOR2X1 U100 ( .A(n151), .B(b[7]), .Y(n115) );
  XNOR2X1 U101 ( .A(n151), .B(b[6]), .Y(n116) );
  XNOR2X1 U102 ( .A(n151), .B(b[5]), .Y(n117) );
  XNOR2X1 U103 ( .A(n151), .B(b[4]), .Y(n118) );
  XNOR2X1 U104 ( .A(n151), .B(b[3]), .Y(n119) );
  XNOR2X1 U105 ( .A(n151), .B(b[2]), .Y(n120) );
  XNOR2X1 U106 ( .A(n151), .B(b[1]), .Y(n121) );
  CLKINVX1 U112 ( .A(n148), .Y(n144) );
  CLKINVX1 U116 ( .A(n149), .Y(n145) );
  CLKINVX1 U120 ( .A(n150), .Y(n146) );
  CLKINVX1 U124 ( .A(n151), .Y(n147) );
  XOR2X1 U127 ( .A(a[6]), .B(a[7]), .Y(n132) );
  XNOR2X1 U128 ( .A(a[6]), .B(a[5]), .Y(n156) );
  XOR2X1 U130 ( .A(a[4]), .B(a[5]), .Y(n133) );
  XNOR2X1 U131 ( .A(a[4]), .B(a[3]), .Y(n157) );
  XOR2X1 U133 ( .A(a[2]), .B(a[3]), .Y(n134) );
  XNOR2X1 U134 ( .A(a[2]), .B(a[1]), .Y(n158) );
  XOR2X1 U136 ( .A(a[0]), .B(a[1]), .Y(n135) );
  CLKINVX1 U137 ( .A(a[0]), .Y(n159) );
  CLKINVX1 U140 ( .A(n198), .Y(n189) );
  CLKINVX1 U141 ( .A(n200), .Y(n190) );
  CLKINVX1 U142 ( .A(n199), .Y(n191) );
  CLKINVX1 U143 ( .A(n158), .Y(n142) );
  CLKINVX1 U144 ( .A(n142), .Y(n192) );
  CLKINVX1 U145 ( .A(n156), .Y(n140) );
  CLKINVX1 U146 ( .A(n140), .Y(n193) );
  CLKINVX1 U147 ( .A(n197), .Y(n194) );
  CLKINVX1 U148 ( .A(b[0]), .Y(n131) );
  CLKINVX1 U149 ( .A(n131), .Y(n195) );
  NAND2BXL U150 ( .AN(n195), .B(a[1]), .Y(n123) );
  NAND2BXL U151 ( .AN(n195), .B(a[3]), .Y(n114) );
  CLKINVX1 U152 ( .A(n157), .Y(n141) );
  CLKINVX1 U153 ( .A(n141), .Y(n196) );
  NOR2BXL U154 ( .AN(n195), .B(n159), .Y(product[0]) );
  XNOR2XL U155 ( .A(a[7]), .B(b[0]), .Y(n95) );
  XNOR2XL U156 ( .A(a[1]), .B(b[0]), .Y(n122) );
  NOR2BXL U157 ( .AN(n195), .B(n192), .Y(n79) );
  XNOR2XL U158 ( .A(a[3]), .B(b[0]), .Y(n113) );
  NOR2BXL U159 ( .AN(n195), .B(n196), .Y(n71) );
  NAND2BXL U160 ( .AN(n195), .B(a[7]), .Y(n96) );
  NAND2BXL U161 ( .AN(n195), .B(a[5]), .Y(n105) );
  XNOR2XL U162 ( .A(a[5]), .B(b[0]), .Y(n104) );
  NOR2BXL U163 ( .AN(n195), .B(n193), .Y(n63) );
  CLKBUFX3 U164 ( .A(n159), .Y(n143) );
  CLKBUFX3 U165 ( .A(a[1]), .Y(n151) );
  CLKBUFX3 U166 ( .A(a[3]), .Y(n150) );
  CLKBUFX3 U167 ( .A(a[5]), .Y(n149) );
  CLKBUFX3 U168 ( .A(a[7]), .Y(n148) );
  AND2X2 U169 ( .A(n132), .B(n156), .Y(n197) );
  CLKINVX1 U170 ( .A(n197), .Y(n152) );
  AND2X2 U171 ( .A(n133), .B(n157), .Y(n198) );
  CLKINVX1 U172 ( .A(n198), .Y(n153) );
  AND2X2 U173 ( .A(n134), .B(n158), .Y(n199) );
  CLKINVX1 U174 ( .A(n199), .Y(n154) );
  AND2X2 U175 ( .A(n135), .B(n159), .Y(n200) );
  CLKINVX1 U176 ( .A(n200), .Y(n155) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_58 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n131, n132, n133, n134, n135, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200;

  CLKINVX1 U1 ( .A(n1), .Y(product[15]) );
  ADDFXL U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n78), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  CLKINVX1 U16 ( .A(n15), .Y(n16) );
  ADDFXL U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n22), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CLKINVX1 U19 ( .A(n21), .Y(n22) );
  CMPR42X1 U20 ( .A(n29), .B(n59), .C(n65), .D(n72), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n30), .D(n34), .ICI(n31), .S(n28), .ICO(
        n26), .CO(n27) );
  CLKINVX1 U22 ( .A(n29), .Y(n30) );
  CMPR42X1 U23 ( .A(n67), .B(n80), .C(n39), .D(n35), .ICI(n36), .S(n33), .ICO(
        n31), .CO(n32) );
  XNOR2X1 U24 ( .A(n73), .B(n61), .Y(n35) );
  OR2X1 U25 ( .A(n73), .B(n61), .Y(n34) );
  CMPR42X1 U26 ( .A(n52), .B(n62), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n81), .B(n68), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n69), .D(n75), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n53), .CI(n47), .CO(n44), .S(n45) );
  ADDHXL U30 ( .A(n83), .B(n70), .CO(n46), .S(n47) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n85), .B(n54), .CO(n50), .S(n51) );
  OAI22XL U33 ( .A0(n152), .A1(n144), .B0(n193), .B1(n96), .Y(n52) );
  AO21X1 U34 ( .A0(n152), .A1(n156), .B0(n88), .Y(n56) );
  OAI22XL U35 ( .A0(n152), .A1(n89), .B0(n193), .B1(n88), .Y(n15) );
  OAI22XL U36 ( .A0(n152), .A1(n90), .B0(n193), .B1(n89), .Y(n57) );
  OAI22XL U37 ( .A0(n152), .A1(n91), .B0(n193), .B1(n90), .Y(n58) );
  OAI22XL U38 ( .A0(n152), .A1(n92), .B0(n193), .B1(n91), .Y(n59) );
  OAI22XL U39 ( .A0(n152), .A1(n93), .B0(n156), .B1(n92), .Y(n60) );
  OAI22XL U40 ( .A0(n152), .A1(n94), .B0(n156), .B1(n93), .Y(n61) );
  OAI22XL U41 ( .A0(n194), .A1(n95), .B0(n156), .B1(n94), .Y(n62) );
  XNOR2X1 U43 ( .A(n148), .B(b[7]), .Y(n88) );
  XNOR2X1 U44 ( .A(n148), .B(b[6]), .Y(n89) );
  XNOR2X1 U45 ( .A(n148), .B(b[5]), .Y(n90) );
  XNOR2X1 U46 ( .A(n148), .B(b[4]), .Y(n91) );
  XNOR2X1 U47 ( .A(n148), .B(b[3]), .Y(n92) );
  XNOR2X1 U48 ( .A(n148), .B(b[2]), .Y(n93) );
  XNOR2X1 U49 ( .A(n148), .B(b[1]), .Y(n94) );
  OAI22XL U52 ( .A0(n153), .A1(n145), .B0(n196), .B1(n105), .Y(n53) );
  AO21X1 U53 ( .A0(n153), .A1(n157), .B0(n97), .Y(n64) );
  OAI22XL U54 ( .A0(n153), .A1(n98), .B0(n196), .B1(n97), .Y(n21) );
  OAI22XL U55 ( .A0(n153), .A1(n99), .B0(n196), .B1(n98), .Y(n65) );
  OAI22XL U56 ( .A0(n153), .A1(n100), .B0(n196), .B1(n99), .Y(n66) );
  OAI22XL U57 ( .A0(n153), .A1(n101), .B0(n196), .B1(n100), .Y(n67) );
  OAI22XL U58 ( .A0(n153), .A1(n102), .B0(n157), .B1(n101), .Y(n68) );
  OAI22XL U59 ( .A0(n153), .A1(n103), .B0(n157), .B1(n102), .Y(n69) );
  OAI22XL U60 ( .A0(n189), .A1(n104), .B0(n157), .B1(n103), .Y(n70) );
  XNOR2X1 U62 ( .A(n149), .B(b[7]), .Y(n97) );
  XNOR2X1 U63 ( .A(n149), .B(b[6]), .Y(n98) );
  XNOR2X1 U64 ( .A(n149), .B(b[5]), .Y(n99) );
  XNOR2X1 U65 ( .A(n149), .B(b[4]), .Y(n100) );
  XNOR2X1 U66 ( .A(n149), .B(b[3]), .Y(n101) );
  XNOR2X1 U67 ( .A(n149), .B(b[2]), .Y(n102) );
  XNOR2X1 U68 ( .A(n149), .B(b[1]), .Y(n103) );
  OAI22XL U71 ( .A0(n154), .A1(n146), .B0(n192), .B1(n114), .Y(n54) );
  AO21X1 U72 ( .A0(n154), .A1(n158), .B0(n106), .Y(n72) );
  OAI22XL U73 ( .A0(n154), .A1(n107), .B0(n192), .B1(n106), .Y(n29) );
  OAI22XL U74 ( .A0(n154), .A1(n108), .B0(n192), .B1(n107), .Y(n73) );
  OAI22XL U75 ( .A0(n154), .A1(n109), .B0(n192), .B1(n108), .Y(n74) );
  OAI22XL U76 ( .A0(n154), .A1(n110), .B0(n192), .B1(n109), .Y(n75) );
  OAI22XL U77 ( .A0(n154), .A1(n111), .B0(n158), .B1(n110), .Y(n76) );
  OAI22XL U78 ( .A0(n154), .A1(n112), .B0(n158), .B1(n111), .Y(n77) );
  OAI22XL U79 ( .A0(n191), .A1(n113), .B0(n158), .B1(n112), .Y(n78) );
  XNOR2X1 U81 ( .A(n150), .B(b[7]), .Y(n106) );
  XNOR2X1 U82 ( .A(n150), .B(b[6]), .Y(n107) );
  XNOR2X1 U83 ( .A(n150), .B(b[5]), .Y(n108) );
  XNOR2X1 U84 ( .A(n150), .B(b[4]), .Y(n109) );
  XNOR2X1 U85 ( .A(n150), .B(b[3]), .Y(n110) );
  XNOR2X1 U86 ( .A(n150), .B(b[2]), .Y(n111) );
  XNOR2X1 U87 ( .A(n150), .B(b[1]), .Y(n112) );
  OAI22XL U90 ( .A0(n155), .A1(n147), .B0(n123), .B1(n143), .Y(n55) );
  AO21X1 U91 ( .A0(n155), .A1(n159), .B0(n115), .Y(n80) );
  OAI22XL U92 ( .A0(n155), .A1(n116), .B0(n115), .B1(n143), .Y(n81) );
  OAI22XL U93 ( .A0(n155), .A1(n117), .B0(n116), .B1(n143), .Y(n82) );
  OAI22XL U94 ( .A0(n155), .A1(n118), .B0(n117), .B1(n143), .Y(n83) );
  OAI22XL U95 ( .A0(n155), .A1(n119), .B0(n118), .B1(n143), .Y(n84) );
  OAI22XL U96 ( .A0(n155), .A1(n120), .B0(n119), .B1(n143), .Y(n85) );
  OAI22XL U97 ( .A0(n155), .A1(n121), .B0(n120), .B1(n143), .Y(n86) );
  OAI22XL U98 ( .A0(n190), .A1(n122), .B0(n121), .B1(n143), .Y(n87) );
  XNOR2X1 U100 ( .A(n151), .B(b[7]), .Y(n115) );
  XNOR2X1 U101 ( .A(n151), .B(b[6]), .Y(n116) );
  XNOR2X1 U102 ( .A(n151), .B(b[5]), .Y(n117) );
  XNOR2X1 U103 ( .A(n151), .B(b[4]), .Y(n118) );
  XNOR2X1 U104 ( .A(n151), .B(b[3]), .Y(n119) );
  XNOR2X1 U105 ( .A(n151), .B(b[2]), .Y(n120) );
  XNOR2X1 U106 ( .A(n151), .B(b[1]), .Y(n121) );
  CLKINVX1 U112 ( .A(n148), .Y(n144) );
  CLKINVX1 U116 ( .A(n149), .Y(n145) );
  CLKINVX1 U120 ( .A(n150), .Y(n146) );
  CLKINVX1 U124 ( .A(n151), .Y(n147) );
  XOR2X1 U127 ( .A(a[6]), .B(a[7]), .Y(n132) );
  XNOR2X1 U128 ( .A(a[6]), .B(a[5]), .Y(n156) );
  XOR2X1 U130 ( .A(a[4]), .B(a[5]), .Y(n133) );
  XNOR2X1 U131 ( .A(a[4]), .B(a[3]), .Y(n157) );
  XOR2X1 U133 ( .A(a[2]), .B(a[3]), .Y(n134) );
  XNOR2X1 U134 ( .A(a[2]), .B(a[1]), .Y(n158) );
  XOR2X1 U136 ( .A(a[0]), .B(a[1]), .Y(n135) );
  CLKINVX1 U137 ( .A(a[0]), .Y(n159) );
  CLKINVX1 U140 ( .A(n198), .Y(n189) );
  CLKINVX1 U141 ( .A(n200), .Y(n190) );
  CLKINVX1 U142 ( .A(n199), .Y(n191) );
  CLKINVX1 U143 ( .A(n158), .Y(n142) );
  CLKINVX1 U144 ( .A(n142), .Y(n192) );
  CLKINVX1 U145 ( .A(n156), .Y(n140) );
  CLKINVX1 U146 ( .A(n140), .Y(n193) );
  CLKINVX1 U147 ( .A(n197), .Y(n194) );
  CLKINVX1 U148 ( .A(b[0]), .Y(n131) );
  CLKINVX1 U149 ( .A(n131), .Y(n195) );
  NAND2BXL U150 ( .AN(n195), .B(a[1]), .Y(n123) );
  NAND2BXL U151 ( .AN(n195), .B(a[3]), .Y(n114) );
  CLKINVX1 U152 ( .A(n157), .Y(n141) );
  CLKINVX1 U153 ( .A(n141), .Y(n196) );
  NOR2BXL U154 ( .AN(n195), .B(n159), .Y(product[0]) );
  XNOR2XL U155 ( .A(a[7]), .B(b[0]), .Y(n95) );
  XNOR2XL U156 ( .A(a[1]), .B(b[0]), .Y(n122) );
  NOR2BXL U157 ( .AN(n195), .B(n192), .Y(n79) );
  XNOR2XL U158 ( .A(a[3]), .B(b[0]), .Y(n113) );
  NOR2BXL U159 ( .AN(n195), .B(n196), .Y(n71) );
  NAND2BXL U160 ( .AN(n195), .B(a[7]), .Y(n96) );
  NAND2BXL U161 ( .AN(n195), .B(a[5]), .Y(n105) );
  XNOR2XL U162 ( .A(a[5]), .B(b[0]), .Y(n104) );
  NOR2BXL U163 ( .AN(n195), .B(n193), .Y(n63) );
  CLKBUFX3 U164 ( .A(n159), .Y(n143) );
  CLKBUFX3 U165 ( .A(a[1]), .Y(n151) );
  CLKBUFX3 U166 ( .A(a[3]), .Y(n150) );
  CLKBUFX3 U167 ( .A(a[5]), .Y(n149) );
  CLKBUFX3 U168 ( .A(a[7]), .Y(n148) );
  AND2X2 U169 ( .A(n132), .B(n156), .Y(n197) );
  CLKINVX1 U170 ( .A(n197), .Y(n152) );
  AND2X2 U171 ( .A(n133), .B(n157), .Y(n198) );
  CLKINVX1 U172 ( .A(n198), .Y(n153) );
  AND2X2 U173 ( .A(n134), .B(n158), .Y(n199) );
  CLKINVX1 U174 ( .A(n199), .Y(n154) );
  AND2X2 U175 ( .A(n135), .B(n159), .Y(n200) );
  CLKINVX1 U176 ( .A(n200), .Y(n155) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_59 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n131, n132, n133, n134, n135, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200;

  CLKINVX1 U1 ( .A(n1), .Y(product[15]) );
  ADDFXL U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n78), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  CLKINVX1 U16 ( .A(n15), .Y(n16) );
  ADDFXL U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n22), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CLKINVX1 U19 ( .A(n21), .Y(n22) );
  CMPR42X1 U20 ( .A(n29), .B(n59), .C(n65), .D(n72), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n30), .D(n34), .ICI(n31), .S(n28), .ICO(
        n26), .CO(n27) );
  CLKINVX1 U22 ( .A(n29), .Y(n30) );
  CMPR42X1 U23 ( .A(n67), .B(n80), .C(n39), .D(n35), .ICI(n36), .S(n33), .ICO(
        n31), .CO(n32) );
  XNOR2X1 U24 ( .A(n73), .B(n61), .Y(n35) );
  OR2X1 U25 ( .A(n73), .B(n61), .Y(n34) );
  CMPR42X1 U26 ( .A(n52), .B(n62), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n81), .B(n68), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n69), .D(n75), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n53), .CI(n47), .CO(n44), .S(n45) );
  ADDHXL U30 ( .A(n83), .B(n70), .CO(n46), .S(n47) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n85), .B(n54), .CO(n50), .S(n51) );
  OAI22XL U33 ( .A0(n152), .A1(n144), .B0(n193), .B1(n96), .Y(n52) );
  AO21X1 U34 ( .A0(n152), .A1(n156), .B0(n88), .Y(n56) );
  OAI22XL U35 ( .A0(n152), .A1(n89), .B0(n193), .B1(n88), .Y(n15) );
  OAI22XL U36 ( .A0(n152), .A1(n90), .B0(n193), .B1(n89), .Y(n57) );
  OAI22XL U37 ( .A0(n152), .A1(n91), .B0(n193), .B1(n90), .Y(n58) );
  OAI22XL U38 ( .A0(n152), .A1(n92), .B0(n193), .B1(n91), .Y(n59) );
  OAI22XL U39 ( .A0(n152), .A1(n93), .B0(n156), .B1(n92), .Y(n60) );
  OAI22XL U40 ( .A0(n152), .A1(n94), .B0(n156), .B1(n93), .Y(n61) );
  OAI22XL U41 ( .A0(n194), .A1(n95), .B0(n156), .B1(n94), .Y(n62) );
  XNOR2X1 U43 ( .A(n148), .B(b[7]), .Y(n88) );
  XNOR2X1 U44 ( .A(n148), .B(b[6]), .Y(n89) );
  XNOR2X1 U45 ( .A(n148), .B(b[5]), .Y(n90) );
  XNOR2X1 U46 ( .A(n148), .B(b[4]), .Y(n91) );
  XNOR2X1 U47 ( .A(n148), .B(b[3]), .Y(n92) );
  XNOR2X1 U48 ( .A(n148), .B(b[2]), .Y(n93) );
  XNOR2X1 U49 ( .A(n148), .B(b[1]), .Y(n94) );
  OAI22XL U52 ( .A0(n153), .A1(n145), .B0(n196), .B1(n105), .Y(n53) );
  AO21X1 U53 ( .A0(n153), .A1(n157), .B0(n97), .Y(n64) );
  OAI22XL U54 ( .A0(n153), .A1(n98), .B0(n196), .B1(n97), .Y(n21) );
  OAI22XL U55 ( .A0(n153), .A1(n99), .B0(n196), .B1(n98), .Y(n65) );
  OAI22XL U56 ( .A0(n153), .A1(n100), .B0(n196), .B1(n99), .Y(n66) );
  OAI22XL U57 ( .A0(n153), .A1(n101), .B0(n196), .B1(n100), .Y(n67) );
  OAI22XL U58 ( .A0(n153), .A1(n102), .B0(n157), .B1(n101), .Y(n68) );
  OAI22XL U59 ( .A0(n153), .A1(n103), .B0(n157), .B1(n102), .Y(n69) );
  OAI22XL U60 ( .A0(n189), .A1(n104), .B0(n157), .B1(n103), .Y(n70) );
  XNOR2X1 U62 ( .A(n149), .B(b[7]), .Y(n97) );
  XNOR2X1 U63 ( .A(n149), .B(b[6]), .Y(n98) );
  XNOR2X1 U64 ( .A(n149), .B(b[5]), .Y(n99) );
  XNOR2X1 U65 ( .A(n149), .B(b[4]), .Y(n100) );
  XNOR2X1 U66 ( .A(n149), .B(b[3]), .Y(n101) );
  XNOR2X1 U67 ( .A(n149), .B(b[2]), .Y(n102) );
  XNOR2X1 U68 ( .A(n149), .B(b[1]), .Y(n103) );
  OAI22XL U71 ( .A0(n154), .A1(n146), .B0(n192), .B1(n114), .Y(n54) );
  AO21X1 U72 ( .A0(n154), .A1(n158), .B0(n106), .Y(n72) );
  OAI22XL U73 ( .A0(n154), .A1(n107), .B0(n192), .B1(n106), .Y(n29) );
  OAI22XL U74 ( .A0(n154), .A1(n108), .B0(n192), .B1(n107), .Y(n73) );
  OAI22XL U75 ( .A0(n154), .A1(n109), .B0(n192), .B1(n108), .Y(n74) );
  OAI22XL U76 ( .A0(n154), .A1(n110), .B0(n192), .B1(n109), .Y(n75) );
  OAI22XL U77 ( .A0(n154), .A1(n111), .B0(n158), .B1(n110), .Y(n76) );
  OAI22XL U78 ( .A0(n154), .A1(n112), .B0(n158), .B1(n111), .Y(n77) );
  OAI22XL U79 ( .A0(n191), .A1(n113), .B0(n158), .B1(n112), .Y(n78) );
  XNOR2X1 U81 ( .A(n150), .B(b[7]), .Y(n106) );
  XNOR2X1 U82 ( .A(n150), .B(b[6]), .Y(n107) );
  XNOR2X1 U83 ( .A(n150), .B(b[5]), .Y(n108) );
  XNOR2X1 U84 ( .A(n150), .B(b[4]), .Y(n109) );
  XNOR2X1 U85 ( .A(n150), .B(b[3]), .Y(n110) );
  XNOR2X1 U86 ( .A(n150), .B(b[2]), .Y(n111) );
  XNOR2X1 U87 ( .A(n150), .B(b[1]), .Y(n112) );
  OAI22XL U90 ( .A0(n155), .A1(n147), .B0(n123), .B1(n143), .Y(n55) );
  AO21X1 U91 ( .A0(n155), .A1(n159), .B0(n115), .Y(n80) );
  OAI22XL U92 ( .A0(n155), .A1(n116), .B0(n115), .B1(n143), .Y(n81) );
  OAI22XL U93 ( .A0(n155), .A1(n117), .B0(n116), .B1(n143), .Y(n82) );
  OAI22XL U94 ( .A0(n155), .A1(n118), .B0(n117), .B1(n143), .Y(n83) );
  OAI22XL U95 ( .A0(n155), .A1(n119), .B0(n118), .B1(n143), .Y(n84) );
  OAI22XL U96 ( .A0(n155), .A1(n120), .B0(n119), .B1(n143), .Y(n85) );
  OAI22XL U97 ( .A0(n155), .A1(n121), .B0(n120), .B1(n143), .Y(n86) );
  OAI22XL U98 ( .A0(n190), .A1(n122), .B0(n121), .B1(n143), .Y(n87) );
  XNOR2X1 U100 ( .A(n151), .B(b[7]), .Y(n115) );
  XNOR2X1 U101 ( .A(n151), .B(b[6]), .Y(n116) );
  XNOR2X1 U102 ( .A(n151), .B(b[5]), .Y(n117) );
  XNOR2X1 U103 ( .A(n151), .B(b[4]), .Y(n118) );
  XNOR2X1 U104 ( .A(n151), .B(b[3]), .Y(n119) );
  XNOR2X1 U105 ( .A(n151), .B(b[2]), .Y(n120) );
  XNOR2X1 U106 ( .A(n151), .B(b[1]), .Y(n121) );
  CLKINVX1 U112 ( .A(n148), .Y(n144) );
  CLKINVX1 U116 ( .A(n149), .Y(n145) );
  CLKINVX1 U120 ( .A(n150), .Y(n146) );
  CLKINVX1 U124 ( .A(n151), .Y(n147) );
  XOR2X1 U127 ( .A(a[6]), .B(a[7]), .Y(n132) );
  XNOR2X1 U128 ( .A(a[6]), .B(a[5]), .Y(n156) );
  XOR2X1 U130 ( .A(a[4]), .B(a[5]), .Y(n133) );
  XNOR2X1 U131 ( .A(a[4]), .B(a[3]), .Y(n157) );
  XOR2X1 U133 ( .A(a[2]), .B(a[3]), .Y(n134) );
  XNOR2X1 U134 ( .A(a[2]), .B(a[1]), .Y(n158) );
  XOR2X1 U136 ( .A(a[0]), .B(a[1]), .Y(n135) );
  CLKINVX1 U137 ( .A(a[0]), .Y(n159) );
  CLKINVX1 U140 ( .A(n198), .Y(n189) );
  CLKINVX1 U141 ( .A(n200), .Y(n190) );
  CLKINVX1 U142 ( .A(n199), .Y(n191) );
  CLKINVX1 U143 ( .A(n158), .Y(n142) );
  CLKINVX1 U144 ( .A(n142), .Y(n192) );
  CLKINVX1 U145 ( .A(n156), .Y(n140) );
  CLKINVX1 U146 ( .A(n140), .Y(n193) );
  CLKINVX1 U147 ( .A(n197), .Y(n194) );
  CLKINVX1 U148 ( .A(b[0]), .Y(n131) );
  CLKINVX1 U149 ( .A(n131), .Y(n195) );
  NAND2BXL U150 ( .AN(n195), .B(a[1]), .Y(n123) );
  NAND2BXL U151 ( .AN(n195), .B(a[3]), .Y(n114) );
  CLKINVX1 U152 ( .A(n157), .Y(n141) );
  CLKINVX1 U153 ( .A(n141), .Y(n196) );
  NOR2BXL U154 ( .AN(n195), .B(n159), .Y(product[0]) );
  XNOR2XL U155 ( .A(a[7]), .B(b[0]), .Y(n95) );
  XNOR2XL U156 ( .A(a[1]), .B(b[0]), .Y(n122) );
  NOR2BXL U157 ( .AN(n195), .B(n192), .Y(n79) );
  XNOR2XL U158 ( .A(a[3]), .B(b[0]), .Y(n113) );
  NOR2BXL U159 ( .AN(n195), .B(n196), .Y(n71) );
  NAND2BXL U160 ( .AN(n195), .B(a[7]), .Y(n96) );
  NAND2BXL U161 ( .AN(n195), .B(a[5]), .Y(n105) );
  XNOR2XL U162 ( .A(a[5]), .B(b[0]), .Y(n104) );
  NOR2BXL U163 ( .AN(n195), .B(n193), .Y(n63) );
  CLKBUFX3 U164 ( .A(n159), .Y(n143) );
  CLKBUFX3 U165 ( .A(a[1]), .Y(n151) );
  CLKBUFX3 U166 ( .A(a[3]), .Y(n150) );
  CLKBUFX3 U167 ( .A(a[5]), .Y(n149) );
  CLKBUFX3 U168 ( .A(a[7]), .Y(n148) );
  AND2X2 U169 ( .A(n132), .B(n156), .Y(n197) );
  CLKINVX1 U170 ( .A(n197), .Y(n152) );
  AND2X2 U171 ( .A(n133), .B(n157), .Y(n198) );
  CLKINVX1 U172 ( .A(n198), .Y(n153) );
  AND2X2 U173 ( .A(n134), .B(n158), .Y(n199) );
  CLKINVX1 U174 ( .A(n199), .Y(n154) );
  AND2X2 U175 ( .A(n135), .B(n159), .Y(n200) );
  CLKINVX1 U176 ( .A(n200), .Y(n155) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_60 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n131, n132, n133, n134, n135, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200;

  CLKINVX1 U1 ( .A(n1), .Y(product[15]) );
  ADDFXL U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n78), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  CLKINVX1 U16 ( .A(n15), .Y(n16) );
  ADDFXL U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n22), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CLKINVX1 U19 ( .A(n21), .Y(n22) );
  CMPR42X1 U20 ( .A(n29), .B(n59), .C(n65), .D(n72), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n30), .D(n34), .ICI(n31), .S(n28), .ICO(
        n26), .CO(n27) );
  CLKINVX1 U22 ( .A(n29), .Y(n30) );
  CMPR42X1 U23 ( .A(n67), .B(n80), .C(n39), .D(n35), .ICI(n36), .S(n33), .ICO(
        n31), .CO(n32) );
  XNOR2X1 U24 ( .A(n73), .B(n61), .Y(n35) );
  OR2X1 U25 ( .A(n73), .B(n61), .Y(n34) );
  CMPR42X1 U26 ( .A(n52), .B(n62), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n81), .B(n68), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n69), .D(n75), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n53), .CI(n47), .CO(n44), .S(n45) );
  ADDHXL U30 ( .A(n83), .B(n70), .CO(n46), .S(n47) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n85), .B(n54), .CO(n50), .S(n51) );
  OAI22XL U33 ( .A0(n152), .A1(n144), .B0(n193), .B1(n96), .Y(n52) );
  AO21X1 U34 ( .A0(n152), .A1(n156), .B0(n88), .Y(n56) );
  OAI22XL U35 ( .A0(n152), .A1(n89), .B0(n193), .B1(n88), .Y(n15) );
  OAI22XL U36 ( .A0(n152), .A1(n90), .B0(n193), .B1(n89), .Y(n57) );
  OAI22XL U37 ( .A0(n152), .A1(n91), .B0(n193), .B1(n90), .Y(n58) );
  OAI22XL U38 ( .A0(n152), .A1(n92), .B0(n193), .B1(n91), .Y(n59) );
  OAI22XL U39 ( .A0(n152), .A1(n93), .B0(n156), .B1(n92), .Y(n60) );
  OAI22XL U40 ( .A0(n152), .A1(n94), .B0(n156), .B1(n93), .Y(n61) );
  OAI22XL U41 ( .A0(n194), .A1(n95), .B0(n156), .B1(n94), .Y(n62) );
  XNOR2X1 U43 ( .A(n148), .B(b[7]), .Y(n88) );
  XNOR2X1 U44 ( .A(n148), .B(b[6]), .Y(n89) );
  XNOR2X1 U45 ( .A(n148), .B(b[5]), .Y(n90) );
  XNOR2X1 U46 ( .A(n148), .B(b[4]), .Y(n91) );
  XNOR2X1 U47 ( .A(n148), .B(b[3]), .Y(n92) );
  XNOR2X1 U48 ( .A(n148), .B(b[2]), .Y(n93) );
  XNOR2X1 U49 ( .A(n148), .B(b[1]), .Y(n94) );
  OAI22XL U52 ( .A0(n153), .A1(n145), .B0(n196), .B1(n105), .Y(n53) );
  AO21X1 U53 ( .A0(n153), .A1(n157), .B0(n97), .Y(n64) );
  OAI22XL U54 ( .A0(n153), .A1(n98), .B0(n196), .B1(n97), .Y(n21) );
  OAI22XL U55 ( .A0(n153), .A1(n99), .B0(n196), .B1(n98), .Y(n65) );
  OAI22XL U56 ( .A0(n153), .A1(n100), .B0(n196), .B1(n99), .Y(n66) );
  OAI22XL U57 ( .A0(n153), .A1(n101), .B0(n196), .B1(n100), .Y(n67) );
  OAI22XL U58 ( .A0(n153), .A1(n102), .B0(n157), .B1(n101), .Y(n68) );
  OAI22XL U59 ( .A0(n153), .A1(n103), .B0(n157), .B1(n102), .Y(n69) );
  OAI22XL U60 ( .A0(n189), .A1(n104), .B0(n157), .B1(n103), .Y(n70) );
  XNOR2X1 U62 ( .A(n149), .B(b[7]), .Y(n97) );
  XNOR2X1 U63 ( .A(n149), .B(b[6]), .Y(n98) );
  XNOR2X1 U64 ( .A(n149), .B(b[5]), .Y(n99) );
  XNOR2X1 U65 ( .A(n149), .B(b[4]), .Y(n100) );
  XNOR2X1 U66 ( .A(n149), .B(b[3]), .Y(n101) );
  XNOR2X1 U67 ( .A(n149), .B(b[2]), .Y(n102) );
  XNOR2X1 U68 ( .A(n149), .B(b[1]), .Y(n103) );
  OAI22XL U71 ( .A0(n154), .A1(n146), .B0(n192), .B1(n114), .Y(n54) );
  AO21X1 U72 ( .A0(n154), .A1(n158), .B0(n106), .Y(n72) );
  OAI22XL U73 ( .A0(n154), .A1(n107), .B0(n192), .B1(n106), .Y(n29) );
  OAI22XL U74 ( .A0(n154), .A1(n108), .B0(n192), .B1(n107), .Y(n73) );
  OAI22XL U75 ( .A0(n154), .A1(n109), .B0(n192), .B1(n108), .Y(n74) );
  OAI22XL U76 ( .A0(n154), .A1(n110), .B0(n192), .B1(n109), .Y(n75) );
  OAI22XL U77 ( .A0(n154), .A1(n111), .B0(n158), .B1(n110), .Y(n76) );
  OAI22XL U78 ( .A0(n154), .A1(n112), .B0(n158), .B1(n111), .Y(n77) );
  OAI22XL U79 ( .A0(n191), .A1(n113), .B0(n158), .B1(n112), .Y(n78) );
  XNOR2X1 U81 ( .A(n150), .B(b[7]), .Y(n106) );
  XNOR2X1 U82 ( .A(n150), .B(b[6]), .Y(n107) );
  XNOR2X1 U83 ( .A(n150), .B(b[5]), .Y(n108) );
  XNOR2X1 U84 ( .A(n150), .B(b[4]), .Y(n109) );
  XNOR2X1 U85 ( .A(n150), .B(b[3]), .Y(n110) );
  XNOR2X1 U86 ( .A(n150), .B(b[2]), .Y(n111) );
  XNOR2X1 U87 ( .A(n150), .B(b[1]), .Y(n112) );
  OAI22XL U90 ( .A0(n155), .A1(n147), .B0(n123), .B1(n143), .Y(n55) );
  AO21X1 U91 ( .A0(n155), .A1(n159), .B0(n115), .Y(n80) );
  OAI22XL U92 ( .A0(n155), .A1(n116), .B0(n115), .B1(n143), .Y(n81) );
  OAI22XL U93 ( .A0(n155), .A1(n117), .B0(n116), .B1(n143), .Y(n82) );
  OAI22XL U94 ( .A0(n155), .A1(n118), .B0(n117), .B1(n143), .Y(n83) );
  OAI22XL U95 ( .A0(n155), .A1(n119), .B0(n118), .B1(n143), .Y(n84) );
  OAI22XL U96 ( .A0(n155), .A1(n120), .B0(n119), .B1(n143), .Y(n85) );
  OAI22XL U97 ( .A0(n155), .A1(n121), .B0(n120), .B1(n143), .Y(n86) );
  OAI22XL U98 ( .A0(n190), .A1(n122), .B0(n121), .B1(n143), .Y(n87) );
  XNOR2X1 U100 ( .A(n151), .B(b[7]), .Y(n115) );
  XNOR2X1 U101 ( .A(n151), .B(b[6]), .Y(n116) );
  XNOR2X1 U102 ( .A(n151), .B(b[5]), .Y(n117) );
  XNOR2X1 U103 ( .A(n151), .B(b[4]), .Y(n118) );
  XNOR2X1 U104 ( .A(n151), .B(b[3]), .Y(n119) );
  XNOR2X1 U105 ( .A(n151), .B(b[2]), .Y(n120) );
  XNOR2X1 U106 ( .A(n151), .B(b[1]), .Y(n121) );
  CLKINVX1 U112 ( .A(n148), .Y(n144) );
  CLKINVX1 U116 ( .A(n149), .Y(n145) );
  CLKINVX1 U120 ( .A(n150), .Y(n146) );
  CLKINVX1 U124 ( .A(n151), .Y(n147) );
  XOR2X1 U127 ( .A(a[6]), .B(a[7]), .Y(n132) );
  XNOR2X1 U128 ( .A(a[6]), .B(a[5]), .Y(n156) );
  XOR2X1 U130 ( .A(a[4]), .B(a[5]), .Y(n133) );
  XNOR2X1 U131 ( .A(a[4]), .B(a[3]), .Y(n157) );
  XOR2X1 U133 ( .A(a[2]), .B(a[3]), .Y(n134) );
  XNOR2X1 U134 ( .A(a[2]), .B(a[1]), .Y(n158) );
  XOR2X1 U136 ( .A(a[0]), .B(a[1]), .Y(n135) );
  CLKINVX1 U137 ( .A(a[0]), .Y(n159) );
  CLKINVX1 U140 ( .A(n198), .Y(n189) );
  CLKINVX1 U141 ( .A(n200), .Y(n190) );
  CLKINVX1 U142 ( .A(n199), .Y(n191) );
  CLKINVX1 U143 ( .A(n158), .Y(n142) );
  CLKINVX1 U144 ( .A(n142), .Y(n192) );
  CLKINVX1 U145 ( .A(n156), .Y(n140) );
  CLKINVX1 U146 ( .A(n140), .Y(n193) );
  CLKINVX1 U147 ( .A(n197), .Y(n194) );
  CLKINVX1 U148 ( .A(b[0]), .Y(n131) );
  CLKINVX1 U149 ( .A(n131), .Y(n195) );
  NAND2BXL U150 ( .AN(n195), .B(a[1]), .Y(n123) );
  NAND2BXL U151 ( .AN(n195), .B(a[3]), .Y(n114) );
  CLKINVX1 U152 ( .A(n157), .Y(n141) );
  CLKINVX1 U153 ( .A(n141), .Y(n196) );
  NOR2BXL U154 ( .AN(n195), .B(n159), .Y(product[0]) );
  XNOR2XL U155 ( .A(a[7]), .B(b[0]), .Y(n95) );
  XNOR2XL U156 ( .A(a[1]), .B(b[0]), .Y(n122) );
  NOR2BXL U157 ( .AN(n195), .B(n192), .Y(n79) );
  XNOR2XL U158 ( .A(a[3]), .B(b[0]), .Y(n113) );
  NOR2BXL U159 ( .AN(n195), .B(n196), .Y(n71) );
  NAND2BXL U160 ( .AN(n195), .B(a[7]), .Y(n96) );
  NAND2BXL U161 ( .AN(n195), .B(a[5]), .Y(n105) );
  XNOR2XL U162 ( .A(a[5]), .B(b[0]), .Y(n104) );
  NOR2BXL U163 ( .AN(n195), .B(n193), .Y(n63) );
  CLKBUFX3 U164 ( .A(n159), .Y(n143) );
  CLKBUFX3 U165 ( .A(a[1]), .Y(n151) );
  CLKBUFX3 U166 ( .A(a[3]), .Y(n150) );
  CLKBUFX3 U167 ( .A(a[5]), .Y(n149) );
  CLKBUFX3 U168 ( .A(a[7]), .Y(n148) );
  AND2X2 U169 ( .A(n132), .B(n156), .Y(n197) );
  CLKINVX1 U170 ( .A(n197), .Y(n152) );
  AND2X2 U171 ( .A(n133), .B(n157), .Y(n198) );
  CLKINVX1 U172 ( .A(n198), .Y(n153) );
  AND2X2 U173 ( .A(n134), .B(n158), .Y(n199) );
  CLKINVX1 U174 ( .A(n199), .Y(n154) );
  AND2X2 U175 ( .A(n135), .B(n159), .Y(n200) );
  CLKINVX1 U176 ( .A(n200), .Y(n155) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_61 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n131, n132, n133, n134, n135, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200;

  CLKINVX1 U1 ( .A(n1), .Y(product[15]) );
  ADDFXL U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n78), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  CLKINVX1 U16 ( .A(n15), .Y(n16) );
  ADDFXL U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n22), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CLKINVX1 U19 ( .A(n21), .Y(n22) );
  CMPR42X1 U20 ( .A(n29), .B(n59), .C(n65), .D(n72), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n30), .D(n34), .ICI(n31), .S(n28), .ICO(
        n26), .CO(n27) );
  CLKINVX1 U22 ( .A(n29), .Y(n30) );
  CMPR42X1 U23 ( .A(n67), .B(n80), .C(n39), .D(n35), .ICI(n36), .S(n33), .ICO(
        n31), .CO(n32) );
  XNOR2X1 U24 ( .A(n73), .B(n61), .Y(n35) );
  OR2X1 U25 ( .A(n73), .B(n61), .Y(n34) );
  CMPR42X1 U26 ( .A(n52), .B(n62), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n81), .B(n68), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n69), .D(n75), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n53), .CI(n47), .CO(n44), .S(n45) );
  ADDHXL U30 ( .A(n83), .B(n70), .CO(n46), .S(n47) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n85), .B(n54), .CO(n50), .S(n51) );
  OAI22XL U33 ( .A0(n152), .A1(n144), .B0(n193), .B1(n96), .Y(n52) );
  AO21X1 U34 ( .A0(n152), .A1(n156), .B0(n88), .Y(n56) );
  OAI22XL U35 ( .A0(n152), .A1(n89), .B0(n193), .B1(n88), .Y(n15) );
  OAI22XL U36 ( .A0(n152), .A1(n90), .B0(n193), .B1(n89), .Y(n57) );
  OAI22XL U37 ( .A0(n152), .A1(n91), .B0(n193), .B1(n90), .Y(n58) );
  OAI22XL U38 ( .A0(n152), .A1(n92), .B0(n193), .B1(n91), .Y(n59) );
  OAI22XL U39 ( .A0(n152), .A1(n93), .B0(n156), .B1(n92), .Y(n60) );
  OAI22XL U40 ( .A0(n152), .A1(n94), .B0(n156), .B1(n93), .Y(n61) );
  OAI22XL U41 ( .A0(n194), .A1(n95), .B0(n156), .B1(n94), .Y(n62) );
  XNOR2X1 U43 ( .A(n148), .B(b[7]), .Y(n88) );
  XNOR2X1 U44 ( .A(n148), .B(b[6]), .Y(n89) );
  XNOR2X1 U45 ( .A(n148), .B(b[5]), .Y(n90) );
  XNOR2X1 U46 ( .A(n148), .B(b[4]), .Y(n91) );
  XNOR2X1 U47 ( .A(n148), .B(b[3]), .Y(n92) );
  XNOR2X1 U48 ( .A(n148), .B(b[2]), .Y(n93) );
  XNOR2X1 U49 ( .A(n148), .B(b[1]), .Y(n94) );
  OAI22XL U52 ( .A0(n153), .A1(n145), .B0(n196), .B1(n105), .Y(n53) );
  AO21X1 U53 ( .A0(n153), .A1(n157), .B0(n97), .Y(n64) );
  OAI22XL U54 ( .A0(n153), .A1(n98), .B0(n196), .B1(n97), .Y(n21) );
  OAI22XL U55 ( .A0(n153), .A1(n99), .B0(n196), .B1(n98), .Y(n65) );
  OAI22XL U56 ( .A0(n153), .A1(n100), .B0(n196), .B1(n99), .Y(n66) );
  OAI22XL U57 ( .A0(n153), .A1(n101), .B0(n196), .B1(n100), .Y(n67) );
  OAI22XL U58 ( .A0(n153), .A1(n102), .B0(n157), .B1(n101), .Y(n68) );
  OAI22XL U59 ( .A0(n153), .A1(n103), .B0(n157), .B1(n102), .Y(n69) );
  OAI22XL U60 ( .A0(n189), .A1(n104), .B0(n157), .B1(n103), .Y(n70) );
  XNOR2X1 U62 ( .A(n149), .B(b[7]), .Y(n97) );
  XNOR2X1 U63 ( .A(n149), .B(b[6]), .Y(n98) );
  XNOR2X1 U64 ( .A(n149), .B(b[5]), .Y(n99) );
  XNOR2X1 U65 ( .A(n149), .B(b[4]), .Y(n100) );
  XNOR2X1 U66 ( .A(n149), .B(b[3]), .Y(n101) );
  XNOR2X1 U67 ( .A(n149), .B(b[2]), .Y(n102) );
  XNOR2X1 U68 ( .A(n149), .B(b[1]), .Y(n103) );
  OAI22XL U71 ( .A0(n154), .A1(n146), .B0(n192), .B1(n114), .Y(n54) );
  AO21X1 U72 ( .A0(n154), .A1(n158), .B0(n106), .Y(n72) );
  OAI22XL U73 ( .A0(n154), .A1(n107), .B0(n192), .B1(n106), .Y(n29) );
  OAI22XL U74 ( .A0(n154), .A1(n108), .B0(n192), .B1(n107), .Y(n73) );
  OAI22XL U75 ( .A0(n154), .A1(n109), .B0(n192), .B1(n108), .Y(n74) );
  OAI22XL U76 ( .A0(n154), .A1(n110), .B0(n192), .B1(n109), .Y(n75) );
  OAI22XL U77 ( .A0(n154), .A1(n111), .B0(n158), .B1(n110), .Y(n76) );
  OAI22XL U78 ( .A0(n154), .A1(n112), .B0(n158), .B1(n111), .Y(n77) );
  OAI22XL U79 ( .A0(n191), .A1(n113), .B0(n158), .B1(n112), .Y(n78) );
  XNOR2X1 U81 ( .A(n150), .B(b[7]), .Y(n106) );
  XNOR2X1 U82 ( .A(n150), .B(b[6]), .Y(n107) );
  XNOR2X1 U83 ( .A(n150), .B(b[5]), .Y(n108) );
  XNOR2X1 U84 ( .A(n150), .B(b[4]), .Y(n109) );
  XNOR2X1 U85 ( .A(n150), .B(b[3]), .Y(n110) );
  XNOR2X1 U86 ( .A(n150), .B(b[2]), .Y(n111) );
  XNOR2X1 U87 ( .A(n150), .B(b[1]), .Y(n112) );
  OAI22XL U90 ( .A0(n155), .A1(n147), .B0(n123), .B1(n143), .Y(n55) );
  AO21X1 U91 ( .A0(n155), .A1(n159), .B0(n115), .Y(n80) );
  OAI22XL U92 ( .A0(n155), .A1(n116), .B0(n115), .B1(n143), .Y(n81) );
  OAI22XL U93 ( .A0(n155), .A1(n117), .B0(n116), .B1(n143), .Y(n82) );
  OAI22XL U94 ( .A0(n155), .A1(n118), .B0(n117), .B1(n143), .Y(n83) );
  OAI22XL U95 ( .A0(n155), .A1(n119), .B0(n118), .B1(n143), .Y(n84) );
  OAI22XL U96 ( .A0(n155), .A1(n120), .B0(n119), .B1(n143), .Y(n85) );
  OAI22XL U97 ( .A0(n155), .A1(n121), .B0(n120), .B1(n143), .Y(n86) );
  OAI22XL U98 ( .A0(n190), .A1(n122), .B0(n121), .B1(n143), .Y(n87) );
  XNOR2X1 U100 ( .A(n151), .B(b[7]), .Y(n115) );
  XNOR2X1 U101 ( .A(n151), .B(b[6]), .Y(n116) );
  XNOR2X1 U102 ( .A(n151), .B(b[5]), .Y(n117) );
  XNOR2X1 U103 ( .A(n151), .B(b[4]), .Y(n118) );
  XNOR2X1 U104 ( .A(n151), .B(b[3]), .Y(n119) );
  XNOR2X1 U105 ( .A(n151), .B(b[2]), .Y(n120) );
  XNOR2X1 U106 ( .A(n151), .B(b[1]), .Y(n121) );
  CLKINVX1 U112 ( .A(n148), .Y(n144) );
  CLKINVX1 U116 ( .A(n149), .Y(n145) );
  CLKINVX1 U120 ( .A(n150), .Y(n146) );
  CLKINVX1 U124 ( .A(n151), .Y(n147) );
  XOR2X1 U127 ( .A(a[6]), .B(a[7]), .Y(n132) );
  XNOR2X1 U128 ( .A(a[6]), .B(a[5]), .Y(n156) );
  XOR2X1 U130 ( .A(a[4]), .B(a[5]), .Y(n133) );
  XNOR2X1 U131 ( .A(a[4]), .B(a[3]), .Y(n157) );
  XOR2X1 U133 ( .A(a[2]), .B(a[3]), .Y(n134) );
  XNOR2X1 U134 ( .A(a[2]), .B(a[1]), .Y(n158) );
  XOR2X1 U136 ( .A(a[0]), .B(a[1]), .Y(n135) );
  CLKINVX1 U137 ( .A(a[0]), .Y(n159) );
  CLKINVX1 U140 ( .A(n198), .Y(n189) );
  CLKINVX1 U141 ( .A(n200), .Y(n190) );
  CLKINVX1 U142 ( .A(n199), .Y(n191) );
  CLKINVX1 U143 ( .A(n158), .Y(n142) );
  CLKINVX1 U144 ( .A(n142), .Y(n192) );
  CLKINVX1 U145 ( .A(n156), .Y(n140) );
  CLKINVX1 U146 ( .A(n140), .Y(n193) );
  CLKINVX1 U147 ( .A(n197), .Y(n194) );
  CLKINVX1 U148 ( .A(b[0]), .Y(n131) );
  CLKINVX1 U149 ( .A(n131), .Y(n195) );
  NAND2BXL U150 ( .AN(n195), .B(a[1]), .Y(n123) );
  NAND2BXL U151 ( .AN(n195), .B(a[3]), .Y(n114) );
  CLKINVX1 U152 ( .A(n157), .Y(n141) );
  CLKINVX1 U153 ( .A(n141), .Y(n196) );
  NOR2BXL U154 ( .AN(n195), .B(n159), .Y(product[0]) );
  XNOR2XL U155 ( .A(a[7]), .B(b[0]), .Y(n95) );
  XNOR2XL U156 ( .A(a[1]), .B(b[0]), .Y(n122) );
  NOR2BXL U157 ( .AN(n195), .B(n192), .Y(n79) );
  XNOR2XL U158 ( .A(a[3]), .B(b[0]), .Y(n113) );
  NOR2BXL U159 ( .AN(n195), .B(n196), .Y(n71) );
  NAND2BXL U160 ( .AN(n195), .B(a[7]), .Y(n96) );
  NAND2BXL U161 ( .AN(n195), .B(a[5]), .Y(n105) );
  XNOR2XL U162 ( .A(a[5]), .B(b[0]), .Y(n104) );
  NOR2BXL U163 ( .AN(n195), .B(n193), .Y(n63) );
  CLKBUFX3 U164 ( .A(n159), .Y(n143) );
  CLKBUFX3 U165 ( .A(a[1]), .Y(n151) );
  CLKBUFX3 U166 ( .A(a[3]), .Y(n150) );
  CLKBUFX3 U167 ( .A(a[5]), .Y(n149) );
  CLKBUFX3 U168 ( .A(a[7]), .Y(n148) );
  AND2X2 U169 ( .A(n132), .B(n156), .Y(n197) );
  CLKINVX1 U170 ( .A(n197), .Y(n152) );
  AND2X2 U171 ( .A(n133), .B(n157), .Y(n198) );
  CLKINVX1 U172 ( .A(n198), .Y(n153) );
  AND2X2 U173 ( .A(n134), .B(n158), .Y(n199) );
  CLKINVX1 U174 ( .A(n199), .Y(n154) );
  AND2X2 U175 ( .A(n135), .B(n159), .Y(n200) );
  CLKINVX1 U176 ( .A(n200), .Y(n155) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_62 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n131, n132, n133, n134, n135, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200;

  CLKINVX1 U1 ( .A(n1), .Y(product[15]) );
  ADDFXL U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n78), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  CLKINVX1 U16 ( .A(n15), .Y(n16) );
  ADDFXL U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n22), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CLKINVX1 U19 ( .A(n21), .Y(n22) );
  CMPR42X1 U20 ( .A(n29), .B(n59), .C(n65), .D(n72), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n30), .D(n34), .ICI(n31), .S(n28), .ICO(
        n26), .CO(n27) );
  CLKINVX1 U22 ( .A(n29), .Y(n30) );
  CMPR42X1 U23 ( .A(n67), .B(n80), .C(n39), .D(n35), .ICI(n36), .S(n33), .ICO(
        n31), .CO(n32) );
  XNOR2X1 U24 ( .A(n73), .B(n61), .Y(n35) );
  OR2X1 U25 ( .A(n73), .B(n61), .Y(n34) );
  CMPR42X1 U26 ( .A(n52), .B(n62), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n81), .B(n68), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n69), .D(n75), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n53), .CI(n47), .CO(n44), .S(n45) );
  ADDHXL U30 ( .A(n83), .B(n70), .CO(n46), .S(n47) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n85), .B(n54), .CO(n50), .S(n51) );
  OAI22XL U33 ( .A0(n152), .A1(n144), .B0(n196), .B1(n96), .Y(n52) );
  AO21X1 U34 ( .A0(n152), .A1(n156), .B0(n88), .Y(n56) );
  OAI22XL U35 ( .A0(n152), .A1(n89), .B0(n196), .B1(n88), .Y(n15) );
  OAI22XL U36 ( .A0(n152), .A1(n90), .B0(n196), .B1(n89), .Y(n57) );
  OAI22XL U37 ( .A0(n152), .A1(n91), .B0(n196), .B1(n90), .Y(n58) );
  OAI22XL U38 ( .A0(n152), .A1(n92), .B0(n196), .B1(n91), .Y(n59) );
  OAI22XL U39 ( .A0(n152), .A1(n93), .B0(n156), .B1(n92), .Y(n60) );
  OAI22XL U40 ( .A0(n152), .A1(n94), .B0(n156), .B1(n93), .Y(n61) );
  OAI22XL U41 ( .A0(n194), .A1(n95), .B0(n156), .B1(n94), .Y(n62) );
  XNOR2X1 U43 ( .A(n148), .B(b[7]), .Y(n88) );
  XNOR2X1 U44 ( .A(n148), .B(b[6]), .Y(n89) );
  XNOR2X1 U45 ( .A(n148), .B(b[5]), .Y(n90) );
  XNOR2X1 U46 ( .A(n148), .B(b[4]), .Y(n91) );
  XNOR2X1 U47 ( .A(n148), .B(b[3]), .Y(n92) );
  XNOR2X1 U48 ( .A(n148), .B(b[2]), .Y(n93) );
  XNOR2X1 U49 ( .A(n148), .B(b[1]), .Y(n94) );
  OAI22XL U52 ( .A0(n153), .A1(n145), .B0(n193), .B1(n105), .Y(n53) );
  AO21X1 U53 ( .A0(n153), .A1(n157), .B0(n97), .Y(n64) );
  OAI22XL U54 ( .A0(n153), .A1(n98), .B0(n193), .B1(n97), .Y(n21) );
  OAI22XL U55 ( .A0(n153), .A1(n99), .B0(n193), .B1(n98), .Y(n65) );
  OAI22XL U56 ( .A0(n153), .A1(n100), .B0(n193), .B1(n99), .Y(n66) );
  OAI22XL U57 ( .A0(n153), .A1(n101), .B0(n193), .B1(n100), .Y(n67) );
  OAI22XL U58 ( .A0(n153), .A1(n102), .B0(n157), .B1(n101), .Y(n68) );
  OAI22XL U59 ( .A0(n153), .A1(n103), .B0(n157), .B1(n102), .Y(n69) );
  OAI22XL U60 ( .A0(n191), .A1(n104), .B0(n157), .B1(n103), .Y(n70) );
  XNOR2X1 U62 ( .A(n149), .B(b[7]), .Y(n97) );
  XNOR2X1 U63 ( .A(n149), .B(b[6]), .Y(n98) );
  XNOR2X1 U64 ( .A(n149), .B(b[5]), .Y(n99) );
  XNOR2X1 U65 ( .A(n149), .B(b[4]), .Y(n100) );
  XNOR2X1 U66 ( .A(n149), .B(b[3]), .Y(n101) );
  XNOR2X1 U67 ( .A(n149), .B(b[2]), .Y(n102) );
  XNOR2X1 U68 ( .A(n149), .B(b[1]), .Y(n103) );
  OAI22XL U71 ( .A0(n154), .A1(n146), .B0(n192), .B1(n114), .Y(n54) );
  AO21X1 U72 ( .A0(n154), .A1(n158), .B0(n106), .Y(n72) );
  OAI22XL U73 ( .A0(n154), .A1(n107), .B0(n192), .B1(n106), .Y(n29) );
  OAI22XL U74 ( .A0(n154), .A1(n108), .B0(n192), .B1(n107), .Y(n73) );
  OAI22XL U75 ( .A0(n154), .A1(n109), .B0(n192), .B1(n108), .Y(n74) );
  OAI22XL U76 ( .A0(n154), .A1(n110), .B0(n192), .B1(n109), .Y(n75) );
  OAI22XL U77 ( .A0(n154), .A1(n111), .B0(n158), .B1(n110), .Y(n76) );
  OAI22XL U78 ( .A0(n154), .A1(n112), .B0(n158), .B1(n111), .Y(n77) );
  OAI22XL U79 ( .A0(n190), .A1(n113), .B0(n158), .B1(n112), .Y(n78) );
  XNOR2X1 U81 ( .A(n150), .B(b[7]), .Y(n106) );
  XNOR2X1 U82 ( .A(n150), .B(b[6]), .Y(n107) );
  XNOR2X1 U83 ( .A(n150), .B(b[5]), .Y(n108) );
  XNOR2X1 U84 ( .A(n150), .B(b[4]), .Y(n109) );
  XNOR2X1 U85 ( .A(n150), .B(b[3]), .Y(n110) );
  XNOR2X1 U86 ( .A(n150), .B(b[2]), .Y(n111) );
  XNOR2X1 U87 ( .A(n150), .B(b[1]), .Y(n112) );
  OAI22XL U90 ( .A0(n155), .A1(n147), .B0(n123), .B1(n143), .Y(n55) );
  AO21X1 U91 ( .A0(n155), .A1(n159), .B0(n115), .Y(n80) );
  OAI22XL U92 ( .A0(n155), .A1(n116), .B0(n115), .B1(n143), .Y(n81) );
  OAI22XL U93 ( .A0(n155), .A1(n117), .B0(n116), .B1(n143), .Y(n82) );
  OAI22XL U94 ( .A0(n155), .A1(n118), .B0(n117), .B1(n143), .Y(n83) );
  OAI22XL U95 ( .A0(n155), .A1(n119), .B0(n118), .B1(n143), .Y(n84) );
  OAI22XL U96 ( .A0(n155), .A1(n120), .B0(n119), .B1(n143), .Y(n85) );
  OAI22XL U97 ( .A0(n155), .A1(n121), .B0(n120), .B1(n143), .Y(n86) );
  OAI22XL U98 ( .A0(n189), .A1(n122), .B0(n121), .B1(n143), .Y(n87) );
  XNOR2X1 U100 ( .A(n151), .B(b[7]), .Y(n115) );
  XNOR2X1 U101 ( .A(n151), .B(b[6]), .Y(n116) );
  XNOR2X1 U102 ( .A(n151), .B(b[5]), .Y(n117) );
  XNOR2X1 U103 ( .A(n151), .B(b[4]), .Y(n118) );
  XNOR2X1 U104 ( .A(n151), .B(b[3]), .Y(n119) );
  XNOR2X1 U105 ( .A(n151), .B(b[2]), .Y(n120) );
  XNOR2X1 U106 ( .A(n151), .B(b[1]), .Y(n121) );
  CLKINVX1 U112 ( .A(n148), .Y(n144) );
  CLKINVX1 U116 ( .A(n149), .Y(n145) );
  CLKINVX1 U120 ( .A(n150), .Y(n146) );
  CLKINVX1 U124 ( .A(n151), .Y(n147) );
  XOR2X1 U127 ( .A(a[6]), .B(a[7]), .Y(n132) );
  XNOR2X1 U128 ( .A(a[6]), .B(a[5]), .Y(n156) );
  XOR2X1 U130 ( .A(a[4]), .B(a[5]), .Y(n133) );
  XNOR2X1 U131 ( .A(a[4]), .B(a[3]), .Y(n157) );
  XOR2X1 U133 ( .A(a[2]), .B(a[3]), .Y(n134) );
  XNOR2X1 U134 ( .A(a[2]), .B(a[1]), .Y(n158) );
  XOR2X1 U136 ( .A(a[0]), .B(a[1]), .Y(n135) );
  CLKINVX1 U137 ( .A(a[0]), .Y(n159) );
  CLKINVX1 U140 ( .A(n200), .Y(n189) );
  CLKINVX1 U141 ( .A(n199), .Y(n190) );
  CLKINVX1 U142 ( .A(n198), .Y(n191) );
  CLKINVX1 U143 ( .A(n158), .Y(n142) );
  CLKINVX1 U144 ( .A(n142), .Y(n192) );
  CLKINVX1 U145 ( .A(n157), .Y(n141) );
  CLKINVX1 U146 ( .A(n141), .Y(n193) );
  CLKINVX1 U147 ( .A(n197), .Y(n194) );
  CLKINVX1 U148 ( .A(b[0]), .Y(n131) );
  CLKINVX1 U149 ( .A(n131), .Y(n195) );
  NAND2BXL U150 ( .AN(n195), .B(a[1]), .Y(n123) );
  NAND2BXL U151 ( .AN(n195), .B(a[3]), .Y(n114) );
  CLKINVX1 U152 ( .A(n156), .Y(n140) );
  CLKINVX1 U153 ( .A(n140), .Y(n196) );
  NOR2BXL U154 ( .AN(n195), .B(n159), .Y(product[0]) );
  XNOR2XL U155 ( .A(a[7]), .B(b[0]), .Y(n95) );
  XNOR2XL U156 ( .A(a[1]), .B(b[0]), .Y(n122) );
  NOR2BXL U157 ( .AN(n195), .B(n192), .Y(n79) );
  XNOR2XL U158 ( .A(a[3]), .B(b[0]), .Y(n113) );
  NOR2BXL U159 ( .AN(n195), .B(n193), .Y(n71) );
  NAND2BXL U160 ( .AN(n195), .B(a[7]), .Y(n96) );
  NAND2BXL U161 ( .AN(n195), .B(a[5]), .Y(n105) );
  XNOR2XL U162 ( .A(a[5]), .B(b[0]), .Y(n104) );
  NOR2BXL U163 ( .AN(n195), .B(n196), .Y(n63) );
  CLKBUFX3 U164 ( .A(n159), .Y(n143) );
  CLKBUFX3 U165 ( .A(a[1]), .Y(n151) );
  CLKBUFX3 U166 ( .A(a[3]), .Y(n150) );
  CLKBUFX3 U167 ( .A(a[5]), .Y(n149) );
  CLKBUFX3 U168 ( .A(a[7]), .Y(n148) );
  AND2X2 U169 ( .A(n132), .B(n156), .Y(n197) );
  CLKINVX1 U170 ( .A(n197), .Y(n152) );
  AND2X2 U171 ( .A(n133), .B(n157), .Y(n198) );
  CLKINVX1 U172 ( .A(n198), .Y(n153) );
  AND2X2 U173 ( .A(n134), .B(n158), .Y(n199) );
  CLKINVX1 U174 ( .A(n199), .Y(n154) );
  AND2X2 U175 ( .A(n135), .B(n159), .Y(n200) );
  CLKINVX1 U176 ( .A(n200), .Y(n155) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_63 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n131, n132, n133, n134, n135, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200;

  CLKINVX1 U1 ( .A(n1), .Y(product[15]) );
  ADDFXL U2 ( .A(n56), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n18), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n24), .B(n20), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n43), .B(n44), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n78), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  CLKINVX1 U16 ( .A(n15), .Y(n16) );
  ADDFXL U17 ( .A(n57), .B(n21), .CI(n64), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n22), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CLKINVX1 U19 ( .A(n21), .Y(n22) );
  CMPR42X1 U20 ( .A(n29), .B(n59), .C(n65), .D(n72), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n30), .D(n34), .ICI(n31), .S(n28), .ICO(
        n26), .CO(n27) );
  CLKINVX1 U22 ( .A(n29), .Y(n30) );
  CMPR42X1 U23 ( .A(n67), .B(n80), .C(n39), .D(n35), .ICI(n36), .S(n33), .ICO(
        n31), .CO(n32) );
  XNOR2X1 U24 ( .A(n73), .B(n61), .Y(n35) );
  OR2X1 U25 ( .A(n73), .B(n61), .Y(n34) );
  CMPR42X1 U26 ( .A(n52), .B(n62), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n81), .B(n68), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n69), .D(n75), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n53), .CI(n47), .CO(n44), .S(n45) );
  ADDHXL U30 ( .A(n83), .B(n70), .CO(n46), .S(n47) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n85), .B(n54), .CO(n50), .S(n51) );
  OAI22XL U33 ( .A0(n152), .A1(n144), .B0(n196), .B1(n96), .Y(n52) );
  AO21X1 U34 ( .A0(n152), .A1(n156), .B0(n88), .Y(n56) );
  OAI22XL U35 ( .A0(n152), .A1(n89), .B0(n196), .B1(n88), .Y(n15) );
  OAI22XL U36 ( .A0(n152), .A1(n90), .B0(n196), .B1(n89), .Y(n57) );
  OAI22XL U37 ( .A0(n152), .A1(n91), .B0(n196), .B1(n90), .Y(n58) );
  OAI22XL U38 ( .A0(n152), .A1(n92), .B0(n196), .B1(n91), .Y(n59) );
  OAI22XL U39 ( .A0(n152), .A1(n93), .B0(n156), .B1(n92), .Y(n60) );
  OAI22XL U40 ( .A0(n152), .A1(n94), .B0(n156), .B1(n93), .Y(n61) );
  OAI22XL U41 ( .A0(n194), .A1(n95), .B0(n156), .B1(n94), .Y(n62) );
  XNOR2X1 U43 ( .A(n148), .B(b[7]), .Y(n88) );
  XNOR2X1 U44 ( .A(n148), .B(b[6]), .Y(n89) );
  XNOR2X1 U45 ( .A(n148), .B(b[5]), .Y(n90) );
  XNOR2X1 U46 ( .A(n148), .B(b[4]), .Y(n91) );
  XNOR2X1 U47 ( .A(n148), .B(b[3]), .Y(n92) );
  XNOR2X1 U48 ( .A(n148), .B(b[2]), .Y(n93) );
  XNOR2X1 U49 ( .A(n148), .B(b[1]), .Y(n94) );
  OAI22XL U52 ( .A0(n153), .A1(n145), .B0(n193), .B1(n105), .Y(n53) );
  AO21X1 U53 ( .A0(n153), .A1(n157), .B0(n97), .Y(n64) );
  OAI22XL U54 ( .A0(n153), .A1(n98), .B0(n193), .B1(n97), .Y(n21) );
  OAI22XL U55 ( .A0(n153), .A1(n99), .B0(n193), .B1(n98), .Y(n65) );
  OAI22XL U56 ( .A0(n153), .A1(n100), .B0(n193), .B1(n99), .Y(n66) );
  OAI22XL U57 ( .A0(n153), .A1(n101), .B0(n193), .B1(n100), .Y(n67) );
  OAI22XL U58 ( .A0(n153), .A1(n102), .B0(n157), .B1(n101), .Y(n68) );
  OAI22XL U59 ( .A0(n153), .A1(n103), .B0(n157), .B1(n102), .Y(n69) );
  OAI22XL U60 ( .A0(n191), .A1(n104), .B0(n157), .B1(n103), .Y(n70) );
  XNOR2X1 U62 ( .A(n149), .B(b[7]), .Y(n97) );
  XNOR2X1 U63 ( .A(n149), .B(b[6]), .Y(n98) );
  XNOR2X1 U64 ( .A(n149), .B(b[5]), .Y(n99) );
  XNOR2X1 U65 ( .A(n149), .B(b[4]), .Y(n100) );
  XNOR2X1 U66 ( .A(n149), .B(b[3]), .Y(n101) );
  XNOR2X1 U67 ( .A(n149), .B(b[2]), .Y(n102) );
  XNOR2X1 U68 ( .A(n149), .B(b[1]), .Y(n103) );
  OAI22XL U71 ( .A0(n154), .A1(n146), .B0(n192), .B1(n114), .Y(n54) );
  AO21X1 U72 ( .A0(n154), .A1(n158), .B0(n106), .Y(n72) );
  OAI22XL U73 ( .A0(n154), .A1(n107), .B0(n192), .B1(n106), .Y(n29) );
  OAI22XL U74 ( .A0(n154), .A1(n108), .B0(n192), .B1(n107), .Y(n73) );
  OAI22XL U75 ( .A0(n154), .A1(n109), .B0(n192), .B1(n108), .Y(n74) );
  OAI22XL U76 ( .A0(n154), .A1(n110), .B0(n192), .B1(n109), .Y(n75) );
  OAI22XL U77 ( .A0(n154), .A1(n111), .B0(n158), .B1(n110), .Y(n76) );
  OAI22XL U78 ( .A0(n154), .A1(n112), .B0(n158), .B1(n111), .Y(n77) );
  OAI22XL U79 ( .A0(n190), .A1(n113), .B0(n158), .B1(n112), .Y(n78) );
  XNOR2X1 U81 ( .A(n150), .B(b[7]), .Y(n106) );
  XNOR2X1 U82 ( .A(n150), .B(b[6]), .Y(n107) );
  XNOR2X1 U83 ( .A(n150), .B(b[5]), .Y(n108) );
  XNOR2X1 U84 ( .A(n150), .B(b[4]), .Y(n109) );
  XNOR2X1 U85 ( .A(n150), .B(b[3]), .Y(n110) );
  XNOR2X1 U86 ( .A(n150), .B(b[2]), .Y(n111) );
  XNOR2X1 U87 ( .A(n150), .B(b[1]), .Y(n112) );
  OAI22XL U90 ( .A0(n155), .A1(n147), .B0(n123), .B1(n143), .Y(n55) );
  AO21X1 U91 ( .A0(n155), .A1(n159), .B0(n115), .Y(n80) );
  OAI22XL U92 ( .A0(n155), .A1(n116), .B0(n115), .B1(n143), .Y(n81) );
  OAI22XL U93 ( .A0(n155), .A1(n117), .B0(n116), .B1(n143), .Y(n82) );
  OAI22XL U94 ( .A0(n155), .A1(n118), .B0(n117), .B1(n143), .Y(n83) );
  OAI22XL U95 ( .A0(n155), .A1(n119), .B0(n118), .B1(n143), .Y(n84) );
  OAI22XL U96 ( .A0(n155), .A1(n120), .B0(n119), .B1(n143), .Y(n85) );
  OAI22XL U97 ( .A0(n155), .A1(n121), .B0(n120), .B1(n143), .Y(n86) );
  OAI22XL U98 ( .A0(n189), .A1(n122), .B0(n121), .B1(n143), .Y(n87) );
  XNOR2X1 U100 ( .A(n151), .B(b[7]), .Y(n115) );
  XNOR2X1 U101 ( .A(n151), .B(b[6]), .Y(n116) );
  XNOR2X1 U102 ( .A(n151), .B(b[5]), .Y(n117) );
  XNOR2X1 U103 ( .A(n151), .B(b[4]), .Y(n118) );
  XNOR2X1 U104 ( .A(n151), .B(b[3]), .Y(n119) );
  XNOR2X1 U105 ( .A(n151), .B(b[2]), .Y(n120) );
  XNOR2X1 U106 ( .A(n151), .B(b[1]), .Y(n121) );
  CLKINVX1 U112 ( .A(n148), .Y(n144) );
  CLKINVX1 U116 ( .A(n149), .Y(n145) );
  CLKINVX1 U120 ( .A(n150), .Y(n146) );
  CLKINVX1 U124 ( .A(n151), .Y(n147) );
  XOR2X1 U127 ( .A(a[6]), .B(a[7]), .Y(n132) );
  XNOR2X1 U128 ( .A(a[6]), .B(a[5]), .Y(n156) );
  XOR2X1 U130 ( .A(a[4]), .B(a[5]), .Y(n133) );
  XNOR2X1 U131 ( .A(a[4]), .B(a[3]), .Y(n157) );
  XOR2X1 U133 ( .A(a[2]), .B(a[3]), .Y(n134) );
  XNOR2X1 U134 ( .A(a[2]), .B(a[1]), .Y(n158) );
  XOR2X1 U136 ( .A(a[0]), .B(a[1]), .Y(n135) );
  CLKINVX1 U137 ( .A(a[0]), .Y(n159) );
  CLKINVX1 U140 ( .A(n200), .Y(n189) );
  CLKINVX1 U141 ( .A(n199), .Y(n190) );
  CLKINVX1 U142 ( .A(n198), .Y(n191) );
  CLKINVX1 U143 ( .A(n158), .Y(n142) );
  CLKINVX1 U144 ( .A(n142), .Y(n192) );
  CLKINVX1 U145 ( .A(n157), .Y(n141) );
  CLKINVX1 U146 ( .A(n141), .Y(n193) );
  CLKINVX1 U147 ( .A(n197), .Y(n194) );
  CLKINVX1 U148 ( .A(b[0]), .Y(n131) );
  CLKINVX1 U149 ( .A(n131), .Y(n195) );
  NAND2BXL U150 ( .AN(n195), .B(a[1]), .Y(n123) );
  NAND2BXL U151 ( .AN(n195), .B(a[3]), .Y(n114) );
  CLKINVX1 U152 ( .A(n156), .Y(n140) );
  CLKINVX1 U153 ( .A(n140), .Y(n196) );
  NOR2BXL U154 ( .AN(n195), .B(n159), .Y(product[0]) );
  XNOR2XL U155 ( .A(a[7]), .B(b[0]), .Y(n95) );
  XNOR2XL U156 ( .A(a[1]), .B(b[0]), .Y(n122) );
  NOR2BXL U157 ( .AN(n195), .B(n192), .Y(n79) );
  XNOR2XL U158 ( .A(a[3]), .B(b[0]), .Y(n113) );
  NOR2BXL U159 ( .AN(n195), .B(n193), .Y(n71) );
  NAND2BXL U160 ( .AN(n195), .B(a[7]), .Y(n96) );
  NAND2BXL U161 ( .AN(n195), .B(a[5]), .Y(n105) );
  XNOR2XL U162 ( .A(a[5]), .B(b[0]), .Y(n104) );
  NOR2BXL U163 ( .AN(n195), .B(n196), .Y(n63) );
  CLKBUFX3 U164 ( .A(n159), .Y(n143) );
  CLKBUFX3 U165 ( .A(a[1]), .Y(n151) );
  CLKBUFX3 U166 ( .A(a[3]), .Y(n150) );
  CLKBUFX3 U167 ( .A(a[5]), .Y(n149) );
  CLKBUFX3 U168 ( .A(a[7]), .Y(n148) );
  AND2X2 U169 ( .A(n132), .B(n156), .Y(n197) );
  CLKINVX1 U170 ( .A(n197), .Y(n152) );
  AND2X2 U171 ( .A(n133), .B(n157), .Y(n198) );
  CLKINVX1 U172 ( .A(n198), .Y(n153) );
  AND2X2 U173 ( .A(n134), .B(n158), .Y(n199) );
  CLKINVX1 U174 ( .A(n199), .Y(n154) );
  AND2X2 U175 ( .A(n135), .B(n159), .Y(n200) );
  CLKINVX1 U176 ( .A(n200), .Y(n155) );
endmodule


module vec_product_BIT_WIDTH8_VEC_SIZE32 ( i_a, i_b, o_product );
  input [255:0] i_a;
  input [255:0] i_b;
  output [20:0] o_product;
  wire   \tree_sums[4][1][9] , \tree_sums[4][1][8] , \tree_sums[4][1][7] ,
         \tree_sums[4][1][6] , \tree_sums[4][1][5] , \tree_sums[4][1][4] ,
         \tree_sums[4][1][3] , \tree_sums[4][1][2] , \tree_sums[4][1][20] ,
         \tree_sums[4][1][1] , \tree_sums[4][1][18] , \tree_sums[4][1][17] ,
         \tree_sums[4][1][16] , \tree_sums[4][1][15] , \tree_sums[4][1][14] ,
         \tree_sums[4][1][13] , \tree_sums[4][1][12] , \tree_sums[4][1][11] ,
         \tree_sums[4][1][10] , \tree_sums[4][1][0] , \tree_sums[3][3][9] ,
         \tree_sums[3][3][8] , \tree_sums[3][3][7] , \tree_sums[3][3][6] ,
         \tree_sums[3][3][5] , \tree_sums[3][3][4] , \tree_sums[3][3][3] ,
         \tree_sums[3][3][2] , \tree_sums[3][3][20] , \tree_sums[3][3][1] ,
         \tree_sums[3][3][17] , \tree_sums[3][3][16] , \tree_sums[3][3][15] ,
         \tree_sums[3][3][14] , \tree_sums[3][3][13] , \tree_sums[3][3][12] ,
         \tree_sums[3][3][11] , \tree_sums[3][3][10] , \tree_sums[3][3][0] ,
         \tree_sums[3][2][9] , \tree_sums[3][2][8] , \tree_sums[3][2][7] ,
         \tree_sums[3][2][6] , \tree_sums[3][2][5] , \tree_sums[3][2][4] ,
         \tree_sums[3][2][3] , \tree_sums[3][2][2] , \tree_sums[3][2][20] ,
         \tree_sums[3][2][1] , \tree_sums[3][2][17] , \tree_sums[3][2][16] ,
         \tree_sums[3][2][15] , \tree_sums[3][2][14] , \tree_sums[3][2][13] ,
         \tree_sums[3][2][12] , \tree_sums[3][2][11] , \tree_sums[3][2][10] ,
         \tree_sums[3][2][0] , \tree_sums[3][1][9] , \tree_sums[3][1][8] ,
         \tree_sums[3][1][7] , \tree_sums[3][1][6] , \tree_sums[3][1][5] ,
         \tree_sums[3][1][4] , \tree_sums[3][1][3] , \tree_sums[3][1][2] ,
         \tree_sums[3][1][20] , \tree_sums[3][1][1] , \tree_sums[3][1][17] ,
         \tree_sums[3][1][16] , \tree_sums[3][1][15] , \tree_sums[3][1][14] ,
         \tree_sums[3][1][13] , \tree_sums[3][1][12] , \tree_sums[3][1][11] ,
         \tree_sums[3][1][10] , \tree_sums[3][1][0] , \tree_sums[2][7][9] ,
         \tree_sums[2][7][8] , \tree_sums[2][7][7] , \tree_sums[2][7][6] ,
         \tree_sums[2][7][5] , \tree_sums[2][7][4] , \tree_sums[2][7][3] ,
         \tree_sums[2][7][2] , \tree_sums[2][7][20] , \tree_sums[2][7][1] ,
         \tree_sums[2][7][16] , \tree_sums[2][7][15] , \tree_sums[2][7][14] ,
         \tree_sums[2][7][13] , \tree_sums[2][7][12] , \tree_sums[2][7][11] ,
         \tree_sums[2][7][10] , \tree_sums[2][7][0] , \tree_sums[2][6][9] ,
         \tree_sums[2][6][8] , \tree_sums[2][6][7] , \tree_sums[2][6][6] ,
         \tree_sums[2][6][5] , \tree_sums[2][6][4] , \tree_sums[2][6][3] ,
         \tree_sums[2][6][2] , \tree_sums[2][6][20] , \tree_sums[2][6][1] ,
         \tree_sums[2][6][16] , \tree_sums[2][6][15] , \tree_sums[2][6][14] ,
         \tree_sums[2][6][13] , \tree_sums[2][6][12] , \tree_sums[2][6][11] ,
         \tree_sums[2][6][10] , \tree_sums[2][6][0] , \tree_sums[2][5][9] ,
         \tree_sums[2][5][8] , \tree_sums[2][5][7] , \tree_sums[2][5][6] ,
         \tree_sums[2][5][5] , \tree_sums[2][5][4] , \tree_sums[2][5][3] ,
         \tree_sums[2][5][2] , \tree_sums[2][5][20] , \tree_sums[2][5][1] ,
         \tree_sums[2][5][16] , \tree_sums[2][5][15] , \tree_sums[2][5][14] ,
         \tree_sums[2][5][13] , \tree_sums[2][5][12] , \tree_sums[2][5][11] ,
         \tree_sums[2][5][10] , \tree_sums[2][5][0] , \tree_sums[2][4][9] ,
         \tree_sums[2][4][8] , \tree_sums[2][4][7] , \tree_sums[2][4][6] ,
         \tree_sums[2][4][5] , \tree_sums[2][4][4] , \tree_sums[2][4][3] ,
         \tree_sums[2][4][2] , \tree_sums[2][4][20] , \tree_sums[2][4][1] ,
         \tree_sums[2][4][16] , \tree_sums[2][4][15] , \tree_sums[2][4][14] ,
         \tree_sums[2][4][13] , \tree_sums[2][4][12] , \tree_sums[2][4][11] ,
         \tree_sums[2][4][10] , \tree_sums[2][4][0] , \tree_sums[1][9][9] ,
         \tree_sums[1][9][8] , \tree_sums[1][9][7] , \tree_sums[1][9][6] ,
         \tree_sums[1][9][5] , \tree_sums[1][9][4] , \tree_sums[1][9][3] ,
         \tree_sums[1][9][2] , \tree_sums[1][9][20] , \tree_sums[1][9][1] ,
         \tree_sums[1][9][15] , \tree_sums[1][9][14] , \tree_sums[1][9][13] ,
         \tree_sums[1][9][12] , \tree_sums[1][9][11] , \tree_sums[1][9][10] ,
         \tree_sums[1][9][0] , \tree_sums[1][8][9] , \tree_sums[1][8][8] ,
         \tree_sums[1][8][7] , \tree_sums[1][8][6] , \tree_sums[1][8][5] ,
         \tree_sums[1][8][4] , \tree_sums[1][8][3] , \tree_sums[1][8][2] ,
         \tree_sums[1][8][20] , \tree_sums[1][8][1] , \tree_sums[1][8][15] ,
         \tree_sums[1][8][14] , \tree_sums[1][8][13] , \tree_sums[1][8][12] ,
         \tree_sums[1][8][11] , \tree_sums[1][8][10] , \tree_sums[1][8][0] ,
         \tree_sums[1][7][9] , \tree_sums[1][7][8] , \tree_sums[1][7][7] ,
         \tree_sums[1][7][6] , \tree_sums[1][7][5] , \tree_sums[1][7][4] ,
         \tree_sums[1][7][3] , \tree_sums[1][7][2] , \tree_sums[1][7][20] ,
         \tree_sums[1][7][1] , \tree_sums[1][7][15] , \tree_sums[1][7][14] ,
         \tree_sums[1][7][13] , \tree_sums[1][7][12] , \tree_sums[1][7][11] ,
         \tree_sums[1][7][10] , \tree_sums[1][7][0] , \tree_sums[1][15][9] ,
         \tree_sums[1][15][8] , \tree_sums[1][15][7] , \tree_sums[1][15][6] ,
         \tree_sums[1][15][5] , \tree_sums[1][15][4] , \tree_sums[1][15][3] ,
         \tree_sums[1][15][2] , \tree_sums[1][15][20] , \tree_sums[1][15][1] ,
         \tree_sums[1][15][15] , \tree_sums[1][15][14] ,
         \tree_sums[1][15][13] , \tree_sums[1][15][12] ,
         \tree_sums[1][15][11] , \tree_sums[1][15][10] , \tree_sums[1][15][0] ,
         \tree_sums[1][14][9] , \tree_sums[1][14][8] , \tree_sums[1][14][7] ,
         \tree_sums[1][14][6] , \tree_sums[1][14][5] , \tree_sums[1][14][4] ,
         \tree_sums[1][14][3] , \tree_sums[1][14][2] , \tree_sums[1][14][20] ,
         \tree_sums[1][14][1] , \tree_sums[1][14][15] , \tree_sums[1][14][14] ,
         \tree_sums[1][14][13] , \tree_sums[1][14][12] ,
         \tree_sums[1][14][11] , \tree_sums[1][14][10] , \tree_sums[1][14][0] ,
         \tree_sums[1][13][9] , \tree_sums[1][13][8] , \tree_sums[1][13][7] ,
         \tree_sums[1][13][6] , \tree_sums[1][13][5] , \tree_sums[1][13][4] ,
         \tree_sums[1][13][3] , \tree_sums[1][13][2] , \tree_sums[1][13][20] ,
         \tree_sums[1][13][1] , \tree_sums[1][13][15] , \tree_sums[1][13][14] ,
         \tree_sums[1][13][13] , \tree_sums[1][13][12] ,
         \tree_sums[1][13][11] , \tree_sums[1][13][10] , \tree_sums[1][13][0] ,
         \tree_sums[1][12][9] , \tree_sums[1][12][8] , \tree_sums[1][12][7] ,
         \tree_sums[1][12][6] , \tree_sums[1][12][5] , \tree_sums[1][12][4] ,
         \tree_sums[1][12][3] , \tree_sums[1][12][2] , \tree_sums[1][12][20] ,
         \tree_sums[1][12][1] , \tree_sums[1][12][15] , \tree_sums[1][12][14] ,
         \tree_sums[1][12][13] , \tree_sums[1][12][12] ,
         \tree_sums[1][12][11] , \tree_sums[1][12][10] , \tree_sums[1][12][0] ,
         \tree_sums[1][11][9] , \tree_sums[1][11][8] , \tree_sums[1][11][7] ,
         \tree_sums[1][11][6] , \tree_sums[1][11][5] , \tree_sums[1][11][4] ,
         \tree_sums[1][11][3] , \tree_sums[1][11][2] , \tree_sums[1][11][20] ,
         \tree_sums[1][11][1] , \tree_sums[1][11][15] , \tree_sums[1][11][14] ,
         \tree_sums[1][11][13] , \tree_sums[1][11][12] ,
         \tree_sums[1][11][11] , \tree_sums[1][11][10] , \tree_sums[1][11][0] ,
         \tree_sums[1][10][9] , \tree_sums[1][10][8] , \tree_sums[1][10][7] ,
         \tree_sums[1][10][6] , \tree_sums[1][10][5] , \tree_sums[1][10][4] ,
         \tree_sums[1][10][3] , \tree_sums[1][10][2] , \tree_sums[1][10][20] ,
         \tree_sums[1][10][1] , \tree_sums[1][10][15] , \tree_sums[1][10][14] ,
         \tree_sums[1][10][13] , \tree_sums[1][10][12] ,
         \tree_sums[1][10][11] , \tree_sums[1][10][10] , \tree_sums[1][10][0] ,
         \mult[9][9] , \mult[9][8] , \mult[9][7] , \mult[9][6] , \mult[9][5] ,
         \mult[9][4] , \mult[9][3] , \mult[9][2] , \mult[9][1] , \mult[9][15] ,
         \mult[9][14] , \mult[9][13] , \mult[9][12] , \mult[9][11] ,
         \mult[9][10] , \mult[9][0] , \mult[8][9] , \mult[8][8] , \mult[8][7] ,
         \mult[8][6] , \mult[8][5] , \mult[8][4] , \mult[8][3] , \mult[8][2] ,
         \mult[8][1] , \mult[8][15] , \mult[8][14] , \mult[8][13] ,
         \mult[8][12] , \mult[8][11] , \mult[8][10] , \mult[8][0] ,
         \mult[7][9] , \mult[7][8] , \mult[7][7] , \mult[7][6] , \mult[7][5] ,
         \mult[7][4] , \mult[7][3] , \mult[7][2] , \mult[7][1] , \mult[7][15] ,
         \mult[7][14] , \mult[7][13] , \mult[7][12] , \mult[7][11] ,
         \mult[7][10] , \mult[7][0] , \mult[6][9] , \mult[6][8] , \mult[6][7] ,
         \mult[6][6] , \mult[6][5] , \mult[6][4] , \mult[6][3] , \mult[6][2] ,
         \mult[6][1] , \mult[6][15] , \mult[6][14] , \mult[6][13] ,
         \mult[6][12] , \mult[6][11] , \mult[6][10] , \mult[6][0] ,
         \mult[5][9] , \mult[5][8] , \mult[5][7] , \mult[5][6] , \mult[5][5] ,
         \mult[5][4] , \mult[5][3] , \mult[5][2] , \mult[5][1] , \mult[5][15] ,
         \mult[5][14] , \mult[5][13] , \mult[5][12] , \mult[5][11] ,
         \mult[5][10] , \mult[5][0] , \mult[4][9] , \mult[4][8] , \mult[4][7] ,
         \mult[4][6] , \mult[4][5] , \mult[4][4] , \mult[4][3] , \mult[4][2] ,
         \mult[4][1] , \mult[4][15] , \mult[4][14] , \mult[4][13] ,
         \mult[4][12] , \mult[4][11] , \mult[4][10] , \mult[4][0] ,
         \mult[3][9] , \mult[3][8] , \mult[3][7] , \mult[3][6] , \mult[3][5] ,
         \mult[3][4] , \mult[3][3] , \mult[3][2] , \mult[3][1] , \mult[3][15] ,
         \mult[3][14] , \mult[3][13] , \mult[3][12] , \mult[3][11] ,
         \mult[3][10] , \mult[3][0] , \mult[31][9] , \mult[31][8] ,
         \mult[31][7] , \mult[31][6] , \mult[31][5] , \mult[31][4] ,
         \mult[31][3] , \mult[31][2] , \mult[31][1] , \mult[31][15] ,
         \mult[31][14] , \mult[31][13] , \mult[31][12] , \mult[31][11] ,
         \mult[31][10] , \mult[31][0] , \mult[30][9] , \mult[30][8] ,
         \mult[30][7] , \mult[30][6] , \mult[30][5] , \mult[30][4] ,
         \mult[30][3] , \mult[30][2] , \mult[30][1] , \mult[30][15] ,
         \mult[30][14] , \mult[30][13] , \mult[30][12] , \mult[30][11] ,
         \mult[30][10] , \mult[30][0] , \mult[2][9] , \mult[2][8] ,
         \mult[2][7] , \mult[2][6] , \mult[2][5] , \mult[2][4] , \mult[2][3] ,
         \mult[2][2] , \mult[2][1] , \mult[2][15] , \mult[2][14] ,
         \mult[2][13] , \mult[2][12] , \mult[2][11] , \mult[2][10] ,
         \mult[2][0] , \mult[29][9] , \mult[29][8] , \mult[29][7] ,
         \mult[29][6] , \mult[29][5] , \mult[29][4] , \mult[29][3] ,
         \mult[29][2] , \mult[29][1] , \mult[29][15] , \mult[29][14] ,
         \mult[29][13] , \mult[29][12] , \mult[29][11] , \mult[29][10] ,
         \mult[29][0] , \mult[28][9] , \mult[28][8] , \mult[28][7] ,
         \mult[28][6] , \mult[28][5] , \mult[28][4] , \mult[28][3] ,
         \mult[28][2] , \mult[28][1] , \mult[28][15] , \mult[28][14] ,
         \mult[28][13] , \mult[28][12] , \mult[28][11] , \mult[28][10] ,
         \mult[28][0] , \mult[27][9] , \mult[27][8] , \mult[27][7] ,
         \mult[27][6] , \mult[27][5] , \mult[27][4] , \mult[27][3] ,
         \mult[27][2] , \mult[27][1] , \mult[27][15] , \mult[27][14] ,
         \mult[27][13] , \mult[27][12] , \mult[27][11] , \mult[27][10] ,
         \mult[27][0] , \mult[26][9] , \mult[26][8] , \mult[26][7] ,
         \mult[26][6] , \mult[26][5] , \mult[26][4] , \mult[26][3] ,
         \mult[26][2] , \mult[26][1] , \mult[26][15] , \mult[26][14] ,
         \mult[26][13] , \mult[26][12] , \mult[26][11] , \mult[26][10] ,
         \mult[26][0] , \mult[25][9] , \mult[25][8] , \mult[25][7] ,
         \mult[25][6] , \mult[25][5] , \mult[25][4] , \mult[25][3] ,
         \mult[25][2] , \mult[25][1] , \mult[25][15] , \mult[25][14] ,
         \mult[25][13] , \mult[25][12] , \mult[25][11] , \mult[25][10] ,
         \mult[25][0] , \mult[24][9] , \mult[24][8] , \mult[24][7] ,
         \mult[24][6] , \mult[24][5] , \mult[24][4] , \mult[24][3] ,
         \mult[24][2] , \mult[24][1] , \mult[24][15] , \mult[24][14] ,
         \mult[24][13] , \mult[24][12] , \mult[24][11] , \mult[24][10] ,
         \mult[24][0] , \mult[23][9] , \mult[23][8] , \mult[23][7] ,
         \mult[23][6] , \mult[23][5] , \mult[23][4] , \mult[23][3] ,
         \mult[23][2] , \mult[23][1] , \mult[23][15] , \mult[23][14] ,
         \mult[23][13] , \mult[23][12] , \mult[23][11] , \mult[23][10] ,
         \mult[23][0] , \mult[22][9] , \mult[22][8] , \mult[22][7] ,
         \mult[22][6] , \mult[22][5] , \mult[22][4] , \mult[22][3] ,
         \mult[22][2] , \mult[22][1] , \mult[22][15] , \mult[22][14] ,
         \mult[22][13] , \mult[22][12] , \mult[22][11] , \mult[22][10] ,
         \mult[22][0] , \mult[21][9] , \mult[21][8] , \mult[21][7] ,
         \mult[21][6] , \mult[21][5] , \mult[21][4] , \mult[21][3] ,
         \mult[21][2] , \mult[21][1] , \mult[21][15] , \mult[21][14] ,
         \mult[21][13] , \mult[21][12] , \mult[21][11] , \mult[21][10] ,
         \mult[21][0] , \mult[20][9] , \mult[20][8] , \mult[20][7] ,
         \mult[20][6] , \mult[20][5] , \mult[20][4] , \mult[20][3] ,
         \mult[20][2] , \mult[20][1] , \mult[20][15] , \mult[20][14] ,
         \mult[20][13] , \mult[20][12] , \mult[20][11] , \mult[20][10] ,
         \mult[20][0] , \mult[1][9] , \mult[1][8] , \mult[1][7] , \mult[1][6] ,
         \mult[1][5] , \mult[1][4] , \mult[1][3] , \mult[1][2] , \mult[1][1] ,
         \mult[1][15] , \mult[1][14] , \mult[1][13] , \mult[1][12] ,
         \mult[1][11] , \mult[1][10] , \mult[1][0] , \mult[19][9] ,
         \mult[19][8] , \mult[19][7] , \mult[19][6] , \mult[19][5] ,
         \mult[19][4] , \mult[19][3] , \mult[19][2] , \mult[19][1] ,
         \mult[19][15] , \mult[19][14] , \mult[19][13] , \mult[19][12] ,
         \mult[19][11] , \mult[19][10] , \mult[19][0] , \mult[18][9] ,
         \mult[18][8] , \mult[18][7] , \mult[18][6] , \mult[18][5] ,
         \mult[18][4] , \mult[18][3] , \mult[18][2] , \mult[18][1] ,
         \mult[18][15] , \mult[18][14] , \mult[18][13] , \mult[18][12] ,
         \mult[18][11] , \mult[18][10] , \mult[18][0] , \mult[17][9] ,
         \mult[17][8] , \mult[17][7] , \mult[17][6] , \mult[17][5] ,
         \mult[17][4] , \mult[17][3] , \mult[17][2] , \mult[17][1] ,
         \mult[17][15] , \mult[17][14] , \mult[17][13] , \mult[17][12] ,
         \mult[17][11] , \mult[17][10] , \mult[17][0] , \mult[16][9] ,
         \mult[16][8] , \mult[16][7] , \mult[16][6] , \mult[16][5] ,
         \mult[16][4] , \mult[16][3] , \mult[16][2] , \mult[16][1] ,
         \mult[16][15] , \mult[16][14] , \mult[16][13] , \mult[16][12] ,
         \mult[16][11] , \mult[16][10] , \mult[16][0] , \mult[15][9] ,
         \mult[15][8] , \mult[15][7] , \mult[15][6] , \mult[15][5] ,
         \mult[15][4] , \mult[15][3] , \mult[15][2] , \mult[15][1] ,
         \mult[15][15] , \mult[15][14] , \mult[15][13] , \mult[15][12] ,
         \mult[15][11] , \mult[15][10] , \mult[15][0] , \mult[14][9] ,
         \mult[14][8] , \mult[14][7] , \mult[14][6] , \mult[14][5] ,
         \mult[14][4] , \mult[14][3] , \mult[14][2] , \mult[14][1] ,
         \mult[14][15] , \mult[14][14] , \mult[14][13] , \mult[14][12] ,
         \mult[14][11] , \mult[14][10] , \mult[14][0] , \mult[13][9] ,
         \mult[13][8] , \mult[13][7] , \mult[13][6] , \mult[13][5] ,
         \mult[13][4] , \mult[13][3] , \mult[13][2] , \mult[13][1] ,
         \mult[13][15] , \mult[13][14] , \mult[13][13] , \mult[13][12] ,
         \mult[13][11] , \mult[13][10] , \mult[13][0] , \mult[12][9] ,
         \mult[12][8] , \mult[12][7] , \mult[12][6] , \mult[12][5] ,
         \mult[12][4] , \mult[12][3] , \mult[12][2] , \mult[12][1] ,
         \mult[12][15] , \mult[12][14] , \mult[12][13] , \mult[12][12] ,
         \mult[12][11] , \mult[12][10] , \mult[12][0] , \mult[11][9] ,
         \mult[11][8] , \mult[11][7] , \mult[11][6] , \mult[11][5] ,
         \mult[11][4] , \mult[11][3] , \mult[11][2] , \mult[11][1] ,
         \mult[11][15] , \mult[11][14] , \mult[11][13] , \mult[11][12] ,
         \mult[11][11] , \mult[11][10] , \mult[11][0] , \mult[10][9] ,
         \mult[10][8] , \mult[10][7] , \mult[10][6] , \mult[10][5] ,
         \mult[10][4] , \mult[10][3] , \mult[10][2] , \mult[10][1] ,
         \mult[10][15] , \mult[10][14] , \mult[10][13] , \mult[10][12] ,
         \mult[10][11] , \mult[10][10] , \mult[10][0] , \mult[0][9] ,
         \mult[0][8] , \mult[0][7] , \mult[0][6] , \mult[0][5] , \mult[0][4] ,
         \mult[0][3] , \mult[0][2] , \mult[0][1] , \mult[0][15] ,
         \mult[0][14] , \mult[0][13] , \mult[0][12] , \mult[0][11] ,
         \mult[0][10] , \mult[0][0] , n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291;

  vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_0_DW01_add_67 add_0_root_add_61_G5 ( 
        .A({n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, 
        n261, n262, n263, n264, n265, n266, n267, n268, n269, n270}), .B({n271, 
        n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, 
        n284, n285, n286, n287, n288, n289, n290, n291}), .CI(1'b0), .SUM(
        o_product) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_1_DW01_add_68 add_1_root_add_61_G5 ( 
        .A({n209, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, 
        n219, n220, n221, n222, n223, n224, n225, n226, n227, n228}), .B({n229, 
        n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, 
        n242, n243, n244, n245, n246, n247, n248, n249}), .CI(1'b0), .SUM({
        n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, 
        n283, n284, n285, n286, n287, n288, n289, n290, n291}) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_2_DW01_add_69 add_2_root_add_61_G5 ( 
        .A({n168, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, 
        n178, n179, n180, n181, n182, n183, n184, n185, n186, n187}), .B({n188, 
        n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, 
        n201, n202, n203, n204, n205, n206, n207, n208}), .CI(1'b0), .SUM({
        n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, 
        n262, n263, n264, n265, n266, n267, n268, n269, n270}) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_3_DW01_add_70 add_6_root_add_61_G5 ( 
        .A({n32, n32, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, 
        n43, n44, n45, n46, n47, n48, n49}), .B({n50, n50, n51, n52, n53, n54, 
        n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68}), 
        .CI(1'b0), .SUM({n168, n169, n170, n171, n172, n173, n174, n175, n176, 
        n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187}) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_4_DW01_add_71 add_13_root_add_61_G5 ( 
        .A({\tree_sums[2][7][20] , \tree_sums[2][7][20] , 
        \tree_sums[2][7][16] , \tree_sums[2][7][15] , \tree_sums[2][7][14] , 
        \tree_sums[2][7][13] , \tree_sums[2][7][12] , \tree_sums[2][7][11] , 
        \tree_sums[2][7][10] , \tree_sums[2][7][9] , \tree_sums[2][7][8] , 
        \tree_sums[2][7][7] , \tree_sums[2][7][6] , \tree_sums[2][7][5] , 
        \tree_sums[2][7][4] , \tree_sums[2][7][3] , \tree_sums[2][7][2] , 
        \tree_sums[2][7][1] , \tree_sums[2][7][0] }), .B({
        \tree_sums[1][13][20] , \tree_sums[1][13][20] , \tree_sums[1][13][20] , 
        \tree_sums[1][13][15] , \tree_sums[1][13][14] , \tree_sums[1][13][13] , 
        \tree_sums[1][13][12] , \tree_sums[1][13][11] , \tree_sums[1][13][10] , 
        \tree_sums[1][13][9] , \tree_sums[1][13][8] , \tree_sums[1][13][7] , 
        \tree_sums[1][13][6] , \tree_sums[1][13][5] , \tree_sums[1][13][4] , 
        \tree_sums[1][13][3] , \tree_sums[1][13][2] , \tree_sums[1][13][1] , 
        \tree_sums[1][13][0] }), .CI(1'b0), .SUM({n50, n51, n52, n53, n54, n55, 
        n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68}) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_5_DW01_add_72 add_28_root_add_61_G5 ( 
        .A({\mult[4][15] , \mult[4][15] , \mult[4][15] , \mult[4][14] , 
        \mult[4][13] , \mult[4][12] , \mult[4][11] , \mult[4][10] , 
        \mult[4][9] , \mult[4][8] , \mult[4][7] , \mult[4][6] , \mult[4][5] , 
        \mult[4][4] , \mult[4][3] , \mult[4][2] , \mult[4][1] , \mult[4][0] }), 
        .B({\mult[5][15] , \mult[5][15] , \mult[5][15] , \mult[5][14] , 
        \mult[5][13] , \mult[5][12] , \mult[5][11] , \mult[5][10] , 
        \mult[5][9] , \mult[5][8] , \mult[5][7] , \mult[5][6] , \mult[5][5] , 
        \mult[5][4] , \mult[5][3] , \mult[5][2] , \mult[5][1] , \mult[5][0] }), 
        .CI(1'b0), .SUM({\tree_sums[2][7][20] , \tree_sums[2][7][16] , 
        \tree_sums[2][7][15] , \tree_sums[2][7][14] , \tree_sums[2][7][13] , 
        \tree_sums[2][7][12] , \tree_sums[2][7][11] , \tree_sums[2][7][10] , 
        \tree_sums[2][7][9] , \tree_sums[2][7][8] , \tree_sums[2][7][7] , 
        \tree_sums[2][7][6] , \tree_sums[2][7][5] , \tree_sums[2][7][4] , 
        \tree_sums[2][7][3] , \tree_sums[2][7][2] , \tree_sums[2][7][1] , 
        \tree_sums[2][7][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_6_DW01_add_73 add_3_root_add_61_G5 ( 
        .A({n127, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, 
        n137, n138, n139, n140, n141, n142, n143, n144, n145, n146}), .B({n147, 
        n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, 
        n160, n161, n162, n163, n164, n165, n166, n167}), .CI(1'b0), .SUM({
        n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, 
        n241, n242, n243, n244, n245, n246, n247, n248, n249}) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_7_DW01_add_74 add_27_root_add_61_G5 ( 
        .A({\mult[6][15] , \mult[6][15] , \mult[6][14] , \mult[6][13] , 
        \mult[6][12] , \mult[6][11] , \mult[6][10] , \mult[6][9] , 
        \mult[6][8] , \mult[6][7] , \mult[6][6] , \mult[6][5] , \mult[6][4] , 
        \mult[6][3] , \mult[6][2] , \mult[6][1] , \mult[6][0] }), .B({
        \mult[7][15] , \mult[7][15] , \mult[7][14] , \mult[7][13] , 
        \mult[7][12] , \mult[7][11] , \mult[7][10] , \mult[7][9] , 
        \mult[7][8] , \mult[7][7] , \mult[7][6] , \mult[7][5] , \mult[7][4] , 
        \mult[7][3] , \mult[7][2] , \mult[7][1] , \mult[7][0] }), .CI(1'b0), 
        .SUM({\tree_sums[1][13][20] , \tree_sums[1][13][15] , 
        \tree_sums[1][13][14] , \tree_sums[1][13][13] , \tree_sums[1][13][12] , 
        \tree_sums[1][13][11] , \tree_sums[1][13][10] , \tree_sums[1][13][9] , 
        \tree_sums[1][13][8] , \tree_sums[1][13][7] , \tree_sums[1][13][6] , 
        \tree_sums[1][13][5] , \tree_sums[1][13][4] , \tree_sums[1][13][3] , 
        \tree_sums[1][13][2] , \tree_sums[1][13][1] , \tree_sums[1][13][0] })
         );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_8_DW01_add_75 add_14_root_add_61_G5 ( 
        .A({\tree_sums[1][15][20] , \tree_sums[1][15][20] , 
        \tree_sums[1][15][15] , \tree_sums[1][15][14] , \tree_sums[1][15][13] , 
        \tree_sums[1][15][12] , \tree_sums[1][15][11] , \tree_sums[1][15][10] , 
        \tree_sums[1][15][9] , \tree_sums[1][15][8] , \tree_sums[1][15][7] , 
        \tree_sums[1][15][6] , \tree_sums[1][15][5] , \tree_sums[1][15][4] , 
        \tree_sums[1][15][3] , \tree_sums[1][15][2] , \tree_sums[1][15][1] , 
        \tree_sums[1][15][0] }), .B({\tree_sums[1][14][20] , 
        \tree_sums[1][14][20] , \tree_sums[1][14][15] , \tree_sums[1][14][14] , 
        \tree_sums[1][14][13] , \tree_sums[1][14][12] , \tree_sums[1][14][11] , 
        \tree_sums[1][14][10] , \tree_sums[1][14][9] , \tree_sums[1][14][8] , 
        \tree_sums[1][14][7] , \tree_sums[1][14][6] , \tree_sums[1][14][5] , 
        \tree_sums[1][14][4] , \tree_sums[1][14][3] , \tree_sums[1][14][2] , 
        \tree_sums[1][14][1] , \tree_sums[1][14][0] }), .CI(1'b0), .SUM({n32, 
        n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, 
        n47, n48, n49}) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_9_DW01_add_76 add_29_root_add_61_G5 ( 
        .A({\mult[2][15] , \mult[2][15] , \mult[2][14] , \mult[2][13] , 
        \mult[2][12] , \mult[2][11] , \mult[2][10] , \mult[2][9] , 
        \mult[2][8] , \mult[2][7] , \mult[2][6] , \mult[2][5] , \mult[2][4] , 
        \mult[2][3] , \mult[2][2] , \mult[2][1] , \mult[2][0] }), .B({
        \mult[3][15] , \mult[3][15] , \mult[3][14] , \mult[3][13] , 
        \mult[3][12] , \mult[3][11] , \mult[3][10] , \mult[3][9] , 
        \mult[3][8] , \mult[3][7] , \mult[3][6] , \mult[3][5] , \mult[3][4] , 
        \mult[3][3] , \mult[3][2] , \mult[3][1] , \mult[3][0] }), .CI(1'b0), 
        .SUM({\tree_sums[1][14][20] , \tree_sums[1][14][15] , 
        \tree_sums[1][14][14] , \tree_sums[1][14][13] , \tree_sums[1][14][12] , 
        \tree_sums[1][14][11] , \tree_sums[1][14][10] , \tree_sums[1][14][9] , 
        \tree_sums[1][14][8] , \tree_sums[1][14][7] , \tree_sums[1][14][6] , 
        \tree_sums[1][14][5] , \tree_sums[1][14][4] , \tree_sums[1][14][3] , 
        \tree_sums[1][14][2] , \tree_sums[1][14][1] , \tree_sums[1][14][0] })
         );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_10_DW01_add_77 add_30_root_add_61_G5 ( 
        .A({\mult[0][15] , \mult[0][15] , \mult[0][14] , \mult[0][13] , 
        \mult[0][12] , \mult[0][11] , \mult[0][10] , \mult[0][9] , 
        \mult[0][8] , \mult[0][7] , \mult[0][6] , \mult[0][5] , \mult[0][4] , 
        \mult[0][3] , \mult[0][2] , \mult[0][1] , \mult[0][0] }), .B({
        \mult[1][15] , \mult[1][15] , \mult[1][14] , \mult[1][13] , 
        \mult[1][12] , \mult[1][11] , \mult[1][10] , \mult[1][9] , 
        \mult[1][8] , \mult[1][7] , \mult[1][6] , \mult[1][5] , \mult[1][4] , 
        \mult[1][3] , \mult[1][2] , \mult[1][1] , \mult[1][0] }), .CI(1'b0), 
        .SUM({\tree_sums[1][15][20] , \tree_sums[1][15][15] , 
        \tree_sums[1][15][14] , \tree_sums[1][15][13] , \tree_sums[1][15][12] , 
        \tree_sums[1][15][11] , \tree_sums[1][15][10] , \tree_sums[1][15][9] , 
        \tree_sums[1][15][8] , \tree_sums[1][15][7] , \tree_sums[1][15][6] , 
        \tree_sums[1][15][5] , \tree_sums[1][15][4] , \tree_sums[1][15][3] , 
        \tree_sums[1][15][2] , \tree_sums[1][15][1] , \tree_sums[1][15][0] })
         );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_11_DW01_add_78 add_8_root_add_61_G5 ( 
        .A({\tree_sums[2][4][20] , \tree_sums[2][4][20] , 
        \tree_sums[2][4][20] , \tree_sums[2][4][16] , \tree_sums[2][4][15] , 
        \tree_sums[2][4][14] , \tree_sums[2][4][13] , \tree_sums[2][4][12] , 
        \tree_sums[2][4][11] , \tree_sums[2][4][10] , \tree_sums[2][4][9] , 
        \tree_sums[2][4][8] , \tree_sums[2][4][7] , \tree_sums[2][4][6] , 
        \tree_sums[2][4][5] , \tree_sums[2][4][4] , \tree_sums[2][4][3] , 
        \tree_sums[2][4][2] , \tree_sums[2][4][1] , \tree_sums[2][4][0] }), 
        .B({\tree_sums[3][2][20] , \tree_sums[3][2][20] , 
        \tree_sums[3][2][17] , \tree_sums[3][2][16] , \tree_sums[3][2][15] , 
        \tree_sums[3][2][14] , \tree_sums[3][2][13] , \tree_sums[3][2][12] , 
        \tree_sums[3][2][11] , \tree_sums[3][2][10] , \tree_sums[3][2][9] , 
        \tree_sums[3][2][8] , \tree_sums[3][2][7] , \tree_sums[3][2][6] , 
        \tree_sums[3][2][5] , \tree_sums[3][2][4] , \tree_sums[3][2][3] , 
        \tree_sums[3][2][2] , \tree_sums[3][2][1] , \tree_sums[3][2][0] }), 
        .CI(1'b0), .SUM({n127, n128, n129, n130, n131, n132, n133, n134, n135, 
        n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146}) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_12_DW01_add_79 add_17_root_add_61_G5 ( 
        .A({\mult[26][15] , \mult[26][15] , \mult[26][15] , \mult[26][15] , 
        \mult[26][14] , \mult[26][13] , \mult[26][12] , \mult[26][11] , 
        \mult[26][10] , \mult[26][9] , \mult[26][8] , \mult[26][7] , 
        \mult[26][6] , \mult[26][5] , \mult[26][4] , \mult[26][3] , 
        \mult[26][2] , \mult[26][1] , \mult[26][0] }), .B({\mult[27][15] , 
        \mult[27][15] , \mult[27][15] , \mult[27][15] , \mult[27][14] , 
        \mult[27][13] , \mult[27][12] , \mult[27][11] , \mult[27][10] , 
        \mult[27][9] , \mult[27][8] , \mult[27][7] , \mult[27][6] , 
        \mult[27][5] , \mult[27][4] , \mult[27][3] , \mult[27][2] , 
        \mult[27][1] , \mult[27][0] }), .CI(1'b0), .SUM({\tree_sums[3][2][20] , 
        \tree_sums[3][2][17] , \tree_sums[3][2][16] , \tree_sums[3][2][15] , 
        \tree_sums[3][2][14] , \tree_sums[3][2][13] , \tree_sums[3][2][12] , 
        \tree_sums[3][2][11] , \tree_sums[3][2][10] , \tree_sums[3][2][9] , 
        \tree_sums[3][2][8] , \tree_sums[3][2][7] , \tree_sums[3][2][6] , 
        \tree_sums[3][2][5] , \tree_sums[3][2][4] , \tree_sums[3][2][3] , 
        \tree_sums[3][2][2] , \tree_sums[3][2][1] , \tree_sums[3][2][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_13_DW01_add_80 add_18_root_add_61_G5 ( 
        .A({\mult[24][15] , \mult[24][15] , \mult[24][15] , \mult[24][14] , 
        \mult[24][13] , \mult[24][12] , \mult[24][11] , \mult[24][10] , 
        \mult[24][9] , \mult[24][8] , \mult[24][7] , \mult[24][6] , 
        \mult[24][5] , \mult[24][4] , \mult[24][3] , \mult[24][2] , 
        \mult[24][1] , \mult[24][0] }), .B({\mult[25][15] , \mult[25][15] , 
        \mult[25][15] , \mult[25][14] , \mult[25][13] , \mult[25][12] , 
        \mult[25][11] , \mult[25][10] , \mult[25][9] , \mult[25][8] , 
        \mult[25][7] , \mult[25][6] , \mult[25][5] , \mult[25][4] , 
        \mult[25][3] , \mult[25][2] , \mult[25][1] , \mult[25][0] }), .CI(1'b0), .SUM({\tree_sums[2][4][20] , \tree_sums[2][4][16] , \tree_sums[2][4][15] , 
        \tree_sums[2][4][14] , \tree_sums[2][4][13] , \tree_sums[2][4][12] , 
        \tree_sums[2][4][11] , \tree_sums[2][4][10] , \tree_sums[2][4][9] , 
        \tree_sums[2][4][8] , \tree_sums[2][4][7] , \tree_sums[2][4][6] , 
        \tree_sums[2][4][5] , \tree_sums[2][4][4] , \tree_sums[2][4][3] , 
        \tree_sums[2][4][2] , \tree_sums[2][4][1] , \tree_sums[2][4][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_14_DW01_add_81 add_7_root_add_61_G5 ( 
        .A({\tree_sums[4][1][20] , \tree_sums[4][1][20] , 
        \tree_sums[4][1][18] , \tree_sums[4][1][17] , \tree_sums[4][1][16] , 
        \tree_sums[4][1][15] , \tree_sums[4][1][14] , \tree_sums[4][1][13] , 
        \tree_sums[4][1][12] , \tree_sums[4][1][11] , \tree_sums[4][1][10] , 
        \tree_sums[4][1][9] , \tree_sums[4][1][8] , \tree_sums[4][1][7] , 
        \tree_sums[4][1][6] , \tree_sums[4][1][5] , \tree_sums[4][1][4] , 
        \tree_sums[4][1][3] , \tree_sums[4][1][2] , \tree_sums[4][1][1] , 
        \tree_sums[4][1][0] }), .B({\tree_sums[1][7][20] , 
        \tree_sums[1][7][20] , \tree_sums[1][7][20] , \tree_sums[1][7][20] , 
        \tree_sums[1][7][20] , \tree_sums[1][7][15] , \tree_sums[1][7][14] , 
        \tree_sums[1][7][13] , \tree_sums[1][7][12] , \tree_sums[1][7][11] , 
        \tree_sums[1][7][10] , \tree_sums[1][7][9] , \tree_sums[1][7][8] , 
        \tree_sums[1][7][7] , \tree_sums[1][7][6] , \tree_sums[1][7][5] , 
        \tree_sums[1][7][4] , \tree_sums[1][7][3] , \tree_sums[1][7][2] , 
        \tree_sums[1][7][1] , \tree_sums[1][7][0] }), .CI(1'b0), .SUM({n147, 
        n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, 
        n160, n161, n162, n163, n164, n165, n166, n167}) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_15_DW01_add_82 add_15_root_add_61_G5 ( 
        .A({\mult[30][15] , \mult[30][15] , \mult[30][14] , \mult[30][13] , 
        \mult[30][12] , \mult[30][11] , \mult[30][10] , \mult[30][9] , 
        \mult[30][8] , \mult[30][7] , \mult[30][6] , \mult[30][5] , 
        \mult[30][4] , \mult[30][3] , \mult[30][2] , \mult[30][1] , 
        \mult[30][0] }), .B({\mult[31][15] , \mult[31][15] , \mult[31][14] , 
        \mult[31][13] , \mult[31][12] , \mult[31][11] , \mult[31][10] , 
        \mult[31][9] , \mult[31][8] , \mult[31][7] , \mult[31][6] , 
        \mult[31][5] , \mult[31][4] , \mult[31][3] , \mult[31][2] , 
        \mult[31][1] , \mult[31][0] }), .CI(1'b0), .SUM({\tree_sums[1][7][20] , 
        \tree_sums[1][7][15] , \tree_sums[1][7][14] , \tree_sums[1][7][13] , 
        \tree_sums[1][7][12] , \tree_sums[1][7][11] , \tree_sums[1][7][10] , 
        \tree_sums[1][7][9] , \tree_sums[1][7][8] , \tree_sums[1][7][7] , 
        \tree_sums[1][7][6] , \tree_sums[1][7][5] , \tree_sums[1][7][4] , 
        \tree_sums[1][7][3] , \tree_sums[1][7][2] , \tree_sums[1][7][1] , 
        \tree_sums[1][7][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_16_DW01_add_83 add_16_root_add_61_G5 ( 
        .A({\mult[28][15] , \mult[28][15] , \mult[28][15] , \mult[28][15] , 
        \mult[28][15] , \mult[28][14] , \mult[28][13] , \mult[28][12] , 
        \mult[28][11] , \mult[28][10] , \mult[28][9] , \mult[28][8] , 
        \mult[28][7] , \mult[28][6] , \mult[28][5] , \mult[28][4] , 
        \mult[28][3] , \mult[28][2] , \mult[28][1] , \mult[28][0] }), .B({
        \mult[29][15] , \mult[29][15] , \mult[29][15] , \mult[29][15] , 
        \mult[29][15] , \mult[29][14] , \mult[29][13] , \mult[29][12] , 
        \mult[29][11] , \mult[29][10] , \mult[29][9] , \mult[29][8] , 
        \mult[29][7] , \mult[29][6] , \mult[29][5] , \mult[29][4] , 
        \mult[29][3] , \mult[29][2] , \mult[29][1] , \mult[29][0] }), .CI(1'b0), .SUM({\tree_sums[4][1][20] , \tree_sums[4][1][18] , \tree_sums[4][1][17] , 
        \tree_sums[4][1][16] , \tree_sums[4][1][15] , \tree_sums[4][1][14] , 
        \tree_sums[4][1][13] , \tree_sums[4][1][12] , \tree_sums[4][1][11] , 
        \tree_sums[4][1][10] , \tree_sums[4][1][9] , \tree_sums[4][1][8] , 
        \tree_sums[4][1][7] , \tree_sums[4][1][6] , \tree_sums[4][1][5] , 
        \tree_sums[4][1][4] , \tree_sums[4][1][3] , \tree_sums[4][1][2] , 
        \tree_sums[4][1][1] , \tree_sums[4][1][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_17_DW01_add_84 add_5_root_add_61_G5 ( 
        .A({n69, n69, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, 
        n80, n81, n82, n83, n84, n85, n86, n87}), .B({n88, n88, n89, n90, n91, 
        n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, 
        n105, n106, n107}), .CI(1'b0), .SUM({n188, n189, n190, n191, n192, 
        n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, 
        n205, n206, n207, n208}) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_18_DW01_add_85 add_11_root_add_61_G5 ( 
        .A({\tree_sums[3][3][20] , \tree_sums[3][3][20] , 
        \tree_sums[3][3][17] , \tree_sums[3][3][16] , \tree_sums[3][3][15] , 
        \tree_sums[3][3][14] , \tree_sums[3][3][13] , \tree_sums[3][3][12] , 
        \tree_sums[3][3][11] , \tree_sums[3][3][10] , \tree_sums[3][3][9] , 
        \tree_sums[3][3][8] , \tree_sums[3][3][7] , \tree_sums[3][3][6] , 
        \tree_sums[3][3][5] , \tree_sums[3][3][4] , \tree_sums[3][3][3] , 
        \tree_sums[3][3][2] , \tree_sums[3][3][1] , \tree_sums[3][3][0] }), 
        .B({\tree_sums[1][11][20] , \tree_sums[1][11][20] , 
        \tree_sums[1][11][20] , \tree_sums[1][11][20] , \tree_sums[1][11][15] , 
        \tree_sums[1][11][14] , \tree_sums[1][11][13] , \tree_sums[1][11][12] , 
        \tree_sums[1][11][11] , \tree_sums[1][11][10] , \tree_sums[1][11][9] , 
        \tree_sums[1][11][8] , \tree_sums[1][11][7] , \tree_sums[1][11][6] , 
        \tree_sums[1][11][5] , \tree_sums[1][11][4] , \tree_sums[1][11][3] , 
        \tree_sums[1][11][2] , \tree_sums[1][11][1] , \tree_sums[1][11][0] }), 
        .CI(1'b0), .SUM({n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, 
        n99, n100, n101, n102, n103, n104, n105, n106, n107}) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_19_DW01_add_86 add_23_root_add_61_G5 ( 
        .A({\mult[14][15] , \mult[14][15] , \mult[14][14] , \mult[14][13] , 
        \mult[14][12] , \mult[14][11] , \mult[14][10] , \mult[14][9] , 
        \mult[14][8] , \mult[14][7] , \mult[14][6] , \mult[14][5] , 
        \mult[14][4] , \mult[14][3] , \mult[14][2] , \mult[14][1] , 
        \mult[14][0] }), .B({\mult[15][15] , \mult[15][15] , \mult[15][14] , 
        \mult[15][13] , \mult[15][12] , \mult[15][11] , \mult[15][10] , 
        \mult[15][9] , \mult[15][8] , \mult[15][7] , \mult[15][6] , 
        \mult[15][5] , \mult[15][4] , \mult[15][3] , \mult[15][2] , 
        \mult[15][1] , \mult[15][0] }), .CI(1'b0), .SUM({
        \tree_sums[1][11][20] , \tree_sums[1][11][15] , \tree_sums[1][11][14] , 
        \tree_sums[1][11][13] , \tree_sums[1][11][12] , \tree_sums[1][11][11] , 
        \tree_sums[1][11][10] , \tree_sums[1][11][9] , \tree_sums[1][11][8] , 
        \tree_sums[1][11][7] , \tree_sums[1][11][6] , \tree_sums[1][11][5] , 
        \tree_sums[1][11][4] , \tree_sums[1][11][3] , \tree_sums[1][11][2] , 
        \tree_sums[1][11][1] , \tree_sums[1][11][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_20_DW01_add_87 add_24_root_add_61_G5 ( 
        .A({\mult[12][15] , \mult[12][15] , \mult[12][15] , \mult[12][15] , 
        \mult[12][14] , \mult[12][13] , \mult[12][12] , \mult[12][11] , 
        \mult[12][10] , \mult[12][9] , \mult[12][8] , \mult[12][7] , 
        \mult[12][6] , \mult[12][5] , \mult[12][4] , \mult[12][3] , 
        \mult[12][2] , \mult[12][1] , \mult[12][0] }), .B({\mult[13][15] , 
        \mult[13][15] , \mult[13][15] , \mult[13][15] , \mult[13][14] , 
        \mult[13][13] , \mult[13][12] , \mult[13][11] , \mult[13][10] , 
        \mult[13][9] , \mult[13][8] , \mult[13][7] , \mult[13][6] , 
        \mult[13][5] , \mult[13][4] , \mult[13][3] , \mult[13][2] , 
        \mult[13][1] , \mult[13][0] }), .CI(1'b0), .SUM({\tree_sums[3][3][20] , 
        \tree_sums[3][3][17] , \tree_sums[3][3][16] , \tree_sums[3][3][15] , 
        \tree_sums[3][3][14] , \tree_sums[3][3][13] , \tree_sums[3][3][12] , 
        \tree_sums[3][3][11] , \tree_sums[3][3][10] , \tree_sums[3][3][9] , 
        \tree_sums[3][3][8] , \tree_sums[3][3][7] , \tree_sums[3][3][6] , 
        \tree_sums[3][3][5] , \tree_sums[3][3][4] , \tree_sums[3][3][3] , 
        \tree_sums[3][3][2] , \tree_sums[3][3][1] , \tree_sums[3][3][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_21_DW01_add_88 add_12_root_add_61_G5 ( 
        .A({\tree_sums[1][12][20] , \tree_sums[1][12][20] , 
        \tree_sums[1][12][20] , \tree_sums[1][12][15] , \tree_sums[1][12][14] , 
        \tree_sums[1][12][13] , \tree_sums[1][12][12] , \tree_sums[1][12][11] , 
        \tree_sums[1][12][10] , \tree_sums[1][12][9] , \tree_sums[1][12][8] , 
        \tree_sums[1][12][7] , \tree_sums[1][12][6] , \tree_sums[1][12][5] , 
        \tree_sums[1][12][4] , \tree_sums[1][12][3] , \tree_sums[1][12][2] , 
        \tree_sums[1][12][1] , \tree_sums[1][12][0] }), .B({
        \tree_sums[2][6][20] , \tree_sums[2][6][20] , \tree_sums[2][6][16] , 
        \tree_sums[2][6][15] , \tree_sums[2][6][14] , \tree_sums[2][6][13] , 
        \tree_sums[2][6][12] , \tree_sums[2][6][11] , \tree_sums[2][6][10] , 
        \tree_sums[2][6][9] , \tree_sums[2][6][8] , \tree_sums[2][6][7] , 
        \tree_sums[2][6][6] , \tree_sums[2][6][5] , \tree_sums[2][6][4] , 
        \tree_sums[2][6][3] , \tree_sums[2][6][2] , \tree_sums[2][6][1] , 
        \tree_sums[2][6][0] }), .CI(1'b0), .SUM({n69, n70, n71, n72, n73, n74, 
        n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87}) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_22_DW01_add_89 add_25_root_add_61_G5 ( 
        .A({\mult[10][15] , \mult[10][15] , \mult[10][15] , \mult[10][14] , 
        \mult[10][13] , \mult[10][12] , \mult[10][11] , \mult[10][10] , 
        \mult[10][9] , \mult[10][8] , \mult[10][7] , \mult[10][6] , 
        \mult[10][5] , \mult[10][4] , \mult[10][3] , \mult[10][2] , 
        \mult[10][1] , \mult[10][0] }), .B({\mult[11][15] , \mult[11][15] , 
        \mult[11][15] , \mult[11][14] , \mult[11][13] , \mult[11][12] , 
        \mult[11][11] , \mult[11][10] , \mult[11][9] , \mult[11][8] , 
        \mult[11][7] , \mult[11][6] , \mult[11][5] , \mult[11][4] , 
        \mult[11][3] , \mult[11][2] , \mult[11][1] , \mult[11][0] }), .CI(1'b0), .SUM({\tree_sums[2][6][20] , \tree_sums[2][6][16] , \tree_sums[2][6][15] , 
        \tree_sums[2][6][14] , \tree_sums[2][6][13] , \tree_sums[2][6][12] , 
        \tree_sums[2][6][11] , \tree_sums[2][6][10] , \tree_sums[2][6][9] , 
        \tree_sums[2][6][8] , \tree_sums[2][6][7] , \tree_sums[2][6][6] , 
        \tree_sums[2][6][5] , \tree_sums[2][6][4] , \tree_sums[2][6][3] , 
        \tree_sums[2][6][2] , \tree_sums[2][6][1] , \tree_sums[2][6][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_23_DW01_add_90 add_26_root_add_61_G5 ( 
        .A({\mult[8][15] , \mult[8][15] , \mult[8][14] , \mult[8][13] , 
        \mult[8][12] , \mult[8][11] , \mult[8][10] , \mult[8][9] , 
        \mult[8][8] , \mult[8][7] , \mult[8][6] , \mult[8][5] , \mult[8][4] , 
        \mult[8][3] , \mult[8][2] , \mult[8][1] , \mult[8][0] }), .B({
        \mult[9][15] , \mult[9][15] , \mult[9][14] , \mult[9][13] , 
        \mult[9][12] , \mult[9][11] , \mult[9][10] , \mult[9][9] , 
        \mult[9][8] , \mult[9][7] , \mult[9][6] , \mult[9][5] , \mult[9][4] , 
        \mult[9][3] , \mult[9][2] , \mult[9][1] , \mult[9][0] }), .CI(1'b0), 
        .SUM({\tree_sums[1][12][20] , \tree_sums[1][12][15] , 
        \tree_sums[1][12][14] , \tree_sums[1][12][13] , \tree_sums[1][12][12] , 
        \tree_sums[1][12][11] , \tree_sums[1][12][10] , \tree_sums[1][12][9] , 
        \tree_sums[1][12][8] , \tree_sums[1][12][7] , \tree_sums[1][12][6] , 
        \tree_sums[1][12][5] , \tree_sums[1][12][4] , \tree_sums[1][12][3] , 
        \tree_sums[1][12][2] , \tree_sums[1][12][1] , \tree_sums[1][12][0] })
         );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_24_DW01_add_91 add_4_root_add_61_G5 ( 
        .A({n108, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, 
        n118, n119, n120, n121, n122, n123, n124, n125, n126}), .B({
        \tree_sums[3][1][20] , \tree_sums[3][1][20] , \tree_sums[3][1][17] , 
        \tree_sums[3][1][16] , \tree_sums[3][1][15] , \tree_sums[3][1][14] , 
        \tree_sums[3][1][13] , \tree_sums[3][1][12] , \tree_sums[3][1][11] , 
        \tree_sums[3][1][10] , \tree_sums[3][1][9] , \tree_sums[3][1][8] , 
        \tree_sums[3][1][7] , \tree_sums[3][1][6] , \tree_sums[3][1][5] , 
        \tree_sums[3][1][4] , \tree_sums[3][1][3] , \tree_sums[3][1][2] , 
        \tree_sums[3][1][1] , \tree_sums[3][1][0] }), .CI(1'b0), .SUM({n209, 
        n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, 
        n222, n223, n224, n225, n226, n227, n228}) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_25_DW01_add_92 add_9_root_add_61_G5 ( 
        .A({\tree_sums[1][9][20] , \tree_sums[1][9][20] , 
        \tree_sums[1][9][20] , \tree_sums[1][9][15] , \tree_sums[1][9][14] , 
        \tree_sums[1][9][13] , \tree_sums[1][9][12] , \tree_sums[1][9][11] , 
        \tree_sums[1][9][10] , \tree_sums[1][9][9] , \tree_sums[1][9][8] , 
        \tree_sums[1][9][7] , \tree_sums[1][9][6] , \tree_sums[1][9][5] , 
        \tree_sums[1][9][4] , \tree_sums[1][9][3] , \tree_sums[1][9][2] , 
        \tree_sums[1][9][1] , \tree_sums[1][9][0] }), .B({
        \tree_sums[1][8][20] , \tree_sums[1][8][20] , \tree_sums[1][8][20] , 
        \tree_sums[1][8][15] , \tree_sums[1][8][14] , \tree_sums[1][8][13] , 
        \tree_sums[1][8][12] , \tree_sums[1][8][11] , \tree_sums[1][8][10] , 
        \tree_sums[1][8][9] , \tree_sums[1][8][8] , \tree_sums[1][8][7] , 
        \tree_sums[1][8][6] , \tree_sums[1][8][5] , \tree_sums[1][8][4] , 
        \tree_sums[1][8][3] , \tree_sums[1][8][2] , \tree_sums[1][8][1] , 
        \tree_sums[1][8][0] }), .CI(1'b0), .SUM({\tree_sums[3][1][20] , 
        \tree_sums[3][1][17] , \tree_sums[3][1][16] , \tree_sums[3][1][15] , 
        \tree_sums[3][1][14] , \tree_sums[3][1][13] , \tree_sums[3][1][12] , 
        \tree_sums[3][1][11] , \tree_sums[3][1][10] , \tree_sums[3][1][9] , 
        \tree_sums[3][1][8] , \tree_sums[3][1][7] , \tree_sums[3][1][6] , 
        \tree_sums[3][1][5] , \tree_sums[3][1][4] , \tree_sums[3][1][3] , 
        \tree_sums[3][1][2] , \tree_sums[3][1][1] , \tree_sums[3][1][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_26_DW01_add_93 add_19_root_add_61_G5 ( 
        .A({\mult[22][15] , \mult[22][15] , \mult[22][14] , \mult[22][13] , 
        \mult[22][12] , \mult[22][11] , \mult[22][10] , \mult[22][9] , 
        \mult[22][8] , \mult[22][7] , \mult[22][6] , \mult[22][5] , 
        \mult[22][4] , \mult[22][3] , \mult[22][2] , \mult[22][1] , 
        \mult[22][0] }), .B({\mult[23][15] , \mult[23][15] , \mult[23][14] , 
        \mult[23][13] , \mult[23][12] , \mult[23][11] , \mult[23][10] , 
        \mult[23][9] , \mult[23][8] , \mult[23][7] , \mult[23][6] , 
        \mult[23][5] , \mult[23][4] , \mult[23][3] , \mult[23][2] , 
        \mult[23][1] , \mult[23][0] }), .CI(1'b0), .SUM({\tree_sums[1][8][20] , 
        \tree_sums[1][8][15] , \tree_sums[1][8][14] , \tree_sums[1][8][13] , 
        \tree_sums[1][8][12] , \tree_sums[1][8][11] , \tree_sums[1][8][10] , 
        \tree_sums[1][8][9] , \tree_sums[1][8][8] , \tree_sums[1][8][7] , 
        \tree_sums[1][8][6] , \tree_sums[1][8][5] , \tree_sums[1][8][4] , 
        \tree_sums[1][8][3] , \tree_sums[1][8][2] , \tree_sums[1][8][1] , 
        \tree_sums[1][8][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_27_DW01_add_94 add_20_root_add_61_G5 ( 
        .A({\mult[20][15] , \mult[20][15] , \mult[20][14] , \mult[20][13] , 
        \mult[20][12] , \mult[20][11] , \mult[20][10] , \mult[20][9] , 
        \mult[20][8] , \mult[20][7] , \mult[20][6] , \mult[20][5] , 
        \mult[20][4] , \mult[20][3] , \mult[20][2] , \mult[20][1] , 
        \mult[20][0] }), .B({\mult[21][15] , \mult[21][15] , \mult[21][14] , 
        \mult[21][13] , \mult[21][12] , \mult[21][11] , \mult[21][10] , 
        \mult[21][9] , \mult[21][8] , \mult[21][7] , \mult[21][6] , 
        \mult[21][5] , \mult[21][4] , \mult[21][3] , \mult[21][2] , 
        \mult[21][1] , \mult[21][0] }), .CI(1'b0), .SUM({\tree_sums[1][9][20] , 
        \tree_sums[1][9][15] , \tree_sums[1][9][14] , \tree_sums[1][9][13] , 
        \tree_sums[1][9][12] , \tree_sums[1][9][11] , \tree_sums[1][9][10] , 
        \tree_sums[1][9][9] , \tree_sums[1][9][8] , \tree_sums[1][9][7] , 
        \tree_sums[1][9][6] , \tree_sums[1][9][5] , \tree_sums[1][9][4] , 
        \tree_sums[1][9][3] , \tree_sums[1][9][2] , \tree_sums[1][9][1] , 
        \tree_sums[1][9][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_28_DW01_add_95 add_10_root_add_61_G5 ( 
        .A({\tree_sums[1][10][20] , \tree_sums[1][10][20] , 
        \tree_sums[1][10][20] , \tree_sums[1][10][15] , \tree_sums[1][10][14] , 
        \tree_sums[1][10][13] , \tree_sums[1][10][12] , \tree_sums[1][10][11] , 
        \tree_sums[1][10][10] , \tree_sums[1][10][9] , \tree_sums[1][10][8] , 
        \tree_sums[1][10][7] , \tree_sums[1][10][6] , \tree_sums[1][10][5] , 
        \tree_sums[1][10][4] , \tree_sums[1][10][3] , \tree_sums[1][10][2] , 
        \tree_sums[1][10][1] , \tree_sums[1][10][0] }), .B({
        \tree_sums[2][5][20] , \tree_sums[2][5][20] , \tree_sums[2][5][16] , 
        \tree_sums[2][5][15] , \tree_sums[2][5][14] , \tree_sums[2][5][13] , 
        \tree_sums[2][5][12] , \tree_sums[2][5][11] , \tree_sums[2][5][10] , 
        \tree_sums[2][5][9] , \tree_sums[2][5][8] , \tree_sums[2][5][7] , 
        \tree_sums[2][5][6] , \tree_sums[2][5][5] , \tree_sums[2][5][4] , 
        \tree_sums[2][5][3] , \tree_sums[2][5][2] , \tree_sums[2][5][1] , 
        \tree_sums[2][5][0] }), .CI(1'b0), .SUM({n108, n109, n110, n111, n112, 
        n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, 
        n125, n126}) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_29_DW01_add_96 add_21_root_add_61_G5 ( 
        .A({\mult[18][15] , \mult[18][15] , \mult[18][15] , \mult[18][14] , 
        \mult[18][13] , \mult[18][12] , \mult[18][11] , \mult[18][10] , 
        \mult[18][9] , \mult[18][8] , \mult[18][7] , \mult[18][6] , 
        \mult[18][5] , \mult[18][4] , \mult[18][3] , \mult[18][2] , 
        \mult[18][1] , \mult[18][0] }), .B({\mult[19][15] , \mult[19][15] , 
        \mult[19][15] , \mult[19][14] , \mult[19][13] , \mult[19][12] , 
        \mult[19][11] , \mult[19][10] , \mult[19][9] , \mult[19][8] , 
        \mult[19][7] , \mult[19][6] , \mult[19][5] , \mult[19][4] , 
        \mult[19][3] , \mult[19][2] , \mult[19][1] , \mult[19][0] }), .CI(1'b0), .SUM({\tree_sums[2][5][20] , \tree_sums[2][5][16] , \tree_sums[2][5][15] , 
        \tree_sums[2][5][14] , \tree_sums[2][5][13] , \tree_sums[2][5][12] , 
        \tree_sums[2][5][11] , \tree_sums[2][5][10] , \tree_sums[2][5][9] , 
        \tree_sums[2][5][8] , \tree_sums[2][5][7] , \tree_sums[2][5][6] , 
        \tree_sums[2][5][5] , \tree_sums[2][5][4] , \tree_sums[2][5][3] , 
        \tree_sums[2][5][2] , \tree_sums[2][5][1] , \tree_sums[2][5][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW01_add_30_DW01_add_97 add_22_root_add_61_G5 ( 
        .A({\mult[16][15] , \mult[16][15] , \mult[16][14] , \mult[16][13] , 
        \mult[16][12] , \mult[16][11] , \mult[16][10] , \mult[16][9] , 
        \mult[16][8] , \mult[16][7] , \mult[16][6] , \mult[16][5] , 
        \mult[16][4] , \mult[16][3] , \mult[16][2] , \mult[16][1] , 
        \mult[16][0] }), .B({\mult[17][15] , \mult[17][15] , \mult[17][14] , 
        \mult[17][13] , \mult[17][12] , \mult[17][11] , \mult[17][10] , 
        \mult[17][9] , \mult[17][8] , \mult[17][7] , \mult[17][6] , 
        \mult[17][5] , \mult[17][4] , \mult[17][3] , \mult[17][2] , 
        \mult[17][1] , \mult[17][0] }), .CI(1'b0), .SUM({
        \tree_sums[1][10][20] , \tree_sums[1][10][15] , \tree_sums[1][10][14] , 
        \tree_sums[1][10][13] , \tree_sums[1][10][12] , \tree_sums[1][10][11] , 
        \tree_sums[1][10][10] , \tree_sums[1][10][9] , \tree_sums[1][10][8] , 
        \tree_sums[1][10][7] , \tree_sums[1][10][6] , \tree_sums[1][10][5] , 
        \tree_sums[1][10][4] , \tree_sums[1][10][3] , \tree_sums[1][10][2] , 
        \tree_sums[1][10][1] , \tree_sums[1][10][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_32 mult_37 ( .a(i_a[7:0]), .b(
        i_b[7:0]), .product({\mult[0][15] , \mult[0][14] , \mult[0][13] , 
        \mult[0][12] , \mult[0][11] , \mult[0][10] , \mult[0][9] , 
        \mult[0][8] , \mult[0][7] , \mult[0][6] , \mult[0][5] , \mult[0][4] , 
        \mult[0][3] , \mult[0][2] , \mult[0][1] , \mult[0][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_33 mult_37_G2 ( .a(i_a[15:8]), 
        .b(i_b[15:8]), .product({\mult[1][15] , \mult[1][14] , \mult[1][13] , 
        \mult[1][12] , \mult[1][11] , \mult[1][10] , \mult[1][9] , 
        \mult[1][8] , \mult[1][7] , \mult[1][6] , \mult[1][5] , \mult[1][4] , 
        \mult[1][3] , \mult[1][2] , \mult[1][1] , \mult[1][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_34 mult_37_G3 ( .a(i_a[23:16]), 
        .b(i_b[23:16]), .product({\mult[2][15] , \mult[2][14] , \mult[2][13] , 
        \mult[2][12] , \mult[2][11] , \mult[2][10] , \mult[2][9] , 
        \mult[2][8] , \mult[2][7] , \mult[2][6] , \mult[2][5] , \mult[2][4] , 
        \mult[2][3] , \mult[2][2] , \mult[2][1] , \mult[2][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_35 mult_37_G4 ( .a(i_a[31:24]), 
        .b(i_b[31:24]), .product({\mult[3][15] , \mult[3][14] , \mult[3][13] , 
        \mult[3][12] , \mult[3][11] , \mult[3][10] , \mult[3][9] , 
        \mult[3][8] , \mult[3][7] , \mult[3][6] , \mult[3][5] , \mult[3][4] , 
        \mult[3][3] , \mult[3][2] , \mult[3][1] , \mult[3][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_36 mult_37_G5 ( .a(i_a[39:32]), 
        .b(i_b[39:32]), .product({\mult[4][15] , \mult[4][14] , \mult[4][13] , 
        \mult[4][12] , \mult[4][11] , \mult[4][10] , \mult[4][9] , 
        \mult[4][8] , \mult[4][7] , \mult[4][6] , \mult[4][5] , \mult[4][4] , 
        \mult[4][3] , \mult[4][2] , \mult[4][1] , \mult[4][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_37 mult_37_G6 ( .a(i_a[47:40]), 
        .b(i_b[47:40]), .product({\mult[5][15] , \mult[5][14] , \mult[5][13] , 
        \mult[5][12] , \mult[5][11] , \mult[5][10] , \mult[5][9] , 
        \mult[5][8] , \mult[5][7] , \mult[5][6] , \mult[5][5] , \mult[5][4] , 
        \mult[5][3] , \mult[5][2] , \mult[5][1] , \mult[5][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_38 mult_37_G7 ( .a(i_a[55:48]), 
        .b(i_b[55:48]), .product({\mult[6][15] , \mult[6][14] , \mult[6][13] , 
        \mult[6][12] , \mult[6][11] , \mult[6][10] , \mult[6][9] , 
        \mult[6][8] , \mult[6][7] , \mult[6][6] , \mult[6][5] , \mult[6][4] , 
        \mult[6][3] , \mult[6][2] , \mult[6][1] , \mult[6][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_39 mult_37_G8 ( .a(i_a[63:56]), 
        .b(i_b[63:56]), .product({\mult[7][15] , \mult[7][14] , \mult[7][13] , 
        \mult[7][12] , \mult[7][11] , \mult[7][10] , \mult[7][9] , 
        \mult[7][8] , \mult[7][7] , \mult[7][6] , \mult[7][5] , \mult[7][4] , 
        \mult[7][3] , \mult[7][2] , \mult[7][1] , \mult[7][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_40 mult_37_G9 ( .a(i_a[71:64]), 
        .b(i_b[71:64]), .product({\mult[8][15] , \mult[8][14] , \mult[8][13] , 
        \mult[8][12] , \mult[8][11] , \mult[8][10] , \mult[8][9] , 
        \mult[8][8] , \mult[8][7] , \mult[8][6] , \mult[8][5] , \mult[8][4] , 
        \mult[8][3] , \mult[8][2] , \mult[8][1] , \mult[8][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_41 mult_37_G10 ( .a(i_a[79:72]), 
        .b(i_b[79:72]), .product({\mult[9][15] , \mult[9][14] , \mult[9][13] , 
        \mult[9][12] , \mult[9][11] , \mult[9][10] , \mult[9][9] , 
        \mult[9][8] , \mult[9][7] , \mult[9][6] , \mult[9][5] , \mult[9][4] , 
        \mult[9][3] , \mult[9][2] , \mult[9][1] , \mult[9][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_42 mult_37_G11 ( .a(i_a[87:80]), 
        .b(i_b[87:80]), .product({\mult[10][15] , \mult[10][14] , 
        \mult[10][13] , \mult[10][12] , \mult[10][11] , \mult[10][10] , 
        \mult[10][9] , \mult[10][8] , \mult[10][7] , \mult[10][6] , 
        \mult[10][5] , \mult[10][4] , \mult[10][3] , \mult[10][2] , 
        \mult[10][1] , \mult[10][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_43 mult_37_G12 ( .a(i_a[95:88]), 
        .b(i_b[95:88]), .product({\mult[11][15] , \mult[11][14] , 
        \mult[11][13] , \mult[11][12] , \mult[11][11] , \mult[11][10] , 
        \mult[11][9] , \mult[11][8] , \mult[11][7] , \mult[11][6] , 
        \mult[11][5] , \mult[11][4] , \mult[11][3] , \mult[11][2] , 
        \mult[11][1] , \mult[11][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_44 mult_37_G13 ( .a(i_a[103:96]), .b(i_b[103:96]), .product({\mult[12][15] , \mult[12][14] , \mult[12][13] , 
        \mult[12][12] , \mult[12][11] , \mult[12][10] , \mult[12][9] , 
        \mult[12][8] , \mult[12][7] , \mult[12][6] , \mult[12][5] , 
        \mult[12][4] , \mult[12][3] , \mult[12][2] , \mult[12][1] , 
        \mult[12][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_45 mult_37_G14 ( .a(
        i_a[111:104]), .b(i_b[111:104]), .product({\mult[13][15] , 
        \mult[13][14] , \mult[13][13] , \mult[13][12] , \mult[13][11] , 
        \mult[13][10] , \mult[13][9] , \mult[13][8] , \mult[13][7] , 
        \mult[13][6] , \mult[13][5] , \mult[13][4] , \mult[13][3] , 
        \mult[13][2] , \mult[13][1] , \mult[13][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_46 mult_37_G15 ( .a(
        i_a[119:112]), .b(i_b[119:112]), .product({\mult[14][15] , 
        \mult[14][14] , \mult[14][13] , \mult[14][12] , \mult[14][11] , 
        \mult[14][10] , \mult[14][9] , \mult[14][8] , \mult[14][7] , 
        \mult[14][6] , \mult[14][5] , \mult[14][4] , \mult[14][3] , 
        \mult[14][2] , \mult[14][1] , \mult[14][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_47 mult_37_G16 ( .a(
        i_a[127:120]), .b(i_b[127:120]), .product({\mult[15][15] , 
        \mult[15][14] , \mult[15][13] , \mult[15][12] , \mult[15][11] , 
        \mult[15][10] , \mult[15][9] , \mult[15][8] , \mult[15][7] , 
        \mult[15][6] , \mult[15][5] , \mult[15][4] , \mult[15][3] , 
        \mult[15][2] , \mult[15][1] , \mult[15][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_48 mult_37_G17 ( .a(
        i_a[135:128]), .b(i_b[135:128]), .product({\mult[16][15] , 
        \mult[16][14] , \mult[16][13] , \mult[16][12] , \mult[16][11] , 
        \mult[16][10] , \mult[16][9] , \mult[16][8] , \mult[16][7] , 
        \mult[16][6] , \mult[16][5] , \mult[16][4] , \mult[16][3] , 
        \mult[16][2] , \mult[16][1] , \mult[16][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_49 mult_37_G18 ( .a(
        i_a[143:136]), .b(i_b[143:136]), .product({\mult[17][15] , 
        \mult[17][14] , \mult[17][13] , \mult[17][12] , \mult[17][11] , 
        \mult[17][10] , \mult[17][9] , \mult[17][8] , \mult[17][7] , 
        \mult[17][6] , \mult[17][5] , \mult[17][4] , \mult[17][3] , 
        \mult[17][2] , \mult[17][1] , \mult[17][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_50 mult_37_G19 ( .a(
        i_a[151:144]), .b(i_b[151:144]), .product({\mult[18][15] , 
        \mult[18][14] , \mult[18][13] , \mult[18][12] , \mult[18][11] , 
        \mult[18][10] , \mult[18][9] , \mult[18][8] , \mult[18][7] , 
        \mult[18][6] , \mult[18][5] , \mult[18][4] , \mult[18][3] , 
        \mult[18][2] , \mult[18][1] , \mult[18][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_51 mult_37_G20 ( .a(
        i_a[159:152]), .b(i_b[159:152]), .product({\mult[19][15] , 
        \mult[19][14] , \mult[19][13] , \mult[19][12] , \mult[19][11] , 
        \mult[19][10] , \mult[19][9] , \mult[19][8] , \mult[19][7] , 
        \mult[19][6] , \mult[19][5] , \mult[19][4] , \mult[19][3] , 
        \mult[19][2] , \mult[19][1] , \mult[19][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_52 mult_37_G21 ( .a(
        i_a[167:160]), .b(i_b[167:160]), .product({\mult[20][15] , 
        \mult[20][14] , \mult[20][13] , \mult[20][12] , \mult[20][11] , 
        \mult[20][10] , \mult[20][9] , \mult[20][8] , \mult[20][7] , 
        \mult[20][6] , \mult[20][5] , \mult[20][4] , \mult[20][3] , 
        \mult[20][2] , \mult[20][1] , \mult[20][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_53 mult_37_G22 ( .a(
        i_a[175:168]), .b(i_b[175:168]), .product({\mult[21][15] , 
        \mult[21][14] , \mult[21][13] , \mult[21][12] , \mult[21][11] , 
        \mult[21][10] , \mult[21][9] , \mult[21][8] , \mult[21][7] , 
        \mult[21][6] , \mult[21][5] , \mult[21][4] , \mult[21][3] , 
        \mult[21][2] , \mult[21][1] , \mult[21][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_54 mult_37_G23 ( .a(
        i_a[183:176]), .b(i_b[183:176]), .product({\mult[22][15] , 
        \mult[22][14] , \mult[22][13] , \mult[22][12] , \mult[22][11] , 
        \mult[22][10] , \mult[22][9] , \mult[22][8] , \mult[22][7] , 
        \mult[22][6] , \mult[22][5] , \mult[22][4] , \mult[22][3] , 
        \mult[22][2] , \mult[22][1] , \mult[22][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_55 mult_37_G24 ( .a(
        i_a[191:184]), .b(i_b[191:184]), .product({\mult[23][15] , 
        \mult[23][14] , \mult[23][13] , \mult[23][12] , \mult[23][11] , 
        \mult[23][10] , \mult[23][9] , \mult[23][8] , \mult[23][7] , 
        \mult[23][6] , \mult[23][5] , \mult[23][4] , \mult[23][3] , 
        \mult[23][2] , \mult[23][1] , \mult[23][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_56 mult_37_G25 ( .a(
        i_a[199:192]), .b(i_b[199:192]), .product({\mult[24][15] , 
        \mult[24][14] , \mult[24][13] , \mult[24][12] , \mult[24][11] , 
        \mult[24][10] , \mult[24][9] , \mult[24][8] , \mult[24][7] , 
        \mult[24][6] , \mult[24][5] , \mult[24][4] , \mult[24][3] , 
        \mult[24][2] , \mult[24][1] , \mult[24][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_57 mult_37_G26 ( .a(
        i_a[207:200]), .b(i_b[207:200]), .product({\mult[25][15] , 
        \mult[25][14] , \mult[25][13] , \mult[25][12] , \mult[25][11] , 
        \mult[25][10] , \mult[25][9] , \mult[25][8] , \mult[25][7] , 
        \mult[25][6] , \mult[25][5] , \mult[25][4] , \mult[25][3] , 
        \mult[25][2] , \mult[25][1] , \mult[25][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_58 mult_37_G27 ( .a(
        i_a[215:208]), .b(i_b[215:208]), .product({\mult[26][15] , 
        \mult[26][14] , \mult[26][13] , \mult[26][12] , \mult[26][11] , 
        \mult[26][10] , \mult[26][9] , \mult[26][8] , \mult[26][7] , 
        \mult[26][6] , \mult[26][5] , \mult[26][4] , \mult[26][3] , 
        \mult[26][2] , \mult[26][1] , \mult[26][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_59 mult_37_G28 ( .a(
        i_a[223:216]), .b(i_b[223:216]), .product({\mult[27][15] , 
        \mult[27][14] , \mult[27][13] , \mult[27][12] , \mult[27][11] , 
        \mult[27][10] , \mult[27][9] , \mult[27][8] , \mult[27][7] , 
        \mult[27][6] , \mult[27][5] , \mult[27][4] , \mult[27][3] , 
        \mult[27][2] , \mult[27][1] , \mult[27][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_60 mult_37_G29 ( .a(
        i_a[231:224]), .b(i_b[231:224]), .product({\mult[28][15] , 
        \mult[28][14] , \mult[28][13] , \mult[28][12] , \mult[28][11] , 
        \mult[28][10] , \mult[28][9] , \mult[28][8] , \mult[28][7] , 
        \mult[28][6] , \mult[28][5] , \mult[28][4] , \mult[28][3] , 
        \mult[28][2] , \mult[28][1] , \mult[28][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_61 mult_37_G30 ( .a(
        i_a[239:232]), .b(i_b[239:232]), .product({\mult[29][15] , 
        \mult[29][14] , \mult[29][13] , \mult[29][12] , \mult[29][11] , 
        \mult[29][10] , \mult[29][9] , \mult[29][8] , \mult[29][7] , 
        \mult[29][6] , \mult[29][5] , \mult[29][4] , \mult[29][3] , 
        \mult[29][2] , \mult[29][1] , \mult[29][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_62 mult_37_G31 ( .a(
        i_a[247:240]), .b(i_b[247:240]), .product({\mult[30][15] , 
        \mult[30][14] , \mult[30][13] , \mult[30][12] , \mult[30][11] , 
        \mult[30][10] , \mult[30][9] , \mult[30][8] , \mult[30][7] , 
        \mult[30][6] , \mult[30][5] , \mult[30][4] , \mult[30][3] , 
        \mult[30][2] , \mult[30][1] , \mult[30][0] }) );
  vec_product_BIT_WIDTH8_VEC_SIZE32_DW_mult_tc_63 mult_37_G32 ( .a(
        i_a[255:248]), .b(i_b[255:248]), .product({\mult[31][15] , 
        \mult[31][14] , \mult[31][13] , \mult[31][12] , \mult[31][11] , 
        \mult[31][10] , \mult[31][9] , \mult[31][8] , \mult[31][7] , 
        \mult[31][6] , \mult[31][5] , \mult[31][4] , \mult[31][3] , 
        \mult[31][2] , \mult[31][1] , \mult[31][0] }) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_0_DW01_add_4 ( A, B, CI, SUM, 
        CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [13:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  XOR3X1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .Y(SUM[13]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_1_DW01_add_5 ( A, B, CI, SUM, 
        CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [13:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .Y(SUM[13]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_2_DW01_add_6 ( A, B, CI, SUM, 
        CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [13:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .Y(SUM[13]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_3_DW01_add_7 ( A, B, CI, SUM, 
        CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [13:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .Y(SUM[13]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_4_DW01_add_8 ( A, B, CI, SUM, 
        CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [13:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XOR3XL U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .Y(SUM[13]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_5_DW01_add_9 ( A, B, CI, SUM, 
        CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [13:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .Y(SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_6_DW01_add_10 ( A, B, CI, 
        SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [11:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_11 ( .A(A[11]), .B(B[11]), .C(carry[11]), .Y(SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_7_DW01_add_11 ( A, B, CI, 
        SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [10:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3XL U1_10 ( .A(A[10]), .B(B[10]), .C(carry[10]), .Y(SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_9_DW01_add_13 ( A, B, CI, 
        SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .Y(SUM[8]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_10_DW01_add_14 ( A, B, CI, 
        SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [9:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XOR3X1 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .Y(SUM[9]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_11_DW01_add_15 ( A, B, CI, 
        SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .Y(SUM[8]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_12_DW01_add_16 ( A, B, CI, 
        SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .Y(SUM[8]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_13_DW01_add_17 ( A, B, CI, 
        SUM, CO );
  input [12:0] A;
  input [12:0] B;
  output [12:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [12:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3XL U1_12 ( .A(A[12]), .B(B[12]), .C(carry[12]), .Y(SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_17_DW01_add_21 ( A, B, CI, 
        SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .Y(SUM[8]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_19_DW01_add_23 ( A, B, CI, 
        SUM, CO );
  input [12:0] A;
  input [12:0] B;
  output [12:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [12:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_12 ( .A(A[12]), .B(B[12]), .C(carry[12]), .Y(SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_20_DW01_add_24 ( A, B, CI, 
        SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [9:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XOR3X1 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .Y(SUM[9]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_21_DW01_add_25 ( A, B, CI, 
        SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .Y(SUM[8]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_22_DW01_add_26 ( A, B, CI, 
        SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .Y(SUM[8]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_23_DW01_add_27 ( A, B, CI, 
        SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [11:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3XL U1_11 ( .A(A[11]), .B(B[11]), .C(carry[11]), .Y(SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_26_DW01_add_30 ( A, B, CI, 
        SUM, CO );
  input [12:0] A;
  input [12:0] B;
  output [12:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [12:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XOR3XL U1_12 ( .A(A[12]), .B(B[12]), .C(carry[12]), .Y(SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_29_DW01_add_33 ( A, B, CI, 
        SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .Y(SUM[8]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_30_DW01_add_34 ( A, B, CI, 
        SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [10:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_10 ( .A(A[10]), .B(B[10]), .C(carry[10]), .Y(SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_31_DW01_add_35 ( A, B, CI, 
        SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XOR3X1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .Y(SUM[8]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_33_DW01_add_37 ( A, B, CI, 
        SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [13:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .Y(SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_34_DW01_add_38 ( A, B, CI, 
        SUM, CO );
  input [12:0] A;
  input [12:0] B;
  output [12:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [12:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_12 ( .A(A[12]), .B(B[12]), .C(carry[12]), .Y(SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_35_DW01_add_39 ( A, B, CI, 
        SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [11:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_11 ( .A(A[11]), .B(B[11]), .C(carry[11]), .Y(SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_36_DW01_add_40 ( A, B, CI, 
        SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XOR3X1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .Y(SUM[8]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_38_DW01_add_42 ( A, B, CI, 
        SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [10:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3XL U1_10 ( .A(A[10]), .B(B[10]), .C(carry[10]), .Y(SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_40_DW01_add_44 ( A, B, CI, 
        SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .Y(SUM[8]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_41_DW01_add_45 ( A, B, CI, 
        SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [11:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_11 ( .A(A[11]), .B(B[11]), .C(carry[11]), .Y(SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_42_DW01_add_46 ( A, B, CI, 
        SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [10:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_10 ( .A(A[10]), .B(B[10]), .C(carry[10]), .Y(SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_43_DW01_add_47 ( A, B, CI, 
        SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XOR3X1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .Y(SUM[8]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_45_DW01_add_49 ( A, B, CI, 
        SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [9:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .Y(SUM[9]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_46_DW01_add_50 ( A, B, CI, 
        SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .Y(SUM[8]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_47_DW01_add_51 ( A, B, CI, 
        SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .Y(SUM[8]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_48_DW01_add_52 ( A, B, CI, 
        SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [13:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .Y(SUM[13]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_49_DW01_add_53 ( A, B, CI, 
        SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [13:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XOR3X1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .Y(SUM[13]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_51_DW01_add_55 ( A, B, CI, 
        SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .Y(SUM[8]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_53_DW01_add_57 ( A, B, CI, 
        SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [11:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3XL U1_11 ( .A(A[11]), .B(B[11]), .C(carry[11]), .Y(SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_56_DW01_add_60 ( A, B, CI, 
        SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [11:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3XL U1_11 ( .A(A[11]), .B(B[11]), .C(carry[11]), .Y(SUM[11]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_58_DW01_add_62 ( A, B, CI, 
        SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .Y(SUM[8]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_59_DW01_add_63 ( A, B, CI, 
        SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .Y(SUM[8]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_60_DW01_add_64 ( A, B, CI, 
        SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [10:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3XL U1_10 ( .A(A[10]), .B(B[10]), .C(carry[10]), .Y(SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_62_DW01_add_66 ( A, B, CI, 
        SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .Y(SUM[8]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_64 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_65 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_66 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_67 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_68 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U42 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_69 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U42 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_70 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_71 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_72 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_73 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_74 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U42 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_75 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U42 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_76 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U42 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_77 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U42 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_78 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_79 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_80 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_81 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_82 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U42 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_83 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U42 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_84 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_85 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_86 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_87 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_88 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_89 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_90 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U42 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_91 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U42 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_92 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_93 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_94 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_95 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_96 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_97 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_98 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U42 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_99 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U42 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_100 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_101 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_102 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_103 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_104 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_105 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_106 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U42 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_107 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U42 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_108 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_109 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_110 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_111 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_112 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U42 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_113 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U42 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_114 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_115 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_116 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_117 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_118 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_119 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_120 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_121 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_122 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U42 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_123 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U42 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_124 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_125 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_126 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_127 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;

  CLKINVX1 U1 ( .A(n1), .Y(product[7]) );
  ADDFXL U2 ( .A(n7), .B(n19), .CI(n2), .CO(n1), .S(product[6]) );
  ADDFXL U3 ( .A(n8), .B(n9), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFXL U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFXL U5 ( .A(n5), .B(n16), .CI(n14), .CO(n4), .S(product[3]) );
  ADDFXL U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFXL U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFXL U9 ( .A(n15), .B(n21), .CI(n12), .CO(n9), .S(n10) );
  XNOR2X1 U10 ( .A(n27), .B(n24), .Y(n12) );
  OR2X1 U11 ( .A(n27), .B(n24), .Y(n11) );
  ADDFXL U12 ( .A(n22), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U13 ( .A(n25), .B(n28), .CO(n15), .S(n16) );
  ADDHXL U14 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  NOR2X1 U15 ( .A(n34), .B(n38), .Y(n19) );
  OR2X1 U16 ( .A(n35), .B(n38), .Y(n20) );
  OR2X1 U17 ( .A(n36), .B(n38), .Y(n21) );
  OR2X1 U18 ( .A(n37), .B(n38), .Y(n22) );
  OR2X1 U19 ( .A(n34), .B(n39), .Y(n23) );
  NOR2X1 U20 ( .A(n35), .B(n39), .Y(n24) );
  NOR2X1 U21 ( .A(n36), .B(n39), .Y(n25) );
  NOR2X1 U22 ( .A(n37), .B(n39), .Y(n26) );
  OR2X1 U23 ( .A(n34), .B(n40), .Y(n27) );
  NOR2X1 U24 ( .A(n35), .B(n40), .Y(n28) );
  NOR2X1 U25 ( .A(n36), .B(n40), .Y(n29) );
  NOR2X1 U26 ( .A(n37), .B(n40), .Y(n30) );
  OR2X1 U27 ( .A(n34), .B(n41), .Y(n31) );
  NOR2X1 U28 ( .A(n35), .B(n41), .Y(n32) );
  NOR2X1 U29 ( .A(n36), .B(n41), .Y(n33) );
  NOR2X1 U30 ( .A(n37), .B(n41), .Y(product[0]) );
  CLKINVX1 U41 ( .A(b[0]), .Y(n37) );
  CLKINVX1 U42 ( .A(b[1]), .Y(n36) );
  CLKINVX1 U43 ( .A(b[2]), .Y(n35) );
  CLKINVX1 U44 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U47 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_BIT_WIDTH4_VEC_SIZE64 ( i_a, i_b, o_product );
  input [255:0] i_a;
  input [255:0] i_b;
  output [13:0] o_product;
  wire   \tree_sums[4][2][9] , \tree_sums[4][2][7] , \tree_sums[4][2][6] ,
         \tree_sums[4][2][5] , \tree_sums[4][2][4] , \tree_sums[4][2][3] ,
         \tree_sums[4][2][2] , \tree_sums[4][2][1] , \tree_sums[4][2][0] ,
         \tree_sums[4][1][9] , \tree_sums[4][1][8] , \tree_sums[4][1][7] ,
         \tree_sums[4][1][6] , \tree_sums[4][1][5] , \tree_sums[4][1][4] ,
         \tree_sums[4][1][3] , \tree_sums[4][1][2] , \tree_sums[4][1][1] ,
         \tree_sums[4][1][0] , \tree_sums[3][7][9] , \tree_sums[3][7][7] ,
         \tree_sums[3][7][6] , \tree_sums[3][7][5] , \tree_sums[3][7][4] ,
         \tree_sums[3][7][3] , \tree_sums[3][7][2] , \tree_sums[3][7][1] ,
         \tree_sums[3][7][0] , \tree_sums[3][6][9] , \tree_sums[3][6][7] ,
         \tree_sums[3][6][6] , \tree_sums[3][6][5] , \tree_sums[3][6][4] ,
         \tree_sums[3][6][3] , \tree_sums[3][6][2] , \tree_sums[3][6][1] ,
         \tree_sums[3][6][0] , \tree_sums[3][5][9] , \tree_sums[3][5][7] ,
         \tree_sums[3][5][6] , \tree_sums[3][5][5] , \tree_sums[3][5][4] ,
         \tree_sums[3][5][3] , \tree_sums[3][5][2] , \tree_sums[3][5][1] ,
         \tree_sums[3][5][0] , \tree_sums[3][4][9] , \tree_sums[3][4][7] ,
         \tree_sums[3][4][6] , \tree_sums[3][4][5] , \tree_sums[3][4][4] ,
         \tree_sums[3][4][3] , \tree_sums[3][4][2] , \tree_sums[3][4][1] ,
         \tree_sums[3][4][0] , \tree_sums[3][3][9] , \tree_sums[3][3][8] ,
         \tree_sums[3][3][7] , \tree_sums[3][3][6] , \tree_sums[3][3][5] ,
         \tree_sums[3][3][4] , \tree_sums[3][3][3] , \tree_sums[3][3][2] ,
         \tree_sums[3][3][1] , \tree_sums[3][3][0] , \tree_sums[3][2][9] ,
         \tree_sums[3][2][8] , \tree_sums[3][2][7] , \tree_sums[3][2][6] ,
         \tree_sums[3][2][5] , \tree_sums[3][2][4] , \tree_sums[3][2][3] ,
         \tree_sums[3][2][2] , \tree_sums[3][2][1] , \tree_sums[3][2][13] ,
         \tree_sums[3][2][0] , \tree_sums[2][9][8] , \tree_sums[2][9][7] ,
         \tree_sums[2][9][6] , \tree_sums[2][9][5] , \tree_sums[2][9][4] ,
         \tree_sums[2][9][3] , \tree_sums[2][9][2] , \tree_sums[2][9][1] ,
         \tree_sums[2][9][0] , \tree_sums[2][4][8] , \tree_sums[2][4][7] ,
         \tree_sums[2][4][6] , \tree_sums[2][4][5] , \tree_sums[2][4][4] ,
         \tree_sums[2][4][3] , \tree_sums[2][4][2] , \tree_sums[2][4][1] ,
         \tree_sums[2][4][13] , \tree_sums[2][4][0] , \tree_sums[2][15][8] ,
         \tree_sums[2][15][7] , \tree_sums[2][15][6] , \tree_sums[2][15][5] ,
         \tree_sums[2][15][4] , \tree_sums[2][15][3] , \tree_sums[2][15][2] ,
         \tree_sums[2][15][1] , \tree_sums[2][15][0] , \tree_sums[2][14][8] ,
         \tree_sums[2][14][7] , \tree_sums[2][14][6] , \tree_sums[2][14][5] ,
         \tree_sums[2][14][4] , \tree_sums[2][14][3] , \tree_sums[2][14][2] ,
         \tree_sums[2][14][1] , \tree_sums[2][14][0] , \tree_sums[2][13][8] ,
         \tree_sums[2][13][7] , \tree_sums[2][13][6] , \tree_sums[2][13][5] ,
         \tree_sums[2][13][4] , \tree_sums[2][13][3] , \tree_sums[2][13][2] ,
         \tree_sums[2][13][1] , \tree_sums[2][13][0] , \tree_sums[2][12][8] ,
         \tree_sums[2][12][7] , \tree_sums[2][12][6] , \tree_sums[2][12][5] ,
         \tree_sums[2][12][4] , \tree_sums[2][12][3] , \tree_sums[2][12][2] ,
         \tree_sums[2][12][1] , \tree_sums[2][12][0] , \tree_sums[2][11][8] ,
         \tree_sums[2][11][7] , \tree_sums[2][11][6] , \tree_sums[2][11][5] ,
         \tree_sums[2][11][4] , \tree_sums[2][11][3] , \tree_sums[2][11][2] ,
         \tree_sums[2][11][1] , \tree_sums[2][11][0] , \tree_sums[2][10][8] ,
         \tree_sums[2][10][7] , \tree_sums[2][10][6] , \tree_sums[2][10][5] ,
         \tree_sums[2][10][4] , \tree_sums[2][10][3] , \tree_sums[2][10][2] ,
         \tree_sums[2][10][1] , \tree_sums[2][10][0] , \tree_sums[1][31][7] ,
         \tree_sums[1][31][6] , \tree_sums[1][31][5] , \tree_sums[1][31][4] ,
         \tree_sums[1][31][3] , \tree_sums[1][31][2] , \tree_sums[1][31][1] ,
         \tree_sums[1][31][13] , \tree_sums[1][31][0] , \tree_sums[1][30][7] ,
         \tree_sums[1][30][6] , \tree_sums[1][30][5] , \tree_sums[1][30][4] ,
         \tree_sums[1][30][3] , \tree_sums[1][30][2] , \tree_sums[1][30][1] ,
         \tree_sums[1][30][13] , \tree_sums[1][30][0] , \tree_sums[1][29][7] ,
         \tree_sums[1][29][6] , \tree_sums[1][29][5] , \tree_sums[1][29][4] ,
         \tree_sums[1][29][3] , \tree_sums[1][29][2] , \tree_sums[1][29][1] ,
         \tree_sums[1][29][13] , \tree_sums[1][29][0] , \tree_sums[1][28][7] ,
         \tree_sums[1][28][6] , \tree_sums[1][28][5] , \tree_sums[1][28][4] ,
         \tree_sums[1][28][3] , \tree_sums[1][28][2] , \tree_sums[1][28][1] ,
         \tree_sums[1][28][13] , \tree_sums[1][28][0] , \tree_sums[1][27][7] ,
         \tree_sums[1][27][6] , \tree_sums[1][27][5] , \tree_sums[1][27][4] ,
         \tree_sums[1][27][3] , \tree_sums[1][27][2] , \tree_sums[1][27][1] ,
         \tree_sums[1][27][13] , \tree_sums[1][27][0] , \tree_sums[1][26][7] ,
         \tree_sums[1][26][6] , \tree_sums[1][26][5] , \tree_sums[1][26][4] ,
         \tree_sums[1][26][3] , \tree_sums[1][26][2] , \tree_sums[1][26][1] ,
         \tree_sums[1][26][13] , \tree_sums[1][26][0] , \tree_sums[1][25][7] ,
         \tree_sums[1][25][6] , \tree_sums[1][25][5] , \tree_sums[1][25][4] ,
         \tree_sums[1][25][3] , \tree_sums[1][25][2] , \tree_sums[1][25][1] ,
         \tree_sums[1][25][13] , \tree_sums[1][25][0] , \tree_sums[1][24][7] ,
         \tree_sums[1][24][6] , \tree_sums[1][24][5] , \tree_sums[1][24][4] ,
         \tree_sums[1][24][3] , \tree_sums[1][24][2] , \tree_sums[1][24][1] ,
         \tree_sums[1][24][13] , \tree_sums[1][24][0] , \tree_sums[1][23][7] ,
         \tree_sums[1][23][6] , \tree_sums[1][23][5] , \tree_sums[1][23][4] ,
         \tree_sums[1][23][3] , \tree_sums[1][23][2] , \tree_sums[1][23][1] ,
         \tree_sums[1][23][13] , \tree_sums[1][23][0] , \tree_sums[1][22][7] ,
         \tree_sums[1][22][6] , \tree_sums[1][22][5] , \tree_sums[1][22][4] ,
         \tree_sums[1][22][3] , \tree_sums[1][22][2] , \tree_sums[1][22][1] ,
         \tree_sums[1][22][13] , \tree_sums[1][22][0] , \tree_sums[1][21][7] ,
         \tree_sums[1][21][6] , \tree_sums[1][21][5] , \tree_sums[1][21][4] ,
         \tree_sums[1][21][3] , \tree_sums[1][21][2] , \tree_sums[1][21][1] ,
         \tree_sums[1][21][13] , \tree_sums[1][21][0] , \tree_sums[1][20][7] ,
         \tree_sums[1][20][6] , \tree_sums[1][20][5] , \tree_sums[1][20][4] ,
         \tree_sums[1][20][3] , \tree_sums[1][20][2] , \tree_sums[1][20][1] ,
         \tree_sums[1][20][13] , \tree_sums[1][20][0] , \tree_sums[1][19][7] ,
         \tree_sums[1][19][6] , \tree_sums[1][19][5] , \tree_sums[1][19][4] ,
         \tree_sums[1][19][3] , \tree_sums[1][19][2] , \tree_sums[1][19][1] ,
         \tree_sums[1][19][13] , \tree_sums[1][19][0] , \tree_sums[1][18][7] ,
         \tree_sums[1][18][6] , \tree_sums[1][18][5] , \tree_sums[1][18][4] ,
         \tree_sums[1][18][3] , \tree_sums[1][18][2] , \tree_sums[1][18][1] ,
         \tree_sums[1][18][13] , \tree_sums[1][18][0] , \tree_sums[1][17][7] ,
         \tree_sums[1][17][6] , \tree_sums[1][17][5] , \tree_sums[1][17][4] ,
         \tree_sums[1][17][3] , \tree_sums[1][17][2] , \tree_sums[1][17][1] ,
         \tree_sums[1][17][13] , \tree_sums[1][17][0] , \tree_sums[1][16][7] ,
         \tree_sums[1][16][6] , \tree_sums[1][16][5] , \tree_sums[1][16][4] ,
         \tree_sums[1][16][3] , \tree_sums[1][16][2] , \tree_sums[1][16][1] ,
         \tree_sums[1][16][13] , \tree_sums[1][16][0] , \tree_sums[1][15][7] ,
         \tree_sums[1][15][6] , \tree_sums[1][15][5] , \tree_sums[1][15][4] ,
         \tree_sums[1][15][3] , \tree_sums[1][15][2] , \tree_sums[1][15][1] ,
         \tree_sums[1][15][13] , \tree_sums[1][15][0] , \mult[9][7] ,
         \mult[9][6] , \mult[9][5] , \mult[9][4] , \mult[9][3] , \mult[9][2] ,
         \mult[9][1] , \mult[9][0] , \mult[8][7] , \mult[8][6] , \mult[8][5] ,
         \mult[8][4] , \mult[8][3] , \mult[8][2] , \mult[8][1] , \mult[8][0] ,
         \mult[7][7] , \mult[7][6] , \mult[7][5] , \mult[7][4] , \mult[7][3] ,
         \mult[7][2] , \mult[7][1] , \mult[7][0] , \mult[6][7] , \mult[6][6] ,
         \mult[6][5] , \mult[6][4] , \mult[6][3] , \mult[6][2] , \mult[6][1] ,
         \mult[6][0] , \mult[63][7] , \mult[63][6] , \mult[63][5] ,
         \mult[63][4] , \mult[63][3] , \mult[63][2] , \mult[63][1] ,
         \mult[63][0] , \mult[62][7] , \mult[62][6] , \mult[62][5] ,
         \mult[62][4] , \mult[62][3] , \mult[62][2] , \mult[62][1] ,
         \mult[62][0] , \mult[61][7] , \mult[61][6] , \mult[61][5] ,
         \mult[61][4] , \mult[61][3] , \mult[61][2] , \mult[61][1] ,
         \mult[61][0] , \mult[60][7] , \mult[60][6] , \mult[60][5] ,
         \mult[60][4] , \mult[60][3] , \mult[60][2] , \mult[60][1] ,
         \mult[60][0] , \mult[5][7] , \mult[5][6] , \mult[5][5] , \mult[5][4] ,
         \mult[5][3] , \mult[5][2] , \mult[5][1] , \mult[5][0] , \mult[59][7] ,
         \mult[59][6] , \mult[59][5] , \mult[59][4] , \mult[59][3] ,
         \mult[59][2] , \mult[59][1] , \mult[59][0] , \mult[58][7] ,
         \mult[58][6] , \mult[58][5] , \mult[58][4] , \mult[58][3] ,
         \mult[58][2] , \mult[58][1] , \mult[58][0] , \mult[57][7] ,
         \mult[57][6] , \mult[57][5] , \mult[57][4] , \mult[57][3] ,
         \mult[57][2] , \mult[57][1] , \mult[57][0] , \mult[56][7] ,
         \mult[56][6] , \mult[56][5] , \mult[56][4] , \mult[56][3] ,
         \mult[56][2] , \mult[56][1] , \mult[56][0] , \mult[55][7] ,
         \mult[55][6] , \mult[55][5] , \mult[55][4] , \mult[55][3] ,
         \mult[55][2] , \mult[55][1] , \mult[55][0] , \mult[54][7] ,
         \mult[54][6] , \mult[54][5] , \mult[54][4] , \mult[54][3] ,
         \mult[54][2] , \mult[54][1] , \mult[54][0] , \mult[53][7] ,
         \mult[53][6] , \mult[53][5] , \mult[53][4] , \mult[53][3] ,
         \mult[53][2] , \mult[53][1] , \mult[53][0] , \mult[52][7] ,
         \mult[52][6] , \mult[52][5] , \mult[52][4] , \mult[52][3] ,
         \mult[52][2] , \mult[52][1] , \mult[52][0] , \mult[51][7] ,
         \mult[51][6] , \mult[51][5] , \mult[51][4] , \mult[51][3] ,
         \mult[51][2] , \mult[51][1] , \mult[51][0] , \mult[50][7] ,
         \mult[50][6] , \mult[50][5] , \mult[50][4] , \mult[50][3] ,
         \mult[50][2] , \mult[50][1] , \mult[50][0] , \mult[4][7] ,
         \mult[4][6] , \mult[4][5] , \mult[4][4] , \mult[4][3] , \mult[4][2] ,
         \mult[4][1] , \mult[4][0] , \mult[49][7] , \mult[49][6] ,
         \mult[49][5] , \mult[49][4] , \mult[49][3] , \mult[49][2] ,
         \mult[49][1] , \mult[49][0] , \mult[48][7] , \mult[48][6] ,
         \mult[48][5] , \mult[48][4] , \mult[48][3] , \mult[48][2] ,
         \mult[48][1] , \mult[48][0] , \mult[47][7] , \mult[47][6] ,
         \mult[47][5] , \mult[47][4] , \mult[47][3] , \mult[47][2] ,
         \mult[47][1] , \mult[47][0] , \mult[46][7] , \mult[46][6] ,
         \mult[46][5] , \mult[46][4] , \mult[46][3] , \mult[46][2] ,
         \mult[46][1] , \mult[46][0] , \mult[45][7] , \mult[45][6] ,
         \mult[45][5] , \mult[45][4] , \mult[45][3] , \mult[45][2] ,
         \mult[45][1] , \mult[45][0] , \mult[44][7] , \mult[44][6] ,
         \mult[44][5] , \mult[44][4] , \mult[44][3] , \mult[44][2] ,
         \mult[44][1] , \mult[44][0] , \mult[43][7] , \mult[43][6] ,
         \mult[43][5] , \mult[43][4] , \mult[43][3] , \mult[43][2] ,
         \mult[43][1] , \mult[43][0] , \mult[42][7] , \mult[42][6] ,
         \mult[42][5] , \mult[42][4] , \mult[42][3] , \mult[42][2] ,
         \mult[42][1] , \mult[42][0] , \mult[41][7] , \mult[41][6] ,
         \mult[41][5] , \mult[41][4] , \mult[41][3] , \mult[41][2] ,
         \mult[41][1] , \mult[41][0] , \mult[40][7] , \mult[40][6] ,
         \mult[40][5] , \mult[40][4] , \mult[40][3] , \mult[40][2] ,
         \mult[40][1] , \mult[40][0] , \mult[3][7] , \mult[3][6] ,
         \mult[3][5] , \mult[3][4] , \mult[3][3] , \mult[3][2] , \mult[3][1] ,
         \mult[3][0] , \mult[39][7] , \mult[39][6] , \mult[39][5] ,
         \mult[39][4] , \mult[39][3] , \mult[39][2] , \mult[39][1] ,
         \mult[39][0] , \mult[38][7] , \mult[38][6] , \mult[38][5] ,
         \mult[38][4] , \mult[38][3] , \mult[38][2] , \mult[38][1] ,
         \mult[38][0] , \mult[37][7] , \mult[37][6] , \mult[37][5] ,
         \mult[37][4] , \mult[37][3] , \mult[37][2] , \mult[37][1] ,
         \mult[37][0] , \mult[36][7] , \mult[36][6] , \mult[36][5] ,
         \mult[36][4] , \mult[36][3] , \mult[36][2] , \mult[36][1] ,
         \mult[36][0] , \mult[35][7] , \mult[35][6] , \mult[35][5] ,
         \mult[35][4] , \mult[35][3] , \mult[35][2] , \mult[35][1] ,
         \mult[35][0] , \mult[34][7] , \mult[34][6] , \mult[34][5] ,
         \mult[34][4] , \mult[34][3] , \mult[34][2] , \mult[34][1] ,
         \mult[34][0] , \mult[33][7] , \mult[33][6] , \mult[33][5] ,
         \mult[33][4] , \mult[33][3] , \mult[33][2] , \mult[33][1] ,
         \mult[33][0] , \mult[32][7] , \mult[32][6] , \mult[32][5] ,
         \mult[32][4] , \mult[32][3] , \mult[32][2] , \mult[32][1] ,
         \mult[32][0] , \mult[31][7] , \mult[31][6] , \mult[31][5] ,
         \mult[31][4] , \mult[31][3] , \mult[31][2] , \mult[31][1] ,
         \mult[31][0] , \mult[30][7] , \mult[30][6] , \mult[30][5] ,
         \mult[30][4] , \mult[30][3] , \mult[30][2] , \mult[30][1] ,
         \mult[30][0] , \mult[2][7] , \mult[2][6] , \mult[2][5] , \mult[2][4] ,
         \mult[2][3] , \mult[2][2] , \mult[2][1] , \mult[2][0] , \mult[29][7] ,
         \mult[29][6] , \mult[29][5] , \mult[29][4] , \mult[29][3] ,
         \mult[29][2] , \mult[29][1] , \mult[29][0] , \mult[28][7] ,
         \mult[28][6] , \mult[28][5] , \mult[28][4] , \mult[28][3] ,
         \mult[28][2] , \mult[28][1] , \mult[28][0] , \mult[27][7] ,
         \mult[27][6] , \mult[27][5] , \mult[27][4] , \mult[27][3] ,
         \mult[27][2] , \mult[27][1] , \mult[27][0] , \mult[26][7] ,
         \mult[26][6] , \mult[26][5] , \mult[26][4] , \mult[26][3] ,
         \mult[26][2] , \mult[26][1] , \mult[26][0] , \mult[25][7] ,
         \mult[25][6] , \mult[25][5] , \mult[25][4] , \mult[25][3] ,
         \mult[25][2] , \mult[25][1] , \mult[25][0] , \mult[24][7] ,
         \mult[24][6] , \mult[24][5] , \mult[24][4] , \mult[24][3] ,
         \mult[24][2] , \mult[24][1] , \mult[24][0] , \mult[23][7] ,
         \mult[23][6] , \mult[23][5] , \mult[23][4] , \mult[23][3] ,
         \mult[23][2] , \mult[23][1] , \mult[23][0] , \mult[22][7] ,
         \mult[22][6] , \mult[22][5] , \mult[22][4] , \mult[22][3] ,
         \mult[22][2] , \mult[22][1] , \mult[22][0] , \mult[21][7] ,
         \mult[21][6] , \mult[21][5] , \mult[21][4] , \mult[21][3] ,
         \mult[21][2] , \mult[21][1] , \mult[21][0] , \mult[20][7] ,
         \mult[20][6] , \mult[20][5] , \mult[20][4] , \mult[20][3] ,
         \mult[20][2] , \mult[20][1] , \mult[20][0] , \mult[1][7] ,
         \mult[1][6] , \mult[1][5] , \mult[1][4] , \mult[1][3] , \mult[1][2] ,
         \mult[1][1] , \mult[1][0] , \mult[19][7] , \mult[19][6] ,
         \mult[19][5] , \mult[19][4] , \mult[19][3] , \mult[19][2] ,
         \mult[19][1] , \mult[19][0] , \mult[18][7] , \mult[18][6] ,
         \mult[18][5] , \mult[18][4] , \mult[18][3] , \mult[18][2] ,
         \mult[18][1] , \mult[18][0] , \mult[17][7] , \mult[17][6] ,
         \mult[17][5] , \mult[17][4] , \mult[17][3] , \mult[17][2] ,
         \mult[17][1] , \mult[17][0] , \mult[16][7] , \mult[16][6] ,
         \mult[16][5] , \mult[16][4] , \mult[16][3] , \mult[16][2] ,
         \mult[16][1] , \mult[16][0] , \mult[15][7] , \mult[15][6] ,
         \mult[15][5] , \mult[15][4] , \mult[15][3] , \mult[15][2] ,
         \mult[15][1] , \mult[15][0] , \mult[14][7] , \mult[14][6] ,
         \mult[14][5] , \mult[14][4] , \mult[14][3] , \mult[14][2] ,
         \mult[14][1] , \mult[14][0] , \mult[13][7] , \mult[13][6] ,
         \mult[13][5] , \mult[13][4] , \mult[13][3] , \mult[13][2] ,
         \mult[13][1] , \mult[13][0] , \mult[12][7] , \mult[12][6] ,
         \mult[12][5] , \mult[12][4] , \mult[12][3] , \mult[12][2] ,
         \mult[12][1] , \mult[12][0] , \mult[11][7] , \mult[11][6] ,
         \mult[11][5] , \mult[11][4] , \mult[11][3] , \mult[11][2] ,
         \mult[11][1] , \mult[11][0] , \mult[10][7] , \mult[10][6] ,
         \mult[10][5] , \mult[10][4] , \mult[10][3] , \mult[10][2] ,
         \mult[10][1] , \mult[10][0] , \mult[0][7] , \mult[0][6] ,
         \mult[0][5] , \mult[0][4] , \mult[0][3] , \mult[0][2] , \mult[0][1] ,
         \mult[0][0] , n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n98, n109, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n358, n369,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385, n386, n387, n388, n389, n390,
         \add_15_root_add_61_G6/SUM[0] , \add_15_root_add_61_G6/SUM[1] ,
         \add_15_root_add_61_G6/SUM[2] , \add_15_root_add_61_G6/SUM[3] ,
         \add_15_root_add_61_G6/SUM[4] , \add_15_root_add_61_G6/SUM[5] ,
         \add_15_root_add_61_G6/SUM[6] , \add_15_root_add_61_G6/SUM[7] ,
         \add_15_root_add_61_G6/SUM[8] , \add_15_root_add_61_G6/SUM[9] ,
         \add_23_root_add_61_G6/SUM[0] , \add_23_root_add_61_G6/SUM[1] ,
         \add_23_root_add_61_G6/SUM[2] , \add_23_root_add_61_G6/SUM[3] ,
         \add_23_root_add_61_G6/SUM[4] , \add_23_root_add_61_G6/SUM[5] ,
         \add_23_root_add_61_G6/SUM[6] , \add_23_root_add_61_G6/SUM[7] ,
         \add_23_root_add_61_G6/SUM[8] , \add_23_root_add_61_G6/SUM[9] ,
         \add_23_root_add_61_G6/SUM[12] , n2, n6, n8, n9, n11, n13, n19, n24,
         n26, n31, n35, n36, n38, n39, n45, n47, n48, n49, n55, n95, n96, n97,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n110, n356,
         n357, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n370, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n489, n490, n491, n492, n493, n494, n495, n496, n497, n498, n499,
         n500, n501, n502, n503, n504, n505, n506, n507, n508, n509, n510,
         n511, n512, n513, n514, n515, n516, n517, n518, n519, n520, n521,
         n522, n523, n524, n525, n526, n527, n528, n529, n530, n531, n532,
         n533, n534, n535, n536, n537, n538, n539, n540, n541, n542, n543,
         n544, n545, n546, n547, n548, n549, n550, n551, n552, n553, n554,
         n555, n556, n557, n558, n559, n560, n561, n562, n563, n564, n565,
         n566, n567, n568, n569, n570, n571, n572, n573, n574, n575, n576,
         n577, n578, n579, n580, n581, n582, n583, n584, n585, n586, n587,
         n588, n589, n590, n591, n592, n593, n594, n595, n596, n597, n598,
         n599, n600, n601, n602, n603, n604, n605, n606, n607, n608, n609,
         n610, n611, n612, n613, n614, n615, n616, n617, n618, n619, n620,
         n621, n622, n623, n624, n625, n626, n627, n628, n629, n630, n631,
         n632, n633, n634, n635, n636, n637, n638, n639, n640, n641, n642,
         n643, n644, n645, n646, n647, n648, n649, n650, n651, n652, n653,
         n654, n655, n656, n657, n658, n659, n660, n661, n662, n663, n664,
         n665, n666, n667, n668, n669, n670, n671, n672, n673, n674, n675,
         n676, n677, n678, n679, n680, n681, n682, n683, n684, n685, n686,
         n687, n688, n689, n690, n691, n692, n693, n694, n695, n696, n697,
         n698, n699, n700, n701, n702, n703, n704, n705, n706, n707, n708,
         n709, n710, n711, n712, n713, n714, n715, n716, n717, n718, n719,
         n720, n721, n722, n723, n724, n725, n726, n727, n728, n729, n730,
         n731, n732, n733, n734, n735, n736, n737, n738, n739, n740, n741,
         n742, n743, n744, n745, n746, n747, n748, n749, n750, n751, n752,
         n753, n754, n755, n756, n757, n758, n759, n760, n761, n762, n763,
         n764, n765, n766, n767, n768, n769, n770, n771, n772, n773, n774,
         n775, n776, n777, n778, n779, n780, n781, n782, n783, n784, n785,
         n786, n787, n788, n789, n790, n791, n792, n793, n794, n795, n796,
         n797, n798, n799, n800, n801, n802, n803, n804, n805, n806, n807,
         n808, n809, n810, n811, n812, n813, n814, n815, n816, n817, n818,
         n819, n820, n821, n822, n823, n824, n825, n826, n827, n828, n829,
         n830, n831, n832, n833, n834, n835, n836, n837, n838, n839, n840,
         n841, n842, n843, n844, n845, n846, n847, n848, n849, n850, n851,
         n852, n853, n854, n855, n856, n857, n858, n859, n860, n861, n862,
         n863, n864, n865, n866, n867, n868, n869, n870, n871, n872, n873,
         n874, n875, n876, n877, n878, n879, n880, n881;

  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_0_DW01_add_4 add_0_root_add_61_G6 ( 
        .A({n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n299, 
        n300, n301, n302}), .B({n303, n304, n305, n306, n307, n308, n310, n311, 
        n312, n313, n314, n315, n316, n317}), .CI(1'b0), .SUM(o_product) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_1_DW01_add_5 add_1_root_add_61_G6 ( 
        .A({n256, n257, n258, n259, n260, n261, n262, n263, n265, n266, n267, 
        n268, n269, n270}), .B({n271, n272, n273, n274, n276, n277, n278, n279, 
        n280, n281, n282, n283, n284, n285}), .CI(1'b0), .SUM({n303, n304, 
        n305, n306, n307, n308, n310, n311, n312, n313, n314, n315, n316, n317}) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_2_DW01_add_6 add_2_root_add_61_G6 ( 
        .A({n225, n226, n227, n228, n229, n230, n232, n233, n234, n235, n236, 
        n237, n238, n239}), .B({n240, n241, n243, n244, n245, n246, n247, n248, 
        n249, n250, n251, n252, n254, n255}), .CI(1'b0), .SUM({n288, n289, 
        n290, n291, n292, n293, n294, n295, n296, n297, n299, n300, n301, n302}) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_3_DW01_add_7 add_3_root_add_61_G6 ( 
        .A({n195, n195, n196, n197, n199, n200, n201, n202, n203, n204, n205, 
        n206, n207, n208}), .B({n210, n211, n212, n213, n214, n215, n216, n217, 
        n218, n219, n221, n222, n223, n224}), .CI(1'b0), .SUM({n271, n272, 
        n273, n274, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285}) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_4_DW01_add_8 add_7_root_add_61_G6 ( 
        .A({n81, n81, n82, n83, n84, n85, n86, n88, n89, n90, n91, n92, n93, 
        n94}), .B({\add_15_root_add_61_G6/SUM[9] , 
        \add_15_root_add_61_G6/SUM[9] , \add_15_root_add_61_G6/SUM[9] , 
        \add_15_root_add_61_G6/SUM[9] , \add_15_root_add_61_G6/SUM[9] , 
        \add_15_root_add_61_G6/SUM[8] , \add_15_root_add_61_G6/SUM[7] , 
        \add_15_root_add_61_G6/SUM[6] , \add_15_root_add_61_G6/SUM[5] , 
        \add_15_root_add_61_G6/SUM[4] , \add_15_root_add_61_G6/SUM[3] , 
        \add_15_root_add_61_G6/SUM[2] , \add_15_root_add_61_G6/SUM[1] , 
        \add_15_root_add_61_G6/SUM[0] }), .CI(1'b0), .SUM({n210, n211, n212, 
        n213, n214, n215, n216, n217, n218, n219, n221, n222, n223, n224}) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_5_DW01_add_9 add_4_root_add_61_G6 ( 
        .A({n167, n167, n167, n168, n169, n170, n171, n172, n173, n174, n177, 
        n178, n179, n180}), .B({n181, n181, n182, n183, n184, n185, n186, n188, 
        n189, n190, n191, n192, n193, n194}), .CI(1'b0), .SUM({n256, n257, 
        n258, n259, n260, n261, n262, n263, n265, n266, n267, n268, n269, n270}) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_6_DW01_add_10 add_10_root_add_61_G6 ( 
        .A({n371, n371, n372, n373, n374, n375, n376, n377, n378, n379, n381, 
        n382}), .B({n383, n383, n383, n384, n385, n386, n387, n388, n389, n390, 
        n66, n67}), .CI(1'b0), .SUM({n167, n168, n169, n170, n171, n172, n173, 
        n174, n177, n178, n179, n180}) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_7_DW01_add_11 add_22_root_add_61_G6 ( 
        .A({\tree_sums[1][22][13] , \tree_sums[1][22][13] , 
        \tree_sums[1][22][13] , \tree_sums[1][22][7] , \tree_sums[1][22][6] , 
        \tree_sums[1][22][5] , \tree_sums[1][22][4] , \tree_sums[1][22][3] , 
        \tree_sums[1][22][2] , \tree_sums[1][22][1] , \tree_sums[1][22][0] }), 
        .B({\tree_sums[2][11][8] , \tree_sums[2][11][8] , 
        \tree_sums[2][11][8] , \tree_sums[2][11][7] , \tree_sums[2][11][6] , 
        \tree_sums[2][11][5] , \tree_sums[2][11][4] , \tree_sums[2][11][3] , 
        \tree_sums[2][11][2] , \tree_sums[2][11][1] , \tree_sums[2][11][0] }), 
        .CI(1'b0), .SUM({n371, n372, n373, n374, n375, n376, n377, n378, n379, 
        n381, n382}) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_9_DW01_add_13 add_46_root_add_61_G6 ( 
        .A({\mult[32][7] , \mult[32][7] , \mult[32][6] , \mult[32][5] , 
        \mult[32][4] , \mult[32][3] , \mult[32][2] , \mult[32][1] , 
        \mult[32][0] }), .B({\mult[33][7] , \mult[33][7] , \mult[33][6] , 
        \mult[33][5] , \mult[33][4] , \mult[33][3] , \mult[33][2] , 
        \mult[33][1] , \mult[33][0] }), .CI(1'b0), .SUM({
        \tree_sums[1][22][13] , \tree_sums[1][22][7] , \tree_sums[1][22][6] , 
        \tree_sums[1][22][5] , \tree_sums[1][22][4] , \tree_sums[1][22][3] , 
        \tree_sums[1][22][2] , \tree_sums[1][22][1] , \tree_sums[1][22][0] })
         );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_10_DW01_add_14 add_21_root_add_61_G6 ( 
        .A({\tree_sums[1][21][13] , \tree_sums[1][21][13] , 
        \tree_sums[1][21][7] , \tree_sums[1][21][6] , \tree_sums[1][21][5] , 
        \tree_sums[1][21][4] , \tree_sums[1][21][3] , \tree_sums[1][21][2] , 
        \tree_sums[1][21][1] , \tree_sums[1][21][0] }), .B({
        \tree_sums[1][20][13] , \tree_sums[1][20][13] , \tree_sums[1][20][7] , 
        \tree_sums[1][20][6] , \tree_sums[1][20][5] , \tree_sums[1][20][4] , 
        \tree_sums[1][20][3] , \tree_sums[1][20][2] , \tree_sums[1][20][1] , 
        \tree_sums[1][20][0] }), .CI(1'b0), .SUM({n383, n384, n385, n386, n387, 
        n388, n389, n390, n66, n67}) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_11_DW01_add_15 add_43_root_add_61_G6 ( 
        .A({\mult[38][7] , \mult[38][7] , \mult[38][6] , \mult[38][5] , 
        \mult[38][4] , \mult[38][3] , \mult[38][2] , \mult[38][1] , 
        \mult[38][0] }), .B({\mult[39][7] , \mult[39][7] , \mult[39][6] , 
        \mult[39][5] , \mult[39][4] , \mult[39][3] , \mult[39][2] , 
        \mult[39][1] , \mult[39][0] }), .CI(1'b0), .SUM({
        \tree_sums[1][20][13] , \tree_sums[1][20][7] , \tree_sums[1][20][6] , 
        \tree_sums[1][20][5] , \tree_sums[1][20][4] , \tree_sums[1][20][3] , 
        \tree_sums[1][20][2] , \tree_sums[1][20][1] , \tree_sums[1][20][0] })
         );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_12_DW01_add_16 add_44_root_add_61_G6 ( 
        .A({\mult[36][7] , \mult[36][7] , \mult[36][6] , \mult[36][5] , 
        \mult[36][4] , \mult[36][3] , \mult[36][2] , \mult[36][1] , 
        \mult[36][0] }), .B({\mult[37][7] , \mult[37][7] , \mult[37][6] , 
        \mult[37][5] , \mult[37][4] , \mult[37][3] , \mult[37][2] , 
        \mult[37][1] , \mult[37][0] }), .CI(1'b0), .SUM({
        \tree_sums[1][21][13] , \tree_sums[1][21][7] , \tree_sums[1][21][6] , 
        \tree_sums[1][21][5] , \tree_sums[1][21][4] , \tree_sums[1][21][3] , 
        \tree_sums[1][21][2] , \tree_sums[1][21][1] , \tree_sums[1][21][0] })
         );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_13_DW01_add_17 add_16_root_add_61_G6 ( 
        .A({\tree_sums[3][4][9] , \tree_sums[3][4][9] , \tree_sums[3][4][9] , 
        \tree_sums[3][4][9] , \tree_sums[3][4][9] , \tree_sums[3][4][7] , 
        \tree_sums[3][4][6] , \tree_sums[3][4][5] , \tree_sums[3][4][4] , 
        \tree_sums[3][4][3] , \tree_sums[3][4][2] , \tree_sums[3][4][1] , 
        \tree_sums[3][4][0] }), .B({\tree_sums[4][2][9] , \tree_sums[4][2][9] , 
        \tree_sums[4][2][9] , \tree_sums[4][2][9] , \tree_sums[4][2][9] , 
        \tree_sums[4][2][7] , \tree_sums[4][2][6] , \tree_sums[4][2][5] , 
        \tree_sums[4][2][4] , \tree_sums[4][2][3] , \tree_sums[4][2][2] , 
        \tree_sums[4][2][1] , \tree_sums[4][2][0] }), .CI(1'b0), .SUM({n81, 
        n82, n83, n84, n85, n86, n88, n89, n90, n91, n92, n93, n94}) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_17_DW01_add_21 add_31_root_add_61_G6 ( 
        .A({\mult[62][7] , \mult[62][7] , \mult[62][6] , \mult[62][5] , 
        \mult[62][4] , \mult[62][3] , \mult[62][2] , \mult[62][1] , 
        \mult[62][0] }), .B({\mult[63][7] , \mult[63][7] , \mult[63][6] , 
        \mult[63][5] , \mult[63][4] , \mult[63][3] , \mult[63][2] , 
        \mult[63][1] , \mult[63][0] }), .CI(1'b0), .SUM({
        \tree_sums[1][15][13] , \tree_sums[1][15][7] , \tree_sums[1][15][6] , 
        \tree_sums[1][15][5] , \tree_sums[1][15][4] , \tree_sums[1][15][3] , 
        \tree_sums[1][15][2] , \tree_sums[1][15][1] , \tree_sums[1][15][0] })
         );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_19_DW01_add_23 add_9_root_add_61_G6 ( 
        .A({n68, n68, n69, n70, n71, n72, n73, n74, n75, n77, n78, n79, n80}), 
        .B({\tree_sums[2][4][13] , \tree_sums[2][4][13] , 
        \tree_sums[2][4][13] , \tree_sums[2][4][13] , \tree_sums[2][4][8] , 
        \tree_sums[2][4][7] , \tree_sums[2][4][6] , \tree_sums[2][4][5] , 
        \tree_sums[2][4][4] , \tree_sums[2][4][3] , \tree_sums[2][4][2] , 
        \tree_sums[2][4][1] , \tree_sums[2][4][0] }), .CI(1'b0), .SUM({n181, 
        n182, n183, n184, n185, n186, n188, n189, n190, n191, n192, n193, n194}) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_20_DW01_add_24 add_19_root_add_61_G6 ( 
        .A({\tree_sums[1][19][13] , \tree_sums[1][19][13] , 
        \tree_sums[1][19][7] , \tree_sums[1][19][6] , \tree_sums[1][19][5] , 
        \tree_sums[1][19][4] , \tree_sums[1][19][3] , \tree_sums[1][19][2] , 
        \tree_sums[1][19][1] , \tree_sums[1][19][0] }), .B({
        \tree_sums[1][18][13] , \tree_sums[1][18][13] , \tree_sums[1][18][7] , 
        \tree_sums[1][18][6] , \tree_sums[1][18][5] , \tree_sums[1][18][4] , 
        \tree_sums[1][18][3] , \tree_sums[1][18][2] , \tree_sums[1][18][1] , 
        \tree_sums[1][18][0] }), .CI(1'b0), .SUM({\tree_sums[2][4][13] , 
        \tree_sums[2][4][8] , \tree_sums[2][4][7] , \tree_sums[2][4][6] , 
        \tree_sums[2][4][5] , \tree_sums[2][4][4] , \tree_sums[2][4][3] , 
        \tree_sums[2][4][2] , \tree_sums[2][4][1] , \tree_sums[2][4][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_21_DW01_add_25 add_39_root_add_61_G6 ( 
        .A({\mult[46][7] , \mult[46][7] , \mult[46][6] , \mult[46][5] , 
        \mult[46][4] , \mult[46][3] , \mult[46][2] , \mult[46][1] , 
        \mult[46][0] }), .B({\mult[47][7] , \mult[47][7] , \mult[47][6] , 
        \mult[47][5] , \mult[47][4] , \mult[47][3] , \mult[47][2] , 
        \mult[47][1] , \mult[47][0] }), .CI(1'b0), .SUM({
        \tree_sums[1][18][13] , \tree_sums[1][18][7] , \tree_sums[1][18][6] , 
        \tree_sums[1][18][5] , \tree_sums[1][18][4] , \tree_sums[1][18][3] , 
        \tree_sums[1][18][2] , \tree_sums[1][18][1] , \tree_sums[1][18][0] })
         );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_22_DW01_add_26 add_40_root_add_61_G6 ( 
        .A({\mult[44][7] , \mult[44][7] , \mult[44][6] , \mult[44][5] , 
        \mult[44][4] , \mult[44][3] , \mult[44][2] , \mult[44][1] , 
        \mult[44][0] }), .B({\mult[45][7] , \mult[45][7] , \mult[45][6] , 
        \mult[45][5] , \mult[45][4] , \mult[45][3] , \mult[45][2] , 
        \mult[45][1] , \mult[45][0] }), .CI(1'b0), .SUM({
        \tree_sums[1][19][13] , \tree_sums[1][19][7] , \tree_sums[1][19][6] , 
        \tree_sums[1][19][5] , \tree_sums[1][19][4] , \tree_sums[1][19][3] , 
        \tree_sums[1][19][2] , \tree_sums[1][19][1] , \tree_sums[1][19][0] })
         );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_23_DW01_add_27 add_20_root_add_61_G6 ( 
        .A({\tree_sums[2][10][8] , \tree_sums[2][10][8] , 
        \tree_sums[2][10][8] , \tree_sums[2][10][8] , \tree_sums[2][10][7] , 
        \tree_sums[2][10][6] , \tree_sums[2][10][5] , \tree_sums[2][10][4] , 
        \tree_sums[2][10][3] , \tree_sums[2][10][2] , \tree_sums[2][10][1] , 
        \tree_sums[2][10][0] }), .B({\tree_sums[3][5][9] , 
        \tree_sums[3][5][9] , \tree_sums[3][5][9] , \tree_sums[3][5][9] , 
        \tree_sums[3][5][7] , \tree_sums[3][5][6] , \tree_sums[3][5][5] , 
        \tree_sums[3][5][4] , \tree_sums[3][5][3] , \tree_sums[3][5][2] , 
        \tree_sums[3][5][1] , \tree_sums[3][5][0] }), .CI(1'b0), .SUM({n68, 
        n69, n70, n71, n72, n73, n74, n75, n77, n78, n79, n80}) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_26_DW01_add_30 add_8_root_add_61_G6 ( 
        .A({\tree_sums[3][2][13] , \tree_sums[3][2][13] , 
        \tree_sums[3][2][13] , \tree_sums[3][2][9] , \tree_sums[3][2][8] , 
        \tree_sums[3][2][7] , \tree_sums[3][2][6] , \tree_sums[3][2][5] , 
        \tree_sums[3][2][4] , \tree_sums[3][2][3] , \tree_sums[3][2][2] , 
        \tree_sums[3][2][1] , \tree_sums[3][2][0] }), .B({\tree_sums[4][1][9] , 
        \tree_sums[4][1][9] , \tree_sums[4][1][9] , \tree_sums[4][1][9] , 
        \tree_sums[4][1][8] , \tree_sums[4][1][7] , \tree_sums[4][1][6] , 
        \tree_sums[4][1][5] , \tree_sums[4][1][4] , \tree_sums[4][1][3] , 
        \tree_sums[4][1][2] , \tree_sums[4][1][1] , \tree_sums[4][1][0] }), 
        .CI(1'b0), .SUM({n195, n196, n197, n199, n200, n201, n202, n203, n204, 
        n205, n206, n207, n208}) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_29_DW01_add_33 add_36_root_add_61_G6 ( 
        .A({\mult[52][7] , \mult[52][7] , \mult[52][6] , \mult[52][5] , 
        \mult[52][4] , \mult[52][3] , \mult[52][2] , \mult[52][1] , 
        \mult[52][0] }), .B({\mult[53][7] , \mult[53][7] , \mult[53][6] , 
        \mult[53][5] , \mult[53][4] , \mult[53][3] , \mult[53][2] , 
        \mult[53][1] , \mult[53][0] }), .CI(1'b0), .SUM({
        \tree_sums[1][16][13] , \tree_sums[1][16][7] , \tree_sums[1][16][6] , 
        \tree_sums[1][16][5] , \tree_sums[1][16][4] , \tree_sums[1][16][3] , 
        \tree_sums[1][16][2] , \tree_sums[1][16][1] , \tree_sums[1][16][0] })
         );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_30_DW01_add_34 add_18_root_add_61_G6 ( 
        .A({\tree_sums[2][9][8] , \tree_sums[2][9][8] , \tree_sums[2][9][8] , 
        \tree_sums[2][9][7] , \tree_sums[2][9][6] , \tree_sums[2][9][5] , 
        \tree_sums[2][9][4] , \tree_sums[2][9][3] , \tree_sums[2][9][2] , 
        \tree_sums[2][9][1] , \tree_sums[2][9][0] }), .B({
        \tree_sums[1][17][13] , \tree_sums[1][17][13] , \tree_sums[1][17][13] , 
        \tree_sums[1][17][7] , \tree_sums[1][17][6] , \tree_sums[1][17][5] , 
        \tree_sums[1][17][4] , \tree_sums[1][17][3] , \tree_sums[1][17][2] , 
        \tree_sums[1][17][1] , \tree_sums[1][17][0] }), .CI(1'b0), .SUM({
        \tree_sums[3][2][13] , \tree_sums[3][2][9] , \tree_sums[3][2][8] , 
        \tree_sums[3][2][7] , \tree_sums[3][2][6] , \tree_sums[3][2][5] , 
        \tree_sums[3][2][4] , \tree_sums[3][2][3] , \tree_sums[3][2][2] , 
        \tree_sums[3][2][1] , \tree_sums[3][2][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_31_DW01_add_35 add_37_root_add_61_G6 ( 
        .A({\mult[50][7] , \mult[50][7] , \mult[50][6] , \mult[50][5] , 
        \mult[50][4] , \mult[50][3] , \mult[50][2] , \mult[50][1] , 
        \mult[50][0] }), .B({\mult[51][7] , \mult[51][7] , \mult[51][6] , 
        \mult[51][5] , \mult[51][4] , \mult[51][3] , \mult[51][2] , 
        \mult[51][1] , \mult[51][0] }), .CI(1'b0), .SUM({
        \tree_sums[1][17][13] , \tree_sums[1][17][7] , \tree_sums[1][17][6] , 
        \tree_sums[1][17][5] , \tree_sums[1][17][4] , \tree_sums[1][17][3] , 
        \tree_sums[1][17][2] , \tree_sums[1][17][1] , \tree_sums[1][17][0] })
         );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_33_DW01_add_37 add_6_root_add_61_G6 ( 
        .A({n111, n111, n111, n112, n113, n114, n115, n116, n117, n118, n119, 
        n121, n122, n123}), .B({n124, n124, n125, n126, n127, n128, n129, n130, 
        n132, n133, n134, n135, n136, n137}), .CI(1'b0), .SUM({n225, n226, 
        n227, n228, n229, n230, n232, n233, n234, n235, n236, n237, n238, n239}) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_34_DW01_add_38 add_13_root_add_61_G6 ( 
        .A({n198, n198, n198, n209, n220, n231, n242, n253, n264, n275, n287, 
        n298, n309}), .B({n318, n318, n319, n320, n321, n322, n323, n324, n326, 
        n327, n328, n329, n330}), .CI(1'b0), .SUM({n124, n125, n126, n127, 
        n128, n129, n130, n132, n133, n134, n135, n136, n137}) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_35_DW01_add_39 add_27_root_add_61_G6 ( 
        .A({\tree_sums[3][7][9] , \tree_sums[3][7][9] , \tree_sums[3][7][9] , 
        \tree_sums[3][7][9] , \tree_sums[3][7][7] , \tree_sums[3][7][6] , 
        \tree_sums[3][7][5] , \tree_sums[3][7][4] , \tree_sums[3][7][3] , 
        \tree_sums[3][7][2] , \tree_sums[3][7][1] , \tree_sums[3][7][0] }), 
        .B({\tree_sums[1][27][13] , \tree_sums[1][27][13] , 
        \tree_sums[1][27][13] , \tree_sums[1][27][13] , \tree_sums[1][27][7] , 
        \tree_sums[1][27][6] , \tree_sums[1][27][5] , \tree_sums[1][27][4] , 
        \tree_sums[1][27][3] , \tree_sums[1][27][2] , \tree_sums[1][27][1] , 
        \tree_sums[1][27][0] }), .CI(1'b0), .SUM({n318, n319, n320, n321, n322, 
        n323, n324, n326, n327, n328, n329, n330}) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_36_DW01_add_40 add_55_root_add_61_G6 ( 
        .A({\mult[14][7] , \mult[14][7] , \mult[14][6] , \mult[14][5] , 
        \mult[14][4] , \mult[14][3] , \mult[14][2] , \mult[14][1] , 
        \mult[14][0] }), .B({\mult[15][7] , \mult[15][7] , \mult[15][6] , 
        \mult[15][5] , \mult[15][4] , \mult[15][3] , \mult[15][2] , 
        \mult[15][1] , \mult[15][0] }), .CI(1'b0), .SUM({
        \tree_sums[1][27][13] , \tree_sums[1][27][7] , \tree_sums[1][27][6] , 
        \tree_sums[1][27][5] , \tree_sums[1][27][4] , \tree_sums[1][27][3] , 
        \tree_sums[1][27][2] , \tree_sums[1][27][1] , \tree_sums[1][27][0] })
         );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_38_DW01_add_42 add_28_root_add_61_G6 ( 
        .A({\tree_sums[1][28][13] , \tree_sums[1][28][13] , 
        \tree_sums[1][28][13] , \tree_sums[1][28][7] , \tree_sums[1][28][6] , 
        \tree_sums[1][28][5] , \tree_sums[1][28][4] , \tree_sums[1][28][3] , 
        \tree_sums[1][28][2] , \tree_sums[1][28][1] , \tree_sums[1][28][0] }), 
        .B({\tree_sums[2][14][8] , \tree_sums[2][14][8] , 
        \tree_sums[2][14][8] , \tree_sums[2][14][7] , \tree_sums[2][14][6] , 
        \tree_sums[2][14][5] , \tree_sums[2][14][4] , \tree_sums[2][14][3] , 
        \tree_sums[2][14][2] , \tree_sums[2][14][1] , \tree_sums[2][14][0] }), 
        .CI(1'b0), .SUM({n198, n209, n220, n231, n242, n253, n264, n275, n287, 
        n298, n309}) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_40_DW01_add_44 add_58_root_add_61_G6 ( 
        .A({\mult[8][7] , \mult[8][7] , \mult[8][6] , \mult[8][5] , 
        \mult[8][4] , \mult[8][3] , \mult[8][2] , \mult[8][1] , \mult[8][0] }), 
        .B({\mult[9][7] , \mult[9][7] , \mult[9][6] , \mult[9][5] , 
        \mult[9][4] , \mult[9][3] , \mult[9][2] , \mult[9][1] , \mult[9][0] }), 
        .CI(1'b0), .SUM({\tree_sums[1][28][13] , \tree_sums[1][28][7] , 
        \tree_sums[1][28][6] , \tree_sums[1][28][5] , \tree_sums[1][28][4] , 
        \tree_sums[1][28][3] , \tree_sums[1][28][2] , \tree_sums[1][28][1] , 
        \tree_sums[1][28][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_41_DW01_add_45 add_14_root_add_61_G6 ( 
        .A({n64, n64, n64, n175, n286, n325, n336, n347, n358, n369, n380, n65}), .B({n76, n76, n87, n98, n109, n120, n131, n142, n153, n164, n176, n187}), 
        .CI(1'b0), .SUM({n111, n112, n113, n114, n115, n116, n117, n118, n119, 
        n121, n122, n123}) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_42_DW01_add_46 add_29_root_add_61_G6 ( 
        .A({\tree_sums[2][15][8] , \tree_sums[2][15][8] , 
        \tree_sums[2][15][8] , \tree_sums[2][15][7] , \tree_sums[2][15][6] , 
        \tree_sums[2][15][5] , \tree_sums[2][15][4] , \tree_sums[2][15][3] , 
        \tree_sums[2][15][2] , \tree_sums[2][15][1] , \tree_sums[2][15][0] }), 
        .B({\tree_sums[1][29][13] , \tree_sums[1][29][13] , 
        \tree_sums[1][29][13] , \tree_sums[1][29][7] , \tree_sums[1][29][6] , 
        \tree_sums[1][29][5] , \tree_sums[1][29][4] , \tree_sums[1][29][3] , 
        \tree_sums[1][29][2] , \tree_sums[1][29][1] , \tree_sums[1][29][0] }), 
        .CI(1'b0), .SUM({n76, n87, n98, n109, n120, n131, n142, n153, n164, 
        n176, n187}) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_43_DW01_add_47 add_59_root_add_61_G6 ( 
        .A({\mult[6][7] , \mult[6][7] , \mult[6][6] , \mult[6][5] , 
        \mult[6][4] , \mult[6][3] , \mult[6][2] , \mult[6][1] , \mult[6][0] }), 
        .B({\mult[7][7] , \mult[7][7] , \mult[7][6] , \mult[7][5] , 
        \mult[7][4] , \mult[7][3] , \mult[7][2] , \mult[7][1] , \mult[7][0] }), 
        .CI(1'b0), .SUM({\tree_sums[1][29][13] , \tree_sums[1][29][7] , 
        \tree_sums[1][29][6] , \tree_sums[1][29][5] , \tree_sums[1][29][4] , 
        \tree_sums[1][29][3] , \tree_sums[1][29][2] , \tree_sums[1][29][1] , 
        \tree_sums[1][29][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_45_DW01_add_49 add_30_root_add_61_G6 ( 
        .A({\tree_sums[1][31][13] , \tree_sums[1][31][13] , 
        \tree_sums[1][31][7] , \tree_sums[1][31][6] , \tree_sums[1][31][5] , 
        \tree_sums[1][31][4] , \tree_sums[1][31][3] , \tree_sums[1][31][2] , 
        \tree_sums[1][31][1] , \tree_sums[1][31][0] }), .B({
        \tree_sums[1][30][13] , \tree_sums[1][30][13] , \tree_sums[1][30][7] , 
        \tree_sums[1][30][6] , \tree_sums[1][30][5] , \tree_sums[1][30][4] , 
        \tree_sums[1][30][3] , \tree_sums[1][30][2] , \tree_sums[1][30][1] , 
        \tree_sums[1][30][0] }), .CI(1'b0), .SUM({n64, n175, n286, n325, n336, 
        n347, n358, n369, n380, n65}) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_46_DW01_add_50 add_61_root_add_61_G6 ( 
        .A({\mult[2][7] , \mult[2][7] , \mult[2][6] , \mult[2][5] , 
        \mult[2][4] , \mult[2][3] , \mult[2][2] , \mult[2][1] , \mult[2][0] }), 
        .B({\mult[3][7] , \mult[3][7] , \mult[3][6] , \mult[3][5] , 
        \mult[3][4] , \mult[3][3] , \mult[3][2] , \mult[3][1] , \mult[3][0] }), 
        .CI(1'b0), .SUM({\tree_sums[1][30][13] , \tree_sums[1][30][7] , 
        \tree_sums[1][30][6] , \tree_sums[1][30][5] , \tree_sums[1][30][4] , 
        \tree_sums[1][30][3] , \tree_sums[1][30][2] , \tree_sums[1][30][1] , 
        \tree_sums[1][30][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_47_DW01_add_51 add_62_root_add_61_G6 ( 
        .A({\mult[0][7] , \mult[0][7] , \mult[0][6] , \mult[0][5] , 
        \mult[0][4] , \mult[0][3] , \mult[0][2] , \mult[0][1] , \mult[0][0] }), 
        .B({\mult[1][7] , \mult[1][7] , \mult[1][6] , \mult[1][5] , 
        \mult[1][4] , \mult[1][3] , \mult[1][2] , \mult[1][1] , \mult[1][0] }), 
        .CI(1'b0), .SUM({\tree_sums[1][31][13] , \tree_sums[1][31][7] , 
        \tree_sums[1][31][6] , \tree_sums[1][31][5] , \tree_sums[1][31][4] , 
        \tree_sums[1][31][3] , \tree_sums[1][31][2] , \tree_sums[1][31][1] , 
        \tree_sums[1][31][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_48_DW01_add_52 add_5_root_add_61_G6 ( 
        .A({n138, n138, n138, n139, n140, n141, n143, n144, n145, n146, n147, 
        n148, n149, n150}), .B({n151, n152, n154, n155, n156, n157, n158, n159, 
        n160, n161, n162, n163, n165, n166}), .CI(1'b0), .SUM({n240, n241, 
        n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n254, n255}) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_49_DW01_add_53 add_11_root_add_61_G6 ( 
        .A({n343, n343, n343, n344, n345, n346, n348, n349, n350, n351, n352, 
        n353, n354, n355}), .B({\add_23_root_add_61_G6/SUM[12] , 
        \add_23_root_add_61_G6/SUM[12] , \add_23_root_add_61_G6/SUM[12] , 
        \add_23_root_add_61_G6/SUM[9] , \add_23_root_add_61_G6/SUM[9] , 
        \add_23_root_add_61_G6/SUM[8] , \add_23_root_add_61_G6/SUM[7] , 
        \add_23_root_add_61_G6/SUM[6] , \add_23_root_add_61_G6/SUM[5] , 
        \add_23_root_add_61_G6/SUM[4] , \add_23_root_add_61_G6/SUM[3] , 
        \add_23_root_add_61_G6/SUM[2] , \add_23_root_add_61_G6/SUM[1] , 
        \add_23_root_add_61_G6/SUM[0] }), .CI(1'b0), .SUM({n151, n152, n154, 
        n155, n156, n157, n158, n159, n160, n161, n162, n163, n165, n166}) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_51_DW01_add_55 add_47_root_add_61_G6 ( 
        .A({\mult[30][7] , \mult[30][7] , \mult[30][6] , \mult[30][5] , 
        \mult[30][4] , \mult[30][3] , \mult[30][2] , \mult[30][1] , 
        \mult[30][0] }), .B({\mult[31][7] , \mult[31][7] , \mult[31][6] , 
        \mult[31][5] , \mult[31][4] , \mult[31][3] , \mult[31][2] , 
        \mult[31][1] , \mult[31][0] }), .CI(1'b0), .SUM({
        \tree_sums[1][23][13] , \tree_sums[1][23][7] , \tree_sums[1][23][6] , 
        \tree_sums[1][23][5] , \tree_sums[1][23][4] , \tree_sums[1][23][3] , 
        \tree_sums[1][23][2] , \tree_sums[1][23][1] , \tree_sums[1][23][0] })
         );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_53_DW01_add_57 add_24_root_add_61_G6 ( 
        .A({\tree_sums[2][12][8] , \tree_sums[2][12][8] , 
        \tree_sums[2][12][8] , \tree_sums[2][12][8] , \tree_sums[2][12][7] , 
        \tree_sums[2][12][6] , \tree_sums[2][12][5] , \tree_sums[2][12][4] , 
        \tree_sums[2][12][3] , \tree_sums[2][12][2] , \tree_sums[2][12][1] , 
        \tree_sums[2][12][0] }), .B({\tree_sums[3][6][9] , 
        \tree_sums[3][6][9] , \tree_sums[3][6][9] , \tree_sums[3][6][9] , 
        \tree_sums[3][6][7] , \tree_sums[3][6][6] , \tree_sums[3][6][5] , 
        \tree_sums[3][6][4] , \tree_sums[3][6][3] , \tree_sums[3][6][2] , 
        \tree_sums[3][6][1] , \tree_sums[3][6][0] }), .CI(1'b0), .SUM({n343, 
        n344, n345, n346, n348, n349, n350, n351, n352, n353, n354, n355}) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_56_DW01_add_60 add_12_root_add_61_G6 ( 
        .A({n331, n331, n332, n333, n334, n335, n337, n338, n339, n340, n341, 
        n342}), .B({\tree_sums[3][3][9] , \tree_sums[3][3][9] , 
        \tree_sums[3][3][9] , \tree_sums[3][3][8] , \tree_sums[3][3][7] , 
        \tree_sums[3][3][6] , \tree_sums[3][3][5] , \tree_sums[3][3][4] , 
        \tree_sums[3][3][3] , \tree_sums[3][3][2] , \tree_sums[3][3][1] , 
        \tree_sums[3][3][0] }), .CI(1'b0), .SUM({n138, n139, n140, n141, n143, 
        n144, n145, n146, n147, n148, n149, n150}) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_58_DW01_add_62 add_51_root_add_61_G6 ( 
        .A({\mult[22][7] , \mult[22][7] , \mult[22][6] , \mult[22][5] , 
        \mult[22][4] , \mult[22][3] , \mult[22][2] , \mult[22][1] , 
        \mult[22][0] }), .B({\mult[23][7] , \mult[23][7] , \mult[23][6] , 
        \mult[23][5] , \mult[23][4] , \mult[23][3] , \mult[23][2] , 
        \mult[23][1] , \mult[23][0] }), .CI(1'b0), .SUM({
        \tree_sums[1][24][13] , \tree_sums[1][24][7] , \tree_sums[1][24][6] , 
        \tree_sums[1][24][5] , \tree_sums[1][24][4] , \tree_sums[1][24][3] , 
        \tree_sums[1][24][2] , \tree_sums[1][24][1] , \tree_sums[1][24][0] })
         );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_59_DW01_add_63 add_52_root_add_61_G6 ( 
        .A({\mult[20][7] , \mult[20][7] , \mult[20][6] , \mult[20][5] , 
        \mult[20][4] , \mult[20][3] , \mult[20][2] , \mult[20][1] , 
        \mult[20][0] }), .B({\mult[21][7] , \mult[21][7] , \mult[21][6] , 
        \mult[21][5] , \mult[21][4] , \mult[21][3] , \mult[21][2] , 
        \mult[21][1] , \mult[21][0] }), .CI(1'b0), .SUM({
        \tree_sums[1][25][13] , \tree_sums[1][25][7] , \tree_sums[1][25][6] , 
        \tree_sums[1][25][5] , \tree_sums[1][25][4] , \tree_sums[1][25][3] , 
        \tree_sums[1][25][2] , \tree_sums[1][25][1] , \tree_sums[1][25][0] })
         );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_60_DW01_add_64 add_26_root_add_61_G6 ( 
        .A({\tree_sums[1][26][13] , \tree_sums[1][26][13] , 
        \tree_sums[1][26][13] , \tree_sums[1][26][7] , \tree_sums[1][26][6] , 
        \tree_sums[1][26][5] , \tree_sums[1][26][4] , \tree_sums[1][26][3] , 
        \tree_sums[1][26][2] , \tree_sums[1][26][1] , \tree_sums[1][26][0] }), 
        .B({\tree_sums[2][13][8] , \tree_sums[2][13][8] , 
        \tree_sums[2][13][8] , \tree_sums[2][13][7] , \tree_sums[2][13][6] , 
        \tree_sums[2][13][5] , \tree_sums[2][13][4] , \tree_sums[2][13][3] , 
        \tree_sums[2][13][2] , \tree_sums[2][13][1] , \tree_sums[2][13][0] }), 
        .CI(1'b0), .SUM({n331, n332, n333, n334, n335, n337, n338, n339, n340, 
        n341, n342}) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW01_add_62_DW01_add_66 add_54_root_add_61_G6 ( 
        .A({\mult[16][7] , \mult[16][7] , \mult[16][6] , \mult[16][5] , 
        \mult[16][4] , \mult[16][3] , \mult[16][2] , \mult[16][1] , 
        \mult[16][0] }), .B({\mult[17][7] , \mult[17][7] , \mult[17][6] , 
        \mult[17][5] , \mult[17][4] , \mult[17][3] , \mult[17][2] , 
        \mult[17][1] , \mult[17][0] }), .CI(1'b0), .SUM({
        \tree_sums[1][26][13] , \tree_sums[1][26][7] , \tree_sums[1][26][6] , 
        \tree_sums[1][26][5] , \tree_sums[1][26][4] , \tree_sums[1][26][3] , 
        \tree_sums[1][26][2] , \tree_sums[1][26][1] , \tree_sums[1][26][0] })
         );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_64 mult_37 ( .a(i_a[3:0]), .b(
        i_b[3:0]), .product({\mult[0][7] , \mult[0][6] , \mult[0][5] , 
        \mult[0][4] , \mult[0][3] , \mult[0][2] , \mult[0][1] , \mult[0][0] })
         );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_65 mult_37_G2 ( .a(i_a[7:4]), 
        .b(i_b[7:4]), .product({\mult[1][7] , \mult[1][6] , \mult[1][5] , 
        \mult[1][4] , \mult[1][3] , \mult[1][2] , \mult[1][1] , \mult[1][0] })
         );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_66 mult_37_G3 ( .a(i_a[11:8]), 
        .b(i_b[11:8]), .product({\mult[2][7] , \mult[2][6] , \mult[2][5] , 
        \mult[2][4] , \mult[2][3] , \mult[2][2] , \mult[2][1] , \mult[2][0] })
         );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_67 mult_37_G4 ( .a(i_a[15:12]), 
        .b(i_b[15:12]), .product({\mult[3][7] , \mult[3][6] , \mult[3][5] , 
        \mult[3][4] , \mult[3][3] , \mult[3][2] , \mult[3][1] , \mult[3][0] })
         );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_68 mult_37_G5 ( .a(i_a[19:16]), 
        .b(i_b[19:16]), .product({\mult[4][7] , \mult[4][6] , \mult[4][5] , 
        \mult[4][4] , \mult[4][3] , \mult[4][2] , \mult[4][1] , \mult[4][0] })
         );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_69 mult_37_G6 ( .a(i_a[23:20]), 
        .b(i_b[23:20]), .product({\mult[5][7] , \mult[5][6] , \mult[5][5] , 
        \mult[5][4] , \mult[5][3] , \mult[5][2] , \mult[5][1] , \mult[5][0] })
         );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_70 mult_37_G7 ( .a(i_a[27:24]), 
        .b(i_b[27:24]), .product({\mult[6][7] , \mult[6][6] , \mult[6][5] , 
        \mult[6][4] , \mult[6][3] , \mult[6][2] , \mult[6][1] , \mult[6][0] })
         );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_71 mult_37_G8 ( .a(i_a[31:28]), 
        .b(i_b[31:28]), .product({\mult[7][7] , \mult[7][6] , \mult[7][5] , 
        \mult[7][4] , \mult[7][3] , \mult[7][2] , \mult[7][1] , \mult[7][0] })
         );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_72 mult_37_G9 ( .a(i_a[35:32]), 
        .b(i_b[35:32]), .product({\mult[8][7] , \mult[8][6] , \mult[8][5] , 
        \mult[8][4] , \mult[8][3] , \mult[8][2] , \mult[8][1] , \mult[8][0] })
         );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_73 mult_37_G10 ( .a(i_a[39:36]), 
        .b(i_b[39:36]), .product({\mult[9][7] , \mult[9][6] , \mult[9][5] , 
        \mult[9][4] , \mult[9][3] , \mult[9][2] , \mult[9][1] , \mult[9][0] })
         );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_74 mult_37_G11 ( .a(i_a[43:40]), 
        .b(i_b[43:40]), .product({\mult[10][7] , \mult[10][6] , \mult[10][5] , 
        \mult[10][4] , \mult[10][3] , \mult[10][2] , \mult[10][1] , 
        \mult[10][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_75 mult_37_G12 ( .a(i_a[47:44]), 
        .b(i_b[47:44]), .product({\mult[11][7] , \mult[11][6] , \mult[11][5] , 
        \mult[11][4] , \mult[11][3] , \mult[11][2] , \mult[11][1] , 
        \mult[11][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_76 mult_37_G13 ( .a(i_a[51:48]), 
        .b(i_b[51:48]), .product({\mult[12][7] , \mult[12][6] , \mult[12][5] , 
        \mult[12][4] , \mult[12][3] , \mult[12][2] , \mult[12][1] , 
        \mult[12][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_77 mult_37_G14 ( .a(i_a[55:52]), 
        .b(i_b[55:52]), .product({\mult[13][7] , \mult[13][6] , \mult[13][5] , 
        \mult[13][4] , \mult[13][3] , \mult[13][2] , \mult[13][1] , 
        \mult[13][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_78 mult_37_G15 ( .a(i_a[59:56]), 
        .b(i_b[59:56]), .product({\mult[14][7] , \mult[14][6] , \mult[14][5] , 
        \mult[14][4] , \mult[14][3] , \mult[14][2] , \mult[14][1] , 
        \mult[14][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_79 mult_37_G16 ( .a(i_a[63:60]), 
        .b(i_b[63:60]), .product({\mult[15][7] , \mult[15][6] , \mult[15][5] , 
        \mult[15][4] , \mult[15][3] , \mult[15][2] , \mult[15][1] , 
        \mult[15][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_80 mult_37_G17 ( .a(i_a[67:64]), 
        .b(i_b[67:64]), .product({\mult[16][7] , \mult[16][6] , \mult[16][5] , 
        \mult[16][4] , \mult[16][3] , \mult[16][2] , \mult[16][1] , 
        \mult[16][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_81 mult_37_G18 ( .a(i_a[71:68]), 
        .b(i_b[71:68]), .product({\mult[17][7] , \mult[17][6] , \mult[17][5] , 
        \mult[17][4] , \mult[17][3] , \mult[17][2] , \mult[17][1] , 
        \mult[17][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_82 mult_37_G19 ( .a(i_a[75:72]), 
        .b(i_b[75:72]), .product({\mult[18][7] , \mult[18][6] , \mult[18][5] , 
        \mult[18][4] , \mult[18][3] , \mult[18][2] , \mult[18][1] , 
        \mult[18][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_83 mult_37_G20 ( .a(i_a[79:76]), 
        .b(i_b[79:76]), .product({\mult[19][7] , \mult[19][6] , \mult[19][5] , 
        \mult[19][4] , \mult[19][3] , \mult[19][2] , \mult[19][1] , 
        \mult[19][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_84 mult_37_G21 ( .a(i_a[83:80]), 
        .b(i_b[83:80]), .product({\mult[20][7] , \mult[20][6] , \mult[20][5] , 
        \mult[20][4] , \mult[20][3] , \mult[20][2] , \mult[20][1] , 
        \mult[20][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_85 mult_37_G22 ( .a(i_a[87:84]), 
        .b(i_b[87:84]), .product({\mult[21][7] , \mult[21][6] , \mult[21][5] , 
        \mult[21][4] , \mult[21][3] , \mult[21][2] , \mult[21][1] , 
        \mult[21][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_86 mult_37_G23 ( .a(i_a[91:88]), 
        .b(i_b[91:88]), .product({\mult[22][7] , \mult[22][6] , \mult[22][5] , 
        \mult[22][4] , \mult[22][3] , \mult[22][2] , \mult[22][1] , 
        \mult[22][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_87 mult_37_G24 ( .a(i_a[95:92]), 
        .b(i_b[95:92]), .product({\mult[23][7] , \mult[23][6] , \mult[23][5] , 
        \mult[23][4] , \mult[23][3] , \mult[23][2] , \mult[23][1] , 
        \mult[23][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_88 mult_37_G25 ( .a(i_a[99:96]), 
        .b(i_b[99:96]), .product({\mult[24][7] , \mult[24][6] , \mult[24][5] , 
        \mult[24][4] , \mult[24][3] , \mult[24][2] , \mult[24][1] , 
        \mult[24][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_89 mult_37_G26 ( .a(
        i_a[103:100]), .b(i_b[103:100]), .product({\mult[25][7] , 
        \mult[25][6] , \mult[25][5] , \mult[25][4] , \mult[25][3] , 
        \mult[25][2] , \mult[25][1] , \mult[25][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_90 mult_37_G27 ( .a(
        i_a[107:104]), .b(i_b[107:104]), .product({\mult[26][7] , 
        \mult[26][6] , \mult[26][5] , \mult[26][4] , \mult[26][3] , 
        \mult[26][2] , \mult[26][1] , \mult[26][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_91 mult_37_G28 ( .a(
        i_a[111:108]), .b(i_b[111:108]), .product({\mult[27][7] , 
        \mult[27][6] , \mult[27][5] , \mult[27][4] , \mult[27][3] , 
        \mult[27][2] , \mult[27][1] , \mult[27][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_92 mult_37_G29 ( .a(
        i_a[115:112]), .b(i_b[115:112]), .product({\mult[28][7] , 
        \mult[28][6] , \mult[28][5] , \mult[28][4] , \mult[28][3] , 
        \mult[28][2] , \mult[28][1] , \mult[28][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_93 mult_37_G30 ( .a(
        i_a[119:116]), .b(i_b[119:116]), .product({\mult[29][7] , 
        \mult[29][6] , \mult[29][5] , \mult[29][4] , \mult[29][3] , 
        \mult[29][2] , \mult[29][1] , \mult[29][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_94 mult_37_G31 ( .a(
        i_a[123:120]), .b(i_b[123:120]), .product({\mult[30][7] , 
        \mult[30][6] , \mult[30][5] , \mult[30][4] , \mult[30][3] , 
        \mult[30][2] , \mult[30][1] , \mult[30][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_95 mult_37_G32 ( .a(
        i_a[127:124]), .b(i_b[127:124]), .product({\mult[31][7] , 
        \mult[31][6] , \mult[31][5] , \mult[31][4] , \mult[31][3] , 
        \mult[31][2] , \mult[31][1] , \mult[31][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_96 mult_37_G33 ( .a(
        i_a[131:128]), .b(i_b[131:128]), .product({\mult[32][7] , 
        \mult[32][6] , \mult[32][5] , \mult[32][4] , \mult[32][3] , 
        \mult[32][2] , \mult[32][1] , \mult[32][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_97 mult_37_G34 ( .a(
        i_a[135:132]), .b(i_b[135:132]), .product({\mult[33][7] , 
        \mult[33][6] , \mult[33][5] , \mult[33][4] , \mult[33][3] , 
        \mult[33][2] , \mult[33][1] , \mult[33][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_98 mult_37_G35 ( .a(
        i_a[139:136]), .b(i_b[139:136]), .product({\mult[34][7] , 
        \mult[34][6] , \mult[34][5] , \mult[34][4] , \mult[34][3] , 
        \mult[34][2] , \mult[34][1] , \mult[34][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_99 mult_37_G36 ( .a(
        i_a[143:140]), .b(i_b[143:140]), .product({\mult[35][7] , 
        \mult[35][6] , \mult[35][5] , \mult[35][4] , \mult[35][3] , 
        \mult[35][2] , \mult[35][1] , \mult[35][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_100 mult_37_G37 ( .a(
        i_a[147:144]), .b(i_b[147:144]), .product({\mult[36][7] , 
        \mult[36][6] , \mult[36][5] , \mult[36][4] , \mult[36][3] , 
        \mult[36][2] , \mult[36][1] , \mult[36][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_101 mult_37_G38 ( .a(
        i_a[151:148]), .b(i_b[151:148]), .product({\mult[37][7] , 
        \mult[37][6] , \mult[37][5] , \mult[37][4] , \mult[37][3] , 
        \mult[37][2] , \mult[37][1] , \mult[37][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_102 mult_37_G39 ( .a(
        i_a[155:152]), .b(i_b[155:152]), .product({\mult[38][7] , 
        \mult[38][6] , \mult[38][5] , \mult[38][4] , \mult[38][3] , 
        \mult[38][2] , \mult[38][1] , \mult[38][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_103 mult_37_G40 ( .a(
        i_a[159:156]), .b(i_b[159:156]), .product({\mult[39][7] , 
        \mult[39][6] , \mult[39][5] , \mult[39][4] , \mult[39][3] , 
        \mult[39][2] , \mult[39][1] , \mult[39][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_104 mult_37_G41 ( .a(
        i_a[163:160]), .b(i_b[163:160]), .product({\mult[40][7] , 
        \mult[40][6] , \mult[40][5] , \mult[40][4] , \mult[40][3] , 
        \mult[40][2] , \mult[40][1] , \mult[40][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_105 mult_37_G42 ( .a(
        i_a[167:164]), .b(i_b[167:164]), .product({\mult[41][7] , 
        \mult[41][6] , \mult[41][5] , \mult[41][4] , \mult[41][3] , 
        \mult[41][2] , \mult[41][1] , \mult[41][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_106 mult_37_G43 ( .a(
        i_a[171:168]), .b(i_b[171:168]), .product({\mult[42][7] , 
        \mult[42][6] , \mult[42][5] , \mult[42][4] , \mult[42][3] , 
        \mult[42][2] , \mult[42][1] , \mult[42][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_107 mult_37_G44 ( .a(
        i_a[175:172]), .b(i_b[175:172]), .product({\mult[43][7] , 
        \mult[43][6] , \mult[43][5] , \mult[43][4] , \mult[43][3] , 
        \mult[43][2] , \mult[43][1] , \mult[43][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_108 mult_37_G45 ( .a(
        i_a[179:176]), .b(i_b[179:176]), .product({\mult[44][7] , 
        \mult[44][6] , \mult[44][5] , \mult[44][4] , \mult[44][3] , 
        \mult[44][2] , \mult[44][1] , \mult[44][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_109 mult_37_G46 ( .a(
        i_a[183:180]), .b(i_b[183:180]), .product({\mult[45][7] , 
        \mult[45][6] , \mult[45][5] , \mult[45][4] , \mult[45][3] , 
        \mult[45][2] , \mult[45][1] , \mult[45][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_110 mult_37_G47 ( .a(
        i_a[187:184]), .b(i_b[187:184]), .product({\mult[46][7] , 
        \mult[46][6] , \mult[46][5] , \mult[46][4] , \mult[46][3] , 
        \mult[46][2] , \mult[46][1] , \mult[46][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_111 mult_37_G48 ( .a(
        i_a[191:188]), .b(i_b[191:188]), .product({\mult[47][7] , 
        \mult[47][6] , \mult[47][5] , \mult[47][4] , \mult[47][3] , 
        \mult[47][2] , \mult[47][1] , \mult[47][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_112 mult_37_G49 ( .a(
        i_a[195:192]), .b(i_b[195:192]), .product({\mult[48][7] , 
        \mult[48][6] , \mult[48][5] , \mult[48][4] , \mult[48][3] , 
        \mult[48][2] , \mult[48][1] , \mult[48][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_113 mult_37_G50 ( .a(
        i_a[199:196]), .b(i_b[199:196]), .product({\mult[49][7] , 
        \mult[49][6] , \mult[49][5] , \mult[49][4] , \mult[49][3] , 
        \mult[49][2] , \mult[49][1] , \mult[49][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_114 mult_37_G51 ( .a(
        i_a[203:200]), .b(i_b[203:200]), .product({\mult[50][7] , 
        \mult[50][6] , \mult[50][5] , \mult[50][4] , \mult[50][3] , 
        \mult[50][2] , \mult[50][1] , \mult[50][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_115 mult_37_G52 ( .a(
        i_a[207:204]), .b(i_b[207:204]), .product({\mult[51][7] , 
        \mult[51][6] , \mult[51][5] , \mult[51][4] , \mult[51][3] , 
        \mult[51][2] , \mult[51][1] , \mult[51][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_116 mult_37_G53 ( .a(
        i_a[211:208]), .b(i_b[211:208]), .product({\mult[52][7] , 
        \mult[52][6] , \mult[52][5] , \mult[52][4] , \mult[52][3] , 
        \mult[52][2] , \mult[52][1] , \mult[52][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_117 mult_37_G54 ( .a(
        i_a[215:212]), .b(i_b[215:212]), .product({\mult[53][7] , 
        \mult[53][6] , \mult[53][5] , \mult[53][4] , \mult[53][3] , 
        \mult[53][2] , \mult[53][1] , \mult[53][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_118 mult_37_G55 ( .a(
        i_a[219:216]), .b(i_b[219:216]), .product({\mult[54][7] , 
        \mult[54][6] , \mult[54][5] , \mult[54][4] , \mult[54][3] , 
        \mult[54][2] , \mult[54][1] , \mult[54][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_119 mult_37_G56 ( .a(
        i_a[223:220]), .b(i_b[223:220]), .product({\mult[55][7] , 
        \mult[55][6] , \mult[55][5] , \mult[55][4] , \mult[55][3] , 
        \mult[55][2] , \mult[55][1] , \mult[55][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_120 mult_37_G57 ( .a(
        i_a[227:224]), .b(i_b[227:224]), .product({\mult[56][7] , 
        \mult[56][6] , \mult[56][5] , \mult[56][4] , \mult[56][3] , 
        \mult[56][2] , \mult[56][1] , \mult[56][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_121 mult_37_G58 ( .a(
        i_a[231:228]), .b(i_b[231:228]), .product({\mult[57][7] , 
        \mult[57][6] , \mult[57][5] , \mult[57][4] , \mult[57][3] , 
        \mult[57][2] , \mult[57][1] , \mult[57][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_122 mult_37_G59 ( .a(
        i_a[235:232]), .b(i_b[235:232]), .product({\mult[58][7] , 
        \mult[58][6] , \mult[58][5] , \mult[58][4] , \mult[58][3] , 
        \mult[58][2] , \mult[58][1] , \mult[58][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_123 mult_37_G60 ( .a(
        i_a[239:236]), .b(i_b[239:236]), .product({\mult[59][7] , 
        \mult[59][6] , \mult[59][5] , \mult[59][4] , \mult[59][3] , 
        \mult[59][2] , \mult[59][1] , \mult[59][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_124 mult_37_G61 ( .a(
        i_a[243:240]), .b(i_b[243:240]), .product({\mult[60][7] , 
        \mult[60][6] , \mult[60][5] , \mult[60][4] , \mult[60][3] , 
        \mult[60][2] , \mult[60][1] , \mult[60][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_125 mult_37_G62 ( .a(
        i_a[247:244]), .b(i_b[247:244]), .product({\mult[61][7] , 
        \mult[61][6] , \mult[61][5] , \mult[61][4] , \mult[61][3] , 
        \mult[61][2] , \mult[61][1] , \mult[61][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_126 mult_37_G63 ( .a(
        i_a[251:248]), .b(i_b[251:248]), .product({\mult[62][7] , 
        \mult[62][6] , \mult[62][5] , \mult[62][4] , \mult[62][3] , 
        \mult[62][2] , \mult[62][1] , \mult[62][0] }) );
  vec_product_BIT_WIDTH4_VEC_SIZE64_DW_mult_tc_127 mult_37_G64 ( .a(
        i_a[255:252]), .b(i_b[255:252]), .product({\mult[63][7] , 
        \mult[63][6] , \mult[63][5] , \mult[63][4] , \mult[63][3] , 
        \mult[63][2] , \mult[63][1] , \mult[63][0] }) );
  XNOR2X1 U2 ( .A(n2), .B(n6), .Y(\tree_sums[4][2][7] ) );
  XNOR2X1 U6 ( .A(n8), .B(n9), .Y(\tree_sums[4][2][6] ) );
  XNOR2X1 U8 ( .A(\mult[58][6] ), .B(\mult[59][6] ), .Y(n8) );
  XNOR2X1 U9 ( .A(n11), .B(n13), .Y(\tree_sums[4][2][5] ) );
  XNOR2X1 U11 ( .A(\mult[58][5] ), .B(\mult[59][5] ), .Y(n11) );
  XNOR2X1 U13 ( .A(n19), .B(n24), .Y(\tree_sums[4][2][4] ) );
  XNOR2X1 U19 ( .A(\mult[58][4] ), .B(\mult[59][4] ), .Y(n19) );
  XNOR2X1 U24 ( .A(n26), .B(n31), .Y(\tree_sums[4][2][3] ) );
  XNOR2X1 U26 ( .A(\mult[58][3] ), .B(\mult[59][3] ), .Y(n26) );
  XNOR2X1 U31 ( .A(n35), .B(n36), .Y(\tree_sums[4][2][2] ) );
  XNOR2X1 U35 ( .A(\mult[58][2] ), .B(\mult[59][2] ), .Y(n35) );
  XOR2X1 U36 ( .A(n38), .B(n39), .Y(\tree_sums[4][2][1] ) );
  XNOR2X1 U38 ( .A(\mult[58][1] ), .B(\mult[59][1] ), .Y(n39) );
  XNOR2X1 U39 ( .A(n45), .B(n47), .Y(\tree_sums[4][2][9] ) );
  CLKINVX1 U45 ( .A(n2), .Y(n47) );
  NOR2BX1 U47 ( .AN(n48), .B(n49), .Y(n2) );
  OAI21XL U48 ( .A0(n6), .A1(n49), .B0(n48), .Y(n45) );
  NAND2X1 U49 ( .A(\mult[59][7] ), .B(\mult[58][7] ), .Y(n48) );
  NOR2X1 U55 ( .A(\mult[59][7] ), .B(\mult[58][7] ), .Y(n49) );
  AOI2BB2X1 U64 ( .B0(n55), .B1(\mult[59][6] ), .A0N(n95), .A1N(n96), .Y(n6)
         );
  NAND2X1 U65 ( .A(n96), .B(n95), .Y(n55) );
  CLKINVX1 U66 ( .A(n9), .Y(n95) );
  OAI2BB1X1 U67 ( .A0N(n13), .A1N(\mult[58][5] ), .B0(n97), .Y(n9) );
  OAI21XL U68 ( .A0(\mult[58][5] ), .A1(n13), .B0(\mult[59][5] ), .Y(n97) );
  OAI2BB1X1 U69 ( .A0N(n24), .A1N(\mult[58][4] ), .B0(n99), .Y(n13) );
  OAI21XL U70 ( .A0(\mult[58][4] ), .A1(n24), .B0(\mult[59][4] ), .Y(n99) );
  AO22X1 U71 ( .A0(n31), .A1(\mult[58][3] ), .B0(n100), .B1(\mult[59][3] ), 
        .Y(n24) );
  OR2X1 U72 ( .A(\mult[58][3] ), .B(n31), .Y(n100) );
  OAI2BB1X1 U73 ( .A0N(n36), .A1N(\mult[58][2] ), .B0(n101), .Y(n31) );
  OAI21XL U74 ( .A0(\mult[58][2] ), .A1(n36), .B0(\mult[59][2] ), .Y(n101) );
  OAI21XL U75 ( .A0(n38), .A1(n102), .B0(n103), .Y(n36) );
  OAI2BB1X1 U76 ( .A0N(n38), .A1N(n102), .B0(\mult[59][1] ), .Y(n103) );
  CLKINVX1 U77 ( .A(\mult[58][1] ), .Y(n102) );
  NAND2X1 U78 ( .A(\mult[59][0] ), .B(\mult[58][0] ), .Y(n38) );
  CLKINVX1 U79 ( .A(\mult[58][6] ), .Y(n96) );
  XOR2X1 U80 ( .A(\mult[59][0] ), .B(\mult[58][0] ), .Y(\tree_sums[4][2][0] )
         );
  XOR2X1 U81 ( .A(n104), .B(n105), .Y(\tree_sums[4][1][8] ) );
  XOR2X1 U82 ( .A(\tree_sums[1][16][13] ), .B(n106), .Y(n104) );
  XOR2X1 U83 ( .A(n107), .B(n108), .Y(\tree_sums[4][1][7] ) );
  XOR2X1 U84 ( .A(\tree_sums[1][16][7] ), .B(n110), .Y(n107) );
  XOR2X1 U85 ( .A(n356), .B(n357), .Y(\tree_sums[4][1][6] ) );
  XOR2X1 U86 ( .A(\tree_sums[1][16][6] ), .B(n359), .Y(n357) );
  XOR2X1 U87 ( .A(n360), .B(n361), .Y(\tree_sums[4][1][5] ) );
  XOR2X1 U88 ( .A(\tree_sums[1][16][5] ), .B(n362), .Y(n361) );
  XOR2X1 U89 ( .A(n363), .B(n364), .Y(\tree_sums[4][1][4] ) );
  XOR2X1 U90 ( .A(\tree_sums[1][16][4] ), .B(n365), .Y(n364) );
  XOR2X1 U91 ( .A(n366), .B(n367), .Y(\tree_sums[4][1][3] ) );
  XOR2X1 U92 ( .A(\tree_sums[1][16][3] ), .B(n368), .Y(n367) );
  XOR2X1 U93 ( .A(n370), .B(n391), .Y(\tree_sums[4][1][2] ) );
  XOR2X1 U94 ( .A(\tree_sums[1][16][2] ), .B(n392), .Y(n391) );
  XOR2X1 U95 ( .A(n393), .B(n394), .Y(\tree_sums[4][1][1] ) );
  XOR2X1 U96 ( .A(n395), .B(\tree_sums[1][16][1] ), .Y(n394) );
  OAI21XL U97 ( .A0(n396), .A1(n106), .B0(n397), .Y(\tree_sums[4][1][9] ) );
  NAND2X1 U98 ( .A(\tree_sums[1][16][13] ), .B(n105), .Y(n397) );
  OAI2BB1X1 U99 ( .A0N(n110), .A1N(n108), .B0(n398), .Y(n106) );
  OAI21XL U100 ( .A0(n108), .A1(n110), .B0(\tree_sums[1][16][7] ), .Y(n398) );
  MXI2X1 U101 ( .A(n399), .B(n400), .S0(n401), .Y(n108) );
  OAI21XL U102 ( .A0(n359), .A1(n356), .B0(n402), .Y(n110) );
  OAI2BB1X1 U103 ( .A0N(n356), .A1N(n359), .B0(\tree_sums[1][16][6] ), .Y(n402) );
  XOR2X1 U104 ( .A(n403), .B(n404), .Y(n356) );
  XNOR2X1 U105 ( .A(\mult[54][6] ), .B(\mult[55][6] ), .Y(n403) );
  AOI2BB2X1 U106 ( .B0(n405), .B1(\tree_sums[1][16][5] ), .A0N(n362), .A1N(
        n360), .Y(n359) );
  NAND2X1 U107 ( .A(n360), .B(n362), .Y(n405) );
  OA21XL U108 ( .A0(n365), .A1(n363), .B0(n406), .Y(n362) );
  OAI2BB1X1 U109 ( .A0N(n363), .A1N(n365), .B0(\tree_sums[1][16][4] ), .Y(n406) );
  XOR2X1 U110 ( .A(n407), .B(n408), .Y(n363) );
  XNOR2X1 U111 ( .A(\mult[54][4] ), .B(\mult[55][4] ), .Y(n407) );
  OA21XL U112 ( .A0(n368), .A1(n366), .B0(n409), .Y(n365) );
  OAI2BB1X1 U113 ( .A0N(n366), .A1N(n368), .B0(\tree_sums[1][16][3] ), .Y(n409) );
  XOR2X1 U114 ( .A(n410), .B(n411), .Y(n366) );
  XNOR2X1 U115 ( .A(\mult[54][3] ), .B(\mult[55][3] ), .Y(n410) );
  AOI2BB2X1 U116 ( .B0(n412), .B1(\tree_sums[1][16][2] ), .A0N(n392), .A1N(
        n370), .Y(n368) );
  NAND2X1 U117 ( .A(n370), .B(n392), .Y(n412) );
  OA21XL U118 ( .A0(n393), .A1(n395), .B0(n413), .Y(n392) );
  OAI2BB1X1 U119 ( .A0N(n395), .A1N(n393), .B0(\tree_sums[1][16][1] ), .Y(n413) );
  NAND2X1 U120 ( .A(\tree_sums[1][16][0] ), .B(n414), .Y(n395) );
  XOR2X1 U121 ( .A(n415), .B(n416), .Y(n393) );
  XNOR2X1 U122 ( .A(\mult[55][1] ), .B(n417), .Y(n416) );
  XOR2X1 U123 ( .A(n418), .B(n419), .Y(n370) );
  XNOR2X1 U124 ( .A(\mult[54][2] ), .B(\mult[55][2] ), .Y(n418) );
  XOR2X1 U125 ( .A(n420), .B(n421), .Y(n360) );
  XNOR2X1 U126 ( .A(\mult[54][5] ), .B(\mult[55][5] ), .Y(n420) );
  NOR2X1 U127 ( .A(n105), .B(\tree_sums[1][16][13] ), .Y(n396) );
  MXI2X1 U128 ( .A(n399), .B(n400), .S0(n422), .Y(n105) );
  OA21XL U129 ( .A0(n401), .A1(n423), .B0(n424), .Y(n422) );
  AOI2BB2X1 U130 ( .B0(n425), .B1(\mult[55][6] ), .A0N(n426), .A1N(n427), .Y(
        n401) );
  NAND2X1 U131 ( .A(n427), .B(n426), .Y(n425) );
  CLKINVX1 U132 ( .A(n404), .Y(n426) );
  OAI2BB1X1 U133 ( .A0N(n421), .A1N(\mult[54][5] ), .B0(n428), .Y(n404) );
  OAI21XL U134 ( .A0(\mult[54][5] ), .A1(n421), .B0(\mult[55][5] ), .Y(n428)
         );
  OAI2BB1X1 U135 ( .A0N(n408), .A1N(\mult[54][4] ), .B0(n429), .Y(n421) );
  OAI21XL U136 ( .A0(\mult[54][4] ), .A1(n408), .B0(\mult[55][4] ), .Y(n429)
         );
  AO22X1 U137 ( .A0(n411), .A1(\mult[54][3] ), .B0(n430), .B1(\mult[55][3] ), 
        .Y(n408) );
  OR2X1 U138 ( .A(\mult[54][3] ), .B(n411), .Y(n430) );
  OAI2BB1X1 U139 ( .A0N(n419), .A1N(\mult[54][2] ), .B0(n431), .Y(n411) );
  OAI21XL U140 ( .A0(\mult[54][2] ), .A1(n419), .B0(\mult[55][2] ), .Y(n431)
         );
  OAI21XL U141 ( .A0(n415), .A1(n417), .B0(n432), .Y(n419) );
  OAI2BB1X1 U142 ( .A0N(n415), .A1N(n417), .B0(\mult[55][1] ), .Y(n432) );
  CLKINVX1 U143 ( .A(\mult[54][1] ), .Y(n417) );
  NAND2X1 U144 ( .A(\mult[55][0] ), .B(\mult[54][0] ), .Y(n415) );
  CLKINVX1 U145 ( .A(\mult[54][6] ), .Y(n427) );
  XNOR2X1 U146 ( .A(\mult[54][7] ), .B(\mult[55][7] ), .Y(n400) );
  NOR2BX1 U147 ( .AN(n424), .B(n423), .Y(n399) );
  NOR2X1 U148 ( .A(\mult[55][7] ), .B(\mult[54][7] ), .Y(n423) );
  NAND2X1 U149 ( .A(\mult[55][7] ), .B(\mult[54][7] ), .Y(n424) );
  XOR2X1 U150 ( .A(\tree_sums[1][16][0] ), .B(n414), .Y(\tree_sums[4][1][0] )
         );
  XOR2X1 U151 ( .A(\mult[54][0] ), .B(\mult[55][0] ), .Y(n414) );
  XNOR2X1 U152 ( .A(n433), .B(n434), .Y(\tree_sums[3][7][7] ) );
  XNOR2X1 U153 ( .A(n435), .B(n436), .Y(\tree_sums[3][7][6] ) );
  XNOR2X1 U154 ( .A(\mult[12][6] ), .B(\mult[13][6] ), .Y(n435) );
  XNOR2X1 U155 ( .A(n437), .B(n438), .Y(\tree_sums[3][7][5] ) );
  XNOR2X1 U156 ( .A(\mult[12][5] ), .B(\mult[13][5] ), .Y(n437) );
  XNOR2X1 U157 ( .A(n439), .B(n440), .Y(\tree_sums[3][7][4] ) );
  XNOR2X1 U158 ( .A(\mult[12][4] ), .B(\mult[13][4] ), .Y(n439) );
  XNOR2X1 U159 ( .A(n441), .B(n442), .Y(\tree_sums[3][7][3] ) );
  XNOR2X1 U160 ( .A(\mult[12][3] ), .B(\mult[13][3] ), .Y(n441) );
  XNOR2X1 U161 ( .A(n443), .B(n444), .Y(\tree_sums[3][7][2] ) );
  XNOR2X1 U162 ( .A(\mult[12][2] ), .B(\mult[13][2] ), .Y(n443) );
  XOR2X1 U163 ( .A(n445), .B(n446), .Y(\tree_sums[3][7][1] ) );
  XNOR2X1 U164 ( .A(\mult[12][1] ), .B(\mult[13][1] ), .Y(n446) );
  XNOR2X1 U165 ( .A(n447), .B(n448), .Y(\tree_sums[3][7][9] ) );
  CLKINVX1 U166 ( .A(n433), .Y(n448) );
  NOR2BX1 U167 ( .AN(n449), .B(n450), .Y(n433) );
  OAI21XL U168 ( .A0(n434), .A1(n450), .B0(n449), .Y(n447) );
  NAND2X1 U169 ( .A(\mult[13][7] ), .B(\mult[12][7] ), .Y(n449) );
  NOR2X1 U170 ( .A(\mult[13][7] ), .B(\mult[12][7] ), .Y(n450) );
  AOI2BB2X1 U171 ( .B0(n451), .B1(\mult[13][6] ), .A0N(n452), .A1N(n453), .Y(
        n434) );
  NAND2X1 U172 ( .A(n453), .B(n452), .Y(n451) );
  CLKINVX1 U173 ( .A(n436), .Y(n452) );
  OAI2BB1X1 U174 ( .A0N(n438), .A1N(\mult[12][5] ), .B0(n454), .Y(n436) );
  OAI21XL U175 ( .A0(\mult[12][5] ), .A1(n438), .B0(\mult[13][5] ), .Y(n454)
         );
  OAI2BB1X1 U176 ( .A0N(n440), .A1N(\mult[12][4] ), .B0(n455), .Y(n438) );
  OAI21XL U177 ( .A0(\mult[12][4] ), .A1(n440), .B0(\mult[13][4] ), .Y(n455)
         );
  AO22X1 U178 ( .A0(n442), .A1(\mult[12][3] ), .B0(n456), .B1(\mult[13][3] ), 
        .Y(n440) );
  OR2X1 U179 ( .A(\mult[12][3] ), .B(n442), .Y(n456) );
  OAI2BB1X1 U180 ( .A0N(n444), .A1N(\mult[12][2] ), .B0(n457), .Y(n442) );
  OAI21XL U181 ( .A0(\mult[12][2] ), .A1(n444), .B0(\mult[13][2] ), .Y(n457)
         );
  OAI21XL U182 ( .A0(n445), .A1(n458), .B0(n459), .Y(n444) );
  OAI2BB1X1 U183 ( .A0N(n445), .A1N(n458), .B0(\mult[13][1] ), .Y(n459) );
  CLKINVX1 U184 ( .A(\mult[12][1] ), .Y(n458) );
  NAND2X1 U185 ( .A(\mult[13][0] ), .B(\mult[12][0] ), .Y(n445) );
  CLKINVX1 U186 ( .A(\mult[12][6] ), .Y(n453) );
  XOR2X1 U187 ( .A(\mult[13][0] ), .B(\mult[12][0] ), .Y(\tree_sums[3][7][0] )
         );
  XNOR2X1 U188 ( .A(n460), .B(n461), .Y(\tree_sums[3][6][7] ) );
  XNOR2X1 U189 ( .A(n462), .B(n463), .Y(\tree_sums[3][6][6] ) );
  XNOR2X1 U190 ( .A(\mult[26][6] ), .B(\mult[27][6] ), .Y(n462) );
  XNOR2X1 U191 ( .A(n464), .B(n465), .Y(\tree_sums[3][6][5] ) );
  XNOR2X1 U192 ( .A(\mult[26][5] ), .B(\mult[27][5] ), .Y(n464) );
  XNOR2X1 U193 ( .A(n466), .B(n467), .Y(\tree_sums[3][6][4] ) );
  XNOR2X1 U194 ( .A(\mult[26][4] ), .B(\mult[27][4] ), .Y(n466) );
  XNOR2X1 U195 ( .A(n468), .B(n469), .Y(\tree_sums[3][6][3] ) );
  XNOR2X1 U196 ( .A(\mult[26][3] ), .B(\mult[27][3] ), .Y(n468) );
  XNOR2X1 U197 ( .A(n470), .B(n471), .Y(\tree_sums[3][6][2] ) );
  XNOR2X1 U198 ( .A(\mult[26][2] ), .B(\mult[27][2] ), .Y(n470) );
  XOR2X1 U199 ( .A(n472), .B(n473), .Y(\tree_sums[3][6][1] ) );
  XNOR2X1 U200 ( .A(\mult[26][1] ), .B(\mult[27][1] ), .Y(n473) );
  XNOR2X1 U201 ( .A(n474), .B(n475), .Y(\tree_sums[3][6][9] ) );
  CLKINVX1 U202 ( .A(n460), .Y(n475) );
  NOR2BX1 U203 ( .AN(n476), .B(n477), .Y(n460) );
  OAI21XL U204 ( .A0(n461), .A1(n477), .B0(n476), .Y(n474) );
  NAND2X1 U205 ( .A(\mult[27][7] ), .B(\mult[26][7] ), .Y(n476) );
  NOR2X1 U206 ( .A(\mult[27][7] ), .B(\mult[26][7] ), .Y(n477) );
  AOI2BB2X1 U207 ( .B0(n478), .B1(\mult[27][6] ), .A0N(n479), .A1N(n480), .Y(
        n461) );
  NAND2X1 U208 ( .A(n480), .B(n479), .Y(n478) );
  CLKINVX1 U209 ( .A(n463), .Y(n479) );
  OAI2BB1X1 U210 ( .A0N(n465), .A1N(\mult[26][5] ), .B0(n481), .Y(n463) );
  OAI21XL U211 ( .A0(\mult[26][5] ), .A1(n465), .B0(\mult[27][5] ), .Y(n481)
         );
  OAI2BB1X1 U212 ( .A0N(n467), .A1N(\mult[26][4] ), .B0(n482), .Y(n465) );
  OAI21XL U213 ( .A0(\mult[26][4] ), .A1(n467), .B0(\mult[27][4] ), .Y(n482)
         );
  AO22X1 U214 ( .A0(n469), .A1(\mult[26][3] ), .B0(n483), .B1(\mult[27][3] ), 
        .Y(n467) );
  OR2X1 U215 ( .A(\mult[26][3] ), .B(n469), .Y(n483) );
  OAI2BB1X1 U216 ( .A0N(n471), .A1N(\mult[26][2] ), .B0(n484), .Y(n469) );
  OAI21XL U217 ( .A0(\mult[26][2] ), .A1(n471), .B0(\mult[27][2] ), .Y(n484)
         );
  OAI21XL U218 ( .A0(n472), .A1(n485), .B0(n486), .Y(n471) );
  OAI2BB1X1 U219 ( .A0N(n472), .A1N(n485), .B0(\mult[27][1] ), .Y(n486) );
  CLKINVX1 U220 ( .A(\mult[26][1] ), .Y(n485) );
  NAND2X1 U221 ( .A(\mult[27][0] ), .B(\mult[26][0] ), .Y(n472) );
  CLKINVX1 U222 ( .A(\mult[26][6] ), .Y(n480) );
  XOR2X1 U223 ( .A(\mult[27][0] ), .B(\mult[26][0] ), .Y(\tree_sums[3][6][0] )
         );
  XNOR2X1 U224 ( .A(n487), .B(n488), .Y(\tree_sums[3][5][7] ) );
  XNOR2X1 U225 ( .A(n489), .B(n490), .Y(\tree_sums[3][5][6] ) );
  XNOR2X1 U226 ( .A(\mult[42][6] ), .B(\mult[43][6] ), .Y(n489) );
  XNOR2X1 U227 ( .A(n491), .B(n492), .Y(\tree_sums[3][5][5] ) );
  XNOR2X1 U228 ( .A(\mult[42][5] ), .B(\mult[43][5] ), .Y(n491) );
  XNOR2X1 U229 ( .A(n493), .B(n494), .Y(\tree_sums[3][5][4] ) );
  XNOR2X1 U230 ( .A(\mult[42][4] ), .B(\mult[43][4] ), .Y(n493) );
  XNOR2X1 U231 ( .A(n495), .B(n496), .Y(\tree_sums[3][5][3] ) );
  XNOR2X1 U232 ( .A(\mult[42][3] ), .B(\mult[43][3] ), .Y(n495) );
  XNOR2X1 U233 ( .A(n497), .B(n498), .Y(\tree_sums[3][5][2] ) );
  XNOR2X1 U234 ( .A(\mult[42][2] ), .B(\mult[43][2] ), .Y(n497) );
  XOR2X1 U235 ( .A(n499), .B(n500), .Y(\tree_sums[3][5][1] ) );
  XNOR2X1 U236 ( .A(\mult[42][1] ), .B(\mult[43][1] ), .Y(n500) );
  XNOR2X1 U237 ( .A(n501), .B(n502), .Y(\tree_sums[3][5][9] ) );
  CLKINVX1 U238 ( .A(n487), .Y(n502) );
  NOR2BX1 U239 ( .AN(n503), .B(n504), .Y(n487) );
  OAI21XL U240 ( .A0(n488), .A1(n504), .B0(n503), .Y(n501) );
  NAND2X1 U241 ( .A(\mult[43][7] ), .B(\mult[42][7] ), .Y(n503) );
  NOR2X1 U242 ( .A(\mult[43][7] ), .B(\mult[42][7] ), .Y(n504) );
  AOI2BB2X1 U243 ( .B0(n505), .B1(\mult[43][6] ), .A0N(n506), .A1N(n507), .Y(
        n488) );
  NAND2X1 U244 ( .A(n507), .B(n506), .Y(n505) );
  CLKINVX1 U245 ( .A(n490), .Y(n506) );
  OAI2BB1X1 U246 ( .A0N(n492), .A1N(\mult[42][5] ), .B0(n508), .Y(n490) );
  OAI21XL U247 ( .A0(\mult[42][5] ), .A1(n492), .B0(\mult[43][5] ), .Y(n508)
         );
  OAI2BB1X1 U248 ( .A0N(n494), .A1N(\mult[42][4] ), .B0(n509), .Y(n492) );
  OAI21XL U249 ( .A0(\mult[42][4] ), .A1(n494), .B0(\mult[43][4] ), .Y(n509)
         );
  AO22X1 U250 ( .A0(n496), .A1(\mult[42][3] ), .B0(n510), .B1(\mult[43][3] ), 
        .Y(n494) );
  OR2X1 U251 ( .A(\mult[42][3] ), .B(n496), .Y(n510) );
  OAI2BB1X1 U252 ( .A0N(n498), .A1N(\mult[42][2] ), .B0(n511), .Y(n496) );
  OAI21XL U253 ( .A0(\mult[42][2] ), .A1(n498), .B0(\mult[43][2] ), .Y(n511)
         );
  OAI21XL U254 ( .A0(n499), .A1(n512), .B0(n513), .Y(n498) );
  OAI2BB1X1 U255 ( .A0N(n499), .A1N(n512), .B0(\mult[43][1] ), .Y(n513) );
  CLKINVX1 U256 ( .A(\mult[42][1] ), .Y(n512) );
  NAND2X1 U257 ( .A(\mult[43][0] ), .B(\mult[42][0] ), .Y(n499) );
  CLKINVX1 U258 ( .A(\mult[42][6] ), .Y(n507) );
  XOR2X1 U259 ( .A(\mult[43][0] ), .B(\mult[42][0] ), .Y(\tree_sums[3][5][0] )
         );
  XNOR2X1 U260 ( .A(n514), .B(n515), .Y(\tree_sums[3][4][7] ) );
  XNOR2X1 U261 ( .A(n516), .B(n517), .Y(\tree_sums[3][4][6] ) );
  XNOR2X1 U262 ( .A(\mult[56][6] ), .B(\mult[57][6] ), .Y(n516) );
  XNOR2X1 U263 ( .A(n518), .B(n519), .Y(\tree_sums[3][4][5] ) );
  XNOR2X1 U264 ( .A(\mult[56][5] ), .B(\mult[57][5] ), .Y(n518) );
  XNOR2X1 U265 ( .A(n520), .B(n521), .Y(\tree_sums[3][4][4] ) );
  XNOR2X1 U266 ( .A(\mult[56][4] ), .B(\mult[57][4] ), .Y(n520) );
  XNOR2X1 U267 ( .A(n522), .B(n523), .Y(\tree_sums[3][4][3] ) );
  XNOR2X1 U268 ( .A(\mult[56][3] ), .B(\mult[57][3] ), .Y(n522) );
  XNOR2X1 U269 ( .A(n524), .B(n525), .Y(\tree_sums[3][4][2] ) );
  XNOR2X1 U270 ( .A(\mult[56][2] ), .B(\mult[57][2] ), .Y(n524) );
  XOR2X1 U271 ( .A(n526), .B(n527), .Y(\tree_sums[3][4][1] ) );
  XNOR2X1 U272 ( .A(\mult[56][1] ), .B(\mult[57][1] ), .Y(n527) );
  XNOR2X1 U273 ( .A(n528), .B(n529), .Y(\tree_sums[3][4][9] ) );
  CLKINVX1 U274 ( .A(n514), .Y(n529) );
  NOR2BX1 U275 ( .AN(n530), .B(n531), .Y(n514) );
  OAI21XL U276 ( .A0(n515), .A1(n531), .B0(n530), .Y(n528) );
  NAND2X1 U277 ( .A(\mult[57][7] ), .B(\mult[56][7] ), .Y(n530) );
  NOR2X1 U278 ( .A(\mult[57][7] ), .B(\mult[56][7] ), .Y(n531) );
  AOI2BB2X1 U279 ( .B0(n532), .B1(\mult[57][6] ), .A0N(n533), .A1N(n534), .Y(
        n515) );
  NAND2X1 U280 ( .A(n534), .B(n533), .Y(n532) );
  CLKINVX1 U281 ( .A(n517), .Y(n533) );
  OAI2BB1X1 U282 ( .A0N(n519), .A1N(\mult[56][5] ), .B0(n535), .Y(n517) );
  OAI21XL U283 ( .A0(\mult[56][5] ), .A1(n519), .B0(\mult[57][5] ), .Y(n535)
         );
  OAI2BB1X1 U284 ( .A0N(n521), .A1N(\mult[56][4] ), .B0(n536), .Y(n519) );
  OAI21XL U285 ( .A0(\mult[56][4] ), .A1(n521), .B0(\mult[57][4] ), .Y(n536)
         );
  AO22X1 U286 ( .A0(n523), .A1(\mult[56][3] ), .B0(n537), .B1(\mult[57][3] ), 
        .Y(n521) );
  OR2X1 U287 ( .A(\mult[56][3] ), .B(n523), .Y(n537) );
  OAI2BB1X1 U288 ( .A0N(n525), .A1N(\mult[56][2] ), .B0(n538), .Y(n523) );
  OAI21XL U289 ( .A0(\mult[56][2] ), .A1(n525), .B0(\mult[57][2] ), .Y(n538)
         );
  OAI21XL U290 ( .A0(n526), .A1(n539), .B0(n540), .Y(n525) );
  OAI2BB1X1 U291 ( .A0N(n526), .A1N(n539), .B0(\mult[57][1] ), .Y(n540) );
  CLKINVX1 U292 ( .A(\mult[56][1] ), .Y(n539) );
  NAND2X1 U293 ( .A(\mult[57][0] ), .B(\mult[56][0] ), .Y(n526) );
  CLKINVX1 U294 ( .A(\mult[56][6] ), .Y(n534) );
  XOR2X1 U295 ( .A(\mult[57][0] ), .B(\mult[56][0] ), .Y(\tree_sums[3][4][0] )
         );
  MXI2X1 U296 ( .A(n541), .B(n542), .S0(n543), .Y(\tree_sums[3][3][8] ) );
  XNOR2X1 U297 ( .A(n544), .B(n545), .Y(\tree_sums[3][3][7] ) );
  XNOR2X1 U298 ( .A(\tree_sums[1][24][7] ), .B(\tree_sums[1][25][7] ), .Y(n544) );
  XNOR2X1 U299 ( .A(n546), .B(n547), .Y(\tree_sums[3][3][6] ) );
  XNOR2X1 U300 ( .A(\tree_sums[1][24][6] ), .B(\tree_sums[1][25][6] ), .Y(n546) );
  XNOR2X1 U301 ( .A(n548), .B(n549), .Y(\tree_sums[3][3][5] ) );
  XNOR2X1 U302 ( .A(\tree_sums[1][24][5] ), .B(\tree_sums[1][25][5] ), .Y(n548) );
  XNOR2X1 U303 ( .A(n550), .B(n551), .Y(\tree_sums[3][3][4] ) );
  XNOR2X1 U304 ( .A(\tree_sums[1][24][4] ), .B(\tree_sums[1][25][4] ), .Y(n550) );
  XNOR2X1 U305 ( .A(n552), .B(n553), .Y(\tree_sums[3][3][3] ) );
  XNOR2X1 U306 ( .A(\tree_sums[1][24][3] ), .B(\tree_sums[1][25][3] ), .Y(n552) );
  XNOR2X1 U307 ( .A(n554), .B(n555), .Y(\tree_sums[3][3][2] ) );
  XNOR2X1 U308 ( .A(\tree_sums[1][24][2] ), .B(\tree_sums[1][25][2] ), .Y(n554) );
  XOR2X1 U309 ( .A(n556), .B(n557), .Y(\tree_sums[3][3][1] ) );
  XNOR2X1 U310 ( .A(\tree_sums[1][24][1] ), .B(\tree_sums[1][25][1] ), .Y(n557) );
  MXI2X1 U311 ( .A(n541), .B(n542), .S0(n558), .Y(\tree_sums[3][3][9] ) );
  OA21XL U312 ( .A0(n543), .A1(n559), .B0(n560), .Y(n558) );
  AOI21X1 U313 ( .A0(n545), .A1(\tree_sums[1][24][7] ), .B0(n561), .Y(n543) );
  OA21XL U314 ( .A0(\tree_sums[1][24][7] ), .A1(n545), .B0(
        \tree_sums[1][25][7] ), .Y(n561) );
  AO22X1 U315 ( .A0(n547), .A1(\tree_sums[1][24][6] ), .B0(n562), .B1(
        \tree_sums[1][25][6] ), .Y(n545) );
  OR2X1 U316 ( .A(\tree_sums[1][24][6] ), .B(n547), .Y(n562) );
  OAI2BB1X1 U317 ( .A0N(n549), .A1N(\tree_sums[1][24][5] ), .B0(n563), .Y(n547) );
  OAI21XL U318 ( .A0(\tree_sums[1][24][5] ), .A1(n549), .B0(
        \tree_sums[1][25][5] ), .Y(n563) );
  OAI2BB1X1 U319 ( .A0N(n551), .A1N(\tree_sums[1][24][4] ), .B0(n564), .Y(n549) );
  OAI21XL U320 ( .A0(\tree_sums[1][24][4] ), .A1(n551), .B0(
        \tree_sums[1][25][4] ), .Y(n564) );
  AO22X1 U321 ( .A0(n553), .A1(\tree_sums[1][24][3] ), .B0(n565), .B1(
        \tree_sums[1][25][3] ), .Y(n551) );
  OR2X1 U322 ( .A(\tree_sums[1][24][3] ), .B(n553), .Y(n565) );
  OAI2BB1X1 U323 ( .A0N(n555), .A1N(\tree_sums[1][24][2] ), .B0(n566), .Y(n553) );
  OAI21XL U324 ( .A0(\tree_sums[1][24][2] ), .A1(n555), .B0(
        \tree_sums[1][25][2] ), .Y(n566) );
  OAI21XL U325 ( .A0(n556), .A1(n567), .B0(n568), .Y(n555) );
  OAI2BB1X1 U326 ( .A0N(n556), .A1N(n567), .B0(\tree_sums[1][25][1] ), .Y(n568) );
  CLKINVX1 U327 ( .A(\tree_sums[1][24][1] ), .Y(n567) );
  NAND2X1 U328 ( .A(\tree_sums[1][25][0] ), .B(\tree_sums[1][24][0] ), .Y(n556) );
  XNOR2X1 U329 ( .A(\tree_sums[1][24][13] ), .B(\tree_sums[1][25][13] ), .Y(
        n542) );
  NOR2BX1 U330 ( .AN(n560), .B(n559), .Y(n541) );
  NOR2X1 U331 ( .A(\tree_sums[1][25][13] ), .B(\tree_sums[1][24][13] ), .Y(
        n559) );
  NAND2X1 U332 ( .A(\tree_sums[1][25][13] ), .B(\tree_sums[1][24][13] ), .Y(
        n560) );
  XOR2X1 U333 ( .A(\tree_sums[1][25][0] ), .B(\tree_sums[1][24][0] ), .Y(
        \tree_sums[3][3][0] ) );
  MXI2X1 U334 ( .A(n569), .B(n570), .S0(n571), .Y(\tree_sums[2][9][7] ) );
  XNOR2X1 U335 ( .A(n572), .B(n573), .Y(\tree_sums[2][9][6] ) );
  XNOR2X1 U336 ( .A(\mult[48][6] ), .B(\mult[49][6] ), .Y(n572) );
  XNOR2X1 U337 ( .A(n574), .B(n575), .Y(\tree_sums[2][9][5] ) );
  XNOR2X1 U338 ( .A(\mult[48][5] ), .B(\mult[49][5] ), .Y(n574) );
  XNOR2X1 U339 ( .A(n576), .B(n577), .Y(\tree_sums[2][9][4] ) );
  XNOR2X1 U340 ( .A(\mult[48][4] ), .B(\mult[49][4] ), .Y(n576) );
  XNOR2X1 U341 ( .A(n578), .B(n579), .Y(\tree_sums[2][9][3] ) );
  XNOR2X1 U342 ( .A(\mult[48][3] ), .B(\mult[49][3] ), .Y(n578) );
  XNOR2X1 U343 ( .A(n580), .B(n581), .Y(\tree_sums[2][9][2] ) );
  XNOR2X1 U344 ( .A(\mult[48][2] ), .B(\mult[49][2] ), .Y(n580) );
  XOR2X1 U345 ( .A(n582), .B(n583), .Y(\tree_sums[2][9][1] ) );
  XNOR2X1 U346 ( .A(\mult[48][1] ), .B(\mult[49][1] ), .Y(n583) );
  MXI2X1 U347 ( .A(n569), .B(n570), .S0(n584), .Y(\tree_sums[2][9][8] ) );
  OA21XL U348 ( .A0(n571), .A1(n585), .B0(n586), .Y(n584) );
  AOI2BB2X1 U349 ( .B0(n587), .B1(\mult[49][6] ), .A0N(n588), .A1N(n589), .Y(
        n571) );
  NAND2X1 U350 ( .A(n589), .B(n588), .Y(n587) );
  CLKINVX1 U351 ( .A(n573), .Y(n588) );
  OAI2BB1X1 U352 ( .A0N(n575), .A1N(\mult[48][5] ), .B0(n590), .Y(n573) );
  OAI21XL U353 ( .A0(\mult[48][5] ), .A1(n575), .B0(\mult[49][5] ), .Y(n590)
         );
  OAI2BB1X1 U354 ( .A0N(n577), .A1N(\mult[48][4] ), .B0(n591), .Y(n575) );
  OAI21XL U355 ( .A0(\mult[48][4] ), .A1(n577), .B0(\mult[49][4] ), .Y(n591)
         );
  AO22X1 U356 ( .A0(n579), .A1(\mult[48][3] ), .B0(n592), .B1(\mult[49][3] ), 
        .Y(n577) );
  OR2X1 U357 ( .A(\mult[48][3] ), .B(n579), .Y(n592) );
  OAI2BB1X1 U358 ( .A0N(n581), .A1N(\mult[48][2] ), .B0(n593), .Y(n579) );
  OAI21XL U359 ( .A0(\mult[48][2] ), .A1(n581), .B0(\mult[49][2] ), .Y(n593)
         );
  OAI21XL U360 ( .A0(n582), .A1(n594), .B0(n595), .Y(n581) );
  OAI2BB1X1 U361 ( .A0N(n582), .A1N(n594), .B0(\mult[49][1] ), .Y(n595) );
  CLKINVX1 U362 ( .A(\mult[48][1] ), .Y(n594) );
  NAND2X1 U363 ( .A(\mult[49][0] ), .B(\mult[48][0] ), .Y(n582) );
  CLKINVX1 U364 ( .A(\mult[48][6] ), .Y(n589) );
  XNOR2X1 U365 ( .A(\mult[48][7] ), .B(\mult[49][7] ), .Y(n570) );
  NOR2BX1 U366 ( .AN(n586), .B(n585), .Y(n569) );
  NOR2X1 U367 ( .A(\mult[49][7] ), .B(\mult[48][7] ), .Y(n585) );
  NAND2X1 U368 ( .A(\mult[49][7] ), .B(\mult[48][7] ), .Y(n586) );
  XOR2X1 U369 ( .A(\mult[49][0] ), .B(\mult[48][0] ), .Y(\tree_sums[2][9][0] )
         );
  MXI2X1 U370 ( .A(n596), .B(n597), .S0(n598), .Y(\tree_sums[2][15][7] ) );
  XNOR2X1 U371 ( .A(n599), .B(n600), .Y(\tree_sums[2][15][6] ) );
  XNOR2X1 U372 ( .A(\mult[4][6] ), .B(\mult[5][6] ), .Y(n599) );
  XNOR2X1 U373 ( .A(n601), .B(n602), .Y(\tree_sums[2][15][5] ) );
  XNOR2X1 U374 ( .A(\mult[4][5] ), .B(\mult[5][5] ), .Y(n601) );
  XNOR2X1 U375 ( .A(n603), .B(n604), .Y(\tree_sums[2][15][4] ) );
  XNOR2X1 U376 ( .A(\mult[4][4] ), .B(\mult[5][4] ), .Y(n603) );
  XNOR2X1 U377 ( .A(n605), .B(n606), .Y(\tree_sums[2][15][3] ) );
  XNOR2X1 U378 ( .A(\mult[4][3] ), .B(\mult[5][3] ), .Y(n605) );
  XNOR2X1 U379 ( .A(n607), .B(n608), .Y(\tree_sums[2][15][2] ) );
  XNOR2X1 U380 ( .A(\mult[4][2] ), .B(\mult[5][2] ), .Y(n607) );
  XOR2X1 U381 ( .A(n609), .B(n610), .Y(\tree_sums[2][15][1] ) );
  XNOR2X1 U382 ( .A(\mult[4][1] ), .B(\mult[5][1] ), .Y(n610) );
  MXI2X1 U383 ( .A(n596), .B(n597), .S0(n611), .Y(\tree_sums[2][15][8] ) );
  OA21XL U384 ( .A0(n598), .A1(n612), .B0(n613), .Y(n611) );
  AOI2BB2X1 U385 ( .B0(n614), .B1(\mult[5][6] ), .A0N(n615), .A1N(n616), .Y(
        n598) );
  NAND2X1 U386 ( .A(n616), .B(n615), .Y(n614) );
  CLKINVX1 U387 ( .A(n600), .Y(n615) );
  OAI2BB1X1 U388 ( .A0N(n602), .A1N(\mult[4][5] ), .B0(n617), .Y(n600) );
  OAI21XL U389 ( .A0(\mult[4][5] ), .A1(n602), .B0(\mult[5][5] ), .Y(n617) );
  OAI2BB1X1 U390 ( .A0N(n604), .A1N(\mult[4][4] ), .B0(n618), .Y(n602) );
  OAI21XL U391 ( .A0(\mult[4][4] ), .A1(n604), .B0(\mult[5][4] ), .Y(n618) );
  AO22X1 U392 ( .A0(n606), .A1(\mult[4][3] ), .B0(n619), .B1(\mult[5][3] ), 
        .Y(n604) );
  OR2X1 U393 ( .A(\mult[4][3] ), .B(n606), .Y(n619) );
  OAI2BB1X1 U394 ( .A0N(n608), .A1N(\mult[4][2] ), .B0(n620), .Y(n606) );
  OAI21XL U395 ( .A0(\mult[4][2] ), .A1(n608), .B0(\mult[5][2] ), .Y(n620) );
  OAI21XL U396 ( .A0(n609), .A1(n621), .B0(n622), .Y(n608) );
  OAI2BB1X1 U397 ( .A0N(n609), .A1N(n621), .B0(\mult[5][1] ), .Y(n622) );
  CLKINVX1 U398 ( .A(\mult[4][1] ), .Y(n621) );
  NAND2X1 U399 ( .A(\mult[5][0] ), .B(\mult[4][0] ), .Y(n609) );
  CLKINVX1 U400 ( .A(\mult[4][6] ), .Y(n616) );
  XNOR2X1 U401 ( .A(\mult[4][7] ), .B(\mult[5][7] ), .Y(n597) );
  NOR2BX1 U402 ( .AN(n613), .B(n612), .Y(n596) );
  NOR2X1 U403 ( .A(\mult[5][7] ), .B(\mult[4][7] ), .Y(n612) );
  NAND2X1 U404 ( .A(\mult[5][7] ), .B(\mult[4][7] ), .Y(n613) );
  XOR2X1 U405 ( .A(\mult[5][0] ), .B(\mult[4][0] ), .Y(\tree_sums[2][15][0] )
         );
  MXI2X1 U406 ( .A(n623), .B(n624), .S0(n625), .Y(\tree_sums[2][14][7] ) );
  XNOR2X1 U407 ( .A(n626), .B(n627), .Y(\tree_sums[2][14][6] ) );
  XNOR2X1 U408 ( .A(\mult[10][6] ), .B(\mult[11][6] ), .Y(n626) );
  XNOR2X1 U409 ( .A(n628), .B(n629), .Y(\tree_sums[2][14][5] ) );
  XNOR2X1 U410 ( .A(\mult[10][5] ), .B(\mult[11][5] ), .Y(n628) );
  XNOR2X1 U411 ( .A(n630), .B(n631), .Y(\tree_sums[2][14][4] ) );
  XNOR2X1 U412 ( .A(\mult[10][4] ), .B(\mult[11][4] ), .Y(n630) );
  XNOR2X1 U413 ( .A(n632), .B(n633), .Y(\tree_sums[2][14][3] ) );
  XNOR2X1 U414 ( .A(\mult[10][3] ), .B(\mult[11][3] ), .Y(n632) );
  XNOR2X1 U415 ( .A(n634), .B(n635), .Y(\tree_sums[2][14][2] ) );
  XNOR2X1 U416 ( .A(\mult[10][2] ), .B(\mult[11][2] ), .Y(n634) );
  XOR2X1 U417 ( .A(n636), .B(n637), .Y(\tree_sums[2][14][1] ) );
  XNOR2X1 U418 ( .A(\mult[10][1] ), .B(\mult[11][1] ), .Y(n637) );
  MXI2X1 U419 ( .A(n623), .B(n624), .S0(n638), .Y(\tree_sums[2][14][8] ) );
  OA21XL U420 ( .A0(n625), .A1(n639), .B0(n640), .Y(n638) );
  AOI2BB2X1 U421 ( .B0(n641), .B1(\mult[11][6] ), .A0N(n642), .A1N(n643), .Y(
        n625) );
  NAND2X1 U422 ( .A(n643), .B(n642), .Y(n641) );
  CLKINVX1 U423 ( .A(n627), .Y(n642) );
  OAI2BB1X1 U424 ( .A0N(n629), .A1N(\mult[10][5] ), .B0(n644), .Y(n627) );
  OAI21XL U425 ( .A0(\mult[10][5] ), .A1(n629), .B0(\mult[11][5] ), .Y(n644)
         );
  OAI2BB1X1 U426 ( .A0N(n631), .A1N(\mult[10][4] ), .B0(n645), .Y(n629) );
  OAI21XL U427 ( .A0(\mult[10][4] ), .A1(n631), .B0(\mult[11][4] ), .Y(n645)
         );
  AO22X1 U428 ( .A0(n633), .A1(\mult[10][3] ), .B0(n646), .B1(\mult[11][3] ), 
        .Y(n631) );
  OR2X1 U429 ( .A(\mult[10][3] ), .B(n633), .Y(n646) );
  OAI2BB1X1 U430 ( .A0N(n635), .A1N(\mult[10][2] ), .B0(n647), .Y(n633) );
  OAI21XL U431 ( .A0(\mult[10][2] ), .A1(n635), .B0(\mult[11][2] ), .Y(n647)
         );
  OAI21XL U432 ( .A0(n636), .A1(n648), .B0(n649), .Y(n635) );
  OAI2BB1X1 U433 ( .A0N(n636), .A1N(n648), .B0(\mult[11][1] ), .Y(n649) );
  CLKINVX1 U434 ( .A(\mult[10][1] ), .Y(n648) );
  NAND2X1 U435 ( .A(\mult[11][0] ), .B(\mult[10][0] ), .Y(n636) );
  CLKINVX1 U436 ( .A(\mult[10][6] ), .Y(n643) );
  XNOR2X1 U437 ( .A(\mult[10][7] ), .B(\mult[11][7] ), .Y(n624) );
  NOR2BX1 U438 ( .AN(n640), .B(n639), .Y(n623) );
  NOR2X1 U439 ( .A(\mult[11][7] ), .B(\mult[10][7] ), .Y(n639) );
  NAND2X1 U440 ( .A(\mult[11][7] ), .B(\mult[10][7] ), .Y(n640) );
  XOR2X1 U441 ( .A(\mult[11][0] ), .B(\mult[10][0] ), .Y(\tree_sums[2][14][0] ) );
  MXI2X1 U442 ( .A(n650), .B(n651), .S0(n652), .Y(\tree_sums[2][13][7] ) );
  XNOR2X1 U443 ( .A(n653), .B(n654), .Y(\tree_sums[2][13][6] ) );
  XNOR2X1 U444 ( .A(\mult[18][6] ), .B(\mult[19][6] ), .Y(n653) );
  XNOR2X1 U445 ( .A(n655), .B(n656), .Y(\tree_sums[2][13][5] ) );
  XNOR2X1 U446 ( .A(\mult[18][5] ), .B(\mult[19][5] ), .Y(n655) );
  XNOR2X1 U447 ( .A(n657), .B(n658), .Y(\tree_sums[2][13][4] ) );
  XNOR2X1 U448 ( .A(\mult[18][4] ), .B(\mult[19][4] ), .Y(n657) );
  XNOR2X1 U449 ( .A(n659), .B(n660), .Y(\tree_sums[2][13][3] ) );
  XNOR2X1 U450 ( .A(\mult[18][3] ), .B(\mult[19][3] ), .Y(n659) );
  XNOR2X1 U451 ( .A(n661), .B(n662), .Y(\tree_sums[2][13][2] ) );
  XNOR2X1 U452 ( .A(\mult[18][2] ), .B(\mult[19][2] ), .Y(n661) );
  XOR2X1 U453 ( .A(n663), .B(n664), .Y(\tree_sums[2][13][1] ) );
  XNOR2X1 U454 ( .A(\mult[18][1] ), .B(\mult[19][1] ), .Y(n664) );
  MXI2X1 U455 ( .A(n650), .B(n651), .S0(n665), .Y(\tree_sums[2][13][8] ) );
  OA21XL U456 ( .A0(n652), .A1(n666), .B0(n667), .Y(n665) );
  AOI2BB2X1 U457 ( .B0(n668), .B1(\mult[19][6] ), .A0N(n669), .A1N(n670), .Y(
        n652) );
  NAND2X1 U458 ( .A(n670), .B(n669), .Y(n668) );
  CLKINVX1 U459 ( .A(n654), .Y(n669) );
  OAI2BB1X1 U460 ( .A0N(n656), .A1N(\mult[18][5] ), .B0(n671), .Y(n654) );
  OAI21XL U461 ( .A0(\mult[18][5] ), .A1(n656), .B0(\mult[19][5] ), .Y(n671)
         );
  OAI2BB1X1 U462 ( .A0N(n658), .A1N(\mult[18][4] ), .B0(n672), .Y(n656) );
  OAI21XL U463 ( .A0(\mult[18][4] ), .A1(n658), .B0(\mult[19][4] ), .Y(n672)
         );
  AO22X1 U464 ( .A0(n660), .A1(\mult[18][3] ), .B0(n673), .B1(\mult[19][3] ), 
        .Y(n658) );
  OR2X1 U465 ( .A(\mult[18][3] ), .B(n660), .Y(n673) );
  OAI2BB1X1 U466 ( .A0N(n662), .A1N(\mult[18][2] ), .B0(n674), .Y(n660) );
  OAI21XL U467 ( .A0(\mult[18][2] ), .A1(n662), .B0(\mult[19][2] ), .Y(n674)
         );
  OAI21XL U468 ( .A0(n663), .A1(n675), .B0(n676), .Y(n662) );
  OAI2BB1X1 U469 ( .A0N(n663), .A1N(n675), .B0(\mult[19][1] ), .Y(n676) );
  CLKINVX1 U470 ( .A(\mult[18][1] ), .Y(n675) );
  NAND2X1 U471 ( .A(\mult[19][0] ), .B(\mult[18][0] ), .Y(n663) );
  CLKINVX1 U472 ( .A(\mult[18][6] ), .Y(n670) );
  XNOR2X1 U473 ( .A(\mult[18][7] ), .B(\mult[19][7] ), .Y(n651) );
  NOR2BX1 U474 ( .AN(n667), .B(n666), .Y(n650) );
  NOR2X1 U475 ( .A(\mult[19][7] ), .B(\mult[18][7] ), .Y(n666) );
  NAND2X1 U476 ( .A(\mult[19][7] ), .B(\mult[18][7] ), .Y(n667) );
  XOR2X1 U477 ( .A(\mult[19][0] ), .B(\mult[18][0] ), .Y(\tree_sums[2][13][0] ) );
  MXI2X1 U478 ( .A(n677), .B(n678), .S0(n679), .Y(\tree_sums[2][12][7] ) );
  XNOR2X1 U479 ( .A(n680), .B(n681), .Y(\tree_sums[2][12][6] ) );
  XNOR2X1 U480 ( .A(\mult[24][6] ), .B(\mult[25][6] ), .Y(n680) );
  XNOR2X1 U481 ( .A(n682), .B(n683), .Y(\tree_sums[2][12][5] ) );
  XNOR2X1 U482 ( .A(\mult[24][5] ), .B(\mult[25][5] ), .Y(n682) );
  XNOR2X1 U483 ( .A(n684), .B(n685), .Y(\tree_sums[2][12][4] ) );
  XNOR2X1 U484 ( .A(\mult[24][4] ), .B(\mult[25][4] ), .Y(n684) );
  XNOR2X1 U485 ( .A(n686), .B(n687), .Y(\tree_sums[2][12][3] ) );
  XNOR2X1 U486 ( .A(\mult[24][3] ), .B(\mult[25][3] ), .Y(n686) );
  XNOR2X1 U487 ( .A(n688), .B(n689), .Y(\tree_sums[2][12][2] ) );
  XNOR2X1 U488 ( .A(\mult[24][2] ), .B(\mult[25][2] ), .Y(n688) );
  XOR2X1 U489 ( .A(n690), .B(n691), .Y(\tree_sums[2][12][1] ) );
  XNOR2X1 U490 ( .A(\mult[24][1] ), .B(\mult[25][1] ), .Y(n691) );
  MXI2X1 U491 ( .A(n677), .B(n678), .S0(n692), .Y(\tree_sums[2][12][8] ) );
  OA21XL U492 ( .A0(n679), .A1(n693), .B0(n694), .Y(n692) );
  AOI2BB2X1 U493 ( .B0(n695), .B1(\mult[25][6] ), .A0N(n696), .A1N(n697), .Y(
        n679) );
  NAND2X1 U494 ( .A(n697), .B(n696), .Y(n695) );
  CLKINVX1 U495 ( .A(n681), .Y(n696) );
  OAI2BB1X1 U496 ( .A0N(n683), .A1N(\mult[24][5] ), .B0(n698), .Y(n681) );
  OAI21XL U497 ( .A0(\mult[24][5] ), .A1(n683), .B0(\mult[25][5] ), .Y(n698)
         );
  OAI2BB1X1 U498 ( .A0N(n685), .A1N(\mult[24][4] ), .B0(n699), .Y(n683) );
  OAI21XL U499 ( .A0(\mult[24][4] ), .A1(n685), .B0(\mult[25][4] ), .Y(n699)
         );
  AO22X1 U500 ( .A0(n687), .A1(\mult[24][3] ), .B0(n700), .B1(\mult[25][3] ), 
        .Y(n685) );
  OR2X1 U501 ( .A(\mult[24][3] ), .B(n687), .Y(n700) );
  OAI2BB1X1 U502 ( .A0N(n689), .A1N(\mult[24][2] ), .B0(n701), .Y(n687) );
  OAI21XL U503 ( .A0(\mult[24][2] ), .A1(n689), .B0(\mult[25][2] ), .Y(n701)
         );
  OAI21XL U504 ( .A0(n690), .A1(n702), .B0(n703), .Y(n689) );
  OAI2BB1X1 U505 ( .A0N(n690), .A1N(n702), .B0(\mult[25][1] ), .Y(n703) );
  CLKINVX1 U506 ( .A(\mult[24][1] ), .Y(n702) );
  NAND2X1 U507 ( .A(\mult[25][0] ), .B(\mult[24][0] ), .Y(n690) );
  CLKINVX1 U508 ( .A(\mult[24][6] ), .Y(n697) );
  XNOR2X1 U509 ( .A(\mult[24][7] ), .B(\mult[25][7] ), .Y(n678) );
  NOR2BX1 U510 ( .AN(n694), .B(n693), .Y(n677) );
  NOR2X1 U511 ( .A(\mult[25][7] ), .B(\mult[24][7] ), .Y(n693) );
  NAND2X1 U512 ( .A(\mult[25][7] ), .B(\mult[24][7] ), .Y(n694) );
  XOR2X1 U513 ( .A(\mult[25][0] ), .B(\mult[24][0] ), .Y(\tree_sums[2][12][0] ) );
  MXI2X1 U514 ( .A(n704), .B(n705), .S0(n706), .Y(\tree_sums[2][11][7] ) );
  XNOR2X1 U515 ( .A(n707), .B(n708), .Y(\tree_sums[2][11][6] ) );
  XNOR2X1 U516 ( .A(\mult[34][6] ), .B(\mult[35][6] ), .Y(n707) );
  XNOR2X1 U517 ( .A(n709), .B(n710), .Y(\tree_sums[2][11][5] ) );
  XNOR2X1 U518 ( .A(\mult[34][5] ), .B(\mult[35][5] ), .Y(n709) );
  XNOR2X1 U519 ( .A(n711), .B(n712), .Y(\tree_sums[2][11][4] ) );
  XNOR2X1 U520 ( .A(\mult[34][4] ), .B(\mult[35][4] ), .Y(n711) );
  XNOR2X1 U521 ( .A(n713), .B(n714), .Y(\tree_sums[2][11][3] ) );
  XNOR2X1 U522 ( .A(\mult[34][3] ), .B(\mult[35][3] ), .Y(n713) );
  XNOR2X1 U523 ( .A(n715), .B(n716), .Y(\tree_sums[2][11][2] ) );
  XNOR2X1 U524 ( .A(\mult[34][2] ), .B(\mult[35][2] ), .Y(n715) );
  XOR2X1 U525 ( .A(n717), .B(n718), .Y(\tree_sums[2][11][1] ) );
  XNOR2X1 U526 ( .A(\mult[34][1] ), .B(\mult[35][1] ), .Y(n718) );
  MXI2X1 U527 ( .A(n704), .B(n705), .S0(n719), .Y(\tree_sums[2][11][8] ) );
  OA21XL U528 ( .A0(n706), .A1(n720), .B0(n721), .Y(n719) );
  AOI2BB2X1 U529 ( .B0(n722), .B1(\mult[35][6] ), .A0N(n723), .A1N(n724), .Y(
        n706) );
  NAND2X1 U530 ( .A(n724), .B(n723), .Y(n722) );
  CLKINVX1 U531 ( .A(n708), .Y(n723) );
  OAI2BB1X1 U532 ( .A0N(n710), .A1N(\mult[34][5] ), .B0(n725), .Y(n708) );
  OAI21XL U533 ( .A0(\mult[34][5] ), .A1(n710), .B0(\mult[35][5] ), .Y(n725)
         );
  OAI2BB1X1 U534 ( .A0N(n712), .A1N(\mult[34][4] ), .B0(n726), .Y(n710) );
  OAI21XL U535 ( .A0(\mult[34][4] ), .A1(n712), .B0(\mult[35][4] ), .Y(n726)
         );
  AO22X1 U536 ( .A0(n714), .A1(\mult[34][3] ), .B0(n727), .B1(\mult[35][3] ), 
        .Y(n712) );
  OR2X1 U537 ( .A(\mult[34][3] ), .B(n714), .Y(n727) );
  OAI2BB1X1 U538 ( .A0N(n716), .A1N(\mult[34][2] ), .B0(n728), .Y(n714) );
  OAI21XL U539 ( .A0(\mult[34][2] ), .A1(n716), .B0(\mult[35][2] ), .Y(n728)
         );
  OAI21XL U540 ( .A0(n717), .A1(n729), .B0(n730), .Y(n716) );
  OAI2BB1X1 U541 ( .A0N(n717), .A1N(n729), .B0(\mult[35][1] ), .Y(n730) );
  CLKINVX1 U542 ( .A(\mult[34][1] ), .Y(n729) );
  NAND2X1 U543 ( .A(\mult[35][0] ), .B(\mult[34][0] ), .Y(n717) );
  CLKINVX1 U544 ( .A(\mult[34][6] ), .Y(n724) );
  XNOR2X1 U545 ( .A(\mult[34][7] ), .B(\mult[35][7] ), .Y(n705) );
  NOR2BX1 U546 ( .AN(n721), .B(n720), .Y(n704) );
  NOR2X1 U547 ( .A(\mult[35][7] ), .B(\mult[34][7] ), .Y(n720) );
  NAND2X1 U548 ( .A(\mult[35][7] ), .B(\mult[34][7] ), .Y(n721) );
  XOR2X1 U549 ( .A(\mult[35][0] ), .B(\mult[34][0] ), .Y(\tree_sums[2][11][0] ) );
  MXI2X1 U550 ( .A(n731), .B(n732), .S0(n733), .Y(\tree_sums[2][10][7] ) );
  XNOR2X1 U551 ( .A(n734), .B(n735), .Y(\tree_sums[2][10][6] ) );
  XNOR2X1 U552 ( .A(\mult[40][6] ), .B(\mult[41][6] ), .Y(n734) );
  XNOR2X1 U553 ( .A(n736), .B(n737), .Y(\tree_sums[2][10][5] ) );
  XNOR2X1 U554 ( .A(\mult[40][5] ), .B(\mult[41][5] ), .Y(n736) );
  XNOR2X1 U555 ( .A(n738), .B(n739), .Y(\tree_sums[2][10][4] ) );
  XNOR2X1 U556 ( .A(\mult[40][4] ), .B(\mult[41][4] ), .Y(n738) );
  XNOR2X1 U557 ( .A(n740), .B(n741), .Y(\tree_sums[2][10][3] ) );
  XNOR2X1 U558 ( .A(\mult[40][3] ), .B(\mult[41][3] ), .Y(n740) );
  XNOR2X1 U559 ( .A(n742), .B(n743), .Y(\tree_sums[2][10][2] ) );
  XNOR2X1 U560 ( .A(\mult[40][2] ), .B(\mult[41][2] ), .Y(n742) );
  XOR2X1 U561 ( .A(n744), .B(n745), .Y(\tree_sums[2][10][1] ) );
  XNOR2X1 U562 ( .A(\mult[40][1] ), .B(\mult[41][1] ), .Y(n745) );
  MXI2X1 U563 ( .A(n731), .B(n732), .S0(n746), .Y(\tree_sums[2][10][8] ) );
  OA21XL U564 ( .A0(n733), .A1(n747), .B0(n748), .Y(n746) );
  AOI2BB2X1 U565 ( .B0(n749), .B1(\mult[41][6] ), .A0N(n750), .A1N(n751), .Y(
        n733) );
  NAND2X1 U566 ( .A(n751), .B(n750), .Y(n749) );
  CLKINVX1 U567 ( .A(n735), .Y(n750) );
  OAI2BB1X1 U568 ( .A0N(n737), .A1N(\mult[40][5] ), .B0(n752), .Y(n735) );
  OAI21XL U569 ( .A0(\mult[40][5] ), .A1(n737), .B0(\mult[41][5] ), .Y(n752)
         );
  OAI2BB1X1 U570 ( .A0N(n739), .A1N(\mult[40][4] ), .B0(n753), .Y(n737) );
  OAI21XL U571 ( .A0(\mult[40][4] ), .A1(n739), .B0(\mult[41][4] ), .Y(n753)
         );
  AO22X1 U572 ( .A0(n741), .A1(\mult[40][3] ), .B0(n754), .B1(\mult[41][3] ), 
        .Y(n739) );
  OR2X1 U573 ( .A(\mult[40][3] ), .B(n741), .Y(n754) );
  OAI2BB1X1 U574 ( .A0N(n743), .A1N(\mult[40][2] ), .B0(n755), .Y(n741) );
  OAI21XL U575 ( .A0(\mult[40][2] ), .A1(n743), .B0(\mult[41][2] ), .Y(n755)
         );
  OAI21XL U576 ( .A0(n744), .A1(n756), .B0(n757), .Y(n743) );
  OAI2BB1X1 U577 ( .A0N(n744), .A1N(n756), .B0(\mult[41][1] ), .Y(n757) );
  CLKINVX1 U578 ( .A(\mult[40][1] ), .Y(n756) );
  NAND2X1 U579 ( .A(\mult[41][0] ), .B(\mult[40][0] ), .Y(n744) );
  CLKINVX1 U580 ( .A(\mult[40][6] ), .Y(n751) );
  XNOR2X1 U581 ( .A(\mult[40][7] ), .B(\mult[41][7] ), .Y(n732) );
  NOR2BX1 U582 ( .AN(n748), .B(n747), .Y(n731) );
  NOR2X1 U583 ( .A(\mult[41][7] ), .B(\mult[40][7] ), .Y(n747) );
  NAND2X1 U584 ( .A(\mult[41][7] ), .B(\mult[40][7] ), .Y(n748) );
  XOR2X1 U585 ( .A(\mult[41][0] ), .B(\mult[40][0] ), .Y(\tree_sums[2][10][0] ) );
  XOR2X1 U586 ( .A(n758), .B(n759), .Y(\add_23_root_add_61_G6/SUM[8] ) );
  XNOR2X1 U587 ( .A(n760), .B(n761), .Y(n759) );
  XOR2X1 U588 ( .A(n762), .B(n763), .Y(\add_23_root_add_61_G6/SUM[7] ) );
  XOR2X1 U589 ( .A(\tree_sums[1][23][7] ), .B(n764), .Y(n763) );
  XOR2X1 U590 ( .A(n765), .B(n766), .Y(\add_23_root_add_61_G6/SUM[6] ) );
  XOR2X1 U591 ( .A(\tree_sums[1][23][6] ), .B(n767), .Y(n766) );
  XOR2X1 U592 ( .A(n768), .B(n769), .Y(\add_23_root_add_61_G6/SUM[5] ) );
  XOR2X1 U593 ( .A(\tree_sums[1][23][5] ), .B(n770), .Y(n769) );
  XOR2X1 U594 ( .A(n771), .B(n772), .Y(\add_23_root_add_61_G6/SUM[4] ) );
  XOR2X1 U595 ( .A(\tree_sums[1][23][4] ), .B(n773), .Y(n772) );
  XOR2X1 U596 ( .A(n774), .B(n775), .Y(\add_23_root_add_61_G6/SUM[3] ) );
  XOR2X1 U597 ( .A(\tree_sums[1][23][3] ), .B(n776), .Y(n775) );
  XOR2X1 U598 ( .A(n777), .B(n778), .Y(\add_23_root_add_61_G6/SUM[2] ) );
  XOR2X1 U599 ( .A(\tree_sums[1][23][2] ), .B(n779), .Y(n778) );
  XOR2X1 U600 ( .A(n780), .B(n781), .Y(\add_23_root_add_61_G6/SUM[1] ) );
  XOR2X1 U601 ( .A(n782), .B(\tree_sums[1][23][1] ), .Y(n781) );
  XOR2X1 U602 ( .A(n783), .B(n784), .Y(\add_23_root_add_61_G6/SUM[12] ) );
  XNOR2X1 U603 ( .A(n785), .B(n786), .Y(n784) );
  XNOR2X1 U604 ( .A(n787), .B(n760), .Y(n785) );
  XOR2X1 U605 ( .A(n788), .B(n789), .Y(\add_23_root_add_61_G6/SUM[9] ) );
  XOR2X1 U606 ( .A(n786), .B(n783), .Y(n789) );
  OA22X1 U607 ( .A0(n761), .A1(n758), .B0(n790), .B1(n760), .Y(n783) );
  CLKINVX1 U608 ( .A(\tree_sums[1][23][13] ), .Y(n760) );
  AND2X1 U609 ( .A(n758), .B(n761), .Y(n790) );
  XNOR2X1 U610 ( .A(n787), .B(n786), .Y(n758) );
  OA21XL U611 ( .A0(n764), .A1(n762), .B0(n791), .Y(n761) );
  OAI2BB1X1 U612 ( .A0N(n762), .A1N(n764), .B0(\tree_sums[1][23][7] ), .Y(n791) );
  XOR2X1 U613 ( .A(n786), .B(n792), .Y(n762) );
  OA21XL U614 ( .A0(n767), .A1(n765), .B0(n793), .Y(n764) );
  OAI2BB1X1 U615 ( .A0N(n765), .A1N(n767), .B0(\tree_sums[1][23][6] ), .Y(n793) );
  XOR2X1 U616 ( .A(n794), .B(n795), .Y(n765) );
  XNOR2X1 U617 ( .A(\mult[28][6] ), .B(\mult[29][6] ), .Y(n794) );
  AOI2BB2X1 U618 ( .B0(n796), .B1(\tree_sums[1][23][5] ), .A0N(n770), .A1N(
        n768), .Y(n767) );
  NAND2X1 U619 ( .A(n768), .B(n770), .Y(n796) );
  OA21XL U620 ( .A0(n773), .A1(n771), .B0(n797), .Y(n770) );
  OAI2BB1X1 U621 ( .A0N(n771), .A1N(n773), .B0(\tree_sums[1][23][4] ), .Y(n797) );
  XOR2X1 U622 ( .A(n798), .B(n799), .Y(n771) );
  XNOR2X1 U623 ( .A(\mult[28][4] ), .B(\mult[29][4] ), .Y(n798) );
  OA21XL U624 ( .A0(n776), .A1(n774), .B0(n800), .Y(n773) );
  OAI2BB1X1 U625 ( .A0N(n774), .A1N(n776), .B0(\tree_sums[1][23][3] ), .Y(n800) );
  XOR2X1 U626 ( .A(n801), .B(n802), .Y(n774) );
  XNOR2X1 U627 ( .A(\mult[28][3] ), .B(\mult[29][3] ), .Y(n801) );
  AOI2BB2X1 U628 ( .B0(n803), .B1(\tree_sums[1][23][2] ), .A0N(n779), .A1N(
        n777), .Y(n776) );
  NAND2X1 U629 ( .A(n777), .B(n779), .Y(n803) );
  OA21XL U630 ( .A0(n780), .A1(n782), .B0(n804), .Y(n779) );
  OAI2BB1X1 U631 ( .A0N(n782), .A1N(n780), .B0(\tree_sums[1][23][1] ), .Y(n804) );
  NAND2X1 U632 ( .A(\tree_sums[1][23][0] ), .B(n805), .Y(n782) );
  XOR2X1 U633 ( .A(n806), .B(n807), .Y(n780) );
  XNOR2X1 U634 ( .A(\mult[29][1] ), .B(n808), .Y(n807) );
  XOR2X1 U635 ( .A(n809), .B(n810), .Y(n777) );
  XNOR2X1 U636 ( .A(\mult[28][2] ), .B(\mult[29][2] ), .Y(n809) );
  XOR2X1 U637 ( .A(n811), .B(n812), .Y(n768) );
  XNOR2X1 U638 ( .A(\mult[28][5] ), .B(\mult[29][5] ), .Y(n811) );
  NOR2BX1 U639 ( .AN(n813), .B(n814), .Y(n786) );
  XNOR2X1 U640 ( .A(\tree_sums[1][23][13] ), .B(n787), .Y(n788) );
  OAI21XL U641 ( .A0(n792), .A1(n814), .B0(n813), .Y(n787) );
  NAND2X1 U642 ( .A(\mult[29][7] ), .B(\mult[28][7] ), .Y(n813) );
  NOR2X1 U643 ( .A(\mult[29][7] ), .B(\mult[28][7] ), .Y(n814) );
  AOI2BB2X1 U644 ( .B0(n815), .B1(\mult[29][6] ), .A0N(n816), .A1N(n817), .Y(
        n792) );
  NAND2X1 U645 ( .A(n817), .B(n816), .Y(n815) );
  CLKINVX1 U646 ( .A(n795), .Y(n816) );
  OAI2BB1X1 U647 ( .A0N(n812), .A1N(\mult[28][5] ), .B0(n818), .Y(n795) );
  OAI21XL U648 ( .A0(\mult[28][5] ), .A1(n812), .B0(\mult[29][5] ), .Y(n818)
         );
  OAI2BB1X1 U649 ( .A0N(n799), .A1N(\mult[28][4] ), .B0(n819), .Y(n812) );
  OAI21XL U650 ( .A0(\mult[28][4] ), .A1(n799), .B0(\mult[29][4] ), .Y(n819)
         );
  AO22X1 U651 ( .A0(n802), .A1(\mult[28][3] ), .B0(n820), .B1(\mult[29][3] ), 
        .Y(n799) );
  OR2X1 U652 ( .A(\mult[28][3] ), .B(n802), .Y(n820) );
  OAI2BB1X1 U653 ( .A0N(n810), .A1N(\mult[28][2] ), .B0(n821), .Y(n802) );
  OAI21XL U654 ( .A0(\mult[28][2] ), .A1(n810), .B0(\mult[29][2] ), .Y(n821)
         );
  OAI21XL U655 ( .A0(n806), .A1(n808), .B0(n822), .Y(n810) );
  OAI2BB1X1 U656 ( .A0N(n806), .A1N(n808), .B0(\mult[29][1] ), .Y(n822) );
  CLKINVX1 U657 ( .A(\mult[28][1] ), .Y(n808) );
  NAND2X1 U658 ( .A(\mult[29][0] ), .B(\mult[28][0] ), .Y(n806) );
  CLKINVX1 U659 ( .A(\mult[28][6] ), .Y(n817) );
  XOR2X1 U660 ( .A(\tree_sums[1][23][0] ), .B(n805), .Y(
        \add_23_root_add_61_G6/SUM[0] ) );
  XOR2X1 U661 ( .A(\mult[28][0] ), .B(\mult[29][0] ), .Y(n805) );
  XOR2X1 U662 ( .A(n823), .B(n824), .Y(\add_15_root_add_61_G6/SUM[8] ) );
  XOR2X1 U663 ( .A(n825), .B(n826), .Y(\add_15_root_add_61_G6/SUM[7] ) );
  XOR2X1 U664 ( .A(\tree_sums[1][15][7] ), .B(n827), .Y(n826) );
  XOR2X1 U665 ( .A(n828), .B(n829), .Y(\add_15_root_add_61_G6/SUM[6] ) );
  XOR2X1 U666 ( .A(\tree_sums[1][15][6] ), .B(n830), .Y(n829) );
  XOR2X1 U667 ( .A(n831), .B(n832), .Y(\add_15_root_add_61_G6/SUM[5] ) );
  XOR2X1 U668 ( .A(\tree_sums[1][15][5] ), .B(n833), .Y(n832) );
  XOR2X1 U669 ( .A(n834), .B(n835), .Y(\add_15_root_add_61_G6/SUM[4] ) );
  XOR2X1 U670 ( .A(\tree_sums[1][15][4] ), .B(n836), .Y(n835) );
  XOR2X1 U671 ( .A(n837), .B(n838), .Y(\add_15_root_add_61_G6/SUM[3] ) );
  XOR2X1 U672 ( .A(\tree_sums[1][15][3] ), .B(n839), .Y(n838) );
  XOR2X1 U673 ( .A(n840), .B(n841), .Y(\add_15_root_add_61_G6/SUM[2] ) );
  XOR2X1 U674 ( .A(\tree_sums[1][15][2] ), .B(n842), .Y(n841) );
  XOR2X1 U675 ( .A(n843), .B(n844), .Y(\add_15_root_add_61_G6/SUM[1] ) );
  XOR2X1 U676 ( .A(n845), .B(\tree_sums[1][15][1] ), .Y(n844) );
  XOR2X1 U677 ( .A(n823), .B(n846), .Y(\add_15_root_add_61_G6/SUM[9] ) );
  OA21XL U678 ( .A0(n824), .A1(n847), .B0(n848), .Y(n846) );
  OA21XL U679 ( .A0(n827), .A1(n825), .B0(n849), .Y(n824) );
  OAI2BB1X1 U680 ( .A0N(n825), .A1N(n827), .B0(\tree_sums[1][15][7] ), .Y(n849) );
  XNOR2X1 U681 ( .A(n850), .B(n851), .Y(n825) );
  OA21XL U682 ( .A0(n830), .A1(n828), .B0(n852), .Y(n827) );
  OAI2BB1X1 U683 ( .A0N(n828), .A1N(n830), .B0(\tree_sums[1][15][6] ), .Y(n852) );
  XOR2X1 U684 ( .A(n853), .B(n854), .Y(n828) );
  XNOR2X1 U685 ( .A(\mult[60][6] ), .B(\mult[61][6] ), .Y(n853) );
  AOI2BB2X1 U686 ( .B0(n855), .B1(\tree_sums[1][15][5] ), .A0N(n833), .A1N(
        n831), .Y(n830) );
  NAND2X1 U687 ( .A(n831), .B(n833), .Y(n855) );
  OA21XL U688 ( .A0(n836), .A1(n834), .B0(n856), .Y(n833) );
  OAI2BB1X1 U689 ( .A0N(n834), .A1N(n836), .B0(\tree_sums[1][15][4] ), .Y(n856) );
  XOR2X1 U690 ( .A(n857), .B(n858), .Y(n834) );
  XNOR2X1 U691 ( .A(\mult[60][4] ), .B(\mult[61][4] ), .Y(n857) );
  OA21XL U692 ( .A0(n839), .A1(n837), .B0(n859), .Y(n836) );
  OAI2BB1X1 U693 ( .A0N(n837), .A1N(n839), .B0(\tree_sums[1][15][3] ), .Y(n859) );
  XOR2X1 U694 ( .A(n860), .B(n861), .Y(n837) );
  XNOR2X1 U695 ( .A(\mult[60][3] ), .B(\mult[61][3] ), .Y(n860) );
  AOI2BB2X1 U696 ( .B0(n862), .B1(\tree_sums[1][15][2] ), .A0N(n842), .A1N(
        n840), .Y(n839) );
  NAND2X1 U697 ( .A(n840), .B(n842), .Y(n862) );
  OA21XL U698 ( .A0(n843), .A1(n845), .B0(n863), .Y(n842) );
  OAI2BB1X1 U699 ( .A0N(n845), .A1N(n843), .B0(\tree_sums[1][15][1] ), .Y(n863) );
  NAND2X1 U700 ( .A(\tree_sums[1][15][0] ), .B(n864), .Y(n845) );
  XOR2X1 U701 ( .A(n865), .B(n866), .Y(n843) );
  XNOR2X1 U702 ( .A(\mult[61][1] ), .B(n867), .Y(n866) );
  XOR2X1 U703 ( .A(n868), .B(n869), .Y(n840) );
  XNOR2X1 U704 ( .A(\mult[60][2] ), .B(\mult[61][2] ), .Y(n868) );
  XOR2X1 U705 ( .A(n870), .B(n871), .Y(n831) );
  XNOR2X1 U706 ( .A(\mult[60][5] ), .B(\mult[61][5] ), .Y(n870) );
  NAND2BX1 U707 ( .AN(n847), .B(n848), .Y(n823) );
  NAND2X1 U708 ( .A(\tree_sums[1][15][13] ), .B(n872), .Y(n848) );
  NOR2X1 U709 ( .A(n872), .B(\tree_sums[1][15][13] ), .Y(n847) );
  XOR2X1 U710 ( .A(n873), .B(n874), .Y(n872) );
  CLKINVX1 U711 ( .A(n850), .Y(n874) );
  XOR2X1 U712 ( .A(\mult[60][7] ), .B(\mult[61][7] ), .Y(n850) );
  OAI22XL U713 ( .A0(\mult[60][7] ), .A1(n851), .B0(\mult[61][7] ), .B1(n875), 
        .Y(n873) );
  AND2X1 U714 ( .A(n851), .B(\mult[60][7] ), .Y(n875) );
  AO22X1 U715 ( .A0(n854), .A1(\mult[60][6] ), .B0(n876), .B1(\mult[61][6] ), 
        .Y(n851) );
  OR2X1 U716 ( .A(\mult[60][6] ), .B(n854), .Y(n876) );
  OAI2BB1X1 U717 ( .A0N(n871), .A1N(\mult[60][5] ), .B0(n877), .Y(n854) );
  OAI21XL U718 ( .A0(\mult[60][5] ), .A1(n871), .B0(\mult[61][5] ), .Y(n877)
         );
  OAI2BB1X1 U719 ( .A0N(n858), .A1N(\mult[60][4] ), .B0(n878), .Y(n871) );
  OAI21XL U720 ( .A0(\mult[60][4] ), .A1(n858), .B0(\mult[61][4] ), .Y(n878)
         );
  AO22X1 U721 ( .A0(n861), .A1(\mult[60][3] ), .B0(n879), .B1(\mult[61][3] ), 
        .Y(n858) );
  OR2X1 U722 ( .A(\mult[60][3] ), .B(n861), .Y(n879) );
  OAI2BB1X1 U723 ( .A0N(n869), .A1N(\mult[60][2] ), .B0(n880), .Y(n861) );
  OAI21XL U724 ( .A0(\mult[60][2] ), .A1(n869), .B0(\mult[61][2] ), .Y(n880)
         );
  OAI21XL U725 ( .A0(n867), .A1(n865), .B0(n881), .Y(n869) );
  OAI2BB1X1 U726 ( .A0N(n865), .A1N(n867), .B0(\mult[61][1] ), .Y(n881) );
  NAND2X1 U727 ( .A(\mult[60][0] ), .B(\mult[61][0] ), .Y(n865) );
  CLKINVX1 U728 ( .A(\mult[60][1] ), .Y(n867) );
  XOR2X1 U729 ( .A(\tree_sums[1][15][0] ), .B(n864), .Y(
        \add_15_root_add_61_G6/SUM[0] ) );
  XOR2X1 U730 ( .A(\mult[60][0] ), .B(\mult[61][0] ), .Y(n864) );
endmodule


module mac_DW01_add_0 ( A, B, CI, SUM, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [23:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_23 ( .A(A[23]), .B(B[23]), .C(carry[23]), .Y(SUM[23]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2XL U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module mac_DW01_add_2 ( A, B, CI, SUM, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] SUM;
  input CI;
  output CO;
  wire   n3;
  wire   [23:1] carry;

  XOR3XL U1_23 ( .A(A[23]), .B(B[22]), .C(carry[23]), .Y(SUM[23]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n3), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[23]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[23]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[21]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[23]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[21]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[22]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[23]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[21]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[22]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n3) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module mac_DW01_add_3 ( A, B, CI, SUM, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [23:1] carry;

  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_23 ( .A(A[23]), .B(B[23]), .C(carry[23]), .Y(SUM[23]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module mac_DW_mult_uns_1 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163;
  assign product[15] = n1;

  ADDFXL U2 ( .A(n15), .B(n85), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n18), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n21), .B(n19), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n26), .B(n22), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n27), .B(n32), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n33), .B(n40), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n41), .B(n50), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n51), .B(n60), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n61), .B(n68), .CI(n10), .CO(n9) );
  ADDFXL U11 ( .A(n69), .B(n75), .CI(n11), .CO(n10) );
  ADDFXL U12 ( .A(n76), .B(n79), .CI(n12), .CO(n11) );
  ADDFXL U13 ( .A(n80), .B(n82), .CI(n13), .CO(n12) );
  ADDFXL U14 ( .A(n14), .B(n132), .CI(n84), .CO(n13) );
  ADDFXL U16 ( .A(n86), .B(n93), .CI(n17), .CO(n15), .S(n16) );
  CMPR42X1 U17 ( .A(n101), .B(n87), .C(n94), .D(n23), .ICI(n20), .S(n19), 
        .ICO(n17), .CO(n18) );
  CMPR42X1 U18 ( .A(n95), .B(n28), .C(n24), .D(n29), .ICI(n25), .S(n22), .ICO(
        n20), .CO(n21) );
  ADDFXL U19 ( .A(n102), .B(n109), .CI(n88), .CO(n23), .S(n24) );
  CMPR42X1 U20 ( .A(n96), .B(n37), .C(n35), .D(n30), .ICI(n31), .S(n27), .ICO(
        n25), .CO(n26) );
  CMPR42X1 U21 ( .A(n103), .B(n89), .C(n117), .D(n110), .ICI(n34), .S(n30), 
        .ICO(n28), .CO(n29) );
  CMPR42X1 U22 ( .A(n45), .B(n38), .C(n43), .D(n36), .ICI(n39), .S(n33), .ICO(
        n31), .CO(n32) );
  CMPR42X1 U23 ( .A(n104), .B(n118), .C(n111), .D(n97), .ICI(n42), .S(n36), 
        .ICO(n34), .CO(n35) );
  ADDFXL U24 ( .A(n90), .B(n125), .CI(n47), .CO(n37), .S(n38) );
  CMPR42X1 U25 ( .A(n55), .B(n46), .C(n53), .D(n44), .ICI(n49), .S(n41), .ICO(
        n39), .CO(n40) );
  CMPR42X1 U26 ( .A(n126), .B(n105), .C(n119), .D(n48), .ICI(n52), .S(n44), 
        .ICO(n42), .CO(n43) );
  ADDFXL U27 ( .A(n133), .B(n112), .CI(n57), .CO(n45), .S(n46) );
  ADDHXL U28 ( .A(n98), .B(n91), .CO(n47), .S(n48) );
  CMPR42X1 U29 ( .A(n58), .B(n56), .C(n59), .D(n63), .ICI(n54), .S(n51), .ICO(
        n49), .CO(n50) );
  CMPR42X1 U30 ( .A(n134), .B(n113), .C(n120), .D(n127), .ICI(n62), .S(n54), 
        .ICO(n52), .CO(n53) );
  ADDFXL U31 ( .A(n106), .B(n141), .CI(n65), .CO(n55), .S(n56) );
  ADDHXL U32 ( .A(n99), .B(n92), .CO(n57), .S(n58) );
  CMPR42X1 U33 ( .A(n128), .B(n121), .C(n67), .D(n70), .ICI(n64), .S(n61), 
        .ICO(n59), .CO(n60) );
  CMPR42X1 U34 ( .A(n142), .B(n114), .C(n135), .D(n72), .ICI(n66), .S(n64), 
        .ICO(n62), .CO(n63) );
  ADDHXL U35 ( .A(n107), .B(n100), .CO(n65), .S(n66) );
  CMPR42X1 U36 ( .A(n129), .B(n136), .C(n73), .D(n74), .ICI(n71), .S(n69), 
        .ICO(n67), .CO(n68) );
  ADDFXL U37 ( .A(n122), .B(n143), .CI(n77), .CO(n70), .S(n71) );
  ADDHXL U38 ( .A(n115), .B(n108), .CO(n72), .S(n73) );
  CMPR42X1 U39 ( .A(n144), .B(n130), .C(n137), .D(n81), .ICI(n78), .S(n76), 
        .ICO(n74), .CO(n75) );
  ADDHXL U40 ( .A(n123), .B(n116), .CO(n77), .S(n78) );
  ADDFXL U41 ( .A(n138), .B(n145), .CI(n83), .CO(n79), .S(n80) );
  ADDHXL U42 ( .A(n131), .B(n124), .CO(n81), .S(n82) );
  ADDHXL U43 ( .A(n146), .B(n139), .CO(n83), .S(n84) );
  NOR2X1 U44 ( .A(n148), .B(n156), .Y(n85) );
  NOR2X1 U45 ( .A(n149), .B(n156), .Y(n86) );
  NOR2X1 U46 ( .A(n150), .B(n156), .Y(n87) );
  NOR2X1 U47 ( .A(n151), .B(n156), .Y(n88) );
  NOR2X1 U48 ( .A(n152), .B(n156), .Y(n89) );
  NOR2X1 U49 ( .A(n153), .B(n156), .Y(n90) );
  NOR2X1 U50 ( .A(n154), .B(n156), .Y(n91) );
  NOR2X1 U51 ( .A(n155), .B(n156), .Y(n92) );
  NOR2X1 U52 ( .A(n148), .B(n157), .Y(n93) );
  NOR2X1 U53 ( .A(n149), .B(n157), .Y(n94) );
  NOR2X1 U54 ( .A(n150), .B(n157), .Y(n95) );
  NOR2X1 U55 ( .A(n151), .B(n157), .Y(n96) );
  NOR2X1 U56 ( .A(n152), .B(n157), .Y(n97) );
  NOR2X1 U57 ( .A(n153), .B(n157), .Y(n98) );
  NOR2X1 U58 ( .A(n154), .B(n157), .Y(n99) );
  NOR2X1 U59 ( .A(n155), .B(n157), .Y(n100) );
  NOR2X1 U60 ( .A(n148), .B(n158), .Y(n101) );
  NOR2X1 U61 ( .A(n149), .B(n158), .Y(n102) );
  NOR2X1 U62 ( .A(n150), .B(n158), .Y(n103) );
  NOR2X1 U63 ( .A(n151), .B(n158), .Y(n104) );
  NOR2X1 U64 ( .A(n152), .B(n158), .Y(n105) );
  NOR2X1 U65 ( .A(n153), .B(n158), .Y(n106) );
  NOR2X1 U66 ( .A(n154), .B(n158), .Y(n107) );
  NOR2X1 U67 ( .A(n155), .B(n158), .Y(n108) );
  NOR2X1 U68 ( .A(n148), .B(n159), .Y(n109) );
  NOR2X1 U69 ( .A(n149), .B(n159), .Y(n110) );
  NOR2X1 U70 ( .A(n150), .B(n159), .Y(n111) );
  NOR2X1 U71 ( .A(n151), .B(n159), .Y(n112) );
  NOR2X1 U72 ( .A(n152), .B(n159), .Y(n113) );
  NOR2X1 U73 ( .A(n153), .B(n159), .Y(n114) );
  NOR2X1 U74 ( .A(n154), .B(n159), .Y(n115) );
  NOR2X1 U75 ( .A(n155), .B(n159), .Y(n116) );
  NOR2X1 U76 ( .A(n148), .B(n160), .Y(n117) );
  NOR2X1 U77 ( .A(n149), .B(n160), .Y(n118) );
  NOR2X1 U78 ( .A(n150), .B(n160), .Y(n119) );
  NOR2X1 U79 ( .A(n151), .B(n160), .Y(n120) );
  NOR2X1 U80 ( .A(n152), .B(n160), .Y(n121) );
  NOR2X1 U81 ( .A(n153), .B(n160), .Y(n122) );
  NOR2X1 U82 ( .A(n154), .B(n160), .Y(n123) );
  NOR2X1 U83 ( .A(n155), .B(n160), .Y(n124) );
  NOR2X1 U84 ( .A(n148), .B(n161), .Y(n125) );
  NOR2X1 U85 ( .A(n149), .B(n161), .Y(n126) );
  NOR2X1 U86 ( .A(n150), .B(n161), .Y(n127) );
  NOR2X1 U87 ( .A(n151), .B(n161), .Y(n128) );
  NOR2X1 U88 ( .A(n152), .B(n161), .Y(n129) );
  NOR2X1 U89 ( .A(n153), .B(n161), .Y(n130) );
  NOR2X1 U90 ( .A(n154), .B(n161), .Y(n131) );
  NOR2X1 U91 ( .A(n155), .B(n161), .Y(n132) );
  NOR2X1 U92 ( .A(n148), .B(n162), .Y(n133) );
  NOR2X1 U93 ( .A(n149), .B(n162), .Y(n134) );
  NOR2X1 U94 ( .A(n150), .B(n162), .Y(n135) );
  NOR2X1 U95 ( .A(n151), .B(n162), .Y(n136) );
  NOR2X1 U96 ( .A(n152), .B(n162), .Y(n137) );
  NOR2X1 U97 ( .A(n153), .B(n162), .Y(n138) );
  NOR2X1 U98 ( .A(n154), .B(n162), .Y(n139) );
  NOR2X1 U99 ( .A(n155), .B(n162), .Y(n140) );
  NOR2X1 U100 ( .A(n148), .B(n163), .Y(n141) );
  NOR2X1 U101 ( .A(n149), .B(n163), .Y(n142) );
  NOR2X1 U102 ( .A(n150), .B(n163), .Y(n143) );
  NOR2X1 U103 ( .A(n151), .B(n163), .Y(n144) );
  NOR2X1 U104 ( .A(n152), .B(n163), .Y(n145) );
  NOR2X1 U105 ( .A(n153), .B(n163), .Y(n146) );
  NOR2X1 U106 ( .A(n154), .B(n163), .Y(n147) );
  AND2X2 U126 ( .A(n140), .B(n147), .Y(n14) );
  INVXL U127 ( .A(b[1]), .Y(n154) );
  INVXL U128 ( .A(b[2]), .Y(n153) );
  INVXL U129 ( .A(b[3]), .Y(n152) );
  INVXL U130 ( .A(b[4]), .Y(n151) );
  INVXL U131 ( .A(b[5]), .Y(n150) );
  INVXL U132 ( .A(b[7]), .Y(n148) );
  INVXL U133 ( .A(b[6]), .Y(n149) );
  INVXL U134 ( .A(b[0]), .Y(n155) );
  CLKINVX1 U135 ( .A(a[1]), .Y(n162) );
  CLKINVX1 U136 ( .A(a[2]), .Y(n161) );
  CLKINVX1 U137 ( .A(a[3]), .Y(n160) );
  CLKINVX1 U138 ( .A(a[4]), .Y(n159) );
  CLKINVX1 U139 ( .A(a[5]), .Y(n158) );
  CLKINVX1 U140 ( .A(a[6]), .Y(n157) );
  CLKINVX1 U141 ( .A(a[7]), .Y(n156) );
  CLKINVX1 U142 ( .A(a[0]), .Y(n163) );
endmodule


module mac_DW_mult_tc_1 ( a, b, product );
  input [13:0] a;
  input [8:0] b;
  output [22:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n264, n265, n266, n267, n272,
         n273, n274, n275, n276, n278, n279, n280, n281, n282, n283, n284,
         n289, n290, n291, n292, n293, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370;

  XOR2X1 U1 ( .A(n2), .B(n1), .Y(product[22]) );
  XOR2X1 U2 ( .A(n107), .B(n23), .Y(n1) );
  ADDFXL U3 ( .A(n25), .B(n107), .CI(n3), .CO(n2), .S(product[21]) );
  ADDFXL U4 ( .A(n27), .B(n26), .CI(n4), .CO(n3), .S(product[20]) );
  ADDFXL U5 ( .A(n28), .B(n32), .CI(n5), .CO(n4), .S(product[19]) );
  ADDFXL U6 ( .A(n35), .B(n33), .CI(n6), .CO(n5), .S(product[18]) );
  ADDFXL U7 ( .A(n36), .B(n40), .CI(n7), .CO(n6), .S(product[17]) );
  ADDFXL U8 ( .A(n45), .B(n41), .CI(n8), .CO(n7), .S(product[16]) );
  ADDFXL U9 ( .A(n46), .B(n52), .CI(n9), .CO(n8), .S(product[15]) );
  ADDFXL U10 ( .A(n53), .B(n58), .CI(n10), .CO(n9), .S(product[14]) );
  ADDFXL U11 ( .A(n59), .B(n63), .CI(n11), .CO(n10), .S(product[13]) );
  ADDFXL U12 ( .A(n64), .B(n68), .CI(n12), .CO(n11), .S(product[12]) );
  ADDFXL U13 ( .A(n69), .B(n73), .CI(n13), .CO(n12), .S(product[11]) );
  ADDFXL U14 ( .A(n74), .B(n78), .CI(n14), .CO(n13), .S(product[10]) );
  ADDFXL U15 ( .A(n79), .B(n83), .CI(n15), .CO(n14), .S(product[9]) );
  ADDFXL U16 ( .A(n84), .B(n88), .CI(n16), .CO(n15), .S(product[8]) );
  ADDFXL U17 ( .A(n89), .B(n93), .CI(n17), .CO(n16), .S(product[7]) );
  ADDFXL U18 ( .A(n94), .B(n95), .CI(n18), .CO(n17), .S(product[6]) );
  ADDFXL U19 ( .A(n96), .B(n99), .CI(n19), .CO(n18), .S(product[5]) );
  ADDFXL U20 ( .A(n100), .B(n101), .CI(n20), .CO(n19), .S(product[4]) );
  ADDFXL U21 ( .A(n102), .B(n161), .CI(n21), .CO(n20), .S(product[3]) );
  ADDFXL U22 ( .A(n175), .B(n162), .CI(n22), .CO(n21), .S(product[2]) );
  ADDHXL U23 ( .A(n106), .B(n176), .CO(n22), .S(product[1]) );
  ADDFXL U25 ( .A(n108), .B(n29), .CI(n118), .CO(n25), .S(n26) );
  ADDFXL U26 ( .A(n119), .B(n30), .CI(n31), .CO(n27), .S(n28) );
  CLKINVX1 U27 ( .A(n29), .Y(n30) );
  CMPR42X1 U28 ( .A(n37), .B(n109), .C(n120), .D(n133), .ICI(n34), .S(n33), 
        .ICO(n31), .CO(n32) );
  CMPR42X1 U29 ( .A(n38), .B(n134), .C(n121), .D(n42), .ICI(n39), .S(n36), 
        .ICO(n34), .CO(n35) );
  CLKINVX1 U30 ( .A(n37), .Y(n38) );
  CMPR42X1 U31 ( .A(n122), .B(n148), .C(n47), .D(n43), .ICI(n44), .S(n41), 
        .ICO(n39), .CO(n40) );
  ADDFXL U32 ( .A(n110), .B(n49), .CI(n135), .CO(n42), .S(n43) );
  CMPR42X1 U33 ( .A(n136), .B(n123), .C(n48), .D(n54), .ICI(n51), .S(n46), 
        .ICO(n44), .CO(n45) );
  ADDFXL U34 ( .A(n56), .B(n111), .CI(n149), .CO(n47), .S(n48) );
  CMPR42X1 U36 ( .A(n150), .B(n163), .C(n60), .D(n55), .ICI(n57), .S(n53), 
        .ICO(n51), .CO(n52) );
  ADDFXL U37 ( .A(n124), .B(n56), .CI(n137), .CO(n54), .S(n55) );
  CLKINVX1 U38 ( .A(n49), .Y(n56) );
  CMPR42X1 U39 ( .A(n138), .B(n125), .C(n61), .D(n65), .ICI(n62), .S(n59), 
        .ICO(n57), .CO(n58) );
  ADDFXL U40 ( .A(n164), .B(n112), .CI(n151), .CO(n60), .S(n61) );
  CMPR42X1 U41 ( .A(n139), .B(n126), .C(n66), .D(n70), .ICI(n67), .S(n64), 
        .ICO(n62), .CO(n63) );
  ADDFXL U42 ( .A(n165), .B(n113), .CI(n152), .CO(n65), .S(n66) );
  CMPR42X1 U43 ( .A(n140), .B(n127), .C(n71), .D(n75), .ICI(n72), .S(n69), 
        .ICO(n67), .CO(n68) );
  ADDFXL U44 ( .A(n166), .B(n114), .CI(n153), .CO(n70), .S(n71) );
  CMPR42X1 U45 ( .A(n141), .B(n128), .C(n76), .D(n80), .ICI(n77), .S(n74), 
        .ICO(n72), .CO(n73) );
  ADDFXL U46 ( .A(n167), .B(n115), .CI(n154), .CO(n75), .S(n76) );
  CMPR42X1 U47 ( .A(n142), .B(n129), .C(n82), .D(n81), .ICI(n85), .S(n79), 
        .ICO(n77), .CO(n78) );
  ADDFXL U48 ( .A(n168), .B(n116), .CI(n155), .CO(n80), .S(n81) );
  CMPR42X1 U49 ( .A(n156), .B(n143), .C(n90), .D(n87), .ICI(n86), .S(n84), 
        .ICO(n82), .CO(n83) );
  ADDFXL U50 ( .A(n169), .B(n117), .CI(n130), .CO(n85), .S(n86) );
  CMPR42X1 U51 ( .A(n103), .B(n131), .C(n157), .D(n92), .ICI(n91), .S(n89), 
        .ICO(n87), .CO(n88) );
  ADDHXL U52 ( .A(n170), .B(n144), .CO(n90), .S(n91) );
  CMPR42X1 U53 ( .A(n132), .B(n171), .C(n145), .D(n158), .ICI(n97), .S(n94), 
        .ICO(n92), .CO(n93) );
  ADDFXL U54 ( .A(n159), .B(n104), .CI(n98), .CO(n95), .S(n96) );
  ADDHXL U55 ( .A(n172), .B(n146), .CO(n97), .S(n98) );
  ADDFXL U56 ( .A(n173), .B(n147), .CI(n160), .CO(n99), .S(n100) );
  ADDHXL U57 ( .A(n174), .B(n105), .CO(n101), .S(n102) );
  CLKINVX1 U73 ( .A(n250), .Y(n177) );
  CLKINVX1 U74 ( .A(a[12]), .Y(n178) );
  CLKINVX1 U75 ( .A(a[11]), .Y(n179) );
  CLKINVX1 U76 ( .A(a[10]), .Y(n180) );
  CLKINVX1 U77 ( .A(a[9]), .Y(n181) );
  CLKINVX1 U78 ( .A(a[8]), .Y(n182) );
  CLKINVX1 U79 ( .A(a[7]), .Y(n183) );
  CLKINVX1 U80 ( .A(a[6]), .Y(n184) );
  CLKINVX1 U81 ( .A(a[5]), .Y(n185) );
  CLKINVX1 U82 ( .A(a[4]), .Y(n186) );
  CLKINVX1 U83 ( .A(a[3]), .Y(n187) );
  CLKINVX1 U84 ( .A(a[2]), .Y(n188) );
  CLKINVX1 U85 ( .A(a[1]), .Y(n189) );
  OAI22XL U86 ( .A0(n354), .A1(n289), .B0(n365), .B1(n204), .Y(n103) );
  OAI22XL U88 ( .A0(n354), .A1(n191), .B0(n365), .B1(n190), .Y(n119) );
  OAI22XL U89 ( .A0(n354), .A1(n192), .B0(n365), .B1(n191), .Y(n120) );
  OAI22XL U90 ( .A0(n354), .A1(n193), .B0(n365), .B1(n192), .Y(n121) );
  OAI22XL U91 ( .A0(n354), .A1(n194), .B0(n365), .B1(n193), .Y(n122) );
  OAI22XL U92 ( .A0(n354), .A1(n195), .B0(n365), .B1(n194), .Y(n123) );
  OAI22XL U93 ( .A0(n354), .A1(n196), .B0(n365), .B1(n195), .Y(n124) );
  OAI22XL U94 ( .A0(n355), .A1(n197), .B0(n366), .B1(n196), .Y(n125) );
  OAI22XL U95 ( .A0(n355), .A1(n198), .B0(n366), .B1(n197), .Y(n126) );
  OAI22XL U96 ( .A0(n355), .A1(n199), .B0(n366), .B1(n198), .Y(n127) );
  OAI22XL U97 ( .A0(n355), .A1(n200), .B0(n366), .B1(n199), .Y(n128) );
  OAI22XL U98 ( .A0(n355), .A1(n201), .B0(n366), .B1(n200), .Y(n129) );
  OAI22XL U99 ( .A0(n355), .A1(n202), .B0(n366), .B1(n201), .Y(n130) );
  OAI22XL U100 ( .A0(n355), .A1(n203), .B0(n366), .B1(n202), .Y(n131) );
  NOR2BX1 U101 ( .AN(n350), .B(n365), .Y(n132) );
  XNOR2X1 U102 ( .A(n281), .B(n250), .Y(n190) );
  XNOR2X1 U103 ( .A(n281), .B(a[12]), .Y(n191) );
  XNOR2X1 U104 ( .A(n281), .B(a[11]), .Y(n192) );
  XNOR2X1 U105 ( .A(n281), .B(a[10]), .Y(n193) );
  XNOR2X1 U106 ( .A(n281), .B(a[9]), .Y(n194) );
  XNOR2X1 U107 ( .A(n281), .B(a[8]), .Y(n195) );
  XNOR2X1 U108 ( .A(n281), .B(a[7]), .Y(n196) );
  XNOR2X1 U109 ( .A(n281), .B(a[6]), .Y(n197) );
  XNOR2X1 U110 ( .A(n368), .B(a[5]), .Y(n198) );
  XNOR2X1 U111 ( .A(n368), .B(a[4]), .Y(n199) );
  XNOR2X1 U112 ( .A(n368), .B(a[3]), .Y(n200) );
  XNOR2X1 U113 ( .A(n368), .B(a[2]), .Y(n201) );
  XNOR2X1 U114 ( .A(n368), .B(a[1]), .Y(n202) );
  OAI22XL U117 ( .A0(n352), .A1(n278), .B0(n361), .B1(n219), .Y(n104) );
  OAI22XL U119 ( .A0(n352), .A1(n206), .B0(n361), .B1(n205), .Y(n134) );
  OAI22XL U120 ( .A0(n352), .A1(n207), .B0(n361), .B1(n206), .Y(n135) );
  OAI22XL U121 ( .A0(n352), .A1(n208), .B0(n361), .B1(n207), .Y(n136) );
  OAI22XL U122 ( .A0(n352), .A1(n209), .B0(n361), .B1(n208), .Y(n137) );
  OAI22XL U123 ( .A0(n352), .A1(n210), .B0(n361), .B1(n209), .Y(n138) );
  OAI22XL U124 ( .A0(n352), .A1(n211), .B0(n361), .B1(n210), .Y(n139) );
  OAI22XL U125 ( .A0(n353), .A1(n212), .B0(n361), .B1(n211), .Y(n140) );
  OAI22XL U126 ( .A0(n353), .A1(n213), .B0(n362), .B1(n212), .Y(n141) );
  OAI22XL U127 ( .A0(n353), .A1(n214), .B0(n362), .B1(n213), .Y(n142) );
  OAI22XL U128 ( .A0(n353), .A1(n215), .B0(n362), .B1(n214), .Y(n143) );
  OAI22XL U129 ( .A0(n353), .A1(n216), .B0(n362), .B1(n215), .Y(n144) );
  OAI22XL U130 ( .A0(n353), .A1(n217), .B0(n362), .B1(n216), .Y(n145) );
  OAI22XL U131 ( .A0(n353), .A1(n218), .B0(n362), .B1(n217), .Y(n146) );
  XNOR2X1 U133 ( .A(n282), .B(n250), .Y(n205) );
  XNOR2X1 U134 ( .A(n282), .B(a[12]), .Y(n206) );
  XNOR2X1 U135 ( .A(n282), .B(a[11]), .Y(n207) );
  XNOR2X1 U136 ( .A(n282), .B(a[10]), .Y(n208) );
  XNOR2X1 U137 ( .A(n282), .B(a[9]), .Y(n209) );
  XNOR2X1 U138 ( .A(n282), .B(a[8]), .Y(n210) );
  XNOR2X1 U139 ( .A(n282), .B(a[7]), .Y(n211) );
  XNOR2X1 U140 ( .A(n367), .B(a[6]), .Y(n212) );
  XNOR2X1 U141 ( .A(n367), .B(a[5]), .Y(n213) );
  XNOR2X1 U142 ( .A(n367), .B(a[4]), .Y(n214) );
  XNOR2X1 U143 ( .A(n367), .B(a[3]), .Y(n215) );
  XNOR2X1 U144 ( .A(n367), .B(a[2]), .Y(n216) );
  XNOR2X1 U145 ( .A(n367), .B(a[1]), .Y(n217) );
  OAI22XL U148 ( .A0(n358), .A1(n279), .B0(n363), .B1(n234), .Y(n105) );
  AO21X1 U149 ( .A0(n359), .A1(n364), .B0(n220), .Y(n148) );
  OAI22XL U150 ( .A0(n358), .A1(n221), .B0(n363), .B1(n220), .Y(n149) );
  OAI22XL U151 ( .A0(n358), .A1(n222), .B0(n363), .B1(n221), .Y(n150) );
  OAI22XL U152 ( .A0(n358), .A1(n223), .B0(n363), .B1(n222), .Y(n151) );
  OAI22XL U153 ( .A0(n358), .A1(n224), .B0(n363), .B1(n223), .Y(n152) );
  OAI22XL U154 ( .A0(n358), .A1(n225), .B0(n363), .B1(n224), .Y(n153) );
  OAI22XL U155 ( .A0(n358), .A1(n226), .B0(n363), .B1(n225), .Y(n154) );
  OAI22XL U156 ( .A0(n359), .A1(n227), .B0(n363), .B1(n226), .Y(n155) );
  OAI22XL U157 ( .A0(n359), .A1(n228), .B0(n364), .B1(n227), .Y(n156) );
  OAI22XL U158 ( .A0(n359), .A1(n229), .B0(n364), .B1(n228), .Y(n157) );
  OAI22XL U159 ( .A0(n359), .A1(n230), .B0(n364), .B1(n229), .Y(n158) );
  OAI22XL U160 ( .A0(n359), .A1(n231), .B0(n364), .B1(n230), .Y(n159) );
  OAI22XL U161 ( .A0(n359), .A1(n232), .B0(n364), .B1(n231), .Y(n160) );
  OAI22XL U162 ( .A0(n359), .A1(n233), .B0(n364), .B1(n232), .Y(n161) );
  XNOR2X1 U164 ( .A(n283), .B(n250), .Y(n220) );
  XNOR2X1 U165 ( .A(n283), .B(a[12]), .Y(n221) );
  XNOR2X1 U166 ( .A(n283), .B(a[11]), .Y(n222) );
  XNOR2X1 U167 ( .A(n283), .B(a[10]), .Y(n223) );
  XNOR2X1 U168 ( .A(n283), .B(a[9]), .Y(n224) );
  XNOR2X1 U169 ( .A(n283), .B(a[8]), .Y(n225) );
  XNOR2X1 U170 ( .A(n283), .B(a[7]), .Y(n226) );
  XNOR2X1 U171 ( .A(n369), .B(a[6]), .Y(n227) );
  XNOR2X1 U172 ( .A(n369), .B(a[5]), .Y(n228) );
  XNOR2X1 U173 ( .A(n369), .B(a[4]), .Y(n229) );
  XNOR2X1 U174 ( .A(n369), .B(a[3]), .Y(n230) );
  XNOR2X1 U175 ( .A(n369), .B(a[2]), .Y(n231) );
  XNOR2X1 U176 ( .A(n369), .B(a[1]), .Y(n232) );
  NAND2BX1 U178 ( .AN(n350), .B(n369), .Y(n234) );
  OAI22XL U179 ( .A0(n356), .A1(n280), .B0(n249), .B1(n276), .Y(n106) );
  AO21X1 U180 ( .A0(n357), .A1(n360), .B0(n235), .Y(n163) );
  OAI22XL U181 ( .A0(n356), .A1(n236), .B0(n235), .B1(n276), .Y(n164) );
  OAI22XL U182 ( .A0(n356), .A1(n237), .B0(n236), .B1(n276), .Y(n165) );
  OAI22XL U183 ( .A0(n356), .A1(n238), .B0(n237), .B1(n276), .Y(n166) );
  OAI22XL U184 ( .A0(n356), .A1(n239), .B0(n238), .B1(n276), .Y(n167) );
  OAI22XL U185 ( .A0(n356), .A1(n240), .B0(n239), .B1(n276), .Y(n168) );
  OAI22XL U186 ( .A0(n356), .A1(n241), .B0(n240), .B1(n276), .Y(n169) );
  OAI22XL U187 ( .A0(n357), .A1(n242), .B0(n241), .B1(n276), .Y(n170) );
  OAI22XL U188 ( .A0(n357), .A1(n243), .B0(n242), .B1(n360), .Y(n171) );
  OAI22XL U189 ( .A0(n357), .A1(n244), .B0(n243), .B1(n360), .Y(n172) );
  OAI22XL U190 ( .A0(n357), .A1(n245), .B0(n244), .B1(n360), .Y(n173) );
  OAI22XL U191 ( .A0(n357), .A1(n246), .B0(n245), .B1(n360), .Y(n174) );
  OAI22XL U192 ( .A0(n357), .A1(n247), .B0(n246), .B1(n360), .Y(n175) );
  OAI22XL U193 ( .A0(n357), .A1(n248), .B0(n247), .B1(n360), .Y(n176) );
  XNOR2X1 U195 ( .A(n284), .B(n250), .Y(n235) );
  XNOR2X1 U196 ( .A(n284), .B(a[12]), .Y(n236) );
  XNOR2X1 U197 ( .A(n284), .B(a[11]), .Y(n237) );
  XNOR2X1 U198 ( .A(n284), .B(a[10]), .Y(n238) );
  XNOR2X1 U199 ( .A(n284), .B(a[9]), .Y(n239) );
  XNOR2X1 U200 ( .A(n284), .B(a[8]), .Y(n240) );
  XNOR2X1 U201 ( .A(n284), .B(a[7]), .Y(n241) );
  XNOR2X1 U202 ( .A(n370), .B(a[6]), .Y(n242) );
  XNOR2X1 U203 ( .A(n370), .B(a[5]), .Y(n243) );
  XNOR2X1 U204 ( .A(n370), .B(a[4]), .Y(n244) );
  XNOR2X1 U205 ( .A(n370), .B(a[3]), .Y(n245) );
  XNOR2X1 U206 ( .A(n370), .B(a[2]), .Y(n246) );
  XNOR2X1 U207 ( .A(n370), .B(a[1]), .Y(n247) );
  NAND2BX1 U209 ( .AN(n350), .B(n370), .Y(n249) );
  XOR2X1 U243 ( .A(b[6]), .B(b[7]), .Y(n264) );
  XOR2X1 U246 ( .A(b[4]), .B(b[5]), .Y(n265) );
  XOR2X1 U249 ( .A(b[2]), .B(b[3]), .Y(n266) );
  XOR2X1 U252 ( .A(b[0]), .B(b[1]), .Y(n267) );
  AND2X2 U257 ( .A(n265), .B(n291), .Y(n345) );
  AND2X2 U258 ( .A(n266), .B(n292), .Y(n346) );
  AND2X2 U259 ( .A(n264), .B(n290), .Y(n347) );
  AND2X2 U260 ( .A(n267), .B(n293), .Y(n348) );
  INVXL U261 ( .A(a[0]), .Y(n349) );
  INVXL U262 ( .A(n349), .Y(n350) );
  CLKINVX1 U263 ( .A(b[7]), .Y(n351) );
  CLKBUFX3 U264 ( .A(n289), .Y(n272) );
  INVXL U265 ( .A(b[7]), .Y(n289) );
  CLKINVX1 U266 ( .A(n345), .Y(n352) );
  CLKINVX1 U267 ( .A(n345), .Y(n353) );
  CLKINVX1 U268 ( .A(n347), .Y(n354) );
  CLKINVX1 U269 ( .A(n347), .Y(n355) );
  CLKINVX1 U270 ( .A(n348), .Y(n356) );
  CLKINVX1 U271 ( .A(n348), .Y(n357) );
  CLKINVX1 U272 ( .A(n346), .Y(n358) );
  CLKINVX1 U273 ( .A(n346), .Y(n359) );
  CLKINVX1 U274 ( .A(b[0]), .Y(n360) );
  CLKBUFX3 U275 ( .A(n293), .Y(n276) );
  INVXL U276 ( .A(b[0]), .Y(n293) );
  CLKINVX1 U277 ( .A(n291), .Y(n274) );
  CLKINVX1 U278 ( .A(n274), .Y(n361) );
  CLKINVX1 U279 ( .A(n274), .Y(n362) );
  XNOR2XL U280 ( .A(b[4]), .B(b[3]), .Y(n291) );
  CLKINVX1 U281 ( .A(n292), .Y(n275) );
  CLKINVX1 U282 ( .A(n275), .Y(n363) );
  CLKINVX1 U283 ( .A(n275), .Y(n364) );
  XNOR2XL U284 ( .A(b[2]), .B(b[1]), .Y(n292) );
  CLKINVX1 U285 ( .A(n290), .Y(n273) );
  CLKINVX1 U286 ( .A(n273), .Y(n365) );
  CLKINVX1 U287 ( .A(n273), .Y(n366) );
  XNOR2XL U288 ( .A(b[6]), .B(b[5]), .Y(n290) );
  CLKINVX1 U289 ( .A(n278), .Y(n367) );
  CLKBUFX3 U290 ( .A(b[5]), .Y(n282) );
  CLKINVX1 U291 ( .A(n289), .Y(n368) );
  CLKBUFX3 U292 ( .A(b[7]), .Y(n281) );
  CLKINVX1 U293 ( .A(n279), .Y(n369) );
  CLKBUFX3 U294 ( .A(b[3]), .Y(n283) );
  CLKINVX1 U295 ( .A(n280), .Y(n370) );
  CLKBUFX3 U296 ( .A(b[1]), .Y(n284) );
  NOR2BXL U297 ( .AN(a[0]), .B(n360), .Y(product[0]) );
  XNOR2XL U298 ( .A(n370), .B(n350), .Y(n248) );
  NAND2BXL U299 ( .AN(n350), .B(n367), .Y(n219) );
  XNOR2XL U300 ( .A(n369), .B(a[0]), .Y(n233) );
  NOR2BXL U301 ( .AN(n350), .B(n364), .Y(n162) );
  INVXL U302 ( .A(n282), .Y(n278) );
  NOR2BXL U303 ( .AN(a[0]), .B(n362), .Y(n147) );
  INVXL U304 ( .A(n284), .Y(n280) );
  XNOR2XL U305 ( .A(n367), .B(n350), .Y(n218) );
  INVXL U306 ( .A(n283), .Y(n279) );
  NOR2XL U307 ( .A(n272), .B(n181), .Y(n37) );
  NOR2XL U308 ( .A(n272), .B(n184), .Y(n49) );
  XNOR2XL U309 ( .A(n368), .B(a[0]), .Y(n203) );
  NOR2XL U310 ( .A(n272), .B(n177), .Y(n23) );
  NOR2XL U311 ( .A(n272), .B(n179), .Y(n29) );
  NAND2BXL U312 ( .AN(a[0]), .B(n368), .Y(n204) );
  OR2XL U313 ( .A(n351), .B(n177), .Y(n107) );
  NOR2XL U314 ( .A(n272), .B(n185), .Y(n112) );
  NOR2XL U315 ( .A(n272), .B(n183), .Y(n111) );
  NOR2XL U316 ( .A(n272), .B(n182), .Y(n110) );
  NOR2XL U317 ( .A(n272), .B(n189), .Y(n116) );
  NOR2XL U318 ( .A(n351), .B(n188), .Y(n115) );
  NOR2XL U319 ( .A(n351), .B(n187), .Y(n114) );
  NOR2XL U320 ( .A(n351), .B(n186), .Y(n113) );
  NOR2BXL U321 ( .AN(n350), .B(n351), .Y(n117) );
  AO21XL U322 ( .A0(n355), .A1(n366), .B0(n190), .Y(n118) );
  NOR2XL U323 ( .A(n351), .B(n178), .Y(n108) );
  AO21XL U324 ( .A0(n353), .A1(n362), .B0(n205), .Y(n133) );
  NOR2XL U325 ( .A(n351), .B(n180), .Y(n109) );
  CLKBUFX2 U326 ( .A(a[13]), .Y(n250) );
endmodule


module mac ( i_mode, i_psum, i_a, i_b, i_scale_a, i_scale_b, o_result );
  input [1:0] i_mode;
  input [23:0] i_psum;
  input [255:0] i_a;
  input [255:0] i_b;
  input [7:0] i_scale_a;
  input [7:0] i_scale_b;
  output [23:0] o_result;
  wire   \vsq_product[22] , \vsq_product[9] , \vsq_product[8] ,
         \vsq_product[7] , \vsq_product[6] , \vsq_product[5] ,
         \vsq_product[4] , \vsq_product[3] , \vsq_product[2] ,
         \vsq_product[21] , \vsq_product[20] , \vsq_product[1] ,
         \vsq_product[19] , \vsq_product[18] , \vsq_product[17] ,
         \vsq_product[16] , \vsq_product[15] , \vsq_product[14] ,
         \vsq_product[13] , \vsq_product[12] , \vsq_product[11] ,
         \vsq_product[10] , \vsq_product[0] , \scale_mult_round[7] ,
         \scale_mult_round[6] , \scale_mult_round[5] , \scale_mult_round[4] ,
         \scale_mult_round[3] , \scale_mult_round[2] , \scale_mult_round[1] ,
         \scale_mult_round[0] , \scale_mult_full[9] , \scale_mult_full[8] ,
         \scale_mult_full[7] , \scale_mult_full[15] , \scale_mult_full[14] ,
         \scale_mult_full[13] , \scale_mult_full[12] , \scale_mult_full[11] ,
         \scale_mult_full[10] , n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395,
         n396, n397, n398, n399, n400, n401, n402, n403, n404, n405, n406,
         n407, n408, n409, n410, n411, n412, n413, n414, n415, n416, n417,
         n418, n419, n420, n421, n422, n423, n424, n425, n426, n427, n428,
         n429, n430, n431, n432, n433, n434, n435, n436, n437, n438, n439,
         n440, n441, n442, n443, n444, n445, n446, n447, n448, n449, n450,
         n451, n452, n453, n454, n455, n456, n457, n458, n459, n460, n461,
         n462, n463, n464, n465, n466, n467, n468, n469, n470, n471, n472,
         n473, n474, n475, n476, n477, n478, n479, n480, n481, n482, n483,
         n484, n485, n486, n487, n488, n489, n490, n491, n492, n493, n494,
         n495, n496, n497, n498, n499, n500, n501, n502, n503, n504, n505,
         n506, n507, n508, n509, n510, n511, n512, n513, n514, n515, n516,
         n517, n518, n519, n520, n521, n522, n523, n524, n525, n526, n527,
         n528, n529, n530, n531, n532, n533, n534, n535, n536, n537, n538,
         n539, n540, n541, n542, n543, n544, n545, n546, n547, n548, n549,
         n550, n551, n552, n553, n554, n555, n556, n557, n558, n559, n560,
         n561, n562, n563, n564, n565, n566, n567, n568, n569, n570, n571,
         n572, n573, n574, n575, n576, n577, n578, n579, n580, n581, n582,
         n583, n584, n585, n586, n587, n588, n589, n590, n591, n592, n593,
         n594, n595, n596, n597, n598, n599, n600, n601, n602, n603, n604,
         n605, n606, n607, n608, n609, n610, n611, n612, n613, n614, n615,
         n616, n617, n618, n619, n620, n621, n622, n623, n624, n625, n626,
         n627, n628, n629, n630, n631, n632, n633, n634, n635, n636, n637,
         n638, n639, n640, n641, n642, n643, n644, n645, n646, n647, n648,
         n649, n650, n651, n652, n653, n654, n655, n656, n657, n658, n659,
         n660, n661, n662, n663, n664, n665, n666, n667, n668, n669, n670,
         n671, n672, n673, n674, n675, n676, n677, n678, n679, n680, n681,
         n682, n683, n684, n685, n686, n687, n688, n689, n690, n691, n692,
         n693, n694, n695, n696, n697, n698, n699, n700, n701, n702, n703,
         n704, n705, n706, n707, n708, n709, n710, n711, n712, n713, n714,
         n715, n716, n717, n718, n719, n720, n721, n722, n723, n724, n725,
         n726, n727, n728, n729, n730, n731, n732, n733, n734, n735, n736,
         n737, n738, n739, n740, n741, n742, n743, n744, n745, n746, n747,
         n748, n749, n750, n751, n752, n753, n754, n755, n756, n757, n758,
         n759, n760, n761, n762, n763, n764, n765, n766, n767, n768, n769,
         n770, n771, n772, n773, n774, n775, n776, n777, n778, n779, n780,
         n781, n782, n783, n784, n785;
  wire   [255:0] int8_b_gated;
  wire   [255:0] int4_b_gated;
  wire   [7:0] scale_b_gated;
  wire   [23:0] int8_psum_gated;
  wire   [23:0] int4_psum_gated;
  wire   [23:0] vsq_psum_gated;
  wire   [20:0] int8_product;
  wire   [23:0] int8_result;
  wire   [13:0] int4_product;
  wire   [23:0] int4_result;
  wire   [23:0] vsq_result_tmp;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6;

  vec_product_BIT_WIDTH8_VEC_SIZE32 int8_vp ( .i_a(i_a), .i_b(int8_b_gated), 
        .o_product(int8_product) );
  vec_product_BIT_WIDTH4_VEC_SIZE64 int4_vp ( .i_a(i_a), .i_b(int4_b_gated), 
        .o_product(int4_product) );
  mac_DW01_add_0 add_92 ( .A({n785, vsq_psum_gated[22:0]}), .B({
        \vsq_product[22] , \vsq_product[22] , \vsq_product[21] , 
        \vsq_product[20] , \vsq_product[19] , \vsq_product[18] , 
        \vsq_product[17] , \vsq_product[16] , \vsq_product[15] , 
        \vsq_product[14] , \vsq_product[13] , \vsq_product[12] , 
        \vsq_product[11] , \vsq_product[10] , \vsq_product[9] , 
        \vsq_product[8] , \vsq_product[7] , \vsq_product[6] , \vsq_product[5] , 
        \vsq_product[4] , \vsq_product[3] , \vsq_product[2] , \vsq_product[1] , 
        \vsq_product[0] }), .CI(1'b0), .SUM(vsq_result_tmp) );
  mac_DW01_add_2 add_81 ( .A(int4_psum_gated), .B({n378, n380, n379, n378, 
        n378, n380, n379, n378, n378, n380, n379, int4_product[12:0]}), .CI(
        1'b0), .SUM(int4_result) );
  mac_DW01_add_3 add_65 ( .A(int8_psum_gated), .B({int8_product[20], 
        int8_product[20], int8_product[20], int8_product}), .CI(1'b0), .SUM(
        int8_result) );
  mac_DW_mult_uns_1 mult_88 ( .a(i_scale_a), .b(scale_b_gated), .product({
        \scale_mult_full[15] , \scale_mult_full[14] , \scale_mult_full[13] , 
        \scale_mult_full[12] , \scale_mult_full[11] , \scale_mult_full[10] , 
        \scale_mult_full[9] , \scale_mult_full[8] , \scale_mult_full[7] , 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6}) );
  mac_DW_mult_tc_1 mult_90 ( .a({n378, int4_product[12:0]}), .b({1'b0, 
        \scale_mult_round[7] , \scale_mult_round[6] , \scale_mult_round[5] , 
        \scale_mult_round[4] , \scale_mult_round[3] , \scale_mult_round[2] , 
        \scale_mult_round[1] , \scale_mult_round[0] }), .product({
        \vsq_product[22] , \vsq_product[21] , \vsq_product[20] , 
        \vsq_product[19] , \vsq_product[18] , \vsq_product[17] , 
        \vsq_product[16] , \vsq_product[15] , \vsq_product[14] , 
        \vsq_product[13] , \vsq_product[12] , \vsq_product[11] , 
        \vsq_product[10] , \vsq_product[9] , \vsq_product[8] , 
        \vsq_product[7] , \vsq_product[6] , \vsq_product[5] , \vsq_product[4] , 
        \vsq_product[3] , \vsq_product[2] , \vsq_product[1] , \vsq_product[0] }) );
  CLKINVX1 U949 ( .A(int4_product[13]), .Y(n377) );
  CLKINVX1 U950 ( .A(n377), .Y(n379) );
  CLKINVX1 U951 ( .A(n377), .Y(n380) );
  AOI22X1 U952 ( .A0(int8_result[0]), .A1(n373), .B0(int4_result[0]), .B1(n381), .Y(n523) );
  AOI222XL U953 ( .A0(int4_result[1]), .A1(n382), .B0(vsq_result_tmp[1]), .B1(
        n376), .C0(int8_result[1]), .C1(n373), .Y(n512) );
  AOI222XL U954 ( .A0(int4_result[2]), .A1(n384), .B0(vsq_result_tmp[2]), .B1(
        n376), .C0(int8_result[2]), .C1(n372), .Y(n505) );
  AOI222XL U955 ( .A0(int4_result[3]), .A1(n383), .B0(vsq_result_tmp[3]), .B1(
        n375), .C0(int8_result[3]), .C1(n374), .Y(n504) );
  AOI222XL U956 ( .A0(int4_result[4]), .A1(n382), .B0(vsq_result_tmp[4]), .B1(
        n376), .C0(int8_result[4]), .C1(n373), .Y(n503) );
  AOI222XL U957 ( .A0(int4_result[5]), .A1(n384), .B0(vsq_result_tmp[5]), .B1(
        n375), .C0(int8_result[5]), .C1(n372), .Y(n502) );
  AOI222XL U958 ( .A0(int4_result[6]), .A1(n383), .B0(vsq_result_tmp[6]), .B1(
        n376), .C0(int8_result[6]), .C1(n374), .Y(n501) );
  AOI222XL U959 ( .A0(int4_result[7]), .A1(n382), .B0(vsq_result_tmp[7]), .B1(
        n375), .C0(int8_result[7]), .C1(n373), .Y(n500) );
  AOI222XL U960 ( .A0(int4_result[8]), .A1(n384), .B0(vsq_result_tmp[8]), .B1(
        n376), .C0(int8_result[8]), .C1(n372), .Y(n499) );
  AOI222XL U961 ( .A0(int4_result[9]), .A1(n383), .B0(vsq_result_tmp[9]), .B1(
        n375), .C0(int8_result[9]), .C1(n374), .Y(n495) );
  AOI222XL U962 ( .A0(int4_result[10]), .A1(n381), .B0(vsq_result_tmp[10]), 
        .B1(n497), .C0(int8_result[10]), .C1(n372), .Y(n522) );
  AOI222XL U963 ( .A0(int4_result[11]), .A1(n381), .B0(vsq_result_tmp[11]), 
        .B1(n497), .C0(int8_result[11]), .C1(n373), .Y(n521) );
  AOI222XL U964 ( .A0(int4_result[12]), .A1(n381), .B0(vsq_result_tmp[12]), 
        .B1(n497), .C0(int8_result[12]), .C1(n374), .Y(n520) );
  AOI222XL U965 ( .A0(int4_result[13]), .A1(n381), .B0(vsq_result_tmp[13]), 
        .B1(n497), .C0(int8_result[13]), .C1(n372), .Y(n519) );
  AOI222XL U966 ( .A0(int4_result[14]), .A1(n382), .B0(vsq_result_tmp[14]), 
        .B1(n497), .C0(int8_result[14]), .C1(n374), .Y(n518) );
  AOI222XL U967 ( .A0(int4_result[15]), .A1(n384), .B0(vsq_result_tmp[15]), 
        .B1(n497), .C0(int8_result[15]), .C1(n373), .Y(n517) );
  AOI222XL U968 ( .A0(int4_result[16]), .A1(n383), .B0(vsq_result_tmp[16]), 
        .B1(n497), .C0(int8_result[16]), .C1(n374), .Y(n516) );
  AOI222XL U969 ( .A0(int4_result[17]), .A1(n382), .B0(vsq_result_tmp[17]), 
        .B1(n497), .C0(int8_result[17]), .C1(n373), .Y(n515) );
  AOI222XL U970 ( .A0(int4_result[18]), .A1(n384), .B0(vsq_result_tmp[18]), 
        .B1(n376), .C0(int8_result[18]), .C1(n372), .Y(n514) );
  AOI222XL U971 ( .A0(int4_result[19]), .A1(n383), .B0(vsq_result_tmp[19]), 
        .B1(n375), .C0(int8_result[19]), .C1(n374), .Y(n513) );
  AOI222XL U972 ( .A0(int4_result[20]), .A1(n384), .B0(vsq_result_tmp[20]), 
        .B1(n375), .C0(int8_result[20]), .C1(n372), .Y(n511) );
  AOI222XL U973 ( .A0(int4_result[21]), .A1(n383), .B0(vsq_result_tmp[21]), 
        .B1(n376), .C0(int8_result[21]), .C1(n374), .Y(n510) );
  AOI222XL U974 ( .A0(int4_result[22]), .A1(n382), .B0(vsq_result_tmp[22]), 
        .B1(n375), .C0(int8_result[22]), .C1(n373), .Y(n509) );
  AND2X2 U975 ( .A(i_mode[1]), .B(n784), .Y(n366) );
  CLKINVX1 U976 ( .A(n377), .Y(n378) );
  NOR2X1 U977 ( .A(n366), .B(n382), .Y(n367) );
  INVXL U978 ( .A(n366), .Y(n368) );
  INVXL U979 ( .A(n366), .Y(n369) );
  INVXL U980 ( .A(n366), .Y(n370) );
  INVXL U981 ( .A(n366), .Y(n371) );
  NOR2XL U982 ( .A(n385), .B(n783), .Y(int8_b_gated[0]) );
  NOR2XL U983 ( .A(n424), .B(n539), .Y(int8_b_gated[8]) );
  NOR2XL U984 ( .A(n394), .B(n706), .Y(int8_b_gated[16]) );
  NOR2XL U985 ( .A(n405), .B(n617), .Y(int8_b_gated[24]) );
  OR2X1 U986 ( .A(i_mode[0]), .B(i_mode[1]), .Y(n498) );
  CLKINVX1 U987 ( .A(n498), .Y(n372) );
  CLKINVX1 U988 ( .A(n498), .Y(n373) );
  CLKINVX1 U989 ( .A(n498), .Y(n374) );
  NOR2XL U990 ( .A(n407), .B(n602), .Y(int8_b_gated[32]) );
  NOR2XL U991 ( .A(n418), .B(n593), .Y(int8_b_gated[40]) );
  NOR2XL U992 ( .A(n421), .B(n567), .Y(int8_b_gated[64]) );
  NOR2XL U993 ( .A(n412), .B(n558), .Y(int8_b_gated[72]) );
  NOR2XL U994 ( .A(n408), .B(n549), .Y(int8_b_gated[80]) );
  NOR2XL U995 ( .A(n418), .B(n541), .Y(int8_b_gated[88]) );
  NOR2XL U996 ( .A(n416), .B(n532), .Y(int8_b_gated[96]) );
  NOR2XL U997 ( .A(n385), .B(n778), .Y(int8_b_gated[104]) );
  NOR2XL U998 ( .A(n388), .B(n752), .Y(int8_b_gated[128]) );
  NOR2XL U999 ( .A(n390), .B(n743), .Y(int8_b_gated[136]) );
  NOR2XL U1000 ( .A(n391), .B(n734), .Y(int8_b_gated[144]) );
  NOR2XL U1001 ( .A(n392), .B(n725), .Y(int8_b_gated[152]) );
  NOR2XL U1002 ( .A(n393), .B(n716), .Y(int8_b_gated[160]) );
  NOR2XL U1003 ( .A(n394), .B(n708), .Y(int8_b_gated[168]) );
  NOR2XL U1004 ( .A(n397), .B(n681), .Y(int8_b_gated[192]) );
  NOR2XL U1005 ( .A(n399), .B(n671), .Y(int8_b_gated[200]) );
  NOR2XL U1006 ( .A(n400), .B(n663), .Y(int8_b_gated[208]) );
  NOR2XL U1007 ( .A(n401), .B(n654), .Y(int8_b_gated[216]) );
  NOR2XL U1008 ( .A(n402), .B(n645), .Y(int8_b_gated[224]) );
  NOR2XL U1009 ( .A(n403), .B(n636), .Y(int8_b_gated[232]) );
  NOR2XL U1010 ( .A(n498), .B(n585), .Y(int8_b_gated[48]) );
  NOR2XL U1011 ( .A(n421), .B(n576), .Y(int8_b_gated[56]) );
  NOR2XL U1012 ( .A(n395), .B(n699), .Y(int8_b_gated[176]) );
  NOR2XL U1013 ( .A(n396), .B(n690), .Y(int8_b_gated[184]) );
  NOR2XL U1014 ( .A(n386), .B(n769), .Y(int8_b_gated[112]) );
  NOR2XL U1015 ( .A(n387), .B(n760), .Y(int8_b_gated[120]) );
  NOR2XL U1016 ( .A(n404), .B(n627), .Y(int8_b_gated[240]) );
  NOR2XL U1017 ( .A(n405), .B(n619), .Y(int8_b_gated[248]) );
  NOR2BX1 U1018 ( .AN(i_mode[1]), .B(n507), .Y(n375) );
  NOR2BX1 U1019 ( .AN(i_mode[1]), .B(n507), .Y(n376) );
  XNOR2XL U1020 ( .A(\scale_mult_full[13] ), .B(n490), .Y(
        \scale_mult_round[5] ) );
  XOR2XL U1021 ( .A(\scale_mult_full[15] ), .B(n487), .Y(\scale_mult_round[7] ) );
  XOR2XL U1022 ( .A(\scale_mult_full[11] ), .B(n493), .Y(\scale_mult_round[3] ) );
  XNOR2XL U1023 ( .A(\scale_mult_full[9] ), .B(n494), .Y(\scale_mult_round[1] ) );
  OR2X1 U1024 ( .A(n784), .B(i_mode[1]), .Y(n496) );
  CLKINVX1 U1025 ( .A(n496), .Y(n381) );
  CLKINVX1 U1026 ( .A(n496), .Y(n382) );
  CLKINVX1 U1027 ( .A(n496), .Y(n383) );
  CLKINVX1 U1028 ( .A(n496), .Y(n384) );
  INVXL U1029 ( .A(n512), .Y(o_result[1]) );
  INVXL U1030 ( .A(n505), .Y(o_result[2]) );
  INVXL U1031 ( .A(n504), .Y(o_result[3]) );
  INVXL U1032 ( .A(n503), .Y(o_result[4]) );
  INVXL U1033 ( .A(n502), .Y(o_result[5]) );
  INVXL U1034 ( .A(n501), .Y(o_result[6]) );
  INVXL U1035 ( .A(n500), .Y(o_result[7]) );
  INVXL U1036 ( .A(n499), .Y(o_result[8]) );
  INVXL U1037 ( .A(n495), .Y(o_result[9]) );
  INVXL U1038 ( .A(n522), .Y(o_result[10]) );
  INVXL U1039 ( .A(n521), .Y(o_result[11]) );
  INVXL U1040 ( .A(n520), .Y(o_result[12]) );
  INVXL U1041 ( .A(n519), .Y(o_result[13]) );
  INVXL U1042 ( .A(n518), .Y(o_result[14]) );
  INVXL U1043 ( .A(n517), .Y(o_result[15]) );
  INVXL U1044 ( .A(n516), .Y(o_result[16]) );
  INVXL U1045 ( .A(n515), .Y(o_result[17]) );
  INVXL U1046 ( .A(n514), .Y(o_result[18]) );
  INVXL U1047 ( .A(n513), .Y(o_result[19]) );
  INVXL U1048 ( .A(n511), .Y(o_result[20]) );
  INVXL U1049 ( .A(n510), .Y(o_result[21]) );
  INVXL U1050 ( .A(n509), .Y(o_result[22]) );
  AO22XL U1051 ( .A0(int8_result[23]), .A1(n372), .B0(int4_result[23]), .B1(
        n384), .Y(n508) );
  NAND2XL U1052 ( .A(i_psum[23]), .B(n366), .Y(n525) );
  AOI32XL U1053 ( .A0(i_mode[1]), .A1(n525), .A2(n507), .B0(vsq_result_tmp[0]), 
        .B1(n375), .Y(n524) );
  CLKBUFX3 U1054 ( .A(n450), .Y(n443) );
  CLKBUFX3 U1055 ( .A(n452), .Y(n437) );
  CLKBUFX3 U1056 ( .A(n454), .Y(n430) );
  CLKBUFX3 U1057 ( .A(n452), .Y(n438) );
  CLKBUFX3 U1058 ( .A(n453), .Y(n433) );
  CLKBUFX3 U1059 ( .A(n453), .Y(n434) );
  CLKBUFX3 U1060 ( .A(n455), .Y(n427) );
  CLKBUFX3 U1061 ( .A(n451), .Y(n441) );
  CLKBUFX3 U1062 ( .A(n455), .Y(n428) );
  CLKBUFX3 U1063 ( .A(n449), .Y(n445) );
  CLKBUFX3 U1064 ( .A(n450), .Y(n442) );
  CLKBUFX3 U1065 ( .A(n450), .Y(n444) );
  CLKBUFX3 U1066 ( .A(n451), .Y(n440) );
  CLKBUFX3 U1067 ( .A(n451), .Y(n439) );
  CLKBUFX3 U1068 ( .A(n452), .Y(n436) );
  CLKBUFX3 U1069 ( .A(n453), .Y(n435) );
  CLKBUFX3 U1070 ( .A(n454), .Y(n432) );
  CLKBUFX3 U1071 ( .A(n455), .Y(n429) );
  CLKBUFX3 U1072 ( .A(n449), .Y(n446) );
  CLKBUFX3 U1073 ( .A(n454), .Y(n431) );
  CLKBUFX3 U1074 ( .A(n449), .Y(n447) );
  CLKBUFX3 U1075 ( .A(n412), .Y(n404) );
  CLKBUFX3 U1076 ( .A(n415), .Y(n395) );
  CLKBUFX3 U1077 ( .A(n417), .Y(n388) );
  CLKBUFX3 U1078 ( .A(n417), .Y(n387) );
  CLKBUFX3 U1079 ( .A(n411), .Y(n405) );
  CLKBUFX3 U1080 ( .A(n414), .Y(n397) );
  CLKBUFX3 U1081 ( .A(n414), .Y(n396) );
  CLKBUFX3 U1082 ( .A(n415), .Y(n394) );
  CLKBUFX3 U1083 ( .A(n411), .Y(n407) );
  CLKBUFX3 U1084 ( .A(n414), .Y(n398) );
  CLKBUFX3 U1085 ( .A(n411), .Y(n406) );
  CLKBUFX3 U1086 ( .A(n412), .Y(n403) );
  CLKBUFX3 U1087 ( .A(n415), .Y(n393) );
  CLKBUFX3 U1088 ( .A(n412), .Y(n402) );
  CLKBUFX3 U1089 ( .A(n413), .Y(n400) );
  CLKBUFX3 U1090 ( .A(n413), .Y(n399) );
  CLKBUFX3 U1091 ( .A(n416), .Y(n392) );
  CLKBUFX3 U1092 ( .A(n417), .Y(n389) );
  CLKBUFX3 U1093 ( .A(n413), .Y(n401) );
  CLKBUFX3 U1094 ( .A(n416), .Y(n391) );
  CLKBUFX3 U1095 ( .A(n416), .Y(n390) );
  CLKBUFX3 U1096 ( .A(n419), .Y(n408) );
  CLKBUFX3 U1097 ( .A(n456), .Y(n426) );
  CLKBUFX3 U1098 ( .A(n456), .Y(n425) );
  CLKBUFX3 U1099 ( .A(n418), .Y(n386) );
  CLKBUFX3 U1100 ( .A(n418), .Y(n385) );
  CLKBUFX3 U1101 ( .A(n410), .Y(n409) );
  CLKBUFX3 U1102 ( .A(n458), .Y(n454) );
  CLKBUFX3 U1103 ( .A(n459), .Y(n452) );
  CLKBUFX3 U1104 ( .A(n458), .Y(n453) );
  CLKBUFX3 U1105 ( .A(n457), .Y(n455) );
  CLKBUFX3 U1106 ( .A(n460), .Y(n449) );
  CLKBUFX3 U1107 ( .A(n461), .Y(n448) );
  CLKBUFX3 U1108 ( .A(n460), .Y(n450) );
  CLKBUFX3 U1109 ( .A(n459), .Y(n451) );
  CLKBUFX3 U1110 ( .A(n419), .Y(n417) );
  CLKBUFX3 U1111 ( .A(n420), .Y(n415) );
  CLKBUFX3 U1112 ( .A(n422), .Y(n411) );
  CLKBUFX3 U1113 ( .A(n421), .Y(n414) );
  CLKBUFX3 U1114 ( .A(n422), .Y(n412) );
  CLKBUFX3 U1115 ( .A(n421), .Y(n413) );
  CLKBUFX3 U1116 ( .A(n420), .Y(n416) );
  CLKBUFX3 U1117 ( .A(n414), .Y(n410) );
  CLKBUFX3 U1118 ( .A(n457), .Y(n456) );
  CLKBUFX3 U1119 ( .A(n419), .Y(n418) );
  CLKBUFX3 U1120 ( .A(n462), .Y(n459) );
  CLKBUFX3 U1121 ( .A(n463), .Y(n458) );
  CLKBUFX3 U1122 ( .A(n463), .Y(n457) );
  CLKBUFX3 U1123 ( .A(n450), .Y(n461) );
  CLKBUFX3 U1124 ( .A(n462), .Y(n460) );
  CLKBUFX3 U1125 ( .A(n424), .Y(n420) );
  CLKBUFX3 U1126 ( .A(n423), .Y(n422) );
  CLKBUFX3 U1127 ( .A(n423), .Y(n421) );
  CLKBUFX3 U1128 ( .A(n424), .Y(n419) );
  CLKBUFX3 U1129 ( .A(n424), .Y(n423) );
  CLKBUFX3 U1130 ( .A(n498), .Y(n424) );
  CLKBUFX3 U1131 ( .A(n367), .Y(n462) );
  CLKBUFX3 U1132 ( .A(n367), .Y(n463) );
  NOR2X1 U1133 ( .A(n370), .B(n464), .Y(vsq_psum_gated[9]) );
  NOR2X1 U1134 ( .A(n369), .B(n465), .Y(vsq_psum_gated[8]) );
  NOR2X1 U1135 ( .A(n368), .B(n466), .Y(vsq_psum_gated[7]) );
  NOR2X1 U1136 ( .A(n371), .B(n467), .Y(vsq_psum_gated[6]) );
  NOR2X1 U1137 ( .A(n370), .B(n468), .Y(vsq_psum_gated[5]) );
  NOR2X1 U1138 ( .A(n369), .B(n469), .Y(vsq_psum_gated[4]) );
  NOR2X1 U1139 ( .A(n368), .B(n470), .Y(vsq_psum_gated[3]) );
  NOR2X1 U1140 ( .A(n371), .B(n471), .Y(vsq_psum_gated[2]) );
  NOR2X1 U1141 ( .A(n370), .B(n472), .Y(vsq_psum_gated[22]) );
  NOR2X1 U1142 ( .A(n369), .B(n473), .Y(vsq_psum_gated[21]) );
  NOR2X1 U1143 ( .A(n368), .B(n474), .Y(vsq_psum_gated[20]) );
  NOR2X1 U1144 ( .A(n371), .B(n475), .Y(vsq_psum_gated[1]) );
  NOR2X1 U1145 ( .A(n370), .B(n476), .Y(vsq_psum_gated[19]) );
  NOR2X1 U1146 ( .A(n369), .B(n477), .Y(vsq_psum_gated[18]) );
  NOR2X1 U1147 ( .A(n368), .B(n478), .Y(vsq_psum_gated[17]) );
  NOR2X1 U1148 ( .A(n371), .B(n479), .Y(vsq_psum_gated[16]) );
  NOR2X1 U1149 ( .A(n370), .B(n480), .Y(vsq_psum_gated[15]) );
  NOR2X1 U1150 ( .A(n369), .B(n481), .Y(vsq_psum_gated[14]) );
  NOR2X1 U1151 ( .A(n368), .B(n482), .Y(vsq_psum_gated[13]) );
  NOR2X1 U1152 ( .A(n371), .B(n483), .Y(vsq_psum_gated[12]) );
  NOR2X1 U1153 ( .A(n370), .B(n484), .Y(vsq_psum_gated[11]) );
  NOR2X1 U1154 ( .A(n369), .B(n485), .Y(vsq_psum_gated[10]) );
  NOR2X1 U1155 ( .A(n368), .B(n486), .Y(vsq_psum_gated[0]) );
  NOR2BX1 U1156 ( .AN(\scale_mult_full[14] ), .B(n488), .Y(n487) );
  XNOR2X1 U1157 ( .A(\scale_mult_full[14] ), .B(n488), .Y(
        \scale_mult_round[6] ) );
  NAND3X1 U1158 ( .A(\scale_mult_full[12] ), .B(n489), .C(
        \scale_mult_full[13] ), .Y(n488) );
  NAND2X1 U1159 ( .A(\scale_mult_full[12] ), .B(n489), .Y(n490) );
  XOR2X1 U1160 ( .A(\scale_mult_full[12] ), .B(n489), .Y(\scale_mult_round[4] ) );
  NOR3BXL U1161 ( .AN(\scale_mult_full[11] ), .B(n491), .C(n492), .Y(n489) );
  NOR2X1 U1162 ( .A(n492), .B(n491), .Y(n493) );
  XOR2X1 U1163 ( .A(n491), .B(n492), .Y(\scale_mult_round[2] ) );
  NAND3X1 U1164 ( .A(\scale_mult_full[8] ), .B(\scale_mult_full[7] ), .C(
        \scale_mult_full[9] ), .Y(n492) );
  CLKINVX1 U1165 ( .A(\scale_mult_full[10] ), .Y(n491) );
  NAND2X1 U1166 ( .A(\scale_mult_full[8] ), .B(\scale_mult_full[7] ), .Y(n494)
         );
  XOR2X1 U1167 ( .A(\scale_mult_full[8] ), .B(\scale_mult_full[7] ), .Y(
        \scale_mult_round[0] ) );
  NOR2BX1 U1168 ( .AN(i_scale_b[7]), .B(n370), .Y(scale_b_gated[7]) );
  NOR2BX1 U1169 ( .AN(i_scale_b[6]), .B(n369), .Y(scale_b_gated[6]) );
  NOR2BX1 U1170 ( .AN(i_scale_b[5]), .B(n368), .Y(scale_b_gated[5]) );
  NOR2BX1 U1171 ( .AN(i_scale_b[4]), .B(n371), .Y(scale_b_gated[4]) );
  NOR2BX1 U1172 ( .AN(i_scale_b[3]), .B(n370), .Y(scale_b_gated[3]) );
  NOR2BX1 U1173 ( .AN(i_scale_b[2]), .B(n369), .Y(scale_b_gated[2]) );
  NOR2BX1 U1174 ( .AN(i_scale_b[1]), .B(n368), .Y(scale_b_gated[1]) );
  NOR2BX1 U1175 ( .AN(i_scale_b[0]), .B(n371), .Y(scale_b_gated[0]) );
  CLKINVX1 U1176 ( .A(n506), .Y(o_result[23]) );
  AOI221XL U1177 ( .A0(vsq_result_tmp[23]), .A1(n376), .B0(n785), .B1(n507), 
        .C0(n508), .Y(n506) );
  NAND2X1 U1178 ( .A(n523), .B(n524), .Y(o_result[0]) );
  NOR2BX1 U1179 ( .AN(i_mode[1]), .B(n507), .Y(n497) );
  OA21XL U1180 ( .A0(vsq_result_tmp[23]), .A1(\vsq_product[22] ), .B0(n526), 
        .Y(n507) );
  MXI2X1 U1181 ( .A(\vsq_product[22] ), .B(vsq_result_tmp[23]), .S0(n785), .Y(
        n526) );
  CLKINVX1 U1182 ( .A(n525), .Y(n785) );
  NOR2X1 U1183 ( .A(n464), .B(n409), .Y(int8_psum_gated[9]) );
  NOR2X1 U1184 ( .A(n465), .B(n409), .Y(int8_psum_gated[8]) );
  NOR2X1 U1185 ( .A(n466), .B(n409), .Y(int8_psum_gated[7]) );
  NOR2X1 U1186 ( .A(n467), .B(n409), .Y(int8_psum_gated[6]) );
  NOR2X1 U1187 ( .A(n468), .B(n409), .Y(int8_psum_gated[5]) );
  NOR2X1 U1188 ( .A(n469), .B(n409), .Y(int8_psum_gated[4]) );
  NOR2X1 U1189 ( .A(n470), .B(n409), .Y(int8_psum_gated[3]) );
  NOR2X1 U1190 ( .A(n471), .B(n409), .Y(int8_psum_gated[2]) );
  NOR2X1 U1191 ( .A(n527), .B(n423), .Y(int8_psum_gated[23]) );
  NOR2X1 U1192 ( .A(n472), .B(n422), .Y(int8_psum_gated[22]) );
  NOR2X1 U1193 ( .A(n473), .B(n410), .Y(int8_psum_gated[21]) );
  NOR2X1 U1194 ( .A(n474), .B(n420), .Y(int8_psum_gated[20]) );
  NOR2X1 U1195 ( .A(n475), .B(n418), .Y(int8_psum_gated[1]) );
  NOR2X1 U1196 ( .A(n476), .B(n421), .Y(int8_psum_gated[19]) );
  NOR2X1 U1197 ( .A(n477), .B(n424), .Y(int8_psum_gated[18]) );
  NOR2X1 U1198 ( .A(n478), .B(n412), .Y(int8_psum_gated[17]) );
  NOR2X1 U1199 ( .A(n479), .B(n410), .Y(int8_psum_gated[16]) );
  NOR2X1 U1200 ( .A(n480), .B(n416), .Y(int8_psum_gated[15]) );
  NOR2X1 U1201 ( .A(n481), .B(n414), .Y(int8_psum_gated[14]) );
  NOR2X1 U1202 ( .A(n482), .B(n498), .Y(int8_psum_gated[13]) );
  NOR2X1 U1203 ( .A(n483), .B(n419), .Y(int8_psum_gated[12]) );
  NOR2X1 U1204 ( .A(n484), .B(n411), .Y(int8_psum_gated[11]) );
  NOR2X1 U1205 ( .A(n485), .B(n413), .Y(int8_psum_gated[10]) );
  NOR2X1 U1206 ( .A(n486), .B(n415), .Y(int8_psum_gated[0]) );
  NOR2X1 U1207 ( .A(n424), .B(n528), .Y(int8_b_gated[9]) );
  NOR2X1 U1208 ( .A(n423), .B(n529), .Y(int8_b_gated[99]) );
  NOR2X1 U1209 ( .A(n411), .B(n530), .Y(int8_b_gated[98]) );
  NOR2X1 U1210 ( .A(n422), .B(n531), .Y(int8_b_gated[97]) );
  NOR2X1 U1211 ( .A(n419), .B(n533), .Y(int8_b_gated[95]) );
  NOR2X1 U1212 ( .A(n418), .B(n534), .Y(int8_b_gated[94]) );
  NOR2X1 U1213 ( .A(n412), .B(n535), .Y(int8_b_gated[93]) );
  NOR2X1 U1214 ( .A(n420), .B(n536), .Y(int8_b_gated[92]) );
  NOR2X1 U1215 ( .A(n410), .B(n537), .Y(int8_b_gated[91]) );
  NOR2X1 U1216 ( .A(n414), .B(n538), .Y(int8_b_gated[90]) );
  NOR2X1 U1217 ( .A(n413), .B(n540), .Y(int8_b_gated[89]) );
  NOR2X1 U1218 ( .A(n498), .B(n542), .Y(int8_b_gated[87]) );
  NOR2X1 U1219 ( .A(n421), .B(n543), .Y(int8_b_gated[86]) );
  NOR2X1 U1220 ( .A(n408), .B(n544), .Y(int8_b_gated[85]) );
  NOR2X1 U1221 ( .A(n408), .B(n545), .Y(int8_b_gated[84]) );
  NOR2X1 U1222 ( .A(n408), .B(n546), .Y(int8_b_gated[83]) );
  NOR2X1 U1223 ( .A(n408), .B(n547), .Y(int8_b_gated[82]) );
  NOR2X1 U1224 ( .A(n408), .B(n548), .Y(int8_b_gated[81]) );
  NOR2X1 U1225 ( .A(n408), .B(n550), .Y(int8_b_gated[7]) );
  NOR2X1 U1226 ( .A(n408), .B(n551), .Y(int8_b_gated[79]) );
  NOR2X1 U1227 ( .A(n416), .B(n552), .Y(int8_b_gated[78]) );
  NOR2X1 U1228 ( .A(n416), .B(n553), .Y(int8_b_gated[77]) );
  NOR2X1 U1229 ( .A(n419), .B(n554), .Y(int8_b_gated[76]) );
  NOR2X1 U1230 ( .A(n420), .B(n555), .Y(int8_b_gated[75]) );
  NOR2X1 U1231 ( .A(n417), .B(n556), .Y(int8_b_gated[74]) );
  NOR2X1 U1232 ( .A(n415), .B(n557), .Y(int8_b_gated[73]) );
  NOR2X1 U1233 ( .A(n411), .B(n559), .Y(int8_b_gated[71]) );
  NOR2X1 U1234 ( .A(n413), .B(n560), .Y(int8_b_gated[70]) );
  NOR2X1 U1235 ( .A(n418), .B(n561), .Y(int8_b_gated[6]) );
  NOR2X1 U1236 ( .A(n498), .B(n562), .Y(int8_b_gated[69]) );
  NOR2X1 U1237 ( .A(n423), .B(n563), .Y(int8_b_gated[68]) );
  NOR2X1 U1238 ( .A(n421), .B(n564), .Y(int8_b_gated[67]) );
  NOR2X1 U1239 ( .A(n424), .B(n565), .Y(int8_b_gated[66]) );
  NOR2X1 U1240 ( .A(n422), .B(n566), .Y(int8_b_gated[65]) );
  NOR2X1 U1241 ( .A(n419), .B(n568), .Y(int8_b_gated[63]) );
  NOR2X1 U1242 ( .A(n417), .B(n569), .Y(int8_b_gated[62]) );
  NOR2X1 U1243 ( .A(n416), .B(n570), .Y(int8_b_gated[61]) );
  NOR2X1 U1244 ( .A(n411), .B(n571), .Y(int8_b_gated[60]) );
  NOR2X1 U1245 ( .A(n412), .B(n572), .Y(int8_b_gated[5]) );
  NOR2X1 U1246 ( .A(n417), .B(n573), .Y(int8_b_gated[59]) );
  NOR2X1 U1247 ( .A(n410), .B(n574), .Y(int8_b_gated[58]) );
  NOR2X1 U1248 ( .A(n414), .B(n575), .Y(int8_b_gated[57]) );
  NOR2X1 U1249 ( .A(n420), .B(n577), .Y(int8_b_gated[55]) );
  NOR2X1 U1250 ( .A(n415), .B(n578), .Y(int8_b_gated[54]) );
  NOR2X1 U1251 ( .A(n418), .B(n579), .Y(int8_b_gated[53]) );
  NOR2X1 U1252 ( .A(n424), .B(n580), .Y(int8_b_gated[52]) );
  NOR2X1 U1253 ( .A(n415), .B(n581), .Y(int8_b_gated[51]) );
  NOR2X1 U1254 ( .A(n423), .B(n582), .Y(int8_b_gated[50]) );
  NOR2X1 U1255 ( .A(n422), .B(n583), .Y(int8_b_gated[4]) );
  NOR2X1 U1256 ( .A(n420), .B(n584), .Y(int8_b_gated[49]) );
  NOR2X1 U1257 ( .A(n419), .B(n586), .Y(int8_b_gated[47]) );
  NOR2X1 U1258 ( .A(n417), .B(n587), .Y(int8_b_gated[46]) );
  NOR2X1 U1259 ( .A(n415), .B(n588), .Y(int8_b_gated[45]) );
  NOR2X1 U1260 ( .A(n411), .B(n589), .Y(int8_b_gated[44]) );
  NOR2X1 U1261 ( .A(n410), .B(n590), .Y(int8_b_gated[43]) );
  NOR2X1 U1262 ( .A(n413), .B(n591), .Y(int8_b_gated[42]) );
  NOR2X1 U1263 ( .A(n410), .B(n592), .Y(int8_b_gated[41]) );
  NOR2X1 U1264 ( .A(n413), .B(n594), .Y(int8_b_gated[3]) );
  NOR2X1 U1265 ( .A(n423), .B(n595), .Y(int8_b_gated[39]) );
  NOR2X1 U1266 ( .A(n422), .B(n596), .Y(int8_b_gated[38]) );
  NOR2X1 U1267 ( .A(n421), .B(n597), .Y(int8_b_gated[37]) );
  NOR2X1 U1268 ( .A(n412), .B(n598), .Y(int8_b_gated[36]) );
  NOR2X1 U1269 ( .A(n414), .B(n599), .Y(int8_b_gated[35]) );
  NOR2X1 U1270 ( .A(n407), .B(n600), .Y(int8_b_gated[34]) );
  NOR2X1 U1271 ( .A(n407), .B(n601), .Y(int8_b_gated[33]) );
  NOR2X1 U1272 ( .A(n407), .B(n603), .Y(int8_b_gated[31]) );
  NOR2X1 U1273 ( .A(n407), .B(n604), .Y(int8_b_gated[30]) );
  NOR2X1 U1274 ( .A(n407), .B(n605), .Y(int8_b_gated[2]) );
  NOR2X1 U1275 ( .A(n407), .B(n606), .Y(int8_b_gated[29]) );
  NOR2X1 U1276 ( .A(n407), .B(n607), .Y(int8_b_gated[28]) );
  NOR2X1 U1277 ( .A(n406), .B(n608), .Y(int8_b_gated[27]) );
  NOR2X1 U1278 ( .A(n406), .B(n609), .Y(int8_b_gated[26]) );
  NOR2X1 U1279 ( .A(n406), .B(n610), .Y(int8_b_gated[25]) );
  NOR2X1 U1280 ( .A(n406), .B(n611), .Y(int8_b_gated[255]) );
  NOR2X1 U1281 ( .A(n406), .B(n612), .Y(int8_b_gated[254]) );
  NOR2X1 U1282 ( .A(n406), .B(n613), .Y(int8_b_gated[253]) );
  NOR2X1 U1283 ( .A(n406), .B(n614), .Y(int8_b_gated[252]) );
  NOR2X1 U1284 ( .A(n406), .B(n615), .Y(int8_b_gated[251]) );
  NOR2X1 U1285 ( .A(n405), .B(n616), .Y(int8_b_gated[250]) );
  NOR2X1 U1286 ( .A(n405), .B(n618), .Y(int8_b_gated[249]) );
  NOR2X1 U1287 ( .A(n405), .B(n620), .Y(int8_b_gated[247]) );
  NOR2X1 U1288 ( .A(n405), .B(n621), .Y(int8_b_gated[246]) );
  NOR2X1 U1289 ( .A(n405), .B(n622), .Y(int8_b_gated[245]) );
  NOR2X1 U1290 ( .A(n405), .B(n623), .Y(int8_b_gated[244]) );
  NOR2X1 U1291 ( .A(n404), .B(n624), .Y(int8_b_gated[243]) );
  NOR2X1 U1292 ( .A(n404), .B(n625), .Y(int8_b_gated[242]) );
  NOR2X1 U1293 ( .A(n404), .B(n626), .Y(int8_b_gated[241]) );
  NOR2X1 U1294 ( .A(n404), .B(n628), .Y(int8_b_gated[23]) );
  NOR2X1 U1295 ( .A(n404), .B(n629), .Y(int8_b_gated[239]) );
  NOR2X1 U1296 ( .A(n404), .B(n630), .Y(int8_b_gated[238]) );
  NOR2X1 U1297 ( .A(n404), .B(n631), .Y(int8_b_gated[237]) );
  NOR2X1 U1298 ( .A(n403), .B(n632), .Y(int8_b_gated[236]) );
  NOR2X1 U1299 ( .A(n403), .B(n633), .Y(int8_b_gated[235]) );
  NOR2X1 U1300 ( .A(n403), .B(n634), .Y(int8_b_gated[234]) );
  NOR2X1 U1301 ( .A(n403), .B(n635), .Y(int8_b_gated[233]) );
  NOR2X1 U1302 ( .A(n403), .B(n637), .Y(int8_b_gated[231]) );
  NOR2X1 U1303 ( .A(n403), .B(n638), .Y(int8_b_gated[230]) );
  NOR2X1 U1304 ( .A(n403), .B(n639), .Y(int8_b_gated[22]) );
  NOR2X1 U1305 ( .A(n402), .B(n640), .Y(int8_b_gated[229]) );
  NOR2X1 U1306 ( .A(n402), .B(n641), .Y(int8_b_gated[228]) );
  NOR2X1 U1307 ( .A(n402), .B(n642), .Y(int8_b_gated[227]) );
  NOR2X1 U1308 ( .A(n402), .B(n643), .Y(int8_b_gated[226]) );
  NOR2X1 U1309 ( .A(n402), .B(n644), .Y(int8_b_gated[225]) );
  NOR2X1 U1310 ( .A(n402), .B(n646), .Y(int8_b_gated[223]) );
  NOR2X1 U1311 ( .A(n402), .B(n647), .Y(int8_b_gated[222]) );
  NOR2X1 U1312 ( .A(n401), .B(n648), .Y(int8_b_gated[221]) );
  NOR2X1 U1313 ( .A(n401), .B(n649), .Y(int8_b_gated[220]) );
  NOR2X1 U1314 ( .A(n401), .B(n650), .Y(int8_b_gated[21]) );
  NOR2X1 U1315 ( .A(n401), .B(n651), .Y(int8_b_gated[219]) );
  NOR2X1 U1316 ( .A(n401), .B(n652), .Y(int8_b_gated[218]) );
  NOR2X1 U1317 ( .A(n401), .B(n653), .Y(int8_b_gated[217]) );
  NOR2X1 U1318 ( .A(n401), .B(n655), .Y(int8_b_gated[215]) );
  NOR2X1 U1319 ( .A(n400), .B(n656), .Y(int8_b_gated[214]) );
  NOR2X1 U1320 ( .A(n400), .B(n657), .Y(int8_b_gated[213]) );
  NOR2X1 U1321 ( .A(n400), .B(n658), .Y(int8_b_gated[212]) );
  NOR2X1 U1322 ( .A(n400), .B(n659), .Y(int8_b_gated[211]) );
  NOR2X1 U1323 ( .A(n400), .B(n660), .Y(int8_b_gated[210]) );
  NOR2X1 U1324 ( .A(n400), .B(n661), .Y(int8_b_gated[20]) );
  NOR2X1 U1325 ( .A(n400), .B(n662), .Y(int8_b_gated[209]) );
  NOR2X1 U1326 ( .A(n399), .B(n664), .Y(int8_b_gated[207]) );
  NOR2X1 U1327 ( .A(n399), .B(n665), .Y(int8_b_gated[206]) );
  NOR2X1 U1328 ( .A(n399), .B(n666), .Y(int8_b_gated[205]) );
  NOR2X1 U1329 ( .A(n399), .B(n667), .Y(int8_b_gated[204]) );
  NOR2X1 U1330 ( .A(n399), .B(n668), .Y(int8_b_gated[203]) );
  NOR2X1 U1331 ( .A(n399), .B(n669), .Y(int8_b_gated[202]) );
  NOR2X1 U1332 ( .A(n399), .B(n670), .Y(int8_b_gated[201]) );
  NOR2X1 U1333 ( .A(n398), .B(n672), .Y(int8_b_gated[1]) );
  NOR2X1 U1334 ( .A(n398), .B(n673), .Y(int8_b_gated[19]) );
  NOR2X1 U1335 ( .A(n398), .B(n674), .Y(int8_b_gated[199]) );
  NOR2X1 U1336 ( .A(n398), .B(n675), .Y(int8_b_gated[198]) );
  NOR2X1 U1337 ( .A(n398), .B(n676), .Y(int8_b_gated[197]) );
  NOR2X1 U1338 ( .A(n398), .B(n677), .Y(int8_b_gated[196]) );
  NOR2X1 U1339 ( .A(n398), .B(n678), .Y(int8_b_gated[195]) );
  NOR2X1 U1340 ( .A(n398), .B(n679), .Y(int8_b_gated[194]) );
  NOR2X1 U1341 ( .A(n397), .B(n680), .Y(int8_b_gated[193]) );
  NOR2X1 U1342 ( .A(n397), .B(n682), .Y(int8_b_gated[191]) );
  NOR2X1 U1343 ( .A(n397), .B(n683), .Y(int8_b_gated[190]) );
  NOR2X1 U1344 ( .A(n397), .B(n684), .Y(int8_b_gated[18]) );
  NOR2X1 U1345 ( .A(n397), .B(n685), .Y(int8_b_gated[189]) );
  NOR2X1 U1346 ( .A(n397), .B(n686), .Y(int8_b_gated[188]) );
  NOR2X1 U1347 ( .A(n397), .B(n687), .Y(int8_b_gated[187]) );
  NOR2X1 U1348 ( .A(n396), .B(n688), .Y(int8_b_gated[186]) );
  NOR2X1 U1349 ( .A(n396), .B(n689), .Y(int8_b_gated[185]) );
  NOR2X1 U1350 ( .A(n396), .B(n691), .Y(int8_b_gated[183]) );
  NOR2X1 U1351 ( .A(n396), .B(n692), .Y(int8_b_gated[182]) );
  NOR2X1 U1352 ( .A(n396), .B(n693), .Y(int8_b_gated[181]) );
  NOR2X1 U1353 ( .A(n396), .B(n694), .Y(int8_b_gated[180]) );
  NOR2X1 U1354 ( .A(n396), .B(n695), .Y(int8_b_gated[17]) );
  NOR2X1 U1355 ( .A(n395), .B(n696), .Y(int8_b_gated[179]) );
  NOR2X1 U1356 ( .A(n395), .B(n697), .Y(int8_b_gated[178]) );
  NOR2X1 U1357 ( .A(n395), .B(n698), .Y(int8_b_gated[177]) );
  NOR2X1 U1358 ( .A(n395), .B(n700), .Y(int8_b_gated[175]) );
  NOR2X1 U1359 ( .A(n395), .B(n701), .Y(int8_b_gated[174]) );
  NOR2X1 U1360 ( .A(n395), .B(n702), .Y(int8_b_gated[173]) );
  NOR2X1 U1361 ( .A(n395), .B(n703), .Y(int8_b_gated[172]) );
  NOR2X1 U1362 ( .A(n394), .B(n704), .Y(int8_b_gated[171]) );
  NOR2X1 U1363 ( .A(n394), .B(n705), .Y(int8_b_gated[170]) );
  NOR2X1 U1364 ( .A(n394), .B(n707), .Y(int8_b_gated[169]) );
  NOR2X1 U1365 ( .A(n394), .B(n709), .Y(int8_b_gated[167]) );
  NOR2X1 U1366 ( .A(n394), .B(n710), .Y(int8_b_gated[166]) );
  NOR2X1 U1367 ( .A(n394), .B(n711), .Y(int8_b_gated[165]) );
  NOR2X1 U1368 ( .A(n393), .B(n712), .Y(int8_b_gated[164]) );
  NOR2X1 U1369 ( .A(n393), .B(n713), .Y(int8_b_gated[163]) );
  NOR2X1 U1370 ( .A(n393), .B(n714), .Y(int8_b_gated[162]) );
  NOR2X1 U1371 ( .A(n393), .B(n715), .Y(int8_b_gated[161]) );
  NOR2X1 U1372 ( .A(n393), .B(n717), .Y(int8_b_gated[15]) );
  NOR2X1 U1373 ( .A(n393), .B(n718), .Y(int8_b_gated[159]) );
  NOR2X1 U1374 ( .A(n393), .B(n719), .Y(int8_b_gated[158]) );
  NOR2X1 U1375 ( .A(n392), .B(n720), .Y(int8_b_gated[157]) );
  NOR2X1 U1376 ( .A(n392), .B(n721), .Y(int8_b_gated[156]) );
  NOR2X1 U1377 ( .A(n392), .B(n722), .Y(int8_b_gated[155]) );
  NOR2X1 U1378 ( .A(n392), .B(n723), .Y(int8_b_gated[154]) );
  NOR2X1 U1379 ( .A(n392), .B(n724), .Y(int8_b_gated[153]) );
  NOR2X1 U1380 ( .A(n392), .B(n726), .Y(int8_b_gated[151]) );
  NOR2X1 U1381 ( .A(n392), .B(n727), .Y(int8_b_gated[150]) );
  NOR2X1 U1382 ( .A(n391), .B(n728), .Y(int8_b_gated[14]) );
  NOR2X1 U1383 ( .A(n391), .B(n729), .Y(int8_b_gated[149]) );
  NOR2X1 U1384 ( .A(n391), .B(n730), .Y(int8_b_gated[148]) );
  NOR2X1 U1385 ( .A(n391), .B(n731), .Y(int8_b_gated[147]) );
  NOR2X1 U1386 ( .A(n391), .B(n732), .Y(int8_b_gated[146]) );
  NOR2X1 U1387 ( .A(n391), .B(n733), .Y(int8_b_gated[145]) );
  NOR2X1 U1388 ( .A(n391), .B(n735), .Y(int8_b_gated[143]) );
  NOR2X1 U1389 ( .A(n390), .B(n736), .Y(int8_b_gated[142]) );
  NOR2X1 U1390 ( .A(n390), .B(n737), .Y(int8_b_gated[141]) );
  NOR2X1 U1391 ( .A(n390), .B(n738), .Y(int8_b_gated[140]) );
  NOR2X1 U1392 ( .A(n390), .B(n739), .Y(int8_b_gated[13]) );
  NOR2X1 U1393 ( .A(n390), .B(n740), .Y(int8_b_gated[139]) );
  NOR2X1 U1394 ( .A(n390), .B(n741), .Y(int8_b_gated[138]) );
  NOR2X1 U1395 ( .A(n390), .B(n742), .Y(int8_b_gated[137]) );
  NOR2X1 U1396 ( .A(n389), .B(n744), .Y(int8_b_gated[135]) );
  NOR2X1 U1397 ( .A(n389), .B(n745), .Y(int8_b_gated[134]) );
  NOR2X1 U1398 ( .A(n389), .B(n746), .Y(int8_b_gated[133]) );
  NOR2X1 U1399 ( .A(n389), .B(n747), .Y(int8_b_gated[132]) );
  NOR2X1 U1400 ( .A(n389), .B(n748), .Y(int8_b_gated[131]) );
  NOR2X1 U1401 ( .A(n389), .B(n749), .Y(int8_b_gated[130]) );
  NOR2X1 U1402 ( .A(n389), .B(n750), .Y(int8_b_gated[12]) );
  NOR2X1 U1403 ( .A(n389), .B(n751), .Y(int8_b_gated[129]) );
  NOR2X1 U1404 ( .A(n388), .B(n753), .Y(int8_b_gated[127]) );
  NOR2X1 U1405 ( .A(n388), .B(n754), .Y(int8_b_gated[126]) );
  NOR2X1 U1406 ( .A(n388), .B(n755), .Y(int8_b_gated[125]) );
  NOR2X1 U1407 ( .A(n388), .B(n756), .Y(int8_b_gated[124]) );
  NOR2X1 U1408 ( .A(n388), .B(n757), .Y(int8_b_gated[123]) );
  NOR2X1 U1409 ( .A(n388), .B(n758), .Y(int8_b_gated[122]) );
  NOR2X1 U1410 ( .A(n388), .B(n759), .Y(int8_b_gated[121]) );
  NOR2X1 U1411 ( .A(n387), .B(n761), .Y(int8_b_gated[11]) );
  NOR2X1 U1412 ( .A(n387), .B(n762), .Y(int8_b_gated[119]) );
  NOR2X1 U1413 ( .A(n387), .B(n763), .Y(int8_b_gated[118]) );
  NOR2X1 U1414 ( .A(n387), .B(n764), .Y(int8_b_gated[117]) );
  NOR2X1 U1415 ( .A(n387), .B(n765), .Y(int8_b_gated[116]) );
  NOR2X1 U1416 ( .A(n387), .B(n766), .Y(int8_b_gated[115]) );
  NOR2X1 U1417 ( .A(n387), .B(n767), .Y(int8_b_gated[114]) );
  NOR2X1 U1418 ( .A(n386), .B(n768), .Y(int8_b_gated[113]) );
  NOR2X1 U1419 ( .A(n386), .B(n770), .Y(int8_b_gated[111]) );
  NOR2X1 U1420 ( .A(n386), .B(n771), .Y(int8_b_gated[110]) );
  NOR2X1 U1421 ( .A(n386), .B(n772), .Y(int8_b_gated[10]) );
  NOR2X1 U1422 ( .A(n386), .B(n773), .Y(int8_b_gated[109]) );
  NOR2X1 U1423 ( .A(n386), .B(n774), .Y(int8_b_gated[108]) );
  NOR2X1 U1424 ( .A(n386), .B(n775), .Y(int8_b_gated[107]) );
  NOR2X1 U1425 ( .A(n385), .B(n776), .Y(int8_b_gated[106]) );
  NOR2X1 U1426 ( .A(n385), .B(n777), .Y(int8_b_gated[105]) );
  NOR2X1 U1427 ( .A(n385), .B(n779), .Y(int8_b_gated[103]) );
  NOR2X1 U1428 ( .A(n385), .B(n780), .Y(int8_b_gated[102]) );
  NOR2X1 U1429 ( .A(n385), .B(n781), .Y(int8_b_gated[101]) );
  NOR2X1 U1430 ( .A(n385), .B(n782), .Y(int8_b_gated[100]) );
  NOR2X1 U1431 ( .A(n450), .B(n464), .Y(int4_psum_gated[9]) );
  CLKINVX1 U1432 ( .A(i_psum[9]), .Y(n464) );
  NOR2X1 U1433 ( .A(n457), .B(n465), .Y(int4_psum_gated[8]) );
  CLKINVX1 U1434 ( .A(i_psum[8]), .Y(n465) );
  NOR2X1 U1435 ( .A(n448), .B(n466), .Y(int4_psum_gated[7]) );
  CLKINVX1 U1436 ( .A(i_psum[7]), .Y(n466) );
  NOR2X1 U1437 ( .A(n454), .B(n467), .Y(int4_psum_gated[6]) );
  CLKINVX1 U1438 ( .A(i_psum[6]), .Y(n467) );
  NOR2X1 U1439 ( .A(n453), .B(n468), .Y(int4_psum_gated[5]) );
  CLKINVX1 U1440 ( .A(i_psum[5]), .Y(n468) );
  NOR2X1 U1441 ( .A(n455), .B(n469), .Y(int4_psum_gated[4]) );
  CLKINVX1 U1442 ( .A(i_psum[4]), .Y(n469) );
  NOR2X1 U1443 ( .A(n452), .B(n470), .Y(int4_psum_gated[3]) );
  CLKINVX1 U1444 ( .A(i_psum[3]), .Y(n470) );
  NOR2X1 U1445 ( .A(n451), .B(n471), .Y(int4_psum_gated[2]) );
  CLKINVX1 U1446 ( .A(i_psum[2]), .Y(n471) );
  NOR2X1 U1447 ( .A(n459), .B(n527), .Y(int4_psum_gated[23]) );
  CLKINVX1 U1448 ( .A(i_psum[23]), .Y(n527) );
  NOR2X1 U1449 ( .A(n448), .B(n472), .Y(int4_psum_gated[22]) );
  CLKINVX1 U1450 ( .A(i_psum[22]), .Y(n472) );
  NOR2X1 U1451 ( .A(n454), .B(n473), .Y(int4_psum_gated[21]) );
  CLKINVX1 U1452 ( .A(i_psum[21]), .Y(n473) );
  NOR2X1 U1453 ( .A(n453), .B(n474), .Y(int4_psum_gated[20]) );
  CLKINVX1 U1454 ( .A(i_psum[20]), .Y(n474) );
  NOR2X1 U1455 ( .A(n455), .B(n475), .Y(int4_psum_gated[1]) );
  CLKINVX1 U1456 ( .A(i_psum[1]), .Y(n475) );
  NOR2X1 U1457 ( .A(n461), .B(n476), .Y(int4_psum_gated[19]) );
  CLKINVX1 U1458 ( .A(i_psum[19]), .Y(n476) );
  NOR2X1 U1459 ( .A(n461), .B(n477), .Y(int4_psum_gated[18]) );
  CLKINVX1 U1460 ( .A(i_psum[18]), .Y(n477) );
  NOR2X1 U1461 ( .A(n460), .B(n478), .Y(int4_psum_gated[17]) );
  CLKINVX1 U1462 ( .A(i_psum[17]), .Y(n478) );
  NOR2X1 U1463 ( .A(n462), .B(n479), .Y(int4_psum_gated[16]) );
  CLKINVX1 U1464 ( .A(i_psum[16]), .Y(n479) );
  NOR2X1 U1465 ( .A(n367), .B(n480), .Y(int4_psum_gated[15]) );
  CLKINVX1 U1466 ( .A(i_psum[15]), .Y(n480) );
  NOR2X1 U1467 ( .A(n463), .B(n481), .Y(int4_psum_gated[14]) );
  CLKINVX1 U1468 ( .A(i_psum[14]), .Y(n481) );
  NOR2X1 U1469 ( .A(n458), .B(n482), .Y(int4_psum_gated[13]) );
  CLKINVX1 U1470 ( .A(i_psum[13]), .Y(n482) );
  NOR2X1 U1471 ( .A(n457), .B(n483), .Y(int4_psum_gated[12]) );
  CLKINVX1 U1472 ( .A(i_psum[12]), .Y(n483) );
  NOR2X1 U1473 ( .A(n456), .B(n484), .Y(int4_psum_gated[11]) );
  CLKINVX1 U1474 ( .A(i_psum[11]), .Y(n484) );
  NOR2X1 U1475 ( .A(n459), .B(n485), .Y(int4_psum_gated[10]) );
  CLKINVX1 U1476 ( .A(i_psum[10]), .Y(n485) );
  NOR2X1 U1477 ( .A(n456), .B(n486), .Y(int4_psum_gated[0]) );
  CLKINVX1 U1478 ( .A(i_psum[0]), .Y(n486) );
  NOR2X1 U1479 ( .A(n457), .B(n528), .Y(int4_b_gated[9]) );
  CLKINVX1 U1480 ( .A(i_b[9]), .Y(n528) );
  NOR2X1 U1481 ( .A(n456), .B(n529), .Y(int4_b_gated[99]) );
  CLKINVX1 U1482 ( .A(i_b[99]), .Y(n529) );
  NOR2X1 U1483 ( .A(n459), .B(n530), .Y(int4_b_gated[98]) );
  CLKINVX1 U1484 ( .A(i_b[98]), .Y(n530) );
  NOR2X1 U1485 ( .A(n448), .B(n531), .Y(int4_b_gated[97]) );
  CLKINVX1 U1486 ( .A(i_b[97]), .Y(n531) );
  NOR2X1 U1487 ( .A(n450), .B(n532), .Y(int4_b_gated[96]) );
  CLKINVX1 U1488 ( .A(i_b[96]), .Y(n532) );
  NOR2X1 U1489 ( .A(n458), .B(n533), .Y(int4_b_gated[95]) );
  CLKINVX1 U1490 ( .A(i_b[95]), .Y(n533) );
  NOR2X1 U1491 ( .A(n454), .B(n534), .Y(int4_b_gated[94]) );
  CLKINVX1 U1492 ( .A(i_b[94]), .Y(n534) );
  NOR2X1 U1493 ( .A(n453), .B(n535), .Y(int4_b_gated[93]) );
  CLKINVX1 U1494 ( .A(i_b[93]), .Y(n535) );
  NOR2X1 U1495 ( .A(n448), .B(n536), .Y(int4_b_gated[92]) );
  CLKINVX1 U1496 ( .A(i_b[92]), .Y(n536) );
  NOR2X1 U1497 ( .A(n455), .B(n537), .Y(int4_b_gated[91]) );
  CLKINVX1 U1498 ( .A(i_b[91]), .Y(n537) );
  NOR2X1 U1499 ( .A(n452), .B(n538), .Y(int4_b_gated[90]) );
  CLKINVX1 U1500 ( .A(i_b[90]), .Y(n538) );
  NOR2X1 U1501 ( .A(n451), .B(n539), .Y(int4_b_gated[8]) );
  CLKINVX1 U1502 ( .A(i_b[8]), .Y(n539) );
  NOR2X1 U1503 ( .A(n449), .B(n540), .Y(int4_b_gated[89]) );
  CLKINVX1 U1504 ( .A(i_b[89]), .Y(n540) );
  NOR2X1 U1505 ( .A(n462), .B(n541), .Y(int4_b_gated[88]) );
  CLKINVX1 U1506 ( .A(i_b[88]), .Y(n541) );
  NOR2X1 U1507 ( .A(n461), .B(n542), .Y(int4_b_gated[87]) );
  CLKINVX1 U1508 ( .A(i_b[87]), .Y(n542) );
  NOR2X1 U1509 ( .A(n460), .B(n543), .Y(int4_b_gated[86]) );
  CLKINVX1 U1510 ( .A(i_b[86]), .Y(n543) );
  NOR2X1 U1511 ( .A(n449), .B(n544), .Y(int4_b_gated[85]) );
  CLKINVX1 U1512 ( .A(i_b[85]), .Y(n544) );
  NOR2X1 U1513 ( .A(n462), .B(n545), .Y(int4_b_gated[84]) );
  CLKINVX1 U1514 ( .A(i_b[84]), .Y(n545) );
  NOR2X1 U1515 ( .A(n461), .B(n546), .Y(int4_b_gated[83]) );
  CLKINVX1 U1516 ( .A(i_b[83]), .Y(n546) );
  NOR2X1 U1517 ( .A(n448), .B(n547), .Y(int4_b_gated[82]) );
  CLKINVX1 U1518 ( .A(i_b[82]), .Y(n547) );
  NOR2X1 U1519 ( .A(n460), .B(n548), .Y(int4_b_gated[81]) );
  CLKINVX1 U1520 ( .A(i_b[81]), .Y(n548) );
  NOR2X1 U1521 ( .A(n367), .B(n549), .Y(int4_b_gated[80]) );
  CLKINVX1 U1522 ( .A(i_b[80]), .Y(n549) );
  NOR2X1 U1523 ( .A(n463), .B(n550), .Y(int4_b_gated[7]) );
  CLKINVX1 U1524 ( .A(i_b[7]), .Y(n550) );
  NOR2X1 U1525 ( .A(n458), .B(n551), .Y(int4_b_gated[79]) );
  CLKINVX1 U1526 ( .A(i_b[79]), .Y(n551) );
  NOR2X1 U1527 ( .A(n457), .B(n552), .Y(int4_b_gated[78]) );
  CLKINVX1 U1528 ( .A(i_b[78]), .Y(n552) );
  NOR2X1 U1529 ( .A(n454), .B(n553), .Y(int4_b_gated[77]) );
  CLKINVX1 U1530 ( .A(i_b[77]), .Y(n553) );
  NOR2X1 U1531 ( .A(n453), .B(n554), .Y(int4_b_gated[76]) );
  CLKINVX1 U1532 ( .A(i_b[76]), .Y(n554) );
  NOR2X1 U1533 ( .A(n455), .B(n555), .Y(int4_b_gated[75]) );
  CLKINVX1 U1534 ( .A(i_b[75]), .Y(n555) );
  NOR2X1 U1535 ( .A(n460), .B(n556), .Y(int4_b_gated[74]) );
  CLKINVX1 U1536 ( .A(i_b[74]), .Y(n556) );
  NOR2X1 U1537 ( .A(n448), .B(n557), .Y(int4_b_gated[73]) );
  CLKINVX1 U1538 ( .A(i_b[73]), .Y(n557) );
  NOR2X1 U1539 ( .A(n463), .B(n558), .Y(int4_b_gated[72]) );
  CLKINVX1 U1540 ( .A(i_b[72]), .Y(n558) );
  NOR2X1 U1541 ( .A(n367), .B(n559), .Y(int4_b_gated[71]) );
  CLKINVX1 U1542 ( .A(i_b[71]), .Y(n559) );
  NOR2X1 U1543 ( .A(n451), .B(n560), .Y(int4_b_gated[70]) );
  CLKINVX1 U1544 ( .A(i_b[70]), .Y(n560) );
  NOR2X1 U1545 ( .A(n449), .B(n561), .Y(int4_b_gated[6]) );
  CLKINVX1 U1546 ( .A(i_b[6]), .Y(n561) );
  NOR2X1 U1547 ( .A(n461), .B(n562), .Y(int4_b_gated[69]) );
  CLKINVX1 U1548 ( .A(i_b[69]), .Y(n562) );
  NOR2X1 U1549 ( .A(n462), .B(n563), .Y(int4_b_gated[68]) );
  CLKINVX1 U1550 ( .A(i_b[68]), .Y(n563) );
  NOR2X1 U1551 ( .A(n459), .B(n564), .Y(int4_b_gated[67]) );
  CLKINVX1 U1552 ( .A(i_b[67]), .Y(n564) );
  NOR2X1 U1553 ( .A(n460), .B(n565), .Y(int4_b_gated[66]) );
  CLKINVX1 U1554 ( .A(i_b[66]), .Y(n565) );
  NOR2X1 U1555 ( .A(n463), .B(n566), .Y(int4_b_gated[65]) );
  CLKINVX1 U1556 ( .A(i_b[65]), .Y(n566) );
  NOR2X1 U1557 ( .A(n458), .B(n567), .Y(int4_b_gated[64]) );
  CLKINVX1 U1558 ( .A(i_b[64]), .Y(n567) );
  NOR2X1 U1559 ( .A(n461), .B(n568), .Y(int4_b_gated[63]) );
  CLKINVX1 U1560 ( .A(i_b[63]), .Y(n568) );
  NOR2X1 U1561 ( .A(n457), .B(n569), .Y(int4_b_gated[62]) );
  CLKINVX1 U1562 ( .A(i_b[62]), .Y(n569) );
  NOR2X1 U1563 ( .A(n456), .B(n570), .Y(int4_b_gated[61]) );
  CLKINVX1 U1564 ( .A(i_b[61]), .Y(n570) );
  NOR2X1 U1565 ( .A(n462), .B(n571), .Y(int4_b_gated[60]) );
  CLKINVX1 U1566 ( .A(i_b[60]), .Y(n571) );
  NOR2X1 U1567 ( .A(n452), .B(n572), .Y(int4_b_gated[5]) );
  CLKINVX1 U1568 ( .A(i_b[5]), .Y(n572) );
  NOR2X1 U1569 ( .A(n451), .B(n573), .Y(int4_b_gated[59]) );
  CLKINVX1 U1570 ( .A(i_b[59]), .Y(n573) );
  NOR2X1 U1571 ( .A(n449), .B(n574), .Y(int4_b_gated[58]) );
  CLKINVX1 U1572 ( .A(i_b[58]), .Y(n574) );
  NOR2X1 U1573 ( .A(n450), .B(n575), .Y(int4_b_gated[57]) );
  CLKINVX1 U1574 ( .A(i_b[57]), .Y(n575) );
  NOR2X1 U1575 ( .A(n463), .B(n576), .Y(int4_b_gated[56]) );
  CLKINVX1 U1576 ( .A(i_b[56]), .Y(n576) );
  NOR2X1 U1577 ( .A(n456), .B(n577), .Y(int4_b_gated[55]) );
  CLKINVX1 U1578 ( .A(i_b[55]), .Y(n577) );
  NOR2X1 U1579 ( .A(n461), .B(n578), .Y(int4_b_gated[54]) );
  CLKINVX1 U1580 ( .A(i_b[54]), .Y(n578) );
  NOR2X1 U1581 ( .A(n452), .B(n579), .Y(int4_b_gated[53]) );
  CLKINVX1 U1582 ( .A(i_b[53]), .Y(n579) );
  NOR2X1 U1583 ( .A(n459), .B(n580), .Y(int4_b_gated[52]) );
  CLKINVX1 U1584 ( .A(i_b[52]), .Y(n580) );
  NOR2X1 U1585 ( .A(n460), .B(n581), .Y(int4_b_gated[51]) );
  CLKINVX1 U1586 ( .A(i_b[51]), .Y(n581) );
  NOR2X1 U1587 ( .A(n458), .B(n582), .Y(int4_b_gated[50]) );
  CLKINVX1 U1588 ( .A(i_b[50]), .Y(n582) );
  NOR2X1 U1589 ( .A(n457), .B(n583), .Y(int4_b_gated[4]) );
  CLKINVX1 U1590 ( .A(i_b[4]), .Y(n583) );
  NOR2X1 U1591 ( .A(n458), .B(n584), .Y(int4_b_gated[49]) );
  CLKINVX1 U1592 ( .A(i_b[49]), .Y(n584) );
  NOR2X1 U1593 ( .A(n456), .B(n585), .Y(int4_b_gated[48]) );
  CLKINVX1 U1594 ( .A(i_b[48]), .Y(n585) );
  NOR2X1 U1595 ( .A(n367), .B(n586), .Y(int4_b_gated[47]) );
  CLKINVX1 U1596 ( .A(i_b[47]), .Y(n586) );
  NOR2X1 U1597 ( .A(n452), .B(n587), .Y(int4_b_gated[46]) );
  CLKINVX1 U1598 ( .A(i_b[46]), .Y(n587) );
  NOR2X1 U1599 ( .A(n451), .B(n588), .Y(int4_b_gated[45]) );
  CLKINVX1 U1600 ( .A(i_b[45]), .Y(n588) );
  NOR2X1 U1601 ( .A(n449), .B(n589), .Y(int4_b_gated[44]) );
  CLKINVX1 U1602 ( .A(i_b[44]), .Y(n589) );
  NOR2X1 U1603 ( .A(n450), .B(n590), .Y(int4_b_gated[43]) );
  CLKINVX1 U1604 ( .A(i_b[43]), .Y(n590) );
  NOR2X1 U1605 ( .A(n454), .B(n591), .Y(int4_b_gated[42]) );
  CLKINVX1 U1606 ( .A(i_b[42]), .Y(n591) );
  NOR2X1 U1607 ( .A(n463), .B(n592), .Y(int4_b_gated[41]) );
  CLKINVX1 U1608 ( .A(i_b[41]), .Y(n592) );
  NOR2X1 U1609 ( .A(n453), .B(n593), .Y(int4_b_gated[40]) );
  CLKINVX1 U1610 ( .A(i_b[40]), .Y(n593) );
  NOR2X1 U1611 ( .A(n455), .B(n594), .Y(int4_b_gated[3]) );
  CLKINVX1 U1612 ( .A(i_b[3]), .Y(n594) );
  NOR2X1 U1613 ( .A(n448), .B(n595), .Y(int4_b_gated[39]) );
  CLKINVX1 U1614 ( .A(i_b[39]), .Y(n595) );
  NOR2X1 U1615 ( .A(n367), .B(n596), .Y(int4_b_gated[38]) );
  CLKINVX1 U1616 ( .A(i_b[38]), .Y(n596) );
  NOR2X1 U1617 ( .A(n367), .B(n597), .Y(int4_b_gated[37]) );
  CLKINVX1 U1618 ( .A(i_b[37]), .Y(n597) );
  NOR2X1 U1619 ( .A(n462), .B(n598), .Y(int4_b_gated[36]) );
  CLKINVX1 U1620 ( .A(i_b[36]), .Y(n598) );
  NOR2X1 U1621 ( .A(n459), .B(n599), .Y(int4_b_gated[35]) );
  CLKINVX1 U1622 ( .A(i_b[35]), .Y(n599) );
  NOR2X1 U1623 ( .A(n447), .B(n600), .Y(int4_b_gated[34]) );
  CLKINVX1 U1624 ( .A(i_b[34]), .Y(n600) );
  NOR2X1 U1625 ( .A(n447), .B(n601), .Y(int4_b_gated[33]) );
  CLKINVX1 U1626 ( .A(i_b[33]), .Y(n601) );
  NOR2X1 U1627 ( .A(n447), .B(n602), .Y(int4_b_gated[32]) );
  CLKINVX1 U1628 ( .A(i_b[32]), .Y(n602) );
  NOR2X1 U1629 ( .A(n447), .B(n603), .Y(int4_b_gated[31]) );
  CLKINVX1 U1630 ( .A(i_b[31]), .Y(n603) );
  NOR2X1 U1631 ( .A(n447), .B(n604), .Y(int4_b_gated[30]) );
  CLKINVX1 U1632 ( .A(i_b[30]), .Y(n604) );
  NOR2X1 U1633 ( .A(n447), .B(n605), .Y(int4_b_gated[2]) );
  CLKINVX1 U1634 ( .A(i_b[2]), .Y(n605) );
  NOR2X1 U1635 ( .A(n447), .B(n606), .Y(int4_b_gated[29]) );
  CLKINVX1 U1636 ( .A(i_b[29]), .Y(n606) );
  NOR2X1 U1637 ( .A(n447), .B(n607), .Y(int4_b_gated[28]) );
  CLKINVX1 U1638 ( .A(i_b[28]), .Y(n607) );
  NOR2X1 U1639 ( .A(n446), .B(n608), .Y(int4_b_gated[27]) );
  CLKINVX1 U1640 ( .A(i_b[27]), .Y(n608) );
  NOR2X1 U1641 ( .A(n446), .B(n609), .Y(int4_b_gated[26]) );
  CLKINVX1 U1642 ( .A(i_b[26]), .Y(n609) );
  NOR2X1 U1643 ( .A(n446), .B(n610), .Y(int4_b_gated[25]) );
  CLKINVX1 U1644 ( .A(i_b[25]), .Y(n610) );
  NOR2X1 U1645 ( .A(n446), .B(n611), .Y(int4_b_gated[255]) );
  CLKINVX1 U1646 ( .A(i_b[255]), .Y(n611) );
  NOR2X1 U1647 ( .A(n446), .B(n612), .Y(int4_b_gated[254]) );
  CLKINVX1 U1648 ( .A(i_b[254]), .Y(n612) );
  NOR2X1 U1649 ( .A(n446), .B(n613), .Y(int4_b_gated[253]) );
  CLKINVX1 U1650 ( .A(i_b[253]), .Y(n613) );
  NOR2X1 U1651 ( .A(n446), .B(n614), .Y(int4_b_gated[252]) );
  CLKINVX1 U1652 ( .A(i_b[252]), .Y(n614) );
  NOR2X1 U1653 ( .A(n446), .B(n615), .Y(int4_b_gated[251]) );
  CLKINVX1 U1654 ( .A(i_b[251]), .Y(n615) );
  NOR2X1 U1655 ( .A(n445), .B(n616), .Y(int4_b_gated[250]) );
  CLKINVX1 U1656 ( .A(i_b[250]), .Y(n616) );
  NOR2X1 U1657 ( .A(n445), .B(n617), .Y(int4_b_gated[24]) );
  CLKINVX1 U1658 ( .A(i_b[24]), .Y(n617) );
  NOR2X1 U1659 ( .A(n445), .B(n618), .Y(int4_b_gated[249]) );
  CLKINVX1 U1660 ( .A(i_b[249]), .Y(n618) );
  NOR2X1 U1661 ( .A(n445), .B(n619), .Y(int4_b_gated[248]) );
  CLKINVX1 U1662 ( .A(i_b[248]), .Y(n619) );
  NOR2X1 U1663 ( .A(n445), .B(n620), .Y(int4_b_gated[247]) );
  CLKINVX1 U1664 ( .A(i_b[247]), .Y(n620) );
  NOR2X1 U1665 ( .A(n445), .B(n621), .Y(int4_b_gated[246]) );
  CLKINVX1 U1666 ( .A(i_b[246]), .Y(n621) );
  NOR2X1 U1667 ( .A(n445), .B(n622), .Y(int4_b_gated[245]) );
  CLKINVX1 U1668 ( .A(i_b[245]), .Y(n622) );
  NOR2X1 U1669 ( .A(n445), .B(n623), .Y(int4_b_gated[244]) );
  CLKINVX1 U1670 ( .A(i_b[244]), .Y(n623) );
  NOR2X1 U1671 ( .A(n444), .B(n624), .Y(int4_b_gated[243]) );
  CLKINVX1 U1672 ( .A(i_b[243]), .Y(n624) );
  NOR2X1 U1673 ( .A(n444), .B(n625), .Y(int4_b_gated[242]) );
  CLKINVX1 U1674 ( .A(i_b[242]), .Y(n625) );
  NOR2X1 U1675 ( .A(n444), .B(n626), .Y(int4_b_gated[241]) );
  CLKINVX1 U1676 ( .A(i_b[241]), .Y(n626) );
  NOR2X1 U1677 ( .A(n444), .B(n627), .Y(int4_b_gated[240]) );
  CLKINVX1 U1678 ( .A(i_b[240]), .Y(n627) );
  NOR2X1 U1679 ( .A(n444), .B(n628), .Y(int4_b_gated[23]) );
  CLKINVX1 U1680 ( .A(i_b[23]), .Y(n628) );
  NOR2X1 U1681 ( .A(n444), .B(n629), .Y(int4_b_gated[239]) );
  CLKINVX1 U1682 ( .A(i_b[239]), .Y(n629) );
  NOR2X1 U1683 ( .A(n444), .B(n630), .Y(int4_b_gated[238]) );
  CLKINVX1 U1684 ( .A(i_b[238]), .Y(n630) );
  NOR2X1 U1685 ( .A(n444), .B(n631), .Y(int4_b_gated[237]) );
  CLKINVX1 U1686 ( .A(i_b[237]), .Y(n631) );
  NOR2X1 U1687 ( .A(n443), .B(n632), .Y(int4_b_gated[236]) );
  CLKINVX1 U1688 ( .A(i_b[236]), .Y(n632) );
  NOR2X1 U1689 ( .A(n443), .B(n633), .Y(int4_b_gated[235]) );
  CLKINVX1 U1690 ( .A(i_b[235]), .Y(n633) );
  NOR2X1 U1691 ( .A(n443), .B(n634), .Y(int4_b_gated[234]) );
  CLKINVX1 U1692 ( .A(i_b[234]), .Y(n634) );
  NOR2X1 U1693 ( .A(n443), .B(n635), .Y(int4_b_gated[233]) );
  CLKINVX1 U1694 ( .A(i_b[233]), .Y(n635) );
  NOR2X1 U1695 ( .A(n443), .B(n636), .Y(int4_b_gated[232]) );
  CLKINVX1 U1696 ( .A(i_b[232]), .Y(n636) );
  NOR2X1 U1697 ( .A(n443), .B(n637), .Y(int4_b_gated[231]) );
  CLKINVX1 U1698 ( .A(i_b[231]), .Y(n637) );
  NOR2X1 U1699 ( .A(n443), .B(n638), .Y(int4_b_gated[230]) );
  CLKINVX1 U1700 ( .A(i_b[230]), .Y(n638) );
  NOR2X1 U1701 ( .A(n443), .B(n639), .Y(int4_b_gated[22]) );
  CLKINVX1 U1702 ( .A(i_b[22]), .Y(n639) );
  NOR2X1 U1703 ( .A(n442), .B(n640), .Y(int4_b_gated[229]) );
  CLKINVX1 U1704 ( .A(i_b[229]), .Y(n640) );
  NOR2X1 U1705 ( .A(n442), .B(n641), .Y(int4_b_gated[228]) );
  CLKINVX1 U1706 ( .A(i_b[228]), .Y(n641) );
  NOR2X1 U1707 ( .A(n442), .B(n642), .Y(int4_b_gated[227]) );
  CLKINVX1 U1708 ( .A(i_b[227]), .Y(n642) );
  NOR2X1 U1709 ( .A(n442), .B(n643), .Y(int4_b_gated[226]) );
  CLKINVX1 U1710 ( .A(i_b[226]), .Y(n643) );
  NOR2X1 U1711 ( .A(n442), .B(n644), .Y(int4_b_gated[225]) );
  CLKINVX1 U1712 ( .A(i_b[225]), .Y(n644) );
  NOR2X1 U1713 ( .A(n442), .B(n645), .Y(int4_b_gated[224]) );
  CLKINVX1 U1714 ( .A(i_b[224]), .Y(n645) );
  NOR2X1 U1715 ( .A(n442), .B(n646), .Y(int4_b_gated[223]) );
  CLKINVX1 U1716 ( .A(i_b[223]), .Y(n646) );
  NOR2X1 U1717 ( .A(n442), .B(n647), .Y(int4_b_gated[222]) );
  CLKINVX1 U1718 ( .A(i_b[222]), .Y(n647) );
  NOR2X1 U1719 ( .A(n441), .B(n648), .Y(int4_b_gated[221]) );
  CLKINVX1 U1720 ( .A(i_b[221]), .Y(n648) );
  NOR2X1 U1721 ( .A(n441), .B(n649), .Y(int4_b_gated[220]) );
  CLKINVX1 U1722 ( .A(i_b[220]), .Y(n649) );
  NOR2X1 U1723 ( .A(n441), .B(n650), .Y(int4_b_gated[21]) );
  CLKINVX1 U1724 ( .A(i_b[21]), .Y(n650) );
  NOR2X1 U1725 ( .A(n441), .B(n651), .Y(int4_b_gated[219]) );
  CLKINVX1 U1726 ( .A(i_b[219]), .Y(n651) );
  NOR2X1 U1727 ( .A(n441), .B(n652), .Y(int4_b_gated[218]) );
  CLKINVX1 U1728 ( .A(i_b[218]), .Y(n652) );
  NOR2X1 U1729 ( .A(n441), .B(n653), .Y(int4_b_gated[217]) );
  CLKINVX1 U1730 ( .A(i_b[217]), .Y(n653) );
  NOR2X1 U1731 ( .A(n441), .B(n654), .Y(int4_b_gated[216]) );
  CLKINVX1 U1732 ( .A(i_b[216]), .Y(n654) );
  NOR2X1 U1733 ( .A(n441), .B(n655), .Y(int4_b_gated[215]) );
  CLKINVX1 U1734 ( .A(i_b[215]), .Y(n655) );
  NOR2X1 U1735 ( .A(n440), .B(n656), .Y(int4_b_gated[214]) );
  CLKINVX1 U1736 ( .A(i_b[214]), .Y(n656) );
  NOR2X1 U1737 ( .A(n440), .B(n657), .Y(int4_b_gated[213]) );
  CLKINVX1 U1738 ( .A(i_b[213]), .Y(n657) );
  NOR2X1 U1739 ( .A(n440), .B(n658), .Y(int4_b_gated[212]) );
  CLKINVX1 U1740 ( .A(i_b[212]), .Y(n658) );
  NOR2X1 U1741 ( .A(n440), .B(n659), .Y(int4_b_gated[211]) );
  CLKINVX1 U1742 ( .A(i_b[211]), .Y(n659) );
  NOR2X1 U1743 ( .A(n440), .B(n660), .Y(int4_b_gated[210]) );
  CLKINVX1 U1744 ( .A(i_b[210]), .Y(n660) );
  NOR2X1 U1745 ( .A(n440), .B(n661), .Y(int4_b_gated[20]) );
  CLKINVX1 U1746 ( .A(i_b[20]), .Y(n661) );
  NOR2X1 U1747 ( .A(n440), .B(n662), .Y(int4_b_gated[209]) );
  CLKINVX1 U1748 ( .A(i_b[209]), .Y(n662) );
  NOR2X1 U1749 ( .A(n440), .B(n663), .Y(int4_b_gated[208]) );
  CLKINVX1 U1750 ( .A(i_b[208]), .Y(n663) );
  NOR2X1 U1751 ( .A(n439), .B(n664), .Y(int4_b_gated[207]) );
  CLKINVX1 U1752 ( .A(i_b[207]), .Y(n664) );
  NOR2X1 U1753 ( .A(n439), .B(n665), .Y(int4_b_gated[206]) );
  CLKINVX1 U1754 ( .A(i_b[206]), .Y(n665) );
  NOR2X1 U1755 ( .A(n439), .B(n666), .Y(int4_b_gated[205]) );
  CLKINVX1 U1756 ( .A(i_b[205]), .Y(n666) );
  NOR2X1 U1757 ( .A(n439), .B(n667), .Y(int4_b_gated[204]) );
  CLKINVX1 U1758 ( .A(i_b[204]), .Y(n667) );
  NOR2X1 U1759 ( .A(n439), .B(n668), .Y(int4_b_gated[203]) );
  CLKINVX1 U1760 ( .A(i_b[203]), .Y(n668) );
  NOR2X1 U1761 ( .A(n439), .B(n669), .Y(int4_b_gated[202]) );
  CLKINVX1 U1762 ( .A(i_b[202]), .Y(n669) );
  NOR2X1 U1763 ( .A(n439), .B(n670), .Y(int4_b_gated[201]) );
  CLKINVX1 U1764 ( .A(i_b[201]), .Y(n670) );
  NOR2X1 U1765 ( .A(n439), .B(n671), .Y(int4_b_gated[200]) );
  CLKINVX1 U1766 ( .A(i_b[200]), .Y(n671) );
  NOR2X1 U1767 ( .A(n438), .B(n672), .Y(int4_b_gated[1]) );
  CLKINVX1 U1768 ( .A(i_b[1]), .Y(n672) );
  NOR2X1 U1769 ( .A(n438), .B(n673), .Y(int4_b_gated[19]) );
  CLKINVX1 U1770 ( .A(i_b[19]), .Y(n673) );
  NOR2X1 U1771 ( .A(n438), .B(n674), .Y(int4_b_gated[199]) );
  CLKINVX1 U1772 ( .A(i_b[199]), .Y(n674) );
  NOR2X1 U1773 ( .A(n438), .B(n675), .Y(int4_b_gated[198]) );
  CLKINVX1 U1774 ( .A(i_b[198]), .Y(n675) );
  NOR2X1 U1775 ( .A(n438), .B(n676), .Y(int4_b_gated[197]) );
  CLKINVX1 U1776 ( .A(i_b[197]), .Y(n676) );
  NOR2X1 U1777 ( .A(n438), .B(n677), .Y(int4_b_gated[196]) );
  CLKINVX1 U1778 ( .A(i_b[196]), .Y(n677) );
  NOR2X1 U1779 ( .A(n438), .B(n678), .Y(int4_b_gated[195]) );
  CLKINVX1 U1780 ( .A(i_b[195]), .Y(n678) );
  NOR2X1 U1781 ( .A(n438), .B(n679), .Y(int4_b_gated[194]) );
  CLKINVX1 U1782 ( .A(i_b[194]), .Y(n679) );
  NOR2X1 U1783 ( .A(n437), .B(n680), .Y(int4_b_gated[193]) );
  CLKINVX1 U1784 ( .A(i_b[193]), .Y(n680) );
  NOR2X1 U1785 ( .A(n437), .B(n681), .Y(int4_b_gated[192]) );
  CLKINVX1 U1786 ( .A(i_b[192]), .Y(n681) );
  NOR2X1 U1787 ( .A(n437), .B(n682), .Y(int4_b_gated[191]) );
  CLKINVX1 U1788 ( .A(i_b[191]), .Y(n682) );
  NOR2X1 U1789 ( .A(n437), .B(n683), .Y(int4_b_gated[190]) );
  CLKINVX1 U1790 ( .A(i_b[190]), .Y(n683) );
  NOR2X1 U1791 ( .A(n437), .B(n684), .Y(int4_b_gated[18]) );
  CLKINVX1 U1792 ( .A(i_b[18]), .Y(n684) );
  NOR2X1 U1793 ( .A(n437), .B(n685), .Y(int4_b_gated[189]) );
  CLKINVX1 U1794 ( .A(i_b[189]), .Y(n685) );
  NOR2X1 U1795 ( .A(n437), .B(n686), .Y(int4_b_gated[188]) );
  CLKINVX1 U1796 ( .A(i_b[188]), .Y(n686) );
  NOR2X1 U1797 ( .A(n437), .B(n687), .Y(int4_b_gated[187]) );
  CLKINVX1 U1798 ( .A(i_b[187]), .Y(n687) );
  NOR2X1 U1799 ( .A(n436), .B(n688), .Y(int4_b_gated[186]) );
  CLKINVX1 U1800 ( .A(i_b[186]), .Y(n688) );
  NOR2X1 U1801 ( .A(n436), .B(n689), .Y(int4_b_gated[185]) );
  CLKINVX1 U1802 ( .A(i_b[185]), .Y(n689) );
  NOR2X1 U1803 ( .A(n436), .B(n690), .Y(int4_b_gated[184]) );
  CLKINVX1 U1804 ( .A(i_b[184]), .Y(n690) );
  NOR2X1 U1805 ( .A(n436), .B(n691), .Y(int4_b_gated[183]) );
  CLKINVX1 U1806 ( .A(i_b[183]), .Y(n691) );
  NOR2X1 U1807 ( .A(n436), .B(n692), .Y(int4_b_gated[182]) );
  CLKINVX1 U1808 ( .A(i_b[182]), .Y(n692) );
  NOR2X1 U1809 ( .A(n436), .B(n693), .Y(int4_b_gated[181]) );
  CLKINVX1 U1810 ( .A(i_b[181]), .Y(n693) );
  NOR2X1 U1811 ( .A(n436), .B(n694), .Y(int4_b_gated[180]) );
  CLKINVX1 U1812 ( .A(i_b[180]), .Y(n694) );
  NOR2X1 U1813 ( .A(n436), .B(n695), .Y(int4_b_gated[17]) );
  CLKINVX1 U1814 ( .A(i_b[17]), .Y(n695) );
  NOR2X1 U1815 ( .A(n435), .B(n696), .Y(int4_b_gated[179]) );
  CLKINVX1 U1816 ( .A(i_b[179]), .Y(n696) );
  NOR2X1 U1817 ( .A(n435), .B(n697), .Y(int4_b_gated[178]) );
  CLKINVX1 U1818 ( .A(i_b[178]), .Y(n697) );
  NOR2X1 U1819 ( .A(n435), .B(n698), .Y(int4_b_gated[177]) );
  CLKINVX1 U1820 ( .A(i_b[177]), .Y(n698) );
  NOR2X1 U1821 ( .A(n435), .B(n699), .Y(int4_b_gated[176]) );
  CLKINVX1 U1822 ( .A(i_b[176]), .Y(n699) );
  NOR2X1 U1823 ( .A(n435), .B(n700), .Y(int4_b_gated[175]) );
  CLKINVX1 U1824 ( .A(i_b[175]), .Y(n700) );
  NOR2X1 U1825 ( .A(n435), .B(n701), .Y(int4_b_gated[174]) );
  CLKINVX1 U1826 ( .A(i_b[174]), .Y(n701) );
  NOR2X1 U1827 ( .A(n435), .B(n702), .Y(int4_b_gated[173]) );
  CLKINVX1 U1828 ( .A(i_b[173]), .Y(n702) );
  NOR2X1 U1829 ( .A(n435), .B(n703), .Y(int4_b_gated[172]) );
  CLKINVX1 U1830 ( .A(i_b[172]), .Y(n703) );
  NOR2X1 U1831 ( .A(n434), .B(n704), .Y(int4_b_gated[171]) );
  CLKINVX1 U1832 ( .A(i_b[171]), .Y(n704) );
  NOR2X1 U1833 ( .A(n434), .B(n705), .Y(int4_b_gated[170]) );
  CLKINVX1 U1834 ( .A(i_b[170]), .Y(n705) );
  NOR2X1 U1835 ( .A(n434), .B(n706), .Y(int4_b_gated[16]) );
  CLKINVX1 U1836 ( .A(i_b[16]), .Y(n706) );
  NOR2X1 U1837 ( .A(n434), .B(n707), .Y(int4_b_gated[169]) );
  CLKINVX1 U1838 ( .A(i_b[169]), .Y(n707) );
  NOR2X1 U1839 ( .A(n434), .B(n708), .Y(int4_b_gated[168]) );
  CLKINVX1 U1840 ( .A(i_b[168]), .Y(n708) );
  NOR2X1 U1841 ( .A(n434), .B(n709), .Y(int4_b_gated[167]) );
  CLKINVX1 U1842 ( .A(i_b[167]), .Y(n709) );
  NOR2X1 U1843 ( .A(n434), .B(n710), .Y(int4_b_gated[166]) );
  CLKINVX1 U1844 ( .A(i_b[166]), .Y(n710) );
  NOR2X1 U1845 ( .A(n434), .B(n711), .Y(int4_b_gated[165]) );
  CLKINVX1 U1846 ( .A(i_b[165]), .Y(n711) );
  NOR2X1 U1847 ( .A(n433), .B(n712), .Y(int4_b_gated[164]) );
  CLKINVX1 U1848 ( .A(i_b[164]), .Y(n712) );
  NOR2X1 U1849 ( .A(n433), .B(n713), .Y(int4_b_gated[163]) );
  CLKINVX1 U1850 ( .A(i_b[163]), .Y(n713) );
  NOR2X1 U1851 ( .A(n433), .B(n714), .Y(int4_b_gated[162]) );
  CLKINVX1 U1852 ( .A(i_b[162]), .Y(n714) );
  NOR2X1 U1853 ( .A(n433), .B(n715), .Y(int4_b_gated[161]) );
  CLKINVX1 U1854 ( .A(i_b[161]), .Y(n715) );
  NOR2X1 U1855 ( .A(n433), .B(n716), .Y(int4_b_gated[160]) );
  CLKINVX1 U1856 ( .A(i_b[160]), .Y(n716) );
  NOR2X1 U1857 ( .A(n433), .B(n717), .Y(int4_b_gated[15]) );
  CLKINVX1 U1858 ( .A(i_b[15]), .Y(n717) );
  NOR2X1 U1859 ( .A(n433), .B(n718), .Y(int4_b_gated[159]) );
  CLKINVX1 U1860 ( .A(i_b[159]), .Y(n718) );
  NOR2X1 U1861 ( .A(n433), .B(n719), .Y(int4_b_gated[158]) );
  CLKINVX1 U1862 ( .A(i_b[158]), .Y(n719) );
  NOR2X1 U1863 ( .A(n432), .B(n720), .Y(int4_b_gated[157]) );
  CLKINVX1 U1864 ( .A(i_b[157]), .Y(n720) );
  NOR2X1 U1865 ( .A(n432), .B(n721), .Y(int4_b_gated[156]) );
  CLKINVX1 U1866 ( .A(i_b[156]), .Y(n721) );
  NOR2X1 U1867 ( .A(n432), .B(n722), .Y(int4_b_gated[155]) );
  CLKINVX1 U1868 ( .A(i_b[155]), .Y(n722) );
  NOR2X1 U1869 ( .A(n432), .B(n723), .Y(int4_b_gated[154]) );
  CLKINVX1 U1870 ( .A(i_b[154]), .Y(n723) );
  NOR2X1 U1871 ( .A(n432), .B(n724), .Y(int4_b_gated[153]) );
  CLKINVX1 U1872 ( .A(i_b[153]), .Y(n724) );
  NOR2X1 U1873 ( .A(n432), .B(n725), .Y(int4_b_gated[152]) );
  CLKINVX1 U1874 ( .A(i_b[152]), .Y(n725) );
  NOR2X1 U1875 ( .A(n432), .B(n726), .Y(int4_b_gated[151]) );
  CLKINVX1 U1876 ( .A(i_b[151]), .Y(n726) );
  NOR2X1 U1877 ( .A(n432), .B(n727), .Y(int4_b_gated[150]) );
  CLKINVX1 U1878 ( .A(i_b[150]), .Y(n727) );
  NOR2X1 U1879 ( .A(n431), .B(n728), .Y(int4_b_gated[14]) );
  CLKINVX1 U1880 ( .A(i_b[14]), .Y(n728) );
  NOR2X1 U1881 ( .A(n431), .B(n729), .Y(int4_b_gated[149]) );
  CLKINVX1 U1882 ( .A(i_b[149]), .Y(n729) );
  NOR2X1 U1883 ( .A(n431), .B(n730), .Y(int4_b_gated[148]) );
  CLKINVX1 U1884 ( .A(i_b[148]), .Y(n730) );
  NOR2X1 U1885 ( .A(n431), .B(n731), .Y(int4_b_gated[147]) );
  CLKINVX1 U1886 ( .A(i_b[147]), .Y(n731) );
  NOR2X1 U1887 ( .A(n431), .B(n732), .Y(int4_b_gated[146]) );
  CLKINVX1 U1888 ( .A(i_b[146]), .Y(n732) );
  NOR2X1 U1889 ( .A(n431), .B(n733), .Y(int4_b_gated[145]) );
  CLKINVX1 U1890 ( .A(i_b[145]), .Y(n733) );
  NOR2X1 U1891 ( .A(n431), .B(n734), .Y(int4_b_gated[144]) );
  CLKINVX1 U1892 ( .A(i_b[144]), .Y(n734) );
  NOR2X1 U1893 ( .A(n431), .B(n735), .Y(int4_b_gated[143]) );
  CLKINVX1 U1894 ( .A(i_b[143]), .Y(n735) );
  NOR2X1 U1895 ( .A(n430), .B(n736), .Y(int4_b_gated[142]) );
  CLKINVX1 U1896 ( .A(i_b[142]), .Y(n736) );
  NOR2X1 U1897 ( .A(n430), .B(n737), .Y(int4_b_gated[141]) );
  CLKINVX1 U1898 ( .A(i_b[141]), .Y(n737) );
  NOR2X1 U1899 ( .A(n430), .B(n738), .Y(int4_b_gated[140]) );
  CLKINVX1 U1900 ( .A(i_b[140]), .Y(n738) );
  NOR2X1 U1901 ( .A(n430), .B(n739), .Y(int4_b_gated[13]) );
  CLKINVX1 U1902 ( .A(i_b[13]), .Y(n739) );
  NOR2X1 U1903 ( .A(n430), .B(n740), .Y(int4_b_gated[139]) );
  CLKINVX1 U1904 ( .A(i_b[139]), .Y(n740) );
  NOR2X1 U1905 ( .A(n430), .B(n741), .Y(int4_b_gated[138]) );
  CLKINVX1 U1906 ( .A(i_b[138]), .Y(n741) );
  NOR2X1 U1907 ( .A(n430), .B(n742), .Y(int4_b_gated[137]) );
  CLKINVX1 U1908 ( .A(i_b[137]), .Y(n742) );
  NOR2X1 U1909 ( .A(n430), .B(n743), .Y(int4_b_gated[136]) );
  CLKINVX1 U1910 ( .A(i_b[136]), .Y(n743) );
  NOR2X1 U1911 ( .A(n429), .B(n744), .Y(int4_b_gated[135]) );
  CLKINVX1 U1912 ( .A(i_b[135]), .Y(n744) );
  NOR2X1 U1913 ( .A(n429), .B(n745), .Y(int4_b_gated[134]) );
  CLKINVX1 U1914 ( .A(i_b[134]), .Y(n745) );
  NOR2X1 U1915 ( .A(n429), .B(n746), .Y(int4_b_gated[133]) );
  CLKINVX1 U1916 ( .A(i_b[133]), .Y(n746) );
  NOR2X1 U1917 ( .A(n429), .B(n747), .Y(int4_b_gated[132]) );
  CLKINVX1 U1918 ( .A(i_b[132]), .Y(n747) );
  NOR2X1 U1919 ( .A(n429), .B(n748), .Y(int4_b_gated[131]) );
  CLKINVX1 U1920 ( .A(i_b[131]), .Y(n748) );
  NOR2X1 U1921 ( .A(n429), .B(n749), .Y(int4_b_gated[130]) );
  CLKINVX1 U1922 ( .A(i_b[130]), .Y(n749) );
  NOR2X1 U1923 ( .A(n429), .B(n750), .Y(int4_b_gated[12]) );
  CLKINVX1 U1924 ( .A(i_b[12]), .Y(n750) );
  NOR2X1 U1925 ( .A(n429), .B(n751), .Y(int4_b_gated[129]) );
  CLKINVX1 U1926 ( .A(i_b[129]), .Y(n751) );
  NOR2X1 U1927 ( .A(n428), .B(n752), .Y(int4_b_gated[128]) );
  CLKINVX1 U1928 ( .A(i_b[128]), .Y(n752) );
  NOR2X1 U1929 ( .A(n428), .B(n753), .Y(int4_b_gated[127]) );
  CLKINVX1 U1930 ( .A(i_b[127]), .Y(n753) );
  NOR2X1 U1931 ( .A(n428), .B(n754), .Y(int4_b_gated[126]) );
  CLKINVX1 U1932 ( .A(i_b[126]), .Y(n754) );
  NOR2X1 U1933 ( .A(n428), .B(n755), .Y(int4_b_gated[125]) );
  CLKINVX1 U1934 ( .A(i_b[125]), .Y(n755) );
  NOR2X1 U1935 ( .A(n428), .B(n756), .Y(int4_b_gated[124]) );
  CLKINVX1 U1936 ( .A(i_b[124]), .Y(n756) );
  NOR2X1 U1937 ( .A(n428), .B(n757), .Y(int4_b_gated[123]) );
  CLKINVX1 U1938 ( .A(i_b[123]), .Y(n757) );
  NOR2X1 U1939 ( .A(n428), .B(n758), .Y(int4_b_gated[122]) );
  CLKINVX1 U1940 ( .A(i_b[122]), .Y(n758) );
  NOR2X1 U1941 ( .A(n428), .B(n759), .Y(int4_b_gated[121]) );
  CLKINVX1 U1942 ( .A(i_b[121]), .Y(n759) );
  NOR2X1 U1943 ( .A(n427), .B(n760), .Y(int4_b_gated[120]) );
  CLKINVX1 U1944 ( .A(i_b[120]), .Y(n760) );
  NOR2X1 U1945 ( .A(n427), .B(n761), .Y(int4_b_gated[11]) );
  CLKINVX1 U1946 ( .A(i_b[11]), .Y(n761) );
  NOR2X1 U1947 ( .A(n427), .B(n762), .Y(int4_b_gated[119]) );
  CLKINVX1 U1948 ( .A(i_b[119]), .Y(n762) );
  NOR2X1 U1949 ( .A(n427), .B(n763), .Y(int4_b_gated[118]) );
  CLKINVX1 U1950 ( .A(i_b[118]), .Y(n763) );
  NOR2X1 U1951 ( .A(n427), .B(n764), .Y(int4_b_gated[117]) );
  CLKINVX1 U1952 ( .A(i_b[117]), .Y(n764) );
  NOR2X1 U1953 ( .A(n427), .B(n765), .Y(int4_b_gated[116]) );
  CLKINVX1 U1954 ( .A(i_b[116]), .Y(n765) );
  NOR2X1 U1955 ( .A(n427), .B(n766), .Y(int4_b_gated[115]) );
  CLKINVX1 U1956 ( .A(i_b[115]), .Y(n766) );
  NOR2X1 U1957 ( .A(n427), .B(n767), .Y(int4_b_gated[114]) );
  CLKINVX1 U1958 ( .A(i_b[114]), .Y(n767) );
  NOR2X1 U1959 ( .A(n426), .B(n768), .Y(int4_b_gated[113]) );
  CLKINVX1 U1960 ( .A(i_b[113]), .Y(n768) );
  NOR2X1 U1961 ( .A(n426), .B(n769), .Y(int4_b_gated[112]) );
  CLKINVX1 U1962 ( .A(i_b[112]), .Y(n769) );
  NOR2X1 U1963 ( .A(n426), .B(n770), .Y(int4_b_gated[111]) );
  CLKINVX1 U1964 ( .A(i_b[111]), .Y(n770) );
  NOR2X1 U1965 ( .A(n426), .B(n771), .Y(int4_b_gated[110]) );
  CLKINVX1 U1966 ( .A(i_b[110]), .Y(n771) );
  NOR2X1 U1967 ( .A(n426), .B(n772), .Y(int4_b_gated[10]) );
  CLKINVX1 U1968 ( .A(i_b[10]), .Y(n772) );
  NOR2X1 U1969 ( .A(n426), .B(n773), .Y(int4_b_gated[109]) );
  CLKINVX1 U1970 ( .A(i_b[109]), .Y(n773) );
  NOR2X1 U1971 ( .A(n426), .B(n774), .Y(int4_b_gated[108]) );
  CLKINVX1 U1972 ( .A(i_b[108]), .Y(n774) );
  NOR2X1 U1973 ( .A(n426), .B(n775), .Y(int4_b_gated[107]) );
  CLKINVX1 U1974 ( .A(i_b[107]), .Y(n775) );
  NOR2X1 U1975 ( .A(n425), .B(n776), .Y(int4_b_gated[106]) );
  CLKINVX1 U1976 ( .A(i_b[106]), .Y(n776) );
  NOR2X1 U1977 ( .A(n425), .B(n777), .Y(int4_b_gated[105]) );
  CLKINVX1 U1978 ( .A(i_b[105]), .Y(n777) );
  NOR2X1 U1979 ( .A(n425), .B(n778), .Y(int4_b_gated[104]) );
  CLKINVX1 U1980 ( .A(i_b[104]), .Y(n778) );
  NOR2X1 U1981 ( .A(n425), .B(n779), .Y(int4_b_gated[103]) );
  CLKINVX1 U1982 ( .A(i_b[103]), .Y(n779) );
  NOR2X1 U1983 ( .A(n425), .B(n780), .Y(int4_b_gated[102]) );
  CLKINVX1 U1984 ( .A(i_b[102]), .Y(n780) );
  NOR2X1 U1985 ( .A(n425), .B(n781), .Y(int4_b_gated[101]) );
  CLKINVX1 U1986 ( .A(i_b[101]), .Y(n781) );
  NOR2X1 U1987 ( .A(n425), .B(n782), .Y(int4_b_gated[100]) );
  CLKINVX1 U1988 ( .A(i_b[100]), .Y(n782) );
  NOR2X1 U1989 ( .A(n425), .B(n783), .Y(int4_b_gated[0]) );
  CLKINVX1 U1990 ( .A(i_b[0]), .Y(n783) );
  CLKINVX1 U1991 ( .A(i_mode[0]), .Y(n784) );
endmodule

