/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12
// Date      : Sun Oct 12 19:55:18 2025
/////////////////////////////////////////////////////////////


module vec_product_DW01_add_0 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [13:1] carry;

  XOR3X1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .Y(SUM[13]) );
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
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module vec_product_DW01_add_1 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_2 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_3 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_4 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_5 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_6 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_7 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_9 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_10 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_11 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_12 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_13 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_17 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_19 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_20 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_21 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_22 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_23 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_26 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_29 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_30 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_31 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_33 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_34 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_35 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_36 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_38 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_40 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_41 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_42 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_43 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_45 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_46 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_47 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_48 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_49 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_51 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_53 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_56 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_58 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_59 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_60 ( A, B, CI, SUM, CO );
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


module vec_product_DW01_add_62 ( A, B, CI, SUM, CO );
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


module vec_product_DW_mult_tc_64 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_65 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_66 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_67 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_68 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_69 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_70 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_71 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_72 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_73 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_74 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_75 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_76 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_77 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_78 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_79 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_80 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_81 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_82 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_83 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_84 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_85 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_86 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_87 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_88 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_89 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_90 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_91 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_92 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_93 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_94 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_95 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_96 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_97 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_98 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_99 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_100 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_101 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_102 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_103 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_104 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_105 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_106 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_107 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_108 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_109 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_110 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_111 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_112 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_113 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_114 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_115 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_116 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_117 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_118 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_119 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_120 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_121 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_122 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_123 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U45 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_124 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_125 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_126 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product_DW_mult_tc_127 ( a, b, product );
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
  CLKINVX1 U44 ( .A(a[0]), .Y(n41) );
  CLKINVX1 U45 ( .A(a[1]), .Y(n40) );
  CLKINVX1 U46 ( .A(a[2]), .Y(n39) );
  CLKINVX1 U47 ( .A(b[3]), .Y(n34) );
  CLKINVX1 U48 ( .A(a[3]), .Y(n38) );
endmodule


