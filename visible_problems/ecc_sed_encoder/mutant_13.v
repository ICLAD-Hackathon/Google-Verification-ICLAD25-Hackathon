module ecc_sed_encoder(clk, rst, data_valid, enc_valid, data, enc_codeword);
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _08_;
  wire _09_;
  input clk;
  wire clk;
  input [11:0] data;
  wire [11:0] data;
  input data_valid;
  wire data_valid;
  output [12:0] enc_codeword;
  wire [12:0] enc_codeword;
  output enc_valid;
  wire enc_valid;
  wire parity;
  input rst;
  wire rst;
  assign _10_ = data[5] ^ _02_;
  assign _03_ = ~ _10_;
  assign _11_ = _01_ ^ _03_;
  assign _04_ = ~ _11_;
  assign _12_ = data[7] ^ data[8];
  assign _05_ = ~ _12_;
  assign _13_ = data[6] ^ _05_;
  assign _06_ = ~ _13_;
  assign _14_ = data[11] ^ 1'h1;
  assign _08_ = ~ _14_;
  assign _15_ = _06_ ^ _08_;
  assign _09_ = ~ _15_;
  assign _16_ = _04_ ^ _09_;
  assign parity = ~ _16_;
  assign _00_ = data[1] ^ data[2];
  assign _17_ = data[0] ^ _00_;
  assign _01_ = ~ _17_;
  assign _02_ = data[3] ^ data[4];
  assign enc_codeword = { parity, data };
  assign enc_valid = data_valid;
endmodule
