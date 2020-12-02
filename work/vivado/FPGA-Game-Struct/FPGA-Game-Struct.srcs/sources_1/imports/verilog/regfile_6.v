/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module regfile_6 (
    input clk,
    input rst,
    input [3:0] ra,
    input [3:0] rb,
    input [3:0] rc,
    input [15:0] wd_data,
    input we,
    output reg [15:0] radata,
    output reg [15:0] rbdata,
    output reg [15:0] player_score,
    output reg [7:0] testing_reg5,
    output reg [15:0] testing_reg2,
    output reg [15:0] testing_reg1,
    output reg [15:0] testing_reg4,
    output reg [15:0] testing_reg7
  );
  
  
  
  reg [15:0] M_reg0_d, M_reg0_q = 1'h0;
  reg [15:0] M_reg1_d, M_reg1_q = 1'h0;
  reg [15:0] M_reg2_d, M_reg2_q = 1'h0;
  reg [15:0] M_reg3_d, M_reg3_q = 1'h0;
  reg [15:0] M_reg4_d, M_reg4_q = 1'h1;
  reg [15:0] M_reg5_d, M_reg5_q = 1'h0;
  reg [15:0] M_reg6_d, M_reg6_q = 1'h0;
  reg [15:0] M_reg7_d, M_reg7_q = 1'h0;
  
  always @* begin
    M_reg5_d = M_reg5_q;
    M_reg4_d = M_reg4_q;
    M_reg7_d = M_reg7_q;
    M_reg6_d = M_reg6_q;
    M_reg1_d = M_reg1_q;
    M_reg0_d = M_reg0_q;
    M_reg3_d = M_reg3_q;
    M_reg2_d = M_reg2_q;
    
    testing_reg5 = M_reg5_q[0+7-:8];
    testing_reg2 = M_reg2_q;
    testing_reg1 = M_reg1_q;
    testing_reg4 = M_reg4_q;
    testing_reg7 = M_reg7_q;
    if (we == 1'h1 && rc == 1'h0) begin
      M_reg0_d = wd_data;
    end else begin
      if (we == 1'h1 && rc == 1'h1) begin
        M_reg1_d = wd_data;
      end else begin
        if (we == 1'h1 && rc == 2'h2) begin
          M_reg2_d = wd_data;
        end else begin
          if (we == 1'h1 && rc == 2'h3) begin
            M_reg3_d = wd_data;
          end else begin
            if (we == 1'h1 && rc == 3'h4) begin
              M_reg4_d = wd_data;
            end else begin
              if (we == 1'h1 && rc == 3'h5) begin
                M_reg5_d = wd_data;
              end else begin
                if (we == 1'h1 && rc == 3'h6) begin
                  M_reg6_d = wd_data;
                end else begin
                  if (we == 1'h1 && rc == 3'h7) begin
                    M_reg7_d = wd_data;
                  end
                end
              end
            end
          end
        end
      end
    end
    
    case (ra)
      1'h0: begin
        radata = M_reg0_q;
      end
      1'h1: begin
        radata = M_reg1_q;
      end
      2'h2: begin
        radata = M_reg2_q;
      end
      2'h3: begin
        radata = M_reg3_q;
      end
      3'h4: begin
        radata = M_reg4_q;
      end
      3'h5: begin
        radata = M_reg5_q;
      end
      3'h6: begin
        radata = M_reg6_q;
      end
      3'h7: begin
        radata = M_reg7_q;
      end
      default: begin
        radata = 16'h0000;
      end
    endcase
    
    case (rb)
      1'h0: begin
        rbdata = M_reg0_q;
      end
      1'h1: begin
        rbdata = M_reg1_q;
      end
      2'h2: begin
        rbdata = M_reg2_q;
      end
      2'h3: begin
        rbdata = M_reg3_q;
      end
      3'h4: begin
        rbdata = M_reg4_q;
      end
      3'h5: begin
        rbdata = M_reg5_q;
      end
      3'h6: begin
        rbdata = M_reg6_q;
      end
      3'h7: begin
        rbdata = M_reg7_q;
      end
      default: begin
        rbdata = 16'h0000;
      end
    endcase
    player_score = M_reg4_q;
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_reg0_q <= 1'h0;
      M_reg1_q <= 1'h0;
      M_reg2_q <= 1'h0;
      M_reg3_q <= 1'h0;
      M_reg4_q <= 1'h1;
      M_reg5_q <= 1'h0;
      M_reg6_q <= 1'h0;
      M_reg7_q <= 1'h0;
    end else begin
      M_reg0_q <= M_reg0_d;
      M_reg1_q <= M_reg1_d;
      M_reg2_q <= M_reg2_d;
      M_reg3_q <= M_reg3_d;
      M_reg4_q <= M_reg4_d;
      M_reg5_q <= M_reg5_d;
      M_reg6_q <= M_reg6_d;
      M_reg7_q <= M_reg7_d;
    end
  end
  
endmodule
