module RAM_64x8bit
#(parameter addr_width=6, data_width=8, memory=64)

(input clk,we,
input [data_width-1:0] data,    //data_input
input [addr_width-1:0] addr, //address
output [7:0] y);

reg [7:0] ram [memory-1:0]; //64*8 bit ram
reg [5:0] addr_reg; //address register

always@(posedge clk)
begin
	if (we)
		   ram[addr_reg]=data;
	else
		   addr_reg=addr;
end
	assign y = ram[addr_reg];
endmodule
