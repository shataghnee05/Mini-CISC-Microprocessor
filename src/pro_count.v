module pro_count(clk,rst,pc_en,pc);
  input clk,rst,pc_en;
  input[7:0] address;
  output reg[7:0] pc;
  always@(posedge clk or posedge rst) begin
    if(rst) begin
      pc <= 0;
    end
    else if(pc_en) begin
      pc <= pc+1;
    end
  end
endmodule