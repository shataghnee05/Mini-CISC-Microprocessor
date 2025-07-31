module cu(clk, rst, op, rs2, alu_op, pc_en, rout, write);
  input clk, rst;
  input [3:0] op;
  input [1:0] rs2;
  output reg pc_en, write;
  output reg [3:0] alu_op;
  output reg [1:0] rout;

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      pc_en  <= 0;
      alu_op <= 4'b0000;
      rout   <= 2'b00;
      write  <= 0;
    end else begin
      case (op)
        4'b0001, 4'b0010, 4'b0011, 4'b0100,
        4'b0101, 4'b0110, 4'b0111, 4'b1000,
        4'b1001, 4'b1010, 4'b1011, 4'b1100: begin
          alu_op <= op;
          pc_en  <= 1;
          write  <= 1;
          rout   <= rs2;
        end
      endcase
    end
  end
endmodule