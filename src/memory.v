module memory(clk,rst,pc,address);
  input clk,rst;
  input[7:0] pc;
  output reg[7:0] address;
  reg[7:0] mem[15:0];
  initial begin
    mem[0] = 8'b00010110;
    mem[1] = 8'b00101011;
    mem[2] = 8'b00110001;
    mem[3] = 8'b01001011;
    mem[4] = 8'b01010001;
    mem[5] = 8'b00011011;
    mem[6] = 8'b00100001;
  end
  always@(posedge clk or posedge rst) begin
    if(rst) begin
      address <= 8'b0;
    end
    else begin
      address <= mem[pc];
    end
  end
endmodule