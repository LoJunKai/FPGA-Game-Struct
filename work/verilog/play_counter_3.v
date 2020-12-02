/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module play_counter_3 (
    input clk,
    input rst,
    input enable,
    output reg done,
    output reg [2:0] ctr_sel
  );
  
  
  
  wire [1-1:0] M_en_edge_out;
  reg [1-1:0] M_en_edge_in;
  edge_detector_2 en_edge (
    .clk(clk),
    .in(M_en_edge_in),
    .out(M_en_edge_out)
  );
  wire [4-1:0] M_ctr_value;
  reg [1-1:0] M_ctr_rst;
  counter_12 ctr (
    .clk(clk),
    .rst(M_ctr_rst),
    .value(M_ctr_value)
  );
  
  always @* begin
    M_en_edge_in = enable;
    M_ctr_rst = rst;
    if (M_en_edge_out) begin
      M_ctr_rst = 1'h1;
    end
    if (enable) begin
      ctr_sel = M_ctr_value[0+2-:3];
      done = M_ctr_value[3+0-:1];
    end else begin
      ctr_sel = 3'h0;
      done = 1'h0;
    end
  end
endmodule
