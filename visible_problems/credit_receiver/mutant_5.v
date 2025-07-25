module credit_receiver(clk, rst, push_sender_in_reset, push_receiver_in_reset, push_credit_stall, push_credit, push_valid, pop_credit, pop_valid, credit_initial, credit_withhold, credit_count, credit_available, push_data, pop_data);
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  input clk;
  wire clk;
  output credit_available;
  wire credit_available;
  output credit_count;
  reg credit_count;
  input credit_initial;
  wire credit_initial;
  input credit_withhold;
  wire credit_withhold;
  input pop_credit;
  wire pop_credit;
  output [7:0] pop_data;
  wire [7:0] pop_data;
  output pop_valid;
  wire pop_valid;
  output push_credit;
  wire push_credit;
  input push_credit_stall;
  wire push_credit_stall;
  input [7:0] push_data;
  wire [7:0] push_data;
  output push_receiver_in_reset;
  wire push_receiver_in_reset;
  input push_sender_in_reset;
  wire push_sender_in_reset;
  input push_valid;
  wire push_valid;
  input rst;
  wire rst;
  assign pop_data[7] = ~ push_data[7];
  assign _10_ = pop_credit ^ credit_count;
  assign _03_ = ~ _10_;
  assign _11_ = credit_withhold | _03_;
  assign credit_available = ~ _11_;
  assign _12_ = ~ credit_available;
  assign _04_ = push_credit_stall | _12_;
  assign _13_ = rst | push_sender_in_reset;
  assign _05_ = ~ _13_;
  assign _06_ = ~ _05_;
  assign _14_ = _04_ & _05_;
  assign _07_ = ~ _14_;
  assign _00_ = pop_credit | _07_;
  assign _15_ = _04_ | _06_;
  assign push_credit = ~ _15_;
  assign pop_valid = push_valid & _05_;
  assign _08_ = _02_ | _07_;
  assign _16_ = ~ credit_initial;
  assign _09_ = _05_ | _16_;
  assign _17_ = _08_ & _09_;
  assign _01_ = ~ _17_;
  assign _18_ = _00_ ? _01_ : credit_count;
  always_ff @(posedge clk)
    credit_count <= _18_;
  assign _19_ = ~ pop_credit;
  assign _02_ = credit_count | _19_;
  assign pop_data[6:0] = push_data[6:0];
  assign push_receiver_in_reset = rst;
endmodule
