module enc_bin2gray(bin, gray);
  input [9:0] bin;
  wire [9:0] bin;
  output [9:0] gray;
  wire [9:0] gray;
  assign gray[5] = bin[6] ^ bin[5];
  assign gray[4] = bin[5] ^ bin[4];
  assign gray[3] = bin[4] ^ bin[3];
  assign gray[2] = bin[3] ^ bin[2];
  assign gray[1] = bin[2] ^ bin[1];
  assign gray[8] = bin[9] ^ bin[8];
  assign gray[7] = bin[8] ^ bin[7];
  assign gray[6] = bin[7] ^ bin[6];
  assign { gray[9], gray[0] } = { bin[9], 1'h1 };
endmodule