module vec_product ( i_a, i_b, o_product );
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
         \add_23_root_add_61_G6/SUM[12] , n454, n455, n456, n457, n458, n459,
         n460, n461, n462, n463, n464, n465, n466, n467, n468, n469, n470,
         n471, n472, n473, n474, n475, n476, n477, n478, n479, n480, n481,
         n482, n483, n484, n485, n486, n487, n488, n489, n490, n491, n492,
         n493, n494, n495, n496, n497, n498, n499, n500, n501, n502, n503,
         n504, n505, n506, n507, n508, n509, n510, n511, n512, n513, n514,
         n515, n516, n517, n518, n519, n520, n521, n522, n523, n524, n525,
         n526, n527, n528, n529, n530, n531, n532, n533, n534, n535, n536,
         n537, n538, n539, n540, n541, n542, n543, n544, n545, n546, n547,
         n548, n549, n550, n551, n552, n553, n554, n555, n556, n557, n558,
         n559, n560, n561, n562, n563, n564, n565, n566, n567, n568, n569,
         n570, n571, n572, n573, n574, n575, n576, n577, n578, n579, n580,
         n581, n582, n583, n584, n585, n586, n587, n588, n589, n590, n591,
         n592, n593, n594, n595, n596, n597, n598, n599, n600, n601, n602,
         n603, n604, n605, n606, n607, n608, n609, n610, n611, n612, n613,
         n614, n615, n616, n617, n618, n619, n620, n621, n622, n623, n624,
         n625, n626, n627, n628, n629, n630, n631, n632, n633, n634, n635,
         n636, n637, n638, n639, n640, n641, n642, n643, n644, n645, n646,
         n647, n648, n649, n650, n651, n652, n653, n654, n655, n656, n657,
         n658, n659, n660, n661, n662, n663, n664, n665, n666, n667, n668,
         n669, n670, n671, n672, n673, n674, n675, n676, n677, n678, n679,
         n680, n681, n682, n683, n684, n685, n686, n687, n688, n689, n690,
         n691, n692, n693, n694, n695, n696, n697, n698, n699, n700, n701,
         n702, n703, n704, n705, n706, n707, n708, n709, n710, n711, n712,
         n713, n714, n715, n716, n717, n718, n719, n720, n721, n722, n723,
         n724, n725, n726, n727, n728, n729, n730, n731, n732, n733, n734,
         n735, n736, n737, n738, n739, n740, n741, n742, n743, n744, n745,
         n746, n747, n748, n749, n750, n751, n752, n753, n754, n755, n756,
         n757, n758, n759, n760, n761, n762, n763, n764, n765, n766, n767,
         n768, n769, n770, n771, n772, n773, n774, n775, n776, n777, n778,
         n779, n780, n781, n782, n783, n784, n785, n786, n787, n788, n789,
         n790, n791, n792, n793, n794, n795, n796, n797, n798, n799, n800,
         n801, n802, n803, n804, n805, n806, n807, n808, n809, n810, n811,
         n812, n813, n814, n815, n816, n817, n818, n819, n820, n821, n822,
         n823, n824, n825, n826, n827, n828, n829, n830, n831, n832, n833,
         n834, n835, n836, n837, n838, n839, n840, n841, n842, n843, n844,
         n845, n846, n847, n848, n849, n850, n851, n852, n853, n854, n855,
         n856, n857, n858, n859, n860, n861, n862, n863, n864, n865, n866,
         n867, n868, n869, n870, n871, n872, n873, n874, n875, n876, n877,
         n878, n879, n880, n881, n882, n883, n884, n885, n886, n887, n888,
         n889, n890, n891, n892, n893, n894, n895, n896, n897, n898, n899,
         n900, n901, n902, n903, n904, n905, n906, n907, n908, n909, n910,
         n911, n912, n913, n914, n915, n916, n917, n918, n919, n920, n921,
         n922, n923, n924, n925, n926, n927, n928, n929, n930, n931, n932,
         n933, n934, n935, n936, n937, n938, n939, n940, n941, n942, n943,
         n944, n945, n946, n947, n948, n949, n950, n951, n952, n953, n954,
         n955, n956, n957, n958, n959, n960, n961, n962, n963, n964, n965,
         n966, n967, n968, n969, n970, n971, n972, n973, n974, n975, n976,
         n977, n978, n979, n980, n981, n982, n983, n984, n985, n986, n987,
         n988, n989, n990;

  vec_product_DW01_add_0 add_0_root_add_61_G6 ( .A({n288, n289, n290, n291, 
        n292, n293, n294, n295, n296, n297, n299, n300, n301, n302}), .B({n303, 
        n304, n305, n306, n307, n308, n310, n311, n312, n313, n314, n315, n316, 
        n317}), .CI(1'b0), .SUM(o_product) );
  vec_product_DW01_add_1 add_1_root_add_61_G6 ( .A({n256, n257, n258, n259, 
        n260, n261, n262, n263, n265, n266, n267, n268, n269, n270}), .B({n271, 
        n272, n273, n274, n276, n277, n278, n279, n280, n281, n282, n283, n284, 
        n285}), .CI(1'b0), .SUM({n303, n304, n305, n306, n307, n308, n310, 
        n311, n312, n313, n314, n315, n316, n317}) );
  vec_product_DW01_add_2 add_2_root_add_61_G6 ( .A({n225, n226, n227, n228, 
        n229, n230, n232, n233, n234, n235, n236, n237, n238, n239}), .B({n240, 
        n241, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n254, 
        n255}), .CI(1'b0), .SUM({n288, n289, n290, n291, n292, n293, n294, 
        n295, n296, n297, n299, n300, n301, n302}) );
  vec_product_DW01_add_3 add_3_root_add_61_G6 ( .A({n195, n195, n196, n197, 
        n199, n200, n201, n202, n203, n204, n205, n206, n207, n208}), .B({n210, 
        n211, n212, n213, n214, n215, n216, n217, n218, n219, n221, n222, n223, 
        n224}), .CI(1'b0), .SUM({n271, n272, n273, n274, n276, n277, n278, 
        n279, n280, n281, n282, n283, n284, n285}) );
  vec_product_DW01_add_4 add_7_root_add_61_G6 ( .A({n81, n81, n82, n83, n84, 
        n85, n86, n88, n89, n90, n91, n92, n93, n94}), .B({
        \add_15_root_add_61_G6/SUM[9] , \add_15_root_add_61_G6/SUM[9] , 
        \add_15_root_add_61_G6/SUM[9] , \add_15_root_add_61_G6/SUM[9] , 
        \add_15_root_add_61_G6/SUM[9] , \add_15_root_add_61_G6/SUM[8] , 
        \add_15_root_add_61_G6/SUM[7] , \add_15_root_add_61_G6/SUM[6] , 
        \add_15_root_add_61_G6/SUM[5] , \add_15_root_add_61_G6/SUM[4] , 
        \add_15_root_add_61_G6/SUM[3] , \add_15_root_add_61_G6/SUM[2] , 
        \add_15_root_add_61_G6/SUM[1] , \add_15_root_add_61_G6/SUM[0] }), .CI(
        1'b0), .SUM({n210, n211, n212, n213, n214, n215, n216, n217, n218, 
        n219, n221, n222, n223, n224}) );
  vec_product_DW01_add_5 add_4_root_add_61_G6 ( .A({n167, n167, n167, n168, 
        n169, n170, n171, n172, n173, n174, n177, n178, n179, n180}), .B({n181, 
        n181, n182, n183, n184, n185, n186, n188, n189, n190, n191, n192, n193, 
        n194}), .CI(1'b0), .SUM({n256, n257, n258, n259, n260, n261, n262, 
        n263, n265, n266, n267, n268, n269, n270}) );
  vec_product_DW01_add_6 add_10_root_add_61_G6 ( .A({n371, n371, n372, n373, 
        n374, n375, n376, n377, n378, n379, n381, n382}), .B({n383, n383, n383, 
        n384, n385, n386, n387, n388, n389, n390, n66, n67}), .CI(1'b0), .SUM(
        {n167, n168, n169, n170, n171, n172, n173, n174, n177, n178, n179, 
        n180}) );
  vec_product_DW01_add_7 add_22_root_add_61_G6 ( .A({\tree_sums[1][22][13] , 
        \tree_sums[1][22][13] , \tree_sums[1][22][13] , \tree_sums[1][22][7] , 
        \tree_sums[1][22][6] , \tree_sums[1][22][5] , \tree_sums[1][22][4] , 
        \tree_sums[1][22][3] , \tree_sums[1][22][2] , \tree_sums[1][22][1] , 
        \tree_sums[1][22][0] }), .B({\tree_sums[2][11][8] , 
        \tree_sums[2][11][8] , \tree_sums[2][11][8] , \tree_sums[2][11][7] , 
        \tree_sums[2][11][6] , \tree_sums[2][11][5] , \tree_sums[2][11][4] , 
        \tree_sums[2][11][3] , \tree_sums[2][11][2] , \tree_sums[2][11][1] , 
        \tree_sums[2][11][0] }), .CI(1'b0), .SUM({n371, n372, n373, n374, n375, 
        n376, n377, n378, n379, n381, n382}) );
  vec_product_DW01_add_9 add_46_root_add_61_G6 ( .A({\mult[32][7] , 
        \mult[32][7] , \mult[32][6] , \mult[32][5] , \mult[32][4] , 
        \mult[32][3] , \mult[32][2] , \mult[32][1] , \mult[32][0] }), .B({
        \mult[33][7] , \mult[33][7] , \mult[33][6] , \mult[33][5] , 
        \mult[33][4] , \mult[33][3] , \mult[33][2] , \mult[33][1] , 
        \mult[33][0] }), .CI(1'b0), .SUM({\tree_sums[1][22][13] , 
        \tree_sums[1][22][7] , \tree_sums[1][22][6] , \tree_sums[1][22][5] , 
        \tree_sums[1][22][4] , \tree_sums[1][22][3] , \tree_sums[1][22][2] , 
        \tree_sums[1][22][1] , \tree_sums[1][22][0] }) );
  vec_product_DW01_add_10 add_21_root_add_61_G6 ( .A({\tree_sums[1][21][13] , 
        \tree_sums[1][21][13] , \tree_sums[1][21][7] , \tree_sums[1][21][6] , 
        \tree_sums[1][21][5] , \tree_sums[1][21][4] , \tree_sums[1][21][3] , 
        \tree_sums[1][21][2] , \tree_sums[1][21][1] , \tree_sums[1][21][0] }), 
        .B({\tree_sums[1][20][13] , \tree_sums[1][20][13] , 
        \tree_sums[1][20][7] , \tree_sums[1][20][6] , \tree_sums[1][20][5] , 
        \tree_sums[1][20][4] , \tree_sums[1][20][3] , \tree_sums[1][20][2] , 
        \tree_sums[1][20][1] , \tree_sums[1][20][0] }), .CI(1'b0), .SUM({n383, 
        n384, n385, n386, n387, n388, n389, n390, n66, n67}) );
  vec_product_DW01_add_11 add_43_root_add_61_G6 ( .A({\mult[38][7] , 
        \mult[38][7] , \mult[38][6] , \mult[38][5] , \mult[38][4] , 
        \mult[38][3] , \mult[38][2] , \mult[38][1] , \mult[38][0] }), .B({
        \mult[39][7] , \mult[39][7] , \mult[39][6] , \mult[39][5] , 
        \mult[39][4] , \mult[39][3] , \mult[39][2] , \mult[39][1] , 
        \mult[39][0] }), .CI(1'b0), .SUM({\tree_sums[1][20][13] , 
        \tree_sums[1][20][7] , \tree_sums[1][20][6] , \tree_sums[1][20][5] , 
        \tree_sums[1][20][4] , \tree_sums[1][20][3] , \tree_sums[1][20][2] , 
        \tree_sums[1][20][1] , \tree_sums[1][20][0] }) );
  vec_product_DW01_add_12 add_44_root_add_61_G6 ( .A({\mult[36][7] , 
        \mult[36][7] , \mult[36][6] , \mult[36][5] , \mult[36][4] , 
        \mult[36][3] , \mult[36][2] , \mult[36][1] , \mult[36][0] }), .B({
        \mult[37][7] , \mult[37][7] , \mult[37][6] , \mult[37][5] , 
        \mult[37][4] , \mult[37][3] , \mult[37][2] , \mult[37][1] , 
        \mult[37][0] }), .CI(1'b0), .SUM({\tree_sums[1][21][13] , 
        \tree_sums[1][21][7] , \tree_sums[1][21][6] , \tree_sums[1][21][5] , 
        \tree_sums[1][21][4] , \tree_sums[1][21][3] , \tree_sums[1][21][2] , 
        \tree_sums[1][21][1] , \tree_sums[1][21][0] }) );
  vec_product_DW01_add_13 add_16_root_add_61_G6 ( .A({\tree_sums[3][4][9] , 
        \tree_sums[3][4][9] , \tree_sums[3][4][9] , \tree_sums[3][4][9] , 
        \tree_sums[3][4][9] , \tree_sums[3][4][7] , \tree_sums[3][4][6] , 
        \tree_sums[3][4][5] , \tree_sums[3][4][4] , \tree_sums[3][4][3] , 
        \tree_sums[3][4][2] , \tree_sums[3][4][1] , \tree_sums[3][4][0] }), 
        .B({\tree_sums[4][2][9] , \tree_sums[4][2][9] , \tree_sums[4][2][9] , 
        \tree_sums[4][2][9] , \tree_sums[4][2][9] , \tree_sums[4][2][7] , 
        \tree_sums[4][2][6] , \tree_sums[4][2][5] , \tree_sums[4][2][4] , 
        \tree_sums[4][2][3] , \tree_sums[4][2][2] , \tree_sums[4][2][1] , 
        \tree_sums[4][2][0] }), .CI(1'b0), .SUM({n81, n82, n83, n84, n85, n86, 
        n88, n89, n90, n91, n92, n93, n94}) );
  vec_product_DW01_add_17 add_31_root_add_61_G6 ( .A({\mult[62][7] , 
        \mult[62][7] , \mult[62][6] , \mult[62][5] , \mult[62][4] , 
        \mult[62][3] , \mult[62][2] , \mult[62][1] , \mult[62][0] }), .B({
        \mult[63][7] , \mult[63][7] , \mult[63][6] , \mult[63][5] , 
        \mult[63][4] , \mult[63][3] , \mult[63][2] , \mult[63][1] , 
        \mult[63][0] }), .CI(1'b0), .SUM({\tree_sums[1][15][13] , 
        \tree_sums[1][15][7] , \tree_sums[1][15][6] , \tree_sums[1][15][5] , 
        \tree_sums[1][15][4] , \tree_sums[1][15][3] , \tree_sums[1][15][2] , 
        \tree_sums[1][15][1] , \tree_sums[1][15][0] }) );
  vec_product_DW01_add_19 add_9_root_add_61_G6 ( .A({n68, n68, n69, n70, n71, 
        n72, n73, n74, n75, n77, n78, n79, n80}), .B({\tree_sums[2][4][13] , 
        \tree_sums[2][4][13] , \tree_sums[2][4][13] , \tree_sums[2][4][13] , 
        \tree_sums[2][4][8] , \tree_sums[2][4][7] , \tree_sums[2][4][6] , 
        \tree_sums[2][4][5] , \tree_sums[2][4][4] , \tree_sums[2][4][3] , 
        \tree_sums[2][4][2] , \tree_sums[2][4][1] , \tree_sums[2][4][0] }), 
        .CI(1'b0), .SUM({n181, n182, n183, n184, n185, n186, n188, n189, n190, 
        n191, n192, n193, n194}) );
  vec_product_DW01_add_20 add_19_root_add_61_G6 ( .A({\tree_sums[1][19][13] , 
        \tree_sums[1][19][13] , \tree_sums[1][19][7] , \tree_sums[1][19][6] , 
        \tree_sums[1][19][5] , \tree_sums[1][19][4] , \tree_sums[1][19][3] , 
        \tree_sums[1][19][2] , \tree_sums[1][19][1] , \tree_sums[1][19][0] }), 
        .B({\tree_sums[1][18][13] , \tree_sums[1][18][13] , 
        \tree_sums[1][18][7] , \tree_sums[1][18][6] , \tree_sums[1][18][5] , 
        \tree_sums[1][18][4] , \tree_sums[1][18][3] , \tree_sums[1][18][2] , 
        \tree_sums[1][18][1] , \tree_sums[1][18][0] }), .CI(1'b0), .SUM({
        \tree_sums[2][4][13] , \tree_sums[2][4][8] , \tree_sums[2][4][7] , 
        \tree_sums[2][4][6] , \tree_sums[2][4][5] , \tree_sums[2][4][4] , 
        \tree_sums[2][4][3] , \tree_sums[2][4][2] , \tree_sums[2][4][1] , 
        \tree_sums[2][4][0] }) );
  vec_product_DW01_add_21 add_39_root_add_61_G6 ( .A({\mult[46][7] , 
        \mult[46][7] , \mult[46][6] , \mult[46][5] , \mult[46][4] , 
        \mult[46][3] , \mult[46][2] , \mult[46][1] , \mult[46][0] }), .B({
        \mult[47][7] , \mult[47][7] , \mult[47][6] , \mult[47][5] , 
        \mult[47][4] , \mult[47][3] , \mult[47][2] , \mult[47][1] , 
        \mult[47][0] }), .CI(1'b0), .SUM({\tree_sums[1][18][13] , 
        \tree_sums[1][18][7] , \tree_sums[1][18][6] , \tree_sums[1][18][5] , 
        \tree_sums[1][18][4] , \tree_sums[1][18][3] , \tree_sums[1][18][2] , 
        \tree_sums[1][18][1] , \tree_sums[1][18][0] }) );
  vec_product_DW01_add_22 add_40_root_add_61_G6 ( .A({\mult[44][7] , 
        \mult[44][7] , \mult[44][6] , \mult[44][5] , \mult[44][4] , 
        \mult[44][3] , \mult[44][2] , \mult[44][1] , \mult[44][0] }), .B({
        \mult[45][7] , \mult[45][7] , \mult[45][6] , \mult[45][5] , 
        \mult[45][4] , \mult[45][3] , \mult[45][2] , \mult[45][1] , 
        \mult[45][0] }), .CI(1'b0), .SUM({\tree_sums[1][19][13] , 
        \tree_sums[1][19][7] , \tree_sums[1][19][6] , \tree_sums[1][19][5] , 
        \tree_sums[1][19][4] , \tree_sums[1][19][3] , \tree_sums[1][19][2] , 
        \tree_sums[1][19][1] , \tree_sums[1][19][0] }) );
  vec_product_DW01_add_23 add_20_root_add_61_G6 ( .A({\tree_sums[2][10][8] , 
        \tree_sums[2][10][8] , \tree_sums[2][10][8] , \tree_sums[2][10][8] , 
        \tree_sums[2][10][7] , \tree_sums[2][10][6] , \tree_sums[2][10][5] , 
        \tree_sums[2][10][4] , \tree_sums[2][10][3] , \tree_sums[2][10][2] , 
        \tree_sums[2][10][1] , \tree_sums[2][10][0] }), .B({
        \tree_sums[3][5][9] , \tree_sums[3][5][9] , \tree_sums[3][5][9] , 
        \tree_sums[3][5][9] , \tree_sums[3][5][7] , \tree_sums[3][5][6] , 
        \tree_sums[3][5][5] , \tree_sums[3][5][4] , \tree_sums[3][5][3] , 
        \tree_sums[3][5][2] , \tree_sums[3][5][1] , \tree_sums[3][5][0] }), 
        .CI(1'b0), .SUM({n68, n69, n70, n71, n72, n73, n74, n75, n77, n78, n79, 
        n80}) );
  vec_product_DW01_add_26 add_8_root_add_61_G6 ( .A({\tree_sums[3][2][13] , 
        \tree_sums[3][2][13] , \tree_sums[3][2][13] , \tree_sums[3][2][9] , 
        \tree_sums[3][2][8] , \tree_sums[3][2][7] , \tree_sums[3][2][6] , 
        \tree_sums[3][2][5] , \tree_sums[3][2][4] , \tree_sums[3][2][3] , 
        \tree_sums[3][2][2] , \tree_sums[3][2][1] , \tree_sums[3][2][0] }), 
        .B({\tree_sums[4][1][9] , \tree_sums[4][1][9] , \tree_sums[4][1][9] , 
        \tree_sums[4][1][9] , \tree_sums[4][1][8] , \tree_sums[4][1][7] , 
        \tree_sums[4][1][6] , \tree_sums[4][1][5] , \tree_sums[4][1][4] , 
        \tree_sums[4][1][3] , \tree_sums[4][1][2] , \tree_sums[4][1][1] , 
        \tree_sums[4][1][0] }), .CI(1'b0), .SUM({n195, n196, n197, n199, n200, 
        n201, n202, n203, n204, n205, n206, n207, n208}) );
  vec_product_DW01_add_29 add_36_root_add_61_G6 ( .A({\mult[52][7] , 
        \mult[52][7] , \mult[52][6] , \mult[52][5] , \mult[52][4] , 
        \mult[52][3] , \mult[52][2] , \mult[52][1] , \mult[52][0] }), .B({
        \mult[53][7] , \mult[53][7] , \mult[53][6] , \mult[53][5] , 
        \mult[53][4] , \mult[53][3] , \mult[53][2] , \mult[53][1] , 
        \mult[53][0] }), .CI(1'b0), .SUM({\tree_sums[1][16][13] , 
        \tree_sums[1][16][7] , \tree_sums[1][16][6] , \tree_sums[1][16][5] , 
        \tree_sums[1][16][4] , \tree_sums[1][16][3] , \tree_sums[1][16][2] , 
        \tree_sums[1][16][1] , \tree_sums[1][16][0] }) );
  vec_product_DW01_add_30 add_18_root_add_61_G6 ( .A({\tree_sums[2][9][8] , 
        \tree_sums[2][9][8] , \tree_sums[2][9][8] , \tree_sums[2][9][7] , 
        \tree_sums[2][9][6] , \tree_sums[2][9][5] , \tree_sums[2][9][4] , 
        \tree_sums[2][9][3] , \tree_sums[2][9][2] , \tree_sums[2][9][1] , 
        \tree_sums[2][9][0] }), .B({\tree_sums[1][17][13] , 
        \tree_sums[1][17][13] , \tree_sums[1][17][13] , \tree_sums[1][17][7] , 
        \tree_sums[1][17][6] , \tree_sums[1][17][5] , \tree_sums[1][17][4] , 
        \tree_sums[1][17][3] , \tree_sums[1][17][2] , \tree_sums[1][17][1] , 
        \tree_sums[1][17][0] }), .CI(1'b0), .SUM({\tree_sums[3][2][13] , 
        \tree_sums[3][2][9] , \tree_sums[3][2][8] , \tree_sums[3][2][7] , 
        \tree_sums[3][2][6] , \tree_sums[3][2][5] , \tree_sums[3][2][4] , 
        \tree_sums[3][2][3] , \tree_sums[3][2][2] , \tree_sums[3][2][1] , 
        \tree_sums[3][2][0] }) );
  vec_product_DW01_add_31 add_37_root_add_61_G6 ( .A({\mult[50][7] , 
        \mult[50][7] , \mult[50][6] , \mult[50][5] , \mult[50][4] , 
        \mult[50][3] , \mult[50][2] , \mult[50][1] , \mult[50][0] }), .B({
        \mult[51][7] , \mult[51][7] , \mult[51][6] , \mult[51][5] , 
        \mult[51][4] , \mult[51][3] , \mult[51][2] , \mult[51][1] , 
        \mult[51][0] }), .CI(1'b0), .SUM({\tree_sums[1][17][13] , 
        \tree_sums[1][17][7] , \tree_sums[1][17][6] , \tree_sums[1][17][5] , 
        \tree_sums[1][17][4] , \tree_sums[1][17][3] , \tree_sums[1][17][2] , 
        \tree_sums[1][17][1] , \tree_sums[1][17][0] }) );
  vec_product_DW01_add_33 add_6_root_add_61_G6 ( .A({n111, n111, n111, n112, 
        n113, n114, n115, n116, n117, n118, n119, n121, n122, n123}), .B({n124, 
        n124, n125, n126, n127, n128, n129, n130, n132, n133, n134, n135, n136, 
        n137}), .CI(1'b0), .SUM({n225, n226, n227, n228, n229, n230, n232, 
        n233, n234, n235, n236, n237, n238, n239}) );
  vec_product_DW01_add_34 add_13_root_add_61_G6 ( .A({n198, n198, n198, n209, 
        n220, n231, n242, n253, n264, n275, n287, n298, n309}), .B({n318, n318, 
        n319, n320, n321, n322, n323, n324, n326, n327, n328, n329, n330}), 
        .CI(1'b0), .SUM({n124, n125, n126, n127, n128, n129, n130, n132, n133, 
        n134, n135, n136, n137}) );
  vec_product_DW01_add_35 add_27_root_add_61_G6 ( .A({\tree_sums[3][7][9] , 
        \tree_sums[3][7][9] , \tree_sums[3][7][9] , \tree_sums[3][7][9] , 
        \tree_sums[3][7][7] , \tree_sums[3][7][6] , \tree_sums[3][7][5] , 
        \tree_sums[3][7][4] , \tree_sums[3][7][3] , \tree_sums[3][7][2] , 
        \tree_sums[3][7][1] , \tree_sums[3][7][0] }), .B({
        \tree_sums[1][27][13] , \tree_sums[1][27][13] , \tree_sums[1][27][13] , 
        \tree_sums[1][27][13] , \tree_sums[1][27][7] , \tree_sums[1][27][6] , 
        \tree_sums[1][27][5] , \tree_sums[1][27][4] , \tree_sums[1][27][3] , 
        \tree_sums[1][27][2] , \tree_sums[1][27][1] , \tree_sums[1][27][0] }), 
        .CI(1'b0), .SUM({n318, n319, n320, n321, n322, n323, n324, n326, n327, 
        n328, n329, n330}) );
  vec_product_DW01_add_36 add_55_root_add_61_G6 ( .A({\mult[14][7] , 
        \mult[14][7] , \mult[14][6] , \mult[14][5] , \mult[14][4] , 
        \mult[14][3] , \mult[14][2] , \mult[14][1] , \mult[14][0] }), .B({
        \mult[15][7] , \mult[15][7] , \mult[15][6] , \mult[15][5] , 
        \mult[15][4] , \mult[15][3] , \mult[15][2] , \mult[15][1] , 
        \mult[15][0] }), .CI(1'b0), .SUM({\tree_sums[1][27][13] , 
        \tree_sums[1][27][7] , \tree_sums[1][27][6] , \tree_sums[1][27][5] , 
        \tree_sums[1][27][4] , \tree_sums[1][27][3] , \tree_sums[1][27][2] , 
        \tree_sums[1][27][1] , \tree_sums[1][27][0] }) );
  vec_product_DW01_add_38 add_28_root_add_61_G6 ( .A({\tree_sums[1][28][13] , 
        \tree_sums[1][28][13] , \tree_sums[1][28][13] , \tree_sums[1][28][7] , 
        \tree_sums[1][28][6] , \tree_sums[1][28][5] , \tree_sums[1][28][4] , 
        \tree_sums[1][28][3] , \tree_sums[1][28][2] , \tree_sums[1][28][1] , 
        \tree_sums[1][28][0] }), .B({\tree_sums[2][14][8] , 
        \tree_sums[2][14][8] , \tree_sums[2][14][8] , \tree_sums[2][14][7] , 
        \tree_sums[2][14][6] , \tree_sums[2][14][5] , \tree_sums[2][14][4] , 
        \tree_sums[2][14][3] , \tree_sums[2][14][2] , \tree_sums[2][14][1] , 
        \tree_sums[2][14][0] }), .CI(1'b0), .SUM({n198, n209, n220, n231, n242, 
        n253, n264, n275, n287, n298, n309}) );
  vec_product_DW01_add_40 add_58_root_add_61_G6 ( .A({\mult[8][7] , 
        \mult[8][7] , \mult[8][6] , \mult[8][5] , \mult[8][4] , \mult[8][3] , 
        \mult[8][2] , \mult[8][1] , \mult[8][0] }), .B({\mult[9][7] , 
        \mult[9][7] , \mult[9][6] , \mult[9][5] , \mult[9][4] , \mult[9][3] , 
        \mult[9][2] , \mult[9][1] , \mult[9][0] }), .CI(1'b0), .SUM({
        \tree_sums[1][28][13] , \tree_sums[1][28][7] , \tree_sums[1][28][6] , 
        \tree_sums[1][28][5] , \tree_sums[1][28][4] , \tree_sums[1][28][3] , 
        \tree_sums[1][28][2] , \tree_sums[1][28][1] , \tree_sums[1][28][0] })
         );
  vec_product_DW01_add_41 add_14_root_add_61_G6 ( .A({n64, n64, n64, n175, 
        n286, n325, n336, n347, n358, n369, n380, n65}), .B({n76, n76, n87, 
        n98, n109, n120, n131, n142, n153, n164, n176, n187}), .CI(1'b0), 
        .SUM({n111, n112, n113, n114, n115, n116, n117, n118, n119, n121, n122, 
        n123}) );
  vec_product_DW01_add_42 add_29_root_add_61_G6 ( .A({\tree_sums[2][15][8] , 
        \tree_sums[2][15][8] , \tree_sums[2][15][8] , \tree_sums[2][15][7] , 
        \tree_sums[2][15][6] , \tree_sums[2][15][5] , \tree_sums[2][15][4] , 
        \tree_sums[2][15][3] , \tree_sums[2][15][2] , \tree_sums[2][15][1] , 
        \tree_sums[2][15][0] }), .B({\tree_sums[1][29][13] , 
        \tree_sums[1][29][13] , \tree_sums[1][29][13] , \tree_sums[1][29][7] , 
        \tree_sums[1][29][6] , \tree_sums[1][29][5] , \tree_sums[1][29][4] , 
        \tree_sums[1][29][3] , \tree_sums[1][29][2] , \tree_sums[1][29][1] , 
        \tree_sums[1][29][0] }), .CI(1'b0), .SUM({n76, n87, n98, n109, n120, 
        n131, n142, n153, n164, n176, n187}) );
  vec_product_DW01_add_43 add_59_root_add_61_G6 ( .A({\mult[6][7] , 
        \mult[6][7] , \mult[6][6] , \mult[6][5] , \mult[6][4] , \mult[6][3] , 
        \mult[6][2] , \mult[6][1] , \mult[6][0] }), .B({\mult[7][7] , 
        \mult[7][7] , \mult[7][6] , \mult[7][5] , \mult[7][4] , \mult[7][3] , 
        \mult[7][2] , \mult[7][1] , \mult[7][0] }), .CI(1'b0), .SUM({
        \tree_sums[1][29][13] , \tree_sums[1][29][7] , \tree_sums[1][29][6] , 
        \tree_sums[1][29][5] , \tree_sums[1][29][4] , \tree_sums[1][29][3] , 
        \tree_sums[1][29][2] , \tree_sums[1][29][1] , \tree_sums[1][29][0] })
         );
  vec_product_DW01_add_45 add_30_root_add_61_G6 ( .A({\tree_sums[1][31][13] , 
        \tree_sums[1][31][13] , \tree_sums[1][31][7] , \tree_sums[1][31][6] , 
        \tree_sums[1][31][5] , \tree_sums[1][31][4] , \tree_sums[1][31][3] , 
        \tree_sums[1][31][2] , \tree_sums[1][31][1] , \tree_sums[1][31][0] }), 
        .B({\tree_sums[1][30][13] , \tree_sums[1][30][13] , 
        \tree_sums[1][30][7] , \tree_sums[1][30][6] , \tree_sums[1][30][5] , 
        \tree_sums[1][30][4] , \tree_sums[1][30][3] , \tree_sums[1][30][2] , 
        \tree_sums[1][30][1] , \tree_sums[1][30][0] }), .CI(1'b0), .SUM({n64, 
        n175, n286, n325, n336, n347, n358, n369, n380, n65}) );
  vec_product_DW01_add_46 add_61_root_add_61_G6 ( .A({\mult[2][7] , 
        \mult[2][7] , \mult[2][6] , \mult[2][5] , \mult[2][4] , \mult[2][3] , 
        \mult[2][2] , \mult[2][1] , \mult[2][0] }), .B({\mult[3][7] , 
        \mult[3][7] , \mult[3][6] , \mult[3][5] , \mult[3][4] , \mult[3][3] , 
        \mult[3][2] , \mult[3][1] , \mult[3][0] }), .CI(1'b0), .SUM({
        \tree_sums[1][30][13] , \tree_sums[1][30][7] , \tree_sums[1][30][6] , 
        \tree_sums[1][30][5] , \tree_sums[1][30][4] , \tree_sums[1][30][3] , 
        \tree_sums[1][30][2] , \tree_sums[1][30][1] , \tree_sums[1][30][0] })
         );
  vec_product_DW01_add_47 add_62_root_add_61_G6 ( .A({\mult[0][7] , 
        \mult[0][7] , \mult[0][6] , \mult[0][5] , \mult[0][4] , \mult[0][3] , 
        \mult[0][2] , \mult[0][1] , \mult[0][0] }), .B({\mult[1][7] , 
        \mult[1][7] , \mult[1][6] , \mult[1][5] , \mult[1][4] , \mult[1][3] , 
        \mult[1][2] , \mult[1][1] , \mult[1][0] }), .CI(1'b0), .SUM({
        \tree_sums[1][31][13] , \tree_sums[1][31][7] , \tree_sums[1][31][6] , 
        \tree_sums[1][31][5] , \tree_sums[1][31][4] , \tree_sums[1][31][3] , 
        \tree_sums[1][31][2] , \tree_sums[1][31][1] , \tree_sums[1][31][0] })
         );
  vec_product_DW01_add_48 add_5_root_add_61_G6 ( .A({n138, n138, n138, n139, 
        n140, n141, n143, n144, n145, n146, n147, n148, n149, n150}), .B({n151, 
        n152, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n165, 
        n166}), .CI(1'b0), .SUM({n240, n241, n243, n244, n245, n246, n247, 
        n248, n249, n250, n251, n252, n254, n255}) );
  vec_product_DW01_add_49 add_11_root_add_61_G6 ( .A({n343, n343, n343, n344, 
        n345, n346, n348, n349, n350, n351, n352, n353, n354, n355}), .B({
        \add_23_root_add_61_G6/SUM[12] , \add_23_root_add_61_G6/SUM[12] , 
        \add_23_root_add_61_G6/SUM[12] , \add_23_root_add_61_G6/SUM[9] , 
        \add_23_root_add_61_G6/SUM[9] , \add_23_root_add_61_G6/SUM[8] , 
        \add_23_root_add_61_G6/SUM[7] , \add_23_root_add_61_G6/SUM[6] , 
        \add_23_root_add_61_G6/SUM[5] , \add_23_root_add_61_G6/SUM[4] , 
        \add_23_root_add_61_G6/SUM[3] , \add_23_root_add_61_G6/SUM[2] , 
        \add_23_root_add_61_G6/SUM[1] , \add_23_root_add_61_G6/SUM[0] }), .CI(
        1'b0), .SUM({n151, n152, n154, n155, n156, n157, n158, n159, n160, 
        n161, n162, n163, n165, n166}) );
  vec_product_DW01_add_51 add_47_root_add_61_G6 ( .A({\mult[30][7] , 
        \mult[30][7] , \mult[30][6] , \mult[30][5] , \mult[30][4] , 
        \mult[30][3] , \mult[30][2] , \mult[30][1] , \mult[30][0] }), .B({
        \mult[31][7] , \mult[31][7] , \mult[31][6] , \mult[31][5] , 
        \mult[31][4] , \mult[31][3] , \mult[31][2] , \mult[31][1] , 
        \mult[31][0] }), .CI(1'b0), .SUM({\tree_sums[1][23][13] , 
        \tree_sums[1][23][7] , \tree_sums[1][23][6] , \tree_sums[1][23][5] , 
        \tree_sums[1][23][4] , \tree_sums[1][23][3] , \tree_sums[1][23][2] , 
        \tree_sums[1][23][1] , \tree_sums[1][23][0] }) );
  vec_product_DW01_add_53 add_24_root_add_61_G6 ( .A({\tree_sums[2][12][8] , 
        \tree_sums[2][12][8] , \tree_sums[2][12][8] , \tree_sums[2][12][8] , 
        \tree_sums[2][12][7] , \tree_sums[2][12][6] , \tree_sums[2][12][5] , 
        \tree_sums[2][12][4] , \tree_sums[2][12][3] , \tree_sums[2][12][2] , 
        \tree_sums[2][12][1] , \tree_sums[2][12][0] }), .B({
        \tree_sums[3][6][9] , \tree_sums[3][6][9] , \tree_sums[3][6][9] , 
        \tree_sums[3][6][9] , \tree_sums[3][6][7] , \tree_sums[3][6][6] , 
        \tree_sums[3][6][5] , \tree_sums[3][6][4] , \tree_sums[3][6][3] , 
        \tree_sums[3][6][2] , \tree_sums[3][6][1] , \tree_sums[3][6][0] }), 
        .CI(1'b0), .SUM({n343, n344, n345, n346, n348, n349, n350, n351, n352, 
        n353, n354, n355}) );
  vec_product_DW01_add_56 add_12_root_add_61_G6 ( .A({n331, n331, n332, n333, 
        n334, n335, n337, n338, n339, n340, n341, n342}), .B({
        \tree_sums[3][3][9] , \tree_sums[3][3][9] , \tree_sums[3][3][9] , 
        \tree_sums[3][3][8] , \tree_sums[3][3][7] , \tree_sums[3][3][6] , 
        \tree_sums[3][3][5] , \tree_sums[3][3][4] , \tree_sums[3][3][3] , 
        \tree_sums[3][3][2] , \tree_sums[3][3][1] , \tree_sums[3][3][0] }), 
        .CI(1'b0), .SUM({n138, n139, n140, n141, n143, n144, n145, n146, n147, 
        n148, n149, n150}) );
  vec_product_DW01_add_58 add_51_root_add_61_G6 ( .A({\mult[22][7] , 
        \mult[22][7] , \mult[22][6] , \mult[22][5] , \mult[22][4] , 
        \mult[22][3] , \mult[22][2] , \mult[22][1] , \mult[22][0] }), .B({
        \mult[23][7] , \mult[23][7] , \mult[23][6] , \mult[23][5] , 
        \mult[23][4] , \mult[23][3] , \mult[23][2] , \mult[23][1] , 
        \mult[23][0] }), .CI(1'b0), .SUM({\tree_sums[1][24][13] , 
        \tree_sums[1][24][7] , \tree_sums[1][24][6] , \tree_sums[1][24][5] , 
        \tree_sums[1][24][4] , \tree_sums[1][24][3] , \tree_sums[1][24][2] , 
        \tree_sums[1][24][1] , \tree_sums[1][24][0] }) );
  vec_product_DW01_add_59 add_52_root_add_61_G6 ( .A({\mult[20][7] , 
        \mult[20][7] , \mult[20][6] , \mult[20][5] , \mult[20][4] , 
        \mult[20][3] , \mult[20][2] , \mult[20][1] , \mult[20][0] }), .B({
        \mult[21][7] , \mult[21][7] , \mult[21][6] , \mult[21][5] , 
        \mult[21][4] , \mult[21][3] , \mult[21][2] , \mult[21][1] , 
        \mult[21][0] }), .CI(1'b0), .SUM({\tree_sums[1][25][13] , 
        \tree_sums[1][25][7] , \tree_sums[1][25][6] , \tree_sums[1][25][5] , 
        \tree_sums[1][25][4] , \tree_sums[1][25][3] , \tree_sums[1][25][2] , 
        \tree_sums[1][25][1] , \tree_sums[1][25][0] }) );
  vec_product_DW01_add_60 add_26_root_add_61_G6 ( .A({\tree_sums[1][26][13] , 
        \tree_sums[1][26][13] , \tree_sums[1][26][13] , \tree_sums[1][26][7] , 
        \tree_sums[1][26][6] , \tree_sums[1][26][5] , \tree_sums[1][26][4] , 
        \tree_sums[1][26][3] , \tree_sums[1][26][2] , \tree_sums[1][26][1] , 
        \tree_sums[1][26][0] }), .B({\tree_sums[2][13][8] , 
        \tree_sums[2][13][8] , \tree_sums[2][13][8] , \tree_sums[2][13][7] , 
        \tree_sums[2][13][6] , \tree_sums[2][13][5] , \tree_sums[2][13][4] , 
        \tree_sums[2][13][3] , \tree_sums[2][13][2] , \tree_sums[2][13][1] , 
        \tree_sums[2][13][0] }), .CI(1'b0), .SUM({n331, n332, n333, n334, n335, 
        n337, n338, n339, n340, n341, n342}) );
  vec_product_DW01_add_62 add_54_root_add_61_G6 ( .A({\mult[16][7] , 
        \mult[16][7] , \mult[16][6] , \mult[16][5] , \mult[16][4] , 
        \mult[16][3] , \mult[16][2] , \mult[16][1] , \mult[16][0] }), .B({
        \mult[17][7] , \mult[17][7] , \mult[17][6] , \mult[17][5] , 
        \mult[17][4] , \mult[17][3] , \mult[17][2] , \mult[17][1] , 
        \mult[17][0] }), .CI(1'b0), .SUM({\tree_sums[1][26][13] , 
        \tree_sums[1][26][7] , \tree_sums[1][26][6] , \tree_sums[1][26][5] , 
        \tree_sums[1][26][4] , \tree_sums[1][26][3] , \tree_sums[1][26][2] , 
        \tree_sums[1][26][1] , \tree_sums[1][26][0] }) );
  vec_product_DW_mult_tc_64 mult_37 ( .a(i_a[3:0]), .b(i_b[3:0]), .product({
        \mult[0][7] , \mult[0][6] , \mult[0][5] , \mult[0][4] , \mult[0][3] , 
        \mult[0][2] , \mult[0][1] , \mult[0][0] }) );
  vec_product_DW_mult_tc_65 mult_37_G2 ( .a(i_a[7:4]), .b(i_b[7:4]), .product(
        {\mult[1][7] , \mult[1][6] , \mult[1][5] , \mult[1][4] , \mult[1][3] , 
        \mult[1][2] , \mult[1][1] , \mult[1][0] }) );
  vec_product_DW_mult_tc_66 mult_37_G3 ( .a(i_a[11:8]), .b(i_b[11:8]), 
        .product({\mult[2][7] , \mult[2][6] , \mult[2][5] , \mult[2][4] , 
        \mult[2][3] , \mult[2][2] , \mult[2][1] , \mult[2][0] }) );
  vec_product_DW_mult_tc_67 mult_37_G4 ( .a(i_a[15:12]), .b(i_b[15:12]), 
        .product({\mult[3][7] , \mult[3][6] , \mult[3][5] , \mult[3][4] , 
        \mult[3][3] , \mult[3][2] , \mult[3][1] , \mult[3][0] }) );
  vec_product_DW_mult_tc_68 mult_37_G5 ( .a(i_a[19:16]), .b(i_b[19:16]), 
        .product({\mult[4][7] , \mult[4][6] , \mult[4][5] , \mult[4][4] , 
        \mult[4][3] , \mult[4][2] , \mult[4][1] , \mult[4][0] }) );
  vec_product_DW_mult_tc_69 mult_37_G6 ( .a(i_a[23:20]), .b(i_b[23:20]), 
        .product({\mult[5][7] , \mult[5][6] , \mult[5][5] , \mult[5][4] , 
        \mult[5][3] , \mult[5][2] , \mult[5][1] , \mult[5][0] }) );
  vec_product_DW_mult_tc_70 mult_37_G7 ( .a(i_a[27:24]), .b(i_b[27:24]), 
        .product({\mult[6][7] , \mult[6][6] , \mult[6][5] , \mult[6][4] , 
        \mult[6][3] , \mult[6][2] , \mult[6][1] , \mult[6][0] }) );
  vec_product_DW_mult_tc_71 mult_37_G8 ( .a(i_a[31:28]), .b(i_b[31:28]), 
        .product({\mult[7][7] , \mult[7][6] , \mult[7][5] , \mult[7][4] , 
        \mult[7][3] , \mult[7][2] , \mult[7][1] , \mult[7][0] }) );
  vec_product_DW_mult_tc_72 mult_37_G9 ( .a(i_a[35:32]), .b(i_b[35:32]), 
        .product({\mult[8][7] , \mult[8][6] , \mult[8][5] , \mult[8][4] , 
        \mult[8][3] , \mult[8][2] , \mult[8][1] , \mult[8][0] }) );
  vec_product_DW_mult_tc_73 mult_37_G10 ( .a(i_a[39:36]), .b(i_b[39:36]), 
        .product({\mult[9][7] , \mult[9][6] , \mult[9][5] , \mult[9][4] , 
        \mult[9][3] , \mult[9][2] , \mult[9][1] , \mult[9][0] }) );
  vec_product_DW_mult_tc_74 mult_37_G11 ( .a(i_a[43:40]), .b(i_b[43:40]), 
        .product({\mult[10][7] , \mult[10][6] , \mult[10][5] , \mult[10][4] , 
        \mult[10][3] , \mult[10][2] , \mult[10][1] , \mult[10][0] }) );
  vec_product_DW_mult_tc_75 mult_37_G12 ( .a(i_a[47:44]), .b(i_b[47:44]), 
        .product({\mult[11][7] , \mult[11][6] , \mult[11][5] , \mult[11][4] , 
        \mult[11][3] , \mult[11][2] , \mult[11][1] , \mult[11][0] }) );
  vec_product_DW_mult_tc_76 mult_37_G13 ( .a(i_a[51:48]), .b(i_b[51:48]), 
        .product({\mult[12][7] , \mult[12][6] , \mult[12][5] , \mult[12][4] , 
        \mult[12][3] , \mult[12][2] , \mult[12][1] , \mult[12][0] }) );
  vec_product_DW_mult_tc_77 mult_37_G14 ( .a(i_a[55:52]), .b(i_b[55:52]), 
        .product({\mult[13][7] , \mult[13][6] , \mult[13][5] , \mult[13][4] , 
        \mult[13][3] , \mult[13][2] , \mult[13][1] , \mult[13][0] }) );
  vec_product_DW_mult_tc_78 mult_37_G15 ( .a(i_a[59:56]), .b(i_b[59:56]), 
        .product({\mult[14][7] , \mult[14][6] , \mult[14][5] , \mult[14][4] , 
        \mult[14][3] , \mult[14][2] , \mult[14][1] , \mult[14][0] }) );
  vec_product_DW_mult_tc_79 mult_37_G16 ( .a(i_a[63:60]), .b(i_b[63:60]), 
        .product({\mult[15][7] , \mult[15][6] , \mult[15][5] , \mult[15][4] , 
        \mult[15][3] , \mult[15][2] , \mult[15][1] , \mult[15][0] }) );
  vec_product_DW_mult_tc_80 mult_37_G17 ( .a(i_a[67:64]), .b(i_b[67:64]), 
        .product({\mult[16][7] , \mult[16][6] , \mult[16][5] , \mult[16][4] , 
        \mult[16][3] , \mult[16][2] , \mult[16][1] , \mult[16][0] }) );
  vec_product_DW_mult_tc_81 mult_37_G18 ( .a(i_a[71:68]), .b(i_b[71:68]), 
        .product({\mult[17][7] , \mult[17][6] , \mult[17][5] , \mult[17][4] , 
        \mult[17][3] , \mult[17][2] , \mult[17][1] , \mult[17][0] }) );
  vec_product_DW_mult_tc_82 mult_37_G19 ( .a(i_a[75:72]), .b(i_b[75:72]), 
        .product({\mult[18][7] , \mult[18][6] , \mult[18][5] , \mult[18][4] , 
        \mult[18][3] , \mult[18][2] , \mult[18][1] , \mult[18][0] }) );
  vec_product_DW_mult_tc_83 mult_37_G20 ( .a(i_a[79:76]), .b(i_b[79:76]), 
        .product({\mult[19][7] , \mult[19][6] , \mult[19][5] , \mult[19][4] , 
        \mult[19][3] , \mult[19][2] , \mult[19][1] , \mult[19][0] }) );
  vec_product_DW_mult_tc_84 mult_37_G21 ( .a(i_a[83:80]), .b(i_b[83:80]), 
        .product({\mult[20][7] , \mult[20][6] , \mult[20][5] , \mult[20][4] , 
        \mult[20][3] , \mult[20][2] , \mult[20][1] , \mult[20][0] }) );
  vec_product_DW_mult_tc_85 mult_37_G22 ( .a(i_a[87:84]), .b(i_b[87:84]), 
        .product({\mult[21][7] , \mult[21][6] , \mult[21][5] , \mult[21][4] , 
        \mult[21][3] , \mult[21][2] , \mult[21][1] , \mult[21][0] }) );
  vec_product_DW_mult_tc_86 mult_37_G23 ( .a(i_a[91:88]), .b(i_b[91:88]), 
        .product({\mult[22][7] , \mult[22][6] , \mult[22][5] , \mult[22][4] , 
        \mult[22][3] , \mult[22][2] , \mult[22][1] , \mult[22][0] }) );
  vec_product_DW_mult_tc_87 mult_37_G24 ( .a(i_a[95:92]), .b(i_b[95:92]), 
        .product({\mult[23][7] , \mult[23][6] , \mult[23][5] , \mult[23][4] , 
        \mult[23][3] , \mult[23][2] , \mult[23][1] , \mult[23][0] }) );
  vec_product_DW_mult_tc_88 mult_37_G25 ( .a(i_a[99:96]), .b(i_b[99:96]), 
        .product({\mult[24][7] , \mult[24][6] , \mult[24][5] , \mult[24][4] , 
        \mult[24][3] , \mult[24][2] , \mult[24][1] , \mult[24][0] }) );
  vec_product_DW_mult_tc_89 mult_37_G26 ( .a(i_a[103:100]), .b(i_b[103:100]), 
        .product({\mult[25][7] , \mult[25][6] , \mult[25][5] , \mult[25][4] , 
        \mult[25][3] , \mult[25][2] , \mult[25][1] , \mult[25][0] }) );
  vec_product_DW_mult_tc_90 mult_37_G27 ( .a(i_a[107:104]), .b(i_b[107:104]), 
        .product({\mult[26][7] , \mult[26][6] , \mult[26][5] , \mult[26][4] , 
        \mult[26][3] , \mult[26][2] , \mult[26][1] , \mult[26][0] }) );
  vec_product_DW_mult_tc_91 mult_37_G28 ( .a(i_a[111:108]), .b(i_b[111:108]), 
        .product({\mult[27][7] , \mult[27][6] , \mult[27][5] , \mult[27][4] , 
        \mult[27][3] , \mult[27][2] , \mult[27][1] , \mult[27][0] }) );
  vec_product_DW_mult_tc_92 mult_37_G29 ( .a(i_a[115:112]), .b(i_b[115:112]), 
        .product({\mult[28][7] , \mult[28][6] , \mult[28][5] , \mult[28][4] , 
        \mult[28][3] , \mult[28][2] , \mult[28][1] , \mult[28][0] }) );
  vec_product_DW_mult_tc_93 mult_37_G30 ( .a(i_a[119:116]), .b(i_b[119:116]), 
        .product({\mult[29][7] , \mult[29][6] , \mult[29][5] , \mult[29][4] , 
        \mult[29][3] , \mult[29][2] , \mult[29][1] , \mult[29][0] }) );
  vec_product_DW_mult_tc_94 mult_37_G31 ( .a(i_a[123:120]), .b(i_b[123:120]), 
        .product({\mult[30][7] , \mult[30][6] , \mult[30][5] , \mult[30][4] , 
        \mult[30][3] , \mult[30][2] , \mult[30][1] , \mult[30][0] }) );
  vec_product_DW_mult_tc_95 mult_37_G32 ( .a(i_a[127:124]), .b(i_b[127:124]), 
        .product({\mult[31][7] , \mult[31][6] , \mult[31][5] , \mult[31][4] , 
        \mult[31][3] , \mult[31][2] , \mult[31][1] , \mult[31][0] }) );
  vec_product_DW_mult_tc_96 mult_37_G33 ( .a(i_a[131:128]), .b(i_b[131:128]), 
        .product({\mult[32][7] , \mult[32][6] , \mult[32][5] , \mult[32][4] , 
        \mult[32][3] , \mult[32][2] , \mult[32][1] , \mult[32][0] }) );
  vec_product_DW_mult_tc_97 mult_37_G34 ( .a(i_a[135:132]), .b(i_b[135:132]), 
        .product({\mult[33][7] , \mult[33][6] , \mult[33][5] , \mult[33][4] , 
        \mult[33][3] , \mult[33][2] , \mult[33][1] , \mult[33][0] }) );
  vec_product_DW_mult_tc_98 mult_37_G35 ( .a(i_a[139:136]), .b(i_b[139:136]), 
        .product({\mult[34][7] , \mult[34][6] , \mult[34][5] , \mult[34][4] , 
        \mult[34][3] , \mult[34][2] , \mult[34][1] , \mult[34][0] }) );
  vec_product_DW_mult_tc_99 mult_37_G36 ( .a(i_a[143:140]), .b(i_b[143:140]), 
        .product({\mult[35][7] , \mult[35][6] , \mult[35][5] , \mult[35][4] , 
        \mult[35][3] , \mult[35][2] , \mult[35][1] , \mult[35][0] }) );
  vec_product_DW_mult_tc_100 mult_37_G37 ( .a(i_a[147:144]), .b(i_b[147:144]), 
        .product({\mult[36][7] , \mult[36][6] , \mult[36][5] , \mult[36][4] , 
        \mult[36][3] , \mult[36][2] , \mult[36][1] , \mult[36][0] }) );
  vec_product_DW_mult_tc_101 mult_37_G38 ( .a(i_a[151:148]), .b(i_b[151:148]), 
        .product({\mult[37][7] , \mult[37][6] , \mult[37][5] , \mult[37][4] , 
        \mult[37][3] , \mult[37][2] , \mult[37][1] , \mult[37][0] }) );
  vec_product_DW_mult_tc_102 mult_37_G39 ( .a(i_a[155:152]), .b(i_b[155:152]), 
        .product({\mult[38][7] , \mult[38][6] , \mult[38][5] , \mult[38][4] , 
        \mult[38][3] , \mult[38][2] , \mult[38][1] , \mult[38][0] }) );
  vec_product_DW_mult_tc_103 mult_37_G40 ( .a(i_a[159:156]), .b(i_b[159:156]), 
        .product({\mult[39][7] , \mult[39][6] , \mult[39][5] , \mult[39][4] , 
        \mult[39][3] , \mult[39][2] , \mult[39][1] , \mult[39][0] }) );
  vec_product_DW_mult_tc_104 mult_37_G41 ( .a(i_a[163:160]), .b(i_b[163:160]), 
        .product({\mult[40][7] , \mult[40][6] , \mult[40][5] , \mult[40][4] , 
        \mult[40][3] , \mult[40][2] , \mult[40][1] , \mult[40][0] }) );
  vec_product_DW_mult_tc_105 mult_37_G42 ( .a(i_a[167:164]), .b(i_b[167:164]), 
        .product({\mult[41][7] , \mult[41][6] , \mult[41][5] , \mult[41][4] , 
        \mult[41][3] , \mult[41][2] , \mult[41][1] , \mult[41][0] }) );
  vec_product_DW_mult_tc_106 mult_37_G43 ( .a(i_a[171:168]), .b(i_b[171:168]), 
        .product({\mult[42][7] , \mult[42][6] , \mult[42][5] , \mult[42][4] , 
        \mult[42][3] , \mult[42][2] , \mult[42][1] , \mult[42][0] }) );
  vec_product_DW_mult_tc_107 mult_37_G44 ( .a(i_a[175:172]), .b(i_b[175:172]), 
        .product({\mult[43][7] , \mult[43][6] , \mult[43][5] , \mult[43][4] , 
        \mult[43][3] , \mult[43][2] , \mult[43][1] , \mult[43][0] }) );
  vec_product_DW_mult_tc_108 mult_37_G45 ( .a(i_a[179:176]), .b(i_b[179:176]), 
        .product({\mult[44][7] , \mult[44][6] , \mult[44][5] , \mult[44][4] , 
        \mult[44][3] , \mult[44][2] , \mult[44][1] , \mult[44][0] }) );
  vec_product_DW_mult_tc_109 mult_37_G46 ( .a(i_a[183:180]), .b(i_b[183:180]), 
        .product({\mult[45][7] , \mult[45][6] , \mult[45][5] , \mult[45][4] , 
        \mult[45][3] , \mult[45][2] , \mult[45][1] , \mult[45][0] }) );
  vec_product_DW_mult_tc_110 mult_37_G47 ( .a(i_a[187:184]), .b(i_b[187:184]), 
        .product({\mult[46][7] , \mult[46][6] , \mult[46][5] , \mult[46][4] , 
        \mult[46][3] , \mult[46][2] , \mult[46][1] , \mult[46][0] }) );
  vec_product_DW_mult_tc_111 mult_37_G48 ( .a(i_a[191:188]), .b(i_b[191:188]), 
        .product({\mult[47][7] , \mult[47][6] , \mult[47][5] , \mult[47][4] , 
        \mult[47][3] , \mult[47][2] , \mult[47][1] , \mult[47][0] }) );
  vec_product_DW_mult_tc_112 mult_37_G49 ( .a(i_a[195:192]), .b(i_b[195:192]), 
        .product({\mult[48][7] , \mult[48][6] , \mult[48][5] , \mult[48][4] , 
        \mult[48][3] , \mult[48][2] , \mult[48][1] , \mult[48][0] }) );
  vec_product_DW_mult_tc_113 mult_37_G50 ( .a(i_a[199:196]), .b(i_b[199:196]), 
        .product({\mult[49][7] , \mult[49][6] , \mult[49][5] , \mult[49][4] , 
        \mult[49][3] , \mult[49][2] , \mult[49][1] , \mult[49][0] }) );
  vec_product_DW_mult_tc_114 mult_37_G51 ( .a(i_a[203:200]), .b(i_b[203:200]), 
        .product({\mult[50][7] , \mult[50][6] , \mult[50][5] , \mult[50][4] , 
        \mult[50][3] , \mult[50][2] , \mult[50][1] , \mult[50][0] }) );
  vec_product_DW_mult_tc_115 mult_37_G52 ( .a(i_a[207:204]), .b(i_b[207:204]), 
        .product({\mult[51][7] , \mult[51][6] , \mult[51][5] , \mult[51][4] , 
        \mult[51][3] , \mult[51][2] , \mult[51][1] , \mult[51][0] }) );
  vec_product_DW_mult_tc_116 mult_37_G53 ( .a(i_a[211:208]), .b(i_b[211:208]), 
        .product({\mult[52][7] , \mult[52][6] , \mult[52][5] , \mult[52][4] , 
        \mult[52][3] , \mult[52][2] , \mult[52][1] , \mult[52][0] }) );
  vec_product_DW_mult_tc_117 mult_37_G54 ( .a(i_a[215:212]), .b(i_b[215:212]), 
        .product({\mult[53][7] , \mult[53][6] , \mult[53][5] , \mult[53][4] , 
        \mult[53][3] , \mult[53][2] , \mult[53][1] , \mult[53][0] }) );
  vec_product_DW_mult_tc_118 mult_37_G55 ( .a(i_a[219:216]), .b(i_b[219:216]), 
        .product({\mult[54][7] , \mult[54][6] , \mult[54][5] , \mult[54][4] , 
        \mult[54][3] , \mult[54][2] , \mult[54][1] , \mult[54][0] }) );
  vec_product_DW_mult_tc_119 mult_37_G56 ( .a(i_a[223:220]), .b(i_b[223:220]), 
        .product({\mult[55][7] , \mult[55][6] , \mult[55][5] , \mult[55][4] , 
        \mult[55][3] , \mult[55][2] , \mult[55][1] , \mult[55][0] }) );
  vec_product_DW_mult_tc_120 mult_37_G57 ( .a(i_a[227:224]), .b(i_b[227:224]), 
        .product({\mult[56][7] , \mult[56][6] , \mult[56][5] , \mult[56][4] , 
        \mult[56][3] , \mult[56][2] , \mult[56][1] , \mult[56][0] }) );
  vec_product_DW_mult_tc_121 mult_37_G58 ( .a(i_a[231:228]), .b(i_b[231:228]), 
        .product({\mult[57][7] , \mult[57][6] , \mult[57][5] , \mult[57][4] , 
        \mult[57][3] , \mult[57][2] , \mult[57][1] , \mult[57][0] }) );
  vec_product_DW_mult_tc_122 mult_37_G59 ( .a(i_a[235:232]), .b(i_b[235:232]), 
        .product({\mult[58][7] , \mult[58][6] , \mult[58][5] , \mult[58][4] , 
        \mult[58][3] , \mult[58][2] , \mult[58][1] , \mult[58][0] }) );
  vec_product_DW_mult_tc_123 mult_37_G60 ( .a(i_a[239:236]), .b(i_b[239:236]), 
        .product({\mult[59][7] , \mult[59][6] , \mult[59][5] , \mult[59][4] , 
        \mult[59][3] , \mult[59][2] , \mult[59][1] , \mult[59][0] }) );
  vec_product_DW_mult_tc_124 mult_37_G61 ( .a(i_a[243:240]), .b(i_b[243:240]), 
        .product({\mult[60][7] , \mult[60][6] , \mult[60][5] , \mult[60][4] , 
        \mult[60][3] , \mult[60][2] , \mult[60][1] , \mult[60][0] }) );
  vec_product_DW_mult_tc_125 mult_37_G62 ( .a(i_a[247:244]), .b(i_b[247:244]), 
        .product({\mult[61][7] , \mult[61][6] , \mult[61][5] , \mult[61][4] , 
        \mult[61][3] , \mult[61][2] , \mult[61][1] , \mult[61][0] }) );
  vec_product_DW_mult_tc_126 mult_37_G63 ( .a(i_a[251:248]), .b(i_b[251:248]), 
        .product({\mult[62][7] , \mult[62][6] , \mult[62][5] , \mult[62][4] , 
        \mult[62][3] , \mult[62][2] , \mult[62][1] , \mult[62][0] }) );
  vec_product_DW_mult_tc_127 mult_37_G64 ( .a(i_a[255:252]), .b(i_b[255:252]), 
        .product({\mult[63][7] , \mult[63][6] , \mult[63][5] , \mult[63][4] , 
        \mult[63][3] , \mult[63][2] , \mult[63][1] , \mult[63][0] }) );
  XNOR2X1 U127 ( .A(n454), .B(n455), .Y(\tree_sums[4][2][7] ) );
  XNOR2X1 U128 ( .A(n456), .B(n457), .Y(\tree_sums[4][2][6] ) );
  XNOR2X1 U129 ( .A(\mult[58][6] ), .B(\mult[59][6] ), .Y(n456) );
  XNOR2X1 U130 ( .A(n458), .B(n459), .Y(\tree_sums[4][2][5] ) );
  XNOR2X1 U131 ( .A(\mult[58][5] ), .B(\mult[59][5] ), .Y(n458) );
  XNOR2X1 U132 ( .A(n460), .B(n461), .Y(\tree_sums[4][2][4] ) );
  XNOR2X1 U133 ( .A(\mult[58][4] ), .B(\mult[59][4] ), .Y(n460) );
  XNOR2X1 U134 ( .A(n462), .B(n463), .Y(\tree_sums[4][2][3] ) );
  XNOR2X1 U135 ( .A(\mult[58][3] ), .B(\mult[59][3] ), .Y(n462) );
  XNOR2X1 U136 ( .A(n464), .B(n465), .Y(\tree_sums[4][2][2] ) );
  XNOR2X1 U137 ( .A(\mult[58][2] ), .B(\mult[59][2] ), .Y(n464) );
  XOR2X1 U138 ( .A(n466), .B(n467), .Y(\tree_sums[4][2][1] ) );
  XNOR2X1 U139 ( .A(\mult[58][1] ), .B(\mult[59][1] ), .Y(n467) );
  XNOR2X1 U140 ( .A(n468), .B(n469), .Y(\tree_sums[4][2][9] ) );
  CLKINVX1 U141 ( .A(n454), .Y(n469) );
  NOR2BX1 U142 ( .AN(n470), .B(n471), .Y(n454) );
  OAI21XL U143 ( .A0(n455), .A1(n471), .B0(n470), .Y(n468) );
  NAND2X1 U144 ( .A(\mult[59][7] ), .B(\mult[58][7] ), .Y(n470) );
  NOR2X1 U145 ( .A(\mult[59][7] ), .B(\mult[58][7] ), .Y(n471) );
  AOI2BB2X1 U146 ( .B0(n472), .B1(\mult[59][6] ), .A0N(n473), .A1N(n474), .Y(
        n455) );
  NAND2X1 U147 ( .A(n474), .B(n473), .Y(n472) );
  CLKINVX1 U148 ( .A(n457), .Y(n473) );
  OAI2BB1X1 U149 ( .A0N(n459), .A1N(\mult[58][5] ), .B0(n475), .Y(n457) );
  OAI21XL U150 ( .A0(\mult[58][5] ), .A1(n459), .B0(\mult[59][5] ), .Y(n475)
         );
  OAI2BB1X1 U151 ( .A0N(n461), .A1N(\mult[58][4] ), .B0(n476), .Y(n459) );
  OAI21XL U152 ( .A0(\mult[58][4] ), .A1(n461), .B0(\mult[59][4] ), .Y(n476)
         );
  AO22X1 U153 ( .A0(n463), .A1(\mult[58][3] ), .B0(n477), .B1(\mult[59][3] ), 
        .Y(n461) );
  OR2X1 U154 ( .A(\mult[58][3] ), .B(n463), .Y(n477) );
  OAI2BB1X1 U155 ( .A0N(n465), .A1N(\mult[58][2] ), .B0(n478), .Y(n463) );
  OAI21XL U156 ( .A0(\mult[58][2] ), .A1(n465), .B0(\mult[59][2] ), .Y(n478)
         );
  OAI21XL U157 ( .A0(n466), .A1(n479), .B0(n480), .Y(n465) );
  OAI2BB1X1 U158 ( .A0N(n466), .A1N(n479), .B0(\mult[59][1] ), .Y(n480) );
  CLKINVX1 U159 ( .A(\mult[58][1] ), .Y(n479) );
  NAND2X1 U160 ( .A(\mult[59][0] ), .B(\mult[58][0] ), .Y(n466) );
  CLKINVX1 U161 ( .A(\mult[58][6] ), .Y(n474) );
  XOR2X1 U162 ( .A(\mult[59][0] ), .B(\mult[58][0] ), .Y(\tree_sums[4][2][0] )
         );
  XOR2X1 U163 ( .A(n481), .B(n482), .Y(\tree_sums[4][1][8] ) );
  XOR2X1 U164 ( .A(\tree_sums[1][16][13] ), .B(n483), .Y(n481) );
  XOR2X1 U165 ( .A(n484), .B(n485), .Y(\tree_sums[4][1][7] ) );
  XOR2X1 U166 ( .A(\tree_sums[1][16][7] ), .B(n486), .Y(n484) );
  XOR2X1 U167 ( .A(n487), .B(n488), .Y(\tree_sums[4][1][6] ) );
  XOR2X1 U168 ( .A(\tree_sums[1][16][6] ), .B(n489), .Y(n488) );
  XOR2X1 U169 ( .A(n490), .B(n491), .Y(\tree_sums[4][1][5] ) );
  XOR2X1 U170 ( .A(\tree_sums[1][16][5] ), .B(n492), .Y(n491) );
  XOR2X1 U171 ( .A(n493), .B(n494), .Y(\tree_sums[4][1][4] ) );
  XOR2X1 U172 ( .A(\tree_sums[1][16][4] ), .B(n495), .Y(n494) );
  XOR2X1 U173 ( .A(n496), .B(n497), .Y(\tree_sums[4][1][3] ) );
  XOR2X1 U174 ( .A(\tree_sums[1][16][3] ), .B(n498), .Y(n497) );
  XOR2X1 U175 ( .A(n499), .B(n500), .Y(\tree_sums[4][1][2] ) );
  XOR2X1 U176 ( .A(\tree_sums[1][16][2] ), .B(n501), .Y(n500) );
  XOR2X1 U177 ( .A(n502), .B(n503), .Y(\tree_sums[4][1][1] ) );
  XOR2X1 U178 ( .A(n504), .B(\tree_sums[1][16][1] ), .Y(n503) );
  OAI21XL U179 ( .A0(n505), .A1(n483), .B0(n506), .Y(\tree_sums[4][1][9] ) );
  NAND2X1 U180 ( .A(\tree_sums[1][16][13] ), .B(n482), .Y(n506) );
  OAI2BB1X1 U181 ( .A0N(n486), .A1N(n485), .B0(n507), .Y(n483) );
  OAI21XL U182 ( .A0(n485), .A1(n486), .B0(\tree_sums[1][16][7] ), .Y(n507) );
  MXI2X1 U183 ( .A(n508), .B(n509), .S0(n510), .Y(n485) );
  OAI21XL U184 ( .A0(n489), .A1(n487), .B0(n511), .Y(n486) );
  OAI2BB1X1 U185 ( .A0N(n487), .A1N(n489), .B0(\tree_sums[1][16][6] ), .Y(n511) );
  XOR2X1 U186 ( .A(n512), .B(n513), .Y(n487) );
  XNOR2X1 U187 ( .A(\mult[54][6] ), .B(\mult[55][6] ), .Y(n512) );
  AOI2BB2X1 U188 ( .B0(n514), .B1(\tree_sums[1][16][5] ), .A0N(n492), .A1N(
        n490), .Y(n489) );
  NAND2X1 U189 ( .A(n490), .B(n492), .Y(n514) );
  OA21XL U190 ( .A0(n495), .A1(n493), .B0(n515), .Y(n492) );
  OAI2BB1X1 U191 ( .A0N(n493), .A1N(n495), .B0(\tree_sums[1][16][4] ), .Y(n515) );
  XOR2X1 U192 ( .A(n516), .B(n517), .Y(n493) );
  XNOR2X1 U193 ( .A(\mult[54][4] ), .B(\mult[55][4] ), .Y(n516) );
  OA21XL U194 ( .A0(n498), .A1(n496), .B0(n518), .Y(n495) );
  OAI2BB1X1 U195 ( .A0N(n496), .A1N(n498), .B0(\tree_sums[1][16][3] ), .Y(n518) );
  XOR2X1 U196 ( .A(n519), .B(n520), .Y(n496) );
  XNOR2X1 U197 ( .A(\mult[54][3] ), .B(\mult[55][3] ), .Y(n519) );
  AOI2BB2X1 U198 ( .B0(n521), .B1(\tree_sums[1][16][2] ), .A0N(n501), .A1N(
        n499), .Y(n498) );
  NAND2X1 U199 ( .A(n499), .B(n501), .Y(n521) );
  OA21XL U200 ( .A0(n502), .A1(n504), .B0(n522), .Y(n501) );
  OAI2BB1X1 U201 ( .A0N(n504), .A1N(n502), .B0(\tree_sums[1][16][1] ), .Y(n522) );
  NAND2X1 U202 ( .A(\tree_sums[1][16][0] ), .B(n523), .Y(n504) );
  XOR2X1 U203 ( .A(n524), .B(n525), .Y(n502) );
  XNOR2X1 U204 ( .A(\mult[55][1] ), .B(n526), .Y(n525) );
  XOR2X1 U205 ( .A(n527), .B(n528), .Y(n499) );
  XNOR2X1 U206 ( .A(\mult[54][2] ), .B(\mult[55][2] ), .Y(n527) );
  XOR2X1 U207 ( .A(n529), .B(n530), .Y(n490) );
  XNOR2X1 U208 ( .A(\mult[54][5] ), .B(\mult[55][5] ), .Y(n529) );
  NOR2X1 U209 ( .A(n482), .B(\tree_sums[1][16][13] ), .Y(n505) );
  MXI2X1 U210 ( .A(n508), .B(n509), .S0(n531), .Y(n482) );
  OA21XL U211 ( .A0(n510), .A1(n532), .B0(n533), .Y(n531) );
  AOI2BB2X1 U212 ( .B0(n534), .B1(\mult[55][6] ), .A0N(n535), .A1N(n536), .Y(
        n510) );
  NAND2X1 U213 ( .A(n536), .B(n535), .Y(n534) );
  CLKINVX1 U214 ( .A(n513), .Y(n535) );
  OAI2BB1X1 U215 ( .A0N(n530), .A1N(\mult[54][5] ), .B0(n537), .Y(n513) );
  OAI21XL U216 ( .A0(\mult[54][5] ), .A1(n530), .B0(\mult[55][5] ), .Y(n537)
         );
  OAI2BB1X1 U217 ( .A0N(n517), .A1N(\mult[54][4] ), .B0(n538), .Y(n530) );
  OAI21XL U218 ( .A0(\mult[54][4] ), .A1(n517), .B0(\mult[55][4] ), .Y(n538)
         );
  AO22X1 U219 ( .A0(n520), .A1(\mult[54][3] ), .B0(n539), .B1(\mult[55][3] ), 
        .Y(n517) );
  OR2X1 U220 ( .A(\mult[54][3] ), .B(n520), .Y(n539) );
  OAI2BB1X1 U221 ( .A0N(n528), .A1N(\mult[54][2] ), .B0(n540), .Y(n520) );
  OAI21XL U222 ( .A0(\mult[54][2] ), .A1(n528), .B0(\mult[55][2] ), .Y(n540)
         );
  OAI21XL U223 ( .A0(n524), .A1(n526), .B0(n541), .Y(n528) );
  OAI2BB1X1 U224 ( .A0N(n524), .A1N(n526), .B0(\mult[55][1] ), .Y(n541) );
  CLKINVX1 U225 ( .A(\mult[54][1] ), .Y(n526) );
  NAND2X1 U226 ( .A(\mult[55][0] ), .B(\mult[54][0] ), .Y(n524) );
  CLKINVX1 U227 ( .A(\mult[54][6] ), .Y(n536) );
  XNOR2X1 U228 ( .A(\mult[54][7] ), .B(\mult[55][7] ), .Y(n509) );
  NOR2BX1 U229 ( .AN(n533), .B(n532), .Y(n508) );
  NOR2X1 U230 ( .A(\mult[55][7] ), .B(\mult[54][7] ), .Y(n532) );
  NAND2X1 U231 ( .A(\mult[55][7] ), .B(\mult[54][7] ), .Y(n533) );
  XOR2X1 U232 ( .A(\tree_sums[1][16][0] ), .B(n523), .Y(\tree_sums[4][1][0] )
         );
  XOR2X1 U233 ( .A(\mult[54][0] ), .B(\mult[55][0] ), .Y(n523) );
  XNOR2X1 U234 ( .A(n542), .B(n543), .Y(\tree_sums[3][7][7] ) );
  XNOR2X1 U235 ( .A(n544), .B(n545), .Y(\tree_sums[3][7][6] ) );
  XNOR2X1 U236 ( .A(\mult[12][6] ), .B(\mult[13][6] ), .Y(n544) );
  XNOR2X1 U237 ( .A(n546), .B(n547), .Y(\tree_sums[3][7][5] ) );
  XNOR2X1 U238 ( .A(\mult[12][5] ), .B(\mult[13][5] ), .Y(n546) );
  XNOR2X1 U239 ( .A(n548), .B(n549), .Y(\tree_sums[3][7][4] ) );
  XNOR2X1 U240 ( .A(\mult[12][4] ), .B(\mult[13][4] ), .Y(n548) );
  XNOR2X1 U241 ( .A(n550), .B(n551), .Y(\tree_sums[3][7][3] ) );
  XNOR2X1 U242 ( .A(\mult[12][3] ), .B(\mult[13][3] ), .Y(n550) );
  XNOR2X1 U243 ( .A(n552), .B(n553), .Y(\tree_sums[3][7][2] ) );
  XNOR2X1 U244 ( .A(\mult[12][2] ), .B(\mult[13][2] ), .Y(n552) );
  XOR2X1 U245 ( .A(n554), .B(n555), .Y(\tree_sums[3][7][1] ) );
  XNOR2X1 U246 ( .A(\mult[12][1] ), .B(\mult[13][1] ), .Y(n555) );
  XNOR2X1 U247 ( .A(n556), .B(n557), .Y(\tree_sums[3][7][9] ) );
  CLKINVX1 U248 ( .A(n542), .Y(n557) );
  NOR2BX1 U249 ( .AN(n558), .B(n559), .Y(n542) );
  OAI21XL U250 ( .A0(n543), .A1(n559), .B0(n558), .Y(n556) );
  NAND2X1 U251 ( .A(\mult[13][7] ), .B(\mult[12][7] ), .Y(n558) );
  NOR2X1 U252 ( .A(\mult[13][7] ), .B(\mult[12][7] ), .Y(n559) );
  AOI2BB2X1 U253 ( .B0(n560), .B1(\mult[13][6] ), .A0N(n561), .A1N(n562), .Y(
        n543) );
  NAND2X1 U254 ( .A(n562), .B(n561), .Y(n560) );
  CLKINVX1 U255 ( .A(n545), .Y(n561) );
  OAI2BB1X1 U256 ( .A0N(n547), .A1N(\mult[12][5] ), .B0(n563), .Y(n545) );
  OAI21XL U257 ( .A0(\mult[12][5] ), .A1(n547), .B0(\mult[13][5] ), .Y(n563)
         );
  OAI2BB1X1 U258 ( .A0N(n549), .A1N(\mult[12][4] ), .B0(n564), .Y(n547) );
  OAI21XL U259 ( .A0(\mult[12][4] ), .A1(n549), .B0(\mult[13][4] ), .Y(n564)
         );
  AO22X1 U260 ( .A0(n551), .A1(\mult[12][3] ), .B0(n565), .B1(\mult[13][3] ), 
        .Y(n549) );
  OR2X1 U261 ( .A(\mult[12][3] ), .B(n551), .Y(n565) );
  OAI2BB1X1 U262 ( .A0N(n553), .A1N(\mult[12][2] ), .B0(n566), .Y(n551) );
  OAI21XL U263 ( .A0(\mult[12][2] ), .A1(n553), .B0(\mult[13][2] ), .Y(n566)
         );
  OAI21XL U264 ( .A0(n554), .A1(n567), .B0(n568), .Y(n553) );
  OAI2BB1X1 U265 ( .A0N(n554), .A1N(n567), .B0(\mult[13][1] ), .Y(n568) );
  CLKINVX1 U266 ( .A(\mult[12][1] ), .Y(n567) );
  NAND2X1 U267 ( .A(\mult[13][0] ), .B(\mult[12][0] ), .Y(n554) );
  CLKINVX1 U268 ( .A(\mult[12][6] ), .Y(n562) );
  XOR2X1 U269 ( .A(\mult[13][0] ), .B(\mult[12][0] ), .Y(\tree_sums[3][7][0] )
         );
  XNOR2X1 U270 ( .A(n569), .B(n570), .Y(\tree_sums[3][6][7] ) );
  XNOR2X1 U271 ( .A(n571), .B(n572), .Y(\tree_sums[3][6][6] ) );
  XNOR2X1 U272 ( .A(\mult[26][6] ), .B(\mult[27][6] ), .Y(n571) );
  XNOR2X1 U273 ( .A(n573), .B(n574), .Y(\tree_sums[3][6][5] ) );
  XNOR2X1 U274 ( .A(\mult[26][5] ), .B(\mult[27][5] ), .Y(n573) );
  XNOR2X1 U275 ( .A(n575), .B(n576), .Y(\tree_sums[3][6][4] ) );
  XNOR2X1 U276 ( .A(\mult[26][4] ), .B(\mult[27][4] ), .Y(n575) );
  XNOR2X1 U277 ( .A(n577), .B(n578), .Y(\tree_sums[3][6][3] ) );
  XNOR2X1 U278 ( .A(\mult[26][3] ), .B(\mult[27][3] ), .Y(n577) );
  XNOR2X1 U279 ( .A(n579), .B(n580), .Y(\tree_sums[3][6][2] ) );
  XNOR2X1 U280 ( .A(\mult[26][2] ), .B(\mult[27][2] ), .Y(n579) );
  XOR2X1 U281 ( .A(n581), .B(n582), .Y(\tree_sums[3][6][1] ) );
  XNOR2X1 U282 ( .A(\mult[26][1] ), .B(\mult[27][1] ), .Y(n582) );
  XNOR2X1 U283 ( .A(n583), .B(n584), .Y(\tree_sums[3][6][9] ) );
  CLKINVX1 U284 ( .A(n569), .Y(n584) );
  NOR2BX1 U285 ( .AN(n585), .B(n586), .Y(n569) );
  OAI21XL U286 ( .A0(n570), .A1(n586), .B0(n585), .Y(n583) );
  NAND2X1 U287 ( .A(\mult[27][7] ), .B(\mult[26][7] ), .Y(n585) );
  NOR2X1 U288 ( .A(\mult[27][7] ), .B(\mult[26][7] ), .Y(n586) );
  AOI2BB2X1 U289 ( .B0(n587), .B1(\mult[27][6] ), .A0N(n588), .A1N(n589), .Y(
        n570) );
  NAND2X1 U290 ( .A(n589), .B(n588), .Y(n587) );
  CLKINVX1 U291 ( .A(n572), .Y(n588) );
  OAI2BB1X1 U292 ( .A0N(n574), .A1N(\mult[26][5] ), .B0(n590), .Y(n572) );
  OAI21XL U293 ( .A0(\mult[26][5] ), .A1(n574), .B0(\mult[27][5] ), .Y(n590)
         );
  OAI2BB1X1 U294 ( .A0N(n576), .A1N(\mult[26][4] ), .B0(n591), .Y(n574) );
  OAI21XL U295 ( .A0(\mult[26][4] ), .A1(n576), .B0(\mult[27][4] ), .Y(n591)
         );
  AO22X1 U296 ( .A0(n578), .A1(\mult[26][3] ), .B0(n592), .B1(\mult[27][3] ), 
        .Y(n576) );
  OR2X1 U297 ( .A(\mult[26][3] ), .B(n578), .Y(n592) );
  OAI2BB1X1 U298 ( .A0N(n580), .A1N(\mult[26][2] ), .B0(n593), .Y(n578) );
  OAI21XL U299 ( .A0(\mult[26][2] ), .A1(n580), .B0(\mult[27][2] ), .Y(n593)
         );
  OAI21XL U300 ( .A0(n581), .A1(n594), .B0(n595), .Y(n580) );
  OAI2BB1X1 U301 ( .A0N(n581), .A1N(n594), .B0(\mult[27][1] ), .Y(n595) );
  CLKINVX1 U302 ( .A(\mult[26][1] ), .Y(n594) );
  NAND2X1 U303 ( .A(\mult[27][0] ), .B(\mult[26][0] ), .Y(n581) );
  CLKINVX1 U304 ( .A(\mult[26][6] ), .Y(n589) );
  XOR2X1 U305 ( .A(\mult[27][0] ), .B(\mult[26][0] ), .Y(\tree_sums[3][6][0] )
         );
  XNOR2X1 U306 ( .A(n596), .B(n597), .Y(\tree_sums[3][5][7] ) );
  XNOR2X1 U307 ( .A(n598), .B(n599), .Y(\tree_sums[3][5][6] ) );
  XNOR2X1 U308 ( .A(\mult[42][6] ), .B(\mult[43][6] ), .Y(n598) );
  XNOR2X1 U309 ( .A(n600), .B(n601), .Y(\tree_sums[3][5][5] ) );
  XNOR2X1 U310 ( .A(\mult[42][5] ), .B(\mult[43][5] ), .Y(n600) );
  XNOR2X1 U311 ( .A(n602), .B(n603), .Y(\tree_sums[3][5][4] ) );
  XNOR2X1 U312 ( .A(\mult[42][4] ), .B(\mult[43][4] ), .Y(n602) );
  XNOR2X1 U313 ( .A(n604), .B(n605), .Y(\tree_sums[3][5][3] ) );
  XNOR2X1 U314 ( .A(\mult[42][3] ), .B(\mult[43][3] ), .Y(n604) );
  XNOR2X1 U315 ( .A(n606), .B(n607), .Y(\tree_sums[3][5][2] ) );
  XNOR2X1 U316 ( .A(\mult[42][2] ), .B(\mult[43][2] ), .Y(n606) );
  XOR2X1 U317 ( .A(n608), .B(n609), .Y(\tree_sums[3][5][1] ) );
  XNOR2X1 U318 ( .A(\mult[42][1] ), .B(\mult[43][1] ), .Y(n609) );
  XNOR2X1 U319 ( .A(n610), .B(n611), .Y(\tree_sums[3][5][9] ) );
  CLKINVX1 U320 ( .A(n596), .Y(n611) );
  NOR2BX1 U321 ( .AN(n612), .B(n613), .Y(n596) );
  OAI21XL U322 ( .A0(n597), .A1(n613), .B0(n612), .Y(n610) );
  NAND2X1 U323 ( .A(\mult[43][7] ), .B(\mult[42][7] ), .Y(n612) );
  NOR2X1 U324 ( .A(\mult[43][7] ), .B(\mult[42][7] ), .Y(n613) );
  AOI2BB2X1 U325 ( .B0(n614), .B1(\mult[43][6] ), .A0N(n615), .A1N(n616), .Y(
        n597) );
  NAND2X1 U326 ( .A(n616), .B(n615), .Y(n614) );
  CLKINVX1 U327 ( .A(n599), .Y(n615) );
  OAI2BB1X1 U328 ( .A0N(n601), .A1N(\mult[42][5] ), .B0(n617), .Y(n599) );
  OAI21XL U329 ( .A0(\mult[42][5] ), .A1(n601), .B0(\mult[43][5] ), .Y(n617)
         );
  OAI2BB1X1 U330 ( .A0N(n603), .A1N(\mult[42][4] ), .B0(n618), .Y(n601) );
  OAI21XL U331 ( .A0(\mult[42][4] ), .A1(n603), .B0(\mult[43][4] ), .Y(n618)
         );
  AO22X1 U332 ( .A0(n605), .A1(\mult[42][3] ), .B0(n619), .B1(\mult[43][3] ), 
        .Y(n603) );
  OR2X1 U333 ( .A(\mult[42][3] ), .B(n605), .Y(n619) );
  OAI2BB1X1 U334 ( .A0N(n607), .A1N(\mult[42][2] ), .B0(n620), .Y(n605) );
  OAI21XL U335 ( .A0(\mult[42][2] ), .A1(n607), .B0(\mult[43][2] ), .Y(n620)
         );
  OAI21XL U336 ( .A0(n608), .A1(n621), .B0(n622), .Y(n607) );
  OAI2BB1X1 U337 ( .A0N(n608), .A1N(n621), .B0(\mult[43][1] ), .Y(n622) );
  CLKINVX1 U338 ( .A(\mult[42][1] ), .Y(n621) );
  NAND2X1 U339 ( .A(\mult[43][0] ), .B(\mult[42][0] ), .Y(n608) );
  CLKINVX1 U340 ( .A(\mult[42][6] ), .Y(n616) );
  XOR2X1 U341 ( .A(\mult[43][0] ), .B(\mult[42][0] ), .Y(\tree_sums[3][5][0] )
         );
  XNOR2X1 U342 ( .A(n623), .B(n624), .Y(\tree_sums[3][4][7] ) );
  XNOR2X1 U343 ( .A(n625), .B(n626), .Y(\tree_sums[3][4][6] ) );
  XNOR2X1 U344 ( .A(\mult[56][6] ), .B(\mult[57][6] ), .Y(n625) );
  XNOR2X1 U345 ( .A(n627), .B(n628), .Y(\tree_sums[3][4][5] ) );
  XNOR2X1 U346 ( .A(\mult[56][5] ), .B(\mult[57][5] ), .Y(n627) );
  XNOR2X1 U347 ( .A(n629), .B(n630), .Y(\tree_sums[3][4][4] ) );
  XNOR2X1 U348 ( .A(\mult[56][4] ), .B(\mult[57][4] ), .Y(n629) );
  XNOR2X1 U349 ( .A(n631), .B(n632), .Y(\tree_sums[3][4][3] ) );
  XNOR2X1 U350 ( .A(\mult[56][3] ), .B(\mult[57][3] ), .Y(n631) );
  XNOR2X1 U351 ( .A(n633), .B(n634), .Y(\tree_sums[3][4][2] ) );
  XNOR2X1 U352 ( .A(\mult[56][2] ), .B(\mult[57][2] ), .Y(n633) );
  XOR2X1 U353 ( .A(n635), .B(n636), .Y(\tree_sums[3][4][1] ) );
  XNOR2X1 U354 ( .A(\mult[56][1] ), .B(\mult[57][1] ), .Y(n636) );
  XNOR2X1 U355 ( .A(n637), .B(n638), .Y(\tree_sums[3][4][9] ) );
  CLKINVX1 U356 ( .A(n623), .Y(n638) );
  NOR2BX1 U357 ( .AN(n639), .B(n640), .Y(n623) );
  OAI21XL U358 ( .A0(n624), .A1(n640), .B0(n639), .Y(n637) );
  NAND2X1 U359 ( .A(\mult[57][7] ), .B(\mult[56][7] ), .Y(n639) );
  NOR2X1 U360 ( .A(\mult[57][7] ), .B(\mult[56][7] ), .Y(n640) );
  AOI2BB2X1 U361 ( .B0(n641), .B1(\mult[57][6] ), .A0N(n642), .A1N(n643), .Y(
        n624) );
  NAND2X1 U362 ( .A(n643), .B(n642), .Y(n641) );
  CLKINVX1 U363 ( .A(n626), .Y(n642) );
  OAI2BB1X1 U364 ( .A0N(n628), .A1N(\mult[56][5] ), .B0(n644), .Y(n626) );
  OAI21XL U365 ( .A0(\mult[56][5] ), .A1(n628), .B0(\mult[57][5] ), .Y(n644)
         );
  OAI2BB1X1 U366 ( .A0N(n630), .A1N(\mult[56][4] ), .B0(n645), .Y(n628) );
  OAI21XL U367 ( .A0(\mult[56][4] ), .A1(n630), .B0(\mult[57][4] ), .Y(n645)
         );
  AO22X1 U368 ( .A0(n632), .A1(\mult[56][3] ), .B0(n646), .B1(\mult[57][3] ), 
        .Y(n630) );
  OR2X1 U369 ( .A(\mult[56][3] ), .B(n632), .Y(n646) );
  OAI2BB1X1 U370 ( .A0N(n634), .A1N(\mult[56][2] ), .B0(n647), .Y(n632) );
  OAI21XL U371 ( .A0(\mult[56][2] ), .A1(n634), .B0(\mult[57][2] ), .Y(n647)
         );
  OAI21XL U372 ( .A0(n635), .A1(n648), .B0(n649), .Y(n634) );
  OAI2BB1X1 U373 ( .A0N(n635), .A1N(n648), .B0(\mult[57][1] ), .Y(n649) );
  CLKINVX1 U374 ( .A(\mult[56][1] ), .Y(n648) );
  NAND2X1 U375 ( .A(\mult[57][0] ), .B(\mult[56][0] ), .Y(n635) );
  CLKINVX1 U376 ( .A(\mult[56][6] ), .Y(n643) );
  XOR2X1 U377 ( .A(\mult[57][0] ), .B(\mult[56][0] ), .Y(\tree_sums[3][4][0] )
         );
  MXI2X1 U378 ( .A(n650), .B(n651), .S0(n652), .Y(\tree_sums[3][3][8] ) );
  XNOR2X1 U379 ( .A(n653), .B(n654), .Y(\tree_sums[3][3][7] ) );
  XNOR2X1 U380 ( .A(\tree_sums[1][24][7] ), .B(\tree_sums[1][25][7] ), .Y(n653) );
  XNOR2X1 U381 ( .A(n655), .B(n656), .Y(\tree_sums[3][3][6] ) );
  XNOR2X1 U382 ( .A(\tree_sums[1][24][6] ), .B(\tree_sums[1][25][6] ), .Y(n655) );
  XNOR2X1 U383 ( .A(n657), .B(n658), .Y(\tree_sums[3][3][5] ) );
  XNOR2X1 U384 ( .A(\tree_sums[1][24][5] ), .B(\tree_sums[1][25][5] ), .Y(n657) );
  XNOR2X1 U385 ( .A(n659), .B(n660), .Y(\tree_sums[3][3][4] ) );
  XNOR2X1 U386 ( .A(\tree_sums[1][24][4] ), .B(\tree_sums[1][25][4] ), .Y(n659) );
  XNOR2X1 U387 ( .A(n661), .B(n662), .Y(\tree_sums[3][3][3] ) );
  XNOR2X1 U388 ( .A(\tree_sums[1][24][3] ), .B(\tree_sums[1][25][3] ), .Y(n661) );
  XNOR2X1 U389 ( .A(n663), .B(n664), .Y(\tree_sums[3][3][2] ) );
  XNOR2X1 U390 ( .A(\tree_sums[1][24][2] ), .B(\tree_sums[1][25][2] ), .Y(n663) );
  XOR2X1 U391 ( .A(n665), .B(n666), .Y(\tree_sums[3][3][1] ) );
  XNOR2X1 U392 ( .A(\tree_sums[1][24][1] ), .B(\tree_sums[1][25][1] ), .Y(n666) );
  MXI2X1 U393 ( .A(n650), .B(n651), .S0(n667), .Y(\tree_sums[3][3][9] ) );
  OA21XL U394 ( .A0(n652), .A1(n668), .B0(n669), .Y(n667) );
  AOI21X1 U395 ( .A0(n654), .A1(\tree_sums[1][24][7] ), .B0(n670), .Y(n652) );
  OA21XL U396 ( .A0(\tree_sums[1][24][7] ), .A1(n654), .B0(
        \tree_sums[1][25][7] ), .Y(n670) );
  AO22X1 U397 ( .A0(n656), .A1(\tree_sums[1][24][6] ), .B0(n671), .B1(
        \tree_sums[1][25][6] ), .Y(n654) );
  OR2X1 U398 ( .A(\tree_sums[1][24][6] ), .B(n656), .Y(n671) );
  OAI2BB1X1 U399 ( .A0N(n658), .A1N(\tree_sums[1][24][5] ), .B0(n672), .Y(n656) );
  OAI21XL U400 ( .A0(\tree_sums[1][24][5] ), .A1(n658), .B0(
        \tree_sums[1][25][5] ), .Y(n672) );
  OAI2BB1X1 U401 ( .A0N(n660), .A1N(\tree_sums[1][24][4] ), .B0(n673), .Y(n658) );
  OAI21XL U402 ( .A0(\tree_sums[1][24][4] ), .A1(n660), .B0(
        \tree_sums[1][25][4] ), .Y(n673) );
  AO22X1 U403 ( .A0(n662), .A1(\tree_sums[1][24][3] ), .B0(n674), .B1(
        \tree_sums[1][25][3] ), .Y(n660) );
  OR2X1 U404 ( .A(\tree_sums[1][24][3] ), .B(n662), .Y(n674) );
  OAI2BB1X1 U405 ( .A0N(n664), .A1N(\tree_sums[1][24][2] ), .B0(n675), .Y(n662) );
  OAI21XL U406 ( .A0(\tree_sums[1][24][2] ), .A1(n664), .B0(
        \tree_sums[1][25][2] ), .Y(n675) );
  OAI21XL U407 ( .A0(n665), .A1(n676), .B0(n677), .Y(n664) );
  OAI2BB1X1 U408 ( .A0N(n665), .A1N(n676), .B0(\tree_sums[1][25][1] ), .Y(n677) );
  CLKINVX1 U409 ( .A(\tree_sums[1][24][1] ), .Y(n676) );
  NAND2X1 U410 ( .A(\tree_sums[1][25][0] ), .B(\tree_sums[1][24][0] ), .Y(n665) );
  XNOR2X1 U411 ( .A(\tree_sums[1][24][13] ), .B(\tree_sums[1][25][13] ), .Y(
        n651) );
  NOR2BX1 U412 ( .AN(n669), .B(n668), .Y(n650) );
  NOR2X1 U413 ( .A(\tree_sums[1][25][13] ), .B(\tree_sums[1][24][13] ), .Y(
        n668) );
  NAND2X1 U414 ( .A(\tree_sums[1][25][13] ), .B(\tree_sums[1][24][13] ), .Y(
        n669) );
  XOR2X1 U415 ( .A(\tree_sums[1][25][0] ), .B(\tree_sums[1][24][0] ), .Y(
        \tree_sums[3][3][0] ) );
  MXI2X1 U416 ( .A(n678), .B(n679), .S0(n680), .Y(\tree_sums[2][9][7] ) );
  XNOR2X1 U417 ( .A(n681), .B(n682), .Y(\tree_sums[2][9][6] ) );
  XNOR2X1 U418 ( .A(\mult[48][6] ), .B(\mult[49][6] ), .Y(n681) );
  XNOR2X1 U419 ( .A(n683), .B(n684), .Y(\tree_sums[2][9][5] ) );
  XNOR2X1 U420 ( .A(\mult[48][5] ), .B(\mult[49][5] ), .Y(n683) );
  XNOR2X1 U421 ( .A(n685), .B(n686), .Y(\tree_sums[2][9][4] ) );
  XNOR2X1 U422 ( .A(\mult[48][4] ), .B(\mult[49][4] ), .Y(n685) );
  XNOR2X1 U423 ( .A(n687), .B(n688), .Y(\tree_sums[2][9][3] ) );
  XNOR2X1 U424 ( .A(\mult[48][3] ), .B(\mult[49][3] ), .Y(n687) );
  XNOR2X1 U425 ( .A(n689), .B(n690), .Y(\tree_sums[2][9][2] ) );
  XNOR2X1 U426 ( .A(\mult[48][2] ), .B(\mult[49][2] ), .Y(n689) );
  XOR2X1 U427 ( .A(n691), .B(n692), .Y(\tree_sums[2][9][1] ) );
  XNOR2X1 U428 ( .A(\mult[48][1] ), .B(\mult[49][1] ), .Y(n692) );
  MXI2X1 U429 ( .A(n678), .B(n679), .S0(n693), .Y(\tree_sums[2][9][8] ) );
  OA21XL U430 ( .A0(n680), .A1(n694), .B0(n695), .Y(n693) );
  AOI2BB2X1 U431 ( .B0(n696), .B1(\mult[49][6] ), .A0N(n697), .A1N(n698), .Y(
        n680) );
  NAND2X1 U432 ( .A(n698), .B(n697), .Y(n696) );
  CLKINVX1 U433 ( .A(n682), .Y(n697) );
  OAI2BB1X1 U434 ( .A0N(n684), .A1N(\mult[48][5] ), .B0(n699), .Y(n682) );
  OAI21XL U435 ( .A0(\mult[48][5] ), .A1(n684), .B0(\mult[49][5] ), .Y(n699)
         );
  OAI2BB1X1 U436 ( .A0N(n686), .A1N(\mult[48][4] ), .B0(n700), .Y(n684) );
  OAI21XL U437 ( .A0(\mult[48][4] ), .A1(n686), .B0(\mult[49][4] ), .Y(n700)
         );
  AO22X1 U438 ( .A0(n688), .A1(\mult[48][3] ), .B0(n701), .B1(\mult[49][3] ), 
        .Y(n686) );
  OR2X1 U439 ( .A(\mult[48][3] ), .B(n688), .Y(n701) );
  OAI2BB1X1 U440 ( .A0N(n690), .A1N(\mult[48][2] ), .B0(n702), .Y(n688) );
  OAI21XL U441 ( .A0(\mult[48][2] ), .A1(n690), .B0(\mult[49][2] ), .Y(n702)
         );
  OAI21XL U442 ( .A0(n691), .A1(n703), .B0(n704), .Y(n690) );
  OAI2BB1X1 U443 ( .A0N(n691), .A1N(n703), .B0(\mult[49][1] ), .Y(n704) );
  CLKINVX1 U444 ( .A(\mult[48][1] ), .Y(n703) );
  NAND2X1 U445 ( .A(\mult[49][0] ), .B(\mult[48][0] ), .Y(n691) );
  CLKINVX1 U446 ( .A(\mult[48][6] ), .Y(n698) );
  XNOR2X1 U447 ( .A(\mult[48][7] ), .B(\mult[49][7] ), .Y(n679) );
  NOR2BX1 U448 ( .AN(n695), .B(n694), .Y(n678) );
  NOR2X1 U449 ( .A(\mult[49][7] ), .B(\mult[48][7] ), .Y(n694) );
  NAND2X1 U450 ( .A(\mult[49][7] ), .B(\mult[48][7] ), .Y(n695) );
  XOR2X1 U451 ( .A(\mult[49][0] ), .B(\mult[48][0] ), .Y(\tree_sums[2][9][0] )
         );
  MXI2X1 U452 ( .A(n705), .B(n706), .S0(n707), .Y(\tree_sums[2][15][7] ) );
  XNOR2X1 U453 ( .A(n708), .B(n709), .Y(\tree_sums[2][15][6] ) );
  XNOR2X1 U454 ( .A(\mult[4][6] ), .B(\mult[5][6] ), .Y(n708) );
  XNOR2X1 U455 ( .A(n710), .B(n711), .Y(\tree_sums[2][15][5] ) );
  XNOR2X1 U456 ( .A(\mult[4][5] ), .B(\mult[5][5] ), .Y(n710) );
  XNOR2X1 U457 ( .A(n712), .B(n713), .Y(\tree_sums[2][15][4] ) );
  XNOR2X1 U458 ( .A(\mult[4][4] ), .B(\mult[5][4] ), .Y(n712) );
  XNOR2X1 U459 ( .A(n714), .B(n715), .Y(\tree_sums[2][15][3] ) );
  XNOR2X1 U460 ( .A(\mult[4][3] ), .B(\mult[5][3] ), .Y(n714) );
  XNOR2X1 U461 ( .A(n716), .B(n717), .Y(\tree_sums[2][15][2] ) );
  XNOR2X1 U462 ( .A(\mult[4][2] ), .B(\mult[5][2] ), .Y(n716) );
  XOR2X1 U463 ( .A(n718), .B(n719), .Y(\tree_sums[2][15][1] ) );
  XNOR2X1 U464 ( .A(\mult[4][1] ), .B(\mult[5][1] ), .Y(n719) );
  MXI2X1 U465 ( .A(n705), .B(n706), .S0(n720), .Y(\tree_sums[2][15][8] ) );
  OA21XL U466 ( .A0(n707), .A1(n721), .B0(n722), .Y(n720) );
  AOI2BB2X1 U467 ( .B0(n723), .B1(\mult[5][6] ), .A0N(n724), .A1N(n725), .Y(
        n707) );
  NAND2X1 U468 ( .A(n725), .B(n724), .Y(n723) );
  CLKINVX1 U469 ( .A(n709), .Y(n724) );
  OAI2BB1X1 U470 ( .A0N(n711), .A1N(\mult[4][5] ), .B0(n726), .Y(n709) );
  OAI21XL U471 ( .A0(\mult[4][5] ), .A1(n711), .B0(\mult[5][5] ), .Y(n726) );
  OAI2BB1X1 U472 ( .A0N(n713), .A1N(\mult[4][4] ), .B0(n727), .Y(n711) );
  OAI21XL U473 ( .A0(\mult[4][4] ), .A1(n713), .B0(\mult[5][4] ), .Y(n727) );
  AO22X1 U474 ( .A0(n715), .A1(\mult[4][3] ), .B0(n728), .B1(\mult[5][3] ), 
        .Y(n713) );
  OR2X1 U475 ( .A(\mult[4][3] ), .B(n715), .Y(n728) );
  OAI2BB1X1 U476 ( .A0N(n717), .A1N(\mult[4][2] ), .B0(n729), .Y(n715) );
  OAI21XL U477 ( .A0(\mult[4][2] ), .A1(n717), .B0(\mult[5][2] ), .Y(n729) );
  OAI21XL U478 ( .A0(n718), .A1(n730), .B0(n731), .Y(n717) );
  OAI2BB1X1 U479 ( .A0N(n718), .A1N(n730), .B0(\mult[5][1] ), .Y(n731) );
  CLKINVX1 U480 ( .A(\mult[4][1] ), .Y(n730) );
  NAND2X1 U481 ( .A(\mult[5][0] ), .B(\mult[4][0] ), .Y(n718) );
  CLKINVX1 U482 ( .A(\mult[4][6] ), .Y(n725) );
  XNOR2X1 U483 ( .A(\mult[4][7] ), .B(\mult[5][7] ), .Y(n706) );
  NOR2BX1 U484 ( .AN(n722), .B(n721), .Y(n705) );
  NOR2X1 U485 ( .A(\mult[5][7] ), .B(\mult[4][7] ), .Y(n721) );
  NAND2X1 U486 ( .A(\mult[5][7] ), .B(\mult[4][7] ), .Y(n722) );
  XOR2X1 U487 ( .A(\mult[5][0] ), .B(\mult[4][0] ), .Y(\tree_sums[2][15][0] )
         );
  MXI2X1 U488 ( .A(n732), .B(n733), .S0(n734), .Y(\tree_sums[2][14][7] ) );
  XNOR2X1 U489 ( .A(n735), .B(n736), .Y(\tree_sums[2][14][6] ) );
  XNOR2X1 U490 ( .A(\mult[10][6] ), .B(\mult[11][6] ), .Y(n735) );
  XNOR2X1 U491 ( .A(n737), .B(n738), .Y(\tree_sums[2][14][5] ) );
  XNOR2X1 U492 ( .A(\mult[10][5] ), .B(\mult[11][5] ), .Y(n737) );
  XNOR2X1 U493 ( .A(n739), .B(n740), .Y(\tree_sums[2][14][4] ) );
  XNOR2X1 U494 ( .A(\mult[10][4] ), .B(\mult[11][4] ), .Y(n739) );
  XNOR2X1 U495 ( .A(n741), .B(n742), .Y(\tree_sums[2][14][3] ) );
  XNOR2X1 U496 ( .A(\mult[10][3] ), .B(\mult[11][3] ), .Y(n741) );
  XNOR2X1 U497 ( .A(n743), .B(n744), .Y(\tree_sums[2][14][2] ) );
  XNOR2X1 U498 ( .A(\mult[10][2] ), .B(\mult[11][2] ), .Y(n743) );
  XOR2X1 U499 ( .A(n745), .B(n746), .Y(\tree_sums[2][14][1] ) );
  XNOR2X1 U500 ( .A(\mult[10][1] ), .B(\mult[11][1] ), .Y(n746) );
  MXI2X1 U501 ( .A(n732), .B(n733), .S0(n747), .Y(\tree_sums[2][14][8] ) );
  OA21XL U502 ( .A0(n734), .A1(n748), .B0(n749), .Y(n747) );
  AOI2BB2X1 U503 ( .B0(n750), .B1(\mult[11][6] ), .A0N(n751), .A1N(n752), .Y(
        n734) );
  NAND2X1 U504 ( .A(n752), .B(n751), .Y(n750) );
  CLKINVX1 U505 ( .A(n736), .Y(n751) );
  OAI2BB1X1 U506 ( .A0N(n738), .A1N(\mult[10][5] ), .B0(n753), .Y(n736) );
  OAI21XL U507 ( .A0(\mult[10][5] ), .A1(n738), .B0(\mult[11][5] ), .Y(n753)
         );
  OAI2BB1X1 U508 ( .A0N(n740), .A1N(\mult[10][4] ), .B0(n754), .Y(n738) );
  OAI21XL U509 ( .A0(\mult[10][4] ), .A1(n740), .B0(\mult[11][4] ), .Y(n754)
         );
  AO22X1 U510 ( .A0(n742), .A1(\mult[10][3] ), .B0(n755), .B1(\mult[11][3] ), 
        .Y(n740) );
  OR2X1 U511 ( .A(\mult[10][3] ), .B(n742), .Y(n755) );
  OAI2BB1X1 U512 ( .A0N(n744), .A1N(\mult[10][2] ), .B0(n756), .Y(n742) );
  OAI21XL U513 ( .A0(\mult[10][2] ), .A1(n744), .B0(\mult[11][2] ), .Y(n756)
         );
  OAI21XL U514 ( .A0(n745), .A1(n757), .B0(n758), .Y(n744) );
  OAI2BB1X1 U515 ( .A0N(n745), .A1N(n757), .B0(\mult[11][1] ), .Y(n758) );
  CLKINVX1 U516 ( .A(\mult[10][1] ), .Y(n757) );
  NAND2X1 U517 ( .A(\mult[11][0] ), .B(\mult[10][0] ), .Y(n745) );
  CLKINVX1 U518 ( .A(\mult[10][6] ), .Y(n752) );
  XNOR2X1 U519 ( .A(\mult[10][7] ), .B(\mult[11][7] ), .Y(n733) );
  NOR2BX1 U520 ( .AN(n749), .B(n748), .Y(n732) );
  NOR2X1 U521 ( .A(\mult[11][7] ), .B(\mult[10][7] ), .Y(n748) );
  NAND2X1 U522 ( .A(\mult[11][7] ), .B(\mult[10][7] ), .Y(n749) );
  XOR2X1 U523 ( .A(\mult[11][0] ), .B(\mult[10][0] ), .Y(\tree_sums[2][14][0] ) );
  MXI2X1 U524 ( .A(n759), .B(n760), .S0(n761), .Y(\tree_sums[2][13][7] ) );
  XNOR2X1 U525 ( .A(n762), .B(n763), .Y(\tree_sums[2][13][6] ) );
  XNOR2X1 U526 ( .A(\mult[18][6] ), .B(\mult[19][6] ), .Y(n762) );
  XNOR2X1 U527 ( .A(n764), .B(n765), .Y(\tree_sums[2][13][5] ) );
  XNOR2X1 U528 ( .A(\mult[18][5] ), .B(\mult[19][5] ), .Y(n764) );
  XNOR2X1 U529 ( .A(n766), .B(n767), .Y(\tree_sums[2][13][4] ) );
  XNOR2X1 U530 ( .A(\mult[18][4] ), .B(\mult[19][4] ), .Y(n766) );
  XNOR2X1 U531 ( .A(n768), .B(n769), .Y(\tree_sums[2][13][3] ) );
  XNOR2X1 U532 ( .A(\mult[18][3] ), .B(\mult[19][3] ), .Y(n768) );
  XNOR2X1 U533 ( .A(n770), .B(n771), .Y(\tree_sums[2][13][2] ) );
  XNOR2X1 U534 ( .A(\mult[18][2] ), .B(\mult[19][2] ), .Y(n770) );
  XOR2X1 U535 ( .A(n772), .B(n773), .Y(\tree_sums[2][13][1] ) );
  XNOR2X1 U536 ( .A(\mult[18][1] ), .B(\mult[19][1] ), .Y(n773) );
  MXI2X1 U537 ( .A(n759), .B(n760), .S0(n774), .Y(\tree_sums[2][13][8] ) );
  OA21XL U538 ( .A0(n761), .A1(n775), .B0(n776), .Y(n774) );
  AOI2BB2X1 U539 ( .B0(n777), .B1(\mult[19][6] ), .A0N(n778), .A1N(n779), .Y(
        n761) );
  NAND2X1 U540 ( .A(n779), .B(n778), .Y(n777) );
  CLKINVX1 U541 ( .A(n763), .Y(n778) );
  OAI2BB1X1 U542 ( .A0N(n765), .A1N(\mult[18][5] ), .B0(n780), .Y(n763) );
  OAI21XL U543 ( .A0(\mult[18][5] ), .A1(n765), .B0(\mult[19][5] ), .Y(n780)
         );
  OAI2BB1X1 U544 ( .A0N(n767), .A1N(\mult[18][4] ), .B0(n781), .Y(n765) );
  OAI21XL U545 ( .A0(\mult[18][4] ), .A1(n767), .B0(\mult[19][4] ), .Y(n781)
         );
  AO22X1 U546 ( .A0(n769), .A1(\mult[18][3] ), .B0(n782), .B1(\mult[19][3] ), 
        .Y(n767) );
  OR2X1 U547 ( .A(\mult[18][3] ), .B(n769), .Y(n782) );
  OAI2BB1X1 U548 ( .A0N(n771), .A1N(\mult[18][2] ), .B0(n783), .Y(n769) );
  OAI21XL U549 ( .A0(\mult[18][2] ), .A1(n771), .B0(\mult[19][2] ), .Y(n783)
         );
  OAI21XL U550 ( .A0(n772), .A1(n784), .B0(n785), .Y(n771) );
  OAI2BB1X1 U551 ( .A0N(n772), .A1N(n784), .B0(\mult[19][1] ), .Y(n785) );
  CLKINVX1 U552 ( .A(\mult[18][1] ), .Y(n784) );
  NAND2X1 U553 ( .A(\mult[19][0] ), .B(\mult[18][0] ), .Y(n772) );
  CLKINVX1 U554 ( .A(\mult[18][6] ), .Y(n779) );
  XNOR2X1 U555 ( .A(\mult[18][7] ), .B(\mult[19][7] ), .Y(n760) );
  NOR2BX1 U556 ( .AN(n776), .B(n775), .Y(n759) );
  NOR2X1 U557 ( .A(\mult[19][7] ), .B(\mult[18][7] ), .Y(n775) );
  NAND2X1 U558 ( .A(\mult[19][7] ), .B(\mult[18][7] ), .Y(n776) );
  XOR2X1 U559 ( .A(\mult[19][0] ), .B(\mult[18][0] ), .Y(\tree_sums[2][13][0] ) );
  MXI2X1 U560 ( .A(n786), .B(n787), .S0(n788), .Y(\tree_sums[2][12][7] ) );
  XNOR2X1 U561 ( .A(n789), .B(n790), .Y(\tree_sums[2][12][6] ) );
  XNOR2X1 U562 ( .A(\mult[24][6] ), .B(\mult[25][6] ), .Y(n789) );
  XNOR2X1 U563 ( .A(n791), .B(n792), .Y(\tree_sums[2][12][5] ) );
  XNOR2X1 U564 ( .A(\mult[24][5] ), .B(\mult[25][5] ), .Y(n791) );
  XNOR2X1 U565 ( .A(n793), .B(n794), .Y(\tree_sums[2][12][4] ) );
  XNOR2X1 U566 ( .A(\mult[24][4] ), .B(\mult[25][4] ), .Y(n793) );
  XNOR2X1 U567 ( .A(n795), .B(n796), .Y(\tree_sums[2][12][3] ) );
  XNOR2X1 U568 ( .A(\mult[24][3] ), .B(\mult[25][3] ), .Y(n795) );
  XNOR2X1 U569 ( .A(n797), .B(n798), .Y(\tree_sums[2][12][2] ) );
  XNOR2X1 U570 ( .A(\mult[24][2] ), .B(\mult[25][2] ), .Y(n797) );
  XOR2X1 U571 ( .A(n799), .B(n800), .Y(\tree_sums[2][12][1] ) );
  XNOR2X1 U572 ( .A(\mult[24][1] ), .B(\mult[25][1] ), .Y(n800) );
  MXI2X1 U573 ( .A(n786), .B(n787), .S0(n801), .Y(\tree_sums[2][12][8] ) );
  OA21XL U574 ( .A0(n788), .A1(n802), .B0(n803), .Y(n801) );
  AOI2BB2X1 U575 ( .B0(n804), .B1(\mult[25][6] ), .A0N(n805), .A1N(n806), .Y(
        n788) );
  NAND2X1 U576 ( .A(n806), .B(n805), .Y(n804) );
  CLKINVX1 U577 ( .A(n790), .Y(n805) );
  OAI2BB1X1 U578 ( .A0N(n792), .A1N(\mult[24][5] ), .B0(n807), .Y(n790) );
  OAI21XL U579 ( .A0(\mult[24][5] ), .A1(n792), .B0(\mult[25][5] ), .Y(n807)
         );
  OAI2BB1X1 U580 ( .A0N(n794), .A1N(\mult[24][4] ), .B0(n808), .Y(n792) );
  OAI21XL U581 ( .A0(\mult[24][4] ), .A1(n794), .B0(\mult[25][4] ), .Y(n808)
         );
  AO22X1 U582 ( .A0(n796), .A1(\mult[24][3] ), .B0(n809), .B1(\mult[25][3] ), 
        .Y(n794) );
  OR2X1 U583 ( .A(\mult[24][3] ), .B(n796), .Y(n809) );
  OAI2BB1X1 U584 ( .A0N(n798), .A1N(\mult[24][2] ), .B0(n810), .Y(n796) );
  OAI21XL U585 ( .A0(\mult[24][2] ), .A1(n798), .B0(\mult[25][2] ), .Y(n810)
         );
  OAI21XL U586 ( .A0(n799), .A1(n811), .B0(n812), .Y(n798) );
  OAI2BB1X1 U587 ( .A0N(n799), .A1N(n811), .B0(\mult[25][1] ), .Y(n812) );
  CLKINVX1 U588 ( .A(\mult[24][1] ), .Y(n811) );
  NAND2X1 U589 ( .A(\mult[25][0] ), .B(\mult[24][0] ), .Y(n799) );
  CLKINVX1 U590 ( .A(\mult[24][6] ), .Y(n806) );
  XNOR2X1 U591 ( .A(\mult[24][7] ), .B(\mult[25][7] ), .Y(n787) );
  NOR2BX1 U592 ( .AN(n803), .B(n802), .Y(n786) );
  NOR2X1 U593 ( .A(\mult[25][7] ), .B(\mult[24][7] ), .Y(n802) );
  NAND2X1 U594 ( .A(\mult[25][7] ), .B(\mult[24][7] ), .Y(n803) );
  XOR2X1 U595 ( .A(\mult[25][0] ), .B(\mult[24][0] ), .Y(\tree_sums[2][12][0] ) );
  MXI2X1 U596 ( .A(n813), .B(n814), .S0(n815), .Y(\tree_sums[2][11][7] ) );
  XNOR2X1 U597 ( .A(n816), .B(n817), .Y(\tree_sums[2][11][6] ) );
  XNOR2X1 U598 ( .A(\mult[34][6] ), .B(\mult[35][6] ), .Y(n816) );
  XNOR2X1 U599 ( .A(n818), .B(n819), .Y(\tree_sums[2][11][5] ) );
  XNOR2X1 U600 ( .A(\mult[34][5] ), .B(\mult[35][5] ), .Y(n818) );
  XNOR2X1 U601 ( .A(n820), .B(n821), .Y(\tree_sums[2][11][4] ) );
  XNOR2X1 U602 ( .A(\mult[34][4] ), .B(\mult[35][4] ), .Y(n820) );
  XNOR2X1 U603 ( .A(n822), .B(n823), .Y(\tree_sums[2][11][3] ) );
  XNOR2X1 U604 ( .A(\mult[34][3] ), .B(\mult[35][3] ), .Y(n822) );
  XNOR2X1 U605 ( .A(n824), .B(n825), .Y(\tree_sums[2][11][2] ) );
  XNOR2X1 U606 ( .A(\mult[34][2] ), .B(\mult[35][2] ), .Y(n824) );
  XOR2X1 U607 ( .A(n826), .B(n827), .Y(\tree_sums[2][11][1] ) );
  XNOR2X1 U608 ( .A(\mult[34][1] ), .B(\mult[35][1] ), .Y(n827) );
  MXI2X1 U609 ( .A(n813), .B(n814), .S0(n828), .Y(\tree_sums[2][11][8] ) );
  OA21XL U610 ( .A0(n815), .A1(n829), .B0(n830), .Y(n828) );
  AOI2BB2X1 U611 ( .B0(n831), .B1(\mult[35][6] ), .A0N(n832), .A1N(n833), .Y(
        n815) );
  NAND2X1 U612 ( .A(n833), .B(n832), .Y(n831) );
  CLKINVX1 U613 ( .A(n817), .Y(n832) );
  OAI2BB1X1 U614 ( .A0N(n819), .A1N(\mult[34][5] ), .B0(n834), .Y(n817) );
  OAI21XL U615 ( .A0(\mult[34][5] ), .A1(n819), .B0(\mult[35][5] ), .Y(n834)
         );
  OAI2BB1X1 U616 ( .A0N(n821), .A1N(\mult[34][4] ), .B0(n835), .Y(n819) );
  OAI21XL U617 ( .A0(\mult[34][4] ), .A1(n821), .B0(\mult[35][4] ), .Y(n835)
         );
  AO22X1 U618 ( .A0(n823), .A1(\mult[34][3] ), .B0(n836), .B1(\mult[35][3] ), 
        .Y(n821) );
  OR2X1 U619 ( .A(\mult[34][3] ), .B(n823), .Y(n836) );
  OAI2BB1X1 U620 ( .A0N(n825), .A1N(\mult[34][2] ), .B0(n837), .Y(n823) );
  OAI21XL U621 ( .A0(\mult[34][2] ), .A1(n825), .B0(\mult[35][2] ), .Y(n837)
         );
  OAI21XL U622 ( .A0(n826), .A1(n838), .B0(n839), .Y(n825) );
  OAI2BB1X1 U623 ( .A0N(n826), .A1N(n838), .B0(\mult[35][1] ), .Y(n839) );
  CLKINVX1 U624 ( .A(\mult[34][1] ), .Y(n838) );
  NAND2X1 U625 ( .A(\mult[35][0] ), .B(\mult[34][0] ), .Y(n826) );
  CLKINVX1 U626 ( .A(\mult[34][6] ), .Y(n833) );
  XNOR2X1 U627 ( .A(\mult[34][7] ), .B(\mult[35][7] ), .Y(n814) );
  NOR2BX1 U628 ( .AN(n830), .B(n829), .Y(n813) );
  NOR2X1 U629 ( .A(\mult[35][7] ), .B(\mult[34][7] ), .Y(n829) );
  NAND2X1 U630 ( .A(\mult[35][7] ), .B(\mult[34][7] ), .Y(n830) );
  XOR2X1 U631 ( .A(\mult[35][0] ), .B(\mult[34][0] ), .Y(\tree_sums[2][11][0] ) );
  MXI2X1 U632 ( .A(n840), .B(n841), .S0(n842), .Y(\tree_sums[2][10][7] ) );
  XNOR2X1 U633 ( .A(n843), .B(n844), .Y(\tree_sums[2][10][6] ) );
  XNOR2X1 U634 ( .A(\mult[40][6] ), .B(\mult[41][6] ), .Y(n843) );
  XNOR2X1 U635 ( .A(n845), .B(n846), .Y(\tree_sums[2][10][5] ) );
  XNOR2X1 U636 ( .A(\mult[40][5] ), .B(\mult[41][5] ), .Y(n845) );
  XNOR2X1 U637 ( .A(n847), .B(n848), .Y(\tree_sums[2][10][4] ) );
  XNOR2X1 U638 ( .A(\mult[40][4] ), .B(\mult[41][4] ), .Y(n847) );
  XNOR2X1 U639 ( .A(n849), .B(n850), .Y(\tree_sums[2][10][3] ) );
  XNOR2X1 U640 ( .A(\mult[40][3] ), .B(\mult[41][3] ), .Y(n849) );
  XNOR2X1 U641 ( .A(n851), .B(n852), .Y(\tree_sums[2][10][2] ) );
  XNOR2X1 U642 ( .A(\mult[40][2] ), .B(\mult[41][2] ), .Y(n851) );
  XOR2X1 U643 ( .A(n853), .B(n854), .Y(\tree_sums[2][10][1] ) );
  XNOR2X1 U644 ( .A(\mult[40][1] ), .B(\mult[41][1] ), .Y(n854) );
  MXI2X1 U645 ( .A(n840), .B(n841), .S0(n855), .Y(\tree_sums[2][10][8] ) );
  OA21XL U646 ( .A0(n842), .A1(n856), .B0(n857), .Y(n855) );
  AOI2BB2X1 U647 ( .B0(n858), .B1(\mult[41][6] ), .A0N(n859), .A1N(n860), .Y(
        n842) );
  NAND2X1 U648 ( .A(n860), .B(n859), .Y(n858) );
  CLKINVX1 U649 ( .A(n844), .Y(n859) );
  OAI2BB1X1 U650 ( .A0N(n846), .A1N(\mult[40][5] ), .B0(n861), .Y(n844) );
  OAI21XL U651 ( .A0(\mult[40][5] ), .A1(n846), .B0(\mult[41][5] ), .Y(n861)
         );
  OAI2BB1X1 U652 ( .A0N(n848), .A1N(\mult[40][4] ), .B0(n862), .Y(n846) );
  OAI21XL U653 ( .A0(\mult[40][4] ), .A1(n848), .B0(\mult[41][4] ), .Y(n862)
         );
  AO22X1 U654 ( .A0(n850), .A1(\mult[40][3] ), .B0(n863), .B1(\mult[41][3] ), 
        .Y(n848) );
  OR2X1 U655 ( .A(\mult[40][3] ), .B(n850), .Y(n863) );
  OAI2BB1X1 U656 ( .A0N(n852), .A1N(\mult[40][2] ), .B0(n864), .Y(n850) );
  OAI21XL U657 ( .A0(\mult[40][2] ), .A1(n852), .B0(\mult[41][2] ), .Y(n864)
         );
  OAI21XL U658 ( .A0(n853), .A1(n865), .B0(n866), .Y(n852) );
  OAI2BB1X1 U659 ( .A0N(n853), .A1N(n865), .B0(\mult[41][1] ), .Y(n866) );
  CLKINVX1 U660 ( .A(\mult[40][1] ), .Y(n865) );
  NAND2X1 U661 ( .A(\mult[41][0] ), .B(\mult[40][0] ), .Y(n853) );
  CLKINVX1 U662 ( .A(\mult[40][6] ), .Y(n860) );
  XNOR2X1 U663 ( .A(\mult[40][7] ), .B(\mult[41][7] ), .Y(n841) );
  NOR2BX1 U664 ( .AN(n857), .B(n856), .Y(n840) );
  NOR2X1 U665 ( .A(\mult[41][7] ), .B(\mult[40][7] ), .Y(n856) );
  NAND2X1 U666 ( .A(\mult[41][7] ), .B(\mult[40][7] ), .Y(n857) );
  XOR2X1 U667 ( .A(\mult[41][0] ), .B(\mult[40][0] ), .Y(\tree_sums[2][10][0] ) );
  XOR2X1 U668 ( .A(n867), .B(n868), .Y(\add_23_root_add_61_G6/SUM[8] ) );
  XNOR2X1 U669 ( .A(n869), .B(n870), .Y(n868) );
  XOR2X1 U670 ( .A(n871), .B(n872), .Y(\add_23_root_add_61_G6/SUM[7] ) );
  XOR2X1 U671 ( .A(\tree_sums[1][23][7] ), .B(n873), .Y(n872) );
  XOR2X1 U672 ( .A(n874), .B(n875), .Y(\add_23_root_add_61_G6/SUM[6] ) );
  XOR2X1 U673 ( .A(\tree_sums[1][23][6] ), .B(n876), .Y(n875) );
  XOR2X1 U674 ( .A(n877), .B(n878), .Y(\add_23_root_add_61_G6/SUM[5] ) );
  XOR2X1 U675 ( .A(\tree_sums[1][23][5] ), .B(n879), .Y(n878) );
  XOR2X1 U676 ( .A(n880), .B(n881), .Y(\add_23_root_add_61_G6/SUM[4] ) );
  XOR2X1 U677 ( .A(\tree_sums[1][23][4] ), .B(n882), .Y(n881) );
  XOR2X1 U678 ( .A(n883), .B(n884), .Y(\add_23_root_add_61_G6/SUM[3] ) );
  XOR2X1 U679 ( .A(\tree_sums[1][23][3] ), .B(n885), .Y(n884) );
  XOR2X1 U680 ( .A(n886), .B(n887), .Y(\add_23_root_add_61_G6/SUM[2] ) );
  XOR2X1 U681 ( .A(\tree_sums[1][23][2] ), .B(n888), .Y(n887) );
  XOR2X1 U682 ( .A(n889), .B(n890), .Y(\add_23_root_add_61_G6/SUM[1] ) );
  XOR2X1 U683 ( .A(n891), .B(\tree_sums[1][23][1] ), .Y(n890) );
  XOR2X1 U684 ( .A(n892), .B(n893), .Y(\add_23_root_add_61_G6/SUM[12] ) );
  XNOR2X1 U685 ( .A(n894), .B(n895), .Y(n893) );
  XNOR2X1 U686 ( .A(n896), .B(n869), .Y(n894) );
  XOR2X1 U687 ( .A(n897), .B(n898), .Y(\add_23_root_add_61_G6/SUM[9] ) );
  XOR2X1 U688 ( .A(n895), .B(n892), .Y(n898) );
  OA22X1 U689 ( .A0(n870), .A1(n867), .B0(n899), .B1(n869), .Y(n892) );
  CLKINVX1 U690 ( .A(\tree_sums[1][23][13] ), .Y(n869) );
  AND2X1 U691 ( .A(n867), .B(n870), .Y(n899) );
  XNOR2X1 U692 ( .A(n896), .B(n895), .Y(n867) );
  OA21XL U693 ( .A0(n873), .A1(n871), .B0(n900), .Y(n870) );
  OAI2BB1X1 U694 ( .A0N(n871), .A1N(n873), .B0(\tree_sums[1][23][7] ), .Y(n900) );
  XOR2X1 U695 ( .A(n895), .B(n901), .Y(n871) );
  OA21XL U696 ( .A0(n876), .A1(n874), .B0(n902), .Y(n873) );
  OAI2BB1X1 U697 ( .A0N(n874), .A1N(n876), .B0(\tree_sums[1][23][6] ), .Y(n902) );
  XOR2X1 U698 ( .A(n903), .B(n904), .Y(n874) );
  XNOR2X1 U699 ( .A(\mult[28][6] ), .B(\mult[29][6] ), .Y(n903) );
  AOI2BB2X1 U700 ( .B0(n905), .B1(\tree_sums[1][23][5] ), .A0N(n879), .A1N(
        n877), .Y(n876) );
  NAND2X1 U701 ( .A(n877), .B(n879), .Y(n905) );
  OA21XL U702 ( .A0(n882), .A1(n880), .B0(n906), .Y(n879) );
  OAI2BB1X1 U703 ( .A0N(n880), .A1N(n882), .B0(\tree_sums[1][23][4] ), .Y(n906) );
  XOR2X1 U704 ( .A(n907), .B(n908), .Y(n880) );
  XNOR2X1 U705 ( .A(\mult[28][4] ), .B(\mult[29][4] ), .Y(n907) );
  OA21XL U706 ( .A0(n885), .A1(n883), .B0(n909), .Y(n882) );
  OAI2BB1X1 U707 ( .A0N(n883), .A1N(n885), .B0(\tree_sums[1][23][3] ), .Y(n909) );
  XOR2X1 U708 ( .A(n910), .B(n911), .Y(n883) );
  XNOR2X1 U709 ( .A(\mult[28][3] ), .B(\mult[29][3] ), .Y(n910) );
  AOI2BB2X1 U710 ( .B0(n912), .B1(\tree_sums[1][23][2] ), .A0N(n888), .A1N(
        n886), .Y(n885) );
  NAND2X1 U711 ( .A(n886), .B(n888), .Y(n912) );
  OA21XL U712 ( .A0(n889), .A1(n891), .B0(n913), .Y(n888) );
  OAI2BB1X1 U713 ( .A0N(n891), .A1N(n889), .B0(\tree_sums[1][23][1] ), .Y(n913) );
  NAND2X1 U714 ( .A(\tree_sums[1][23][0] ), .B(n914), .Y(n891) );
  XOR2X1 U715 ( .A(n915), .B(n916), .Y(n889) );
  XNOR2X1 U716 ( .A(\mult[29][1] ), .B(n917), .Y(n916) );
  XOR2X1 U717 ( .A(n918), .B(n919), .Y(n886) );
  XNOR2X1 U718 ( .A(\mult[28][2] ), .B(\mult[29][2] ), .Y(n918) );
  XOR2X1 U719 ( .A(n920), .B(n921), .Y(n877) );
  XNOR2X1 U720 ( .A(\mult[28][5] ), .B(\mult[29][5] ), .Y(n920) );
  NOR2BX1 U721 ( .AN(n922), .B(n923), .Y(n895) );
  XNOR2X1 U722 ( .A(\tree_sums[1][23][13] ), .B(n896), .Y(n897) );
  OAI21XL U723 ( .A0(n901), .A1(n923), .B0(n922), .Y(n896) );
  NAND2X1 U724 ( .A(\mult[29][7] ), .B(\mult[28][7] ), .Y(n922) );
  NOR2X1 U725 ( .A(\mult[29][7] ), .B(\mult[28][7] ), .Y(n923) );
  AOI2BB2X1 U726 ( .B0(n924), .B1(\mult[29][6] ), .A0N(n925), .A1N(n926), .Y(
        n901) );
  NAND2X1 U727 ( .A(n926), .B(n925), .Y(n924) );
  CLKINVX1 U728 ( .A(n904), .Y(n925) );
  OAI2BB1X1 U729 ( .A0N(n921), .A1N(\mult[28][5] ), .B0(n927), .Y(n904) );
  OAI21XL U730 ( .A0(\mult[28][5] ), .A1(n921), .B0(\mult[29][5] ), .Y(n927)
         );
  OAI2BB1X1 U731 ( .A0N(n908), .A1N(\mult[28][4] ), .B0(n928), .Y(n921) );
  OAI21XL U732 ( .A0(\mult[28][4] ), .A1(n908), .B0(\mult[29][4] ), .Y(n928)
         );
  AO22X1 U733 ( .A0(n911), .A1(\mult[28][3] ), .B0(n929), .B1(\mult[29][3] ), 
        .Y(n908) );
  OR2X1 U734 ( .A(\mult[28][3] ), .B(n911), .Y(n929) );
  OAI2BB1X1 U735 ( .A0N(n919), .A1N(\mult[28][2] ), .B0(n930), .Y(n911) );
  OAI21XL U736 ( .A0(\mult[28][2] ), .A1(n919), .B0(\mult[29][2] ), .Y(n930)
         );
  OAI21XL U737 ( .A0(n915), .A1(n917), .B0(n931), .Y(n919) );
  OAI2BB1X1 U738 ( .A0N(n915), .A1N(n917), .B0(\mult[29][1] ), .Y(n931) );
  CLKINVX1 U739 ( .A(\mult[28][1] ), .Y(n917) );
  NAND2X1 U740 ( .A(\mult[29][0] ), .B(\mult[28][0] ), .Y(n915) );
  CLKINVX1 U741 ( .A(\mult[28][6] ), .Y(n926) );
  XOR2X1 U742 ( .A(\tree_sums[1][23][0] ), .B(n914), .Y(
        \add_23_root_add_61_G6/SUM[0] ) );
  XOR2X1 U743 ( .A(\mult[28][0] ), .B(\mult[29][0] ), .Y(n914) );
  XOR2X1 U744 ( .A(n932), .B(n933), .Y(\add_15_root_add_61_G6/SUM[8] ) );
  XOR2X1 U745 ( .A(n934), .B(n935), .Y(\add_15_root_add_61_G6/SUM[7] ) );
  XOR2X1 U746 ( .A(\tree_sums[1][15][7] ), .B(n936), .Y(n935) );
  XOR2X1 U747 ( .A(n937), .B(n938), .Y(\add_15_root_add_61_G6/SUM[6] ) );
  XOR2X1 U748 ( .A(\tree_sums[1][15][6] ), .B(n939), .Y(n938) );
  XOR2X1 U749 ( .A(n940), .B(n941), .Y(\add_15_root_add_61_G6/SUM[5] ) );
  XOR2X1 U750 ( .A(\tree_sums[1][15][5] ), .B(n942), .Y(n941) );
  XOR2X1 U751 ( .A(n943), .B(n944), .Y(\add_15_root_add_61_G6/SUM[4] ) );
  XOR2X1 U752 ( .A(\tree_sums[1][15][4] ), .B(n945), .Y(n944) );
  XOR2X1 U753 ( .A(n946), .B(n947), .Y(\add_15_root_add_61_G6/SUM[3] ) );
  XOR2X1 U754 ( .A(\tree_sums[1][15][3] ), .B(n948), .Y(n947) );
  XOR2X1 U755 ( .A(n949), .B(n950), .Y(\add_15_root_add_61_G6/SUM[2] ) );
  XOR2X1 U756 ( .A(\tree_sums[1][15][2] ), .B(n951), .Y(n950) );
  XOR2X1 U757 ( .A(n952), .B(n953), .Y(\add_15_root_add_61_G6/SUM[1] ) );
  XOR2X1 U758 ( .A(n954), .B(\tree_sums[1][15][1] ), .Y(n953) );
  XOR2X1 U759 ( .A(n932), .B(n955), .Y(\add_15_root_add_61_G6/SUM[9] ) );
  OA21XL U760 ( .A0(n933), .A1(n956), .B0(n957), .Y(n955) );
  OA21XL U761 ( .A0(n936), .A1(n934), .B0(n958), .Y(n933) );
  OAI2BB1X1 U762 ( .A0N(n934), .A1N(n936), .B0(\tree_sums[1][15][7] ), .Y(n958) );
  XNOR2X1 U763 ( .A(n959), .B(n960), .Y(n934) );
  OA21XL U764 ( .A0(n939), .A1(n937), .B0(n961), .Y(n936) );
  OAI2BB1X1 U765 ( .A0N(n937), .A1N(n939), .B0(\tree_sums[1][15][6] ), .Y(n961) );
  XOR2X1 U766 ( .A(n962), .B(n963), .Y(n937) );
  XNOR2X1 U767 ( .A(\mult[60][6] ), .B(\mult[61][6] ), .Y(n962) );
  AOI2BB2X1 U768 ( .B0(n964), .B1(\tree_sums[1][15][5] ), .A0N(n942), .A1N(
        n940), .Y(n939) );
  NAND2X1 U769 ( .A(n940), .B(n942), .Y(n964) );
  OA21XL U770 ( .A0(n945), .A1(n943), .B0(n965), .Y(n942) );
  OAI2BB1X1 U771 ( .A0N(n943), .A1N(n945), .B0(\tree_sums[1][15][4] ), .Y(n965) );
  XOR2X1 U772 ( .A(n966), .B(n967), .Y(n943) );
  XNOR2X1 U773 ( .A(\mult[60][4] ), .B(\mult[61][4] ), .Y(n966) );
  OA21XL U774 ( .A0(n948), .A1(n946), .B0(n968), .Y(n945) );
  OAI2BB1X1 U775 ( .A0N(n946), .A1N(n948), .B0(\tree_sums[1][15][3] ), .Y(n968) );
  XOR2X1 U776 ( .A(n969), .B(n970), .Y(n946) );
  XNOR2X1 U777 ( .A(\mult[60][3] ), .B(\mult[61][3] ), .Y(n969) );
  AOI2BB2X1 U778 ( .B0(n971), .B1(\tree_sums[1][15][2] ), .A0N(n951), .A1N(
        n949), .Y(n948) );
  NAND2X1 U779 ( .A(n949), .B(n951), .Y(n971) );
  OA21XL U780 ( .A0(n952), .A1(n954), .B0(n972), .Y(n951) );
  OAI2BB1X1 U781 ( .A0N(n954), .A1N(n952), .B0(\tree_sums[1][15][1] ), .Y(n972) );
  NAND2X1 U782 ( .A(\tree_sums[1][15][0] ), .B(n973), .Y(n954) );
  XOR2X1 U783 ( .A(n974), .B(n975), .Y(n952) );
  XNOR2X1 U784 ( .A(\mult[61][1] ), .B(n976), .Y(n975) );
  XOR2X1 U785 ( .A(n977), .B(n978), .Y(n949) );
  XNOR2X1 U786 ( .A(\mult[60][2] ), .B(\mult[61][2] ), .Y(n977) );
  XOR2X1 U787 ( .A(n979), .B(n980), .Y(n940) );
  XNOR2X1 U788 ( .A(\mult[60][5] ), .B(\mult[61][5] ), .Y(n979) );
  NAND2BX1 U789 ( .AN(n956), .B(n957), .Y(n932) );
  NAND2X1 U790 ( .A(\tree_sums[1][15][13] ), .B(n981), .Y(n957) );
  NOR2X1 U791 ( .A(n981), .B(\tree_sums[1][15][13] ), .Y(n956) );
  XOR2X1 U792 ( .A(n982), .B(n983), .Y(n981) );
  CLKINVX1 U793 ( .A(n959), .Y(n983) );
  XOR2X1 U794 ( .A(\mult[60][7] ), .B(\mult[61][7] ), .Y(n959) );
  OAI22XL U795 ( .A0(\mult[60][7] ), .A1(n960), .B0(\mult[61][7] ), .B1(n984), 
        .Y(n982) );
  AND2X1 U796 ( .A(n960), .B(\mult[60][7] ), .Y(n984) );
  AO22X1 U797 ( .A0(n963), .A1(\mult[60][6] ), .B0(n985), .B1(\mult[61][6] ), 
        .Y(n960) );
  OR2X1 U798 ( .A(\mult[60][6] ), .B(n963), .Y(n985) );
  OAI2BB1X1 U799 ( .A0N(n980), .A1N(\mult[60][5] ), .B0(n986), .Y(n963) );
  OAI21XL U800 ( .A0(\mult[60][5] ), .A1(n980), .B0(\mult[61][5] ), .Y(n986)
         );
  OAI2BB1X1 U801 ( .A0N(n967), .A1N(\mult[60][4] ), .B0(n987), .Y(n980) );
  OAI21XL U802 ( .A0(\mult[60][4] ), .A1(n967), .B0(\mult[61][4] ), .Y(n987)
         );
  AO22X1 U803 ( .A0(n970), .A1(\mult[60][3] ), .B0(n988), .B1(\mult[61][3] ), 
        .Y(n967) );
  OR2X1 U804 ( .A(\mult[60][3] ), .B(n970), .Y(n988) );
  OAI2BB1X1 U805 ( .A0N(n978), .A1N(\mult[60][2] ), .B0(n989), .Y(n970) );
  OAI21XL U806 ( .A0(\mult[60][2] ), .A1(n978), .B0(\mult[61][2] ), .Y(n989)
         );
  OAI21XL U807 ( .A0(n976), .A1(n974), .B0(n990), .Y(n978) );
  OAI2BB1X1 U808 ( .A0N(n974), .A1N(n976), .B0(\mult[61][1] ), .Y(n990) );
  NAND2X1 U809 ( .A(\mult[60][0] ), .B(\mult[61][0] ), .Y(n974) );
  CLKINVX1 U810 ( .A(\mult[60][1] ), .Y(n976) );
  XOR2X1 U811 ( .A(\tree_sums[1][15][0] ), .B(n973), .Y(
        \add_15_root_add_61_G6/SUM[0] ) );
  XOR2X1 U812 ( .A(\mult[60][0] ), .B(\mult[61][0] ), .Y(n973) );
endmodule

