module BRAM_AUTO (
    input wire clk,           // Clock signal 
    input wire [15:0] addr,    // Address input (8 bits)
     input wire we,            // Write enable signal
    input wire [7:0] write_data, // Data input (8 bits)
    input wire enable,        // Enable signal for read and write operations
    output reg [7:0] read_data // Data output (9 bits)
);
  reg [7:0] memory [0:65535]; // 65536x8-bit Block RAM

    reg [7:0] read_data_buff1, read_data_buff2, reg_last_written_data, reg_last_written_addr;
    initial begin
reg_last_written_data <= 8'b0;
reg_last_written_addr <= 8'b0;
read_data_buff1 <= 8'h00;
read_data_buff2 <= 8'h00;
read_data <=   8'h00;


    end

    always @(posedge clk) begin
        if (enable) begin
            if (we) begin
                memory[addr] <= write_data; // Write operation when we and enable are high
                reg_last_written_data <= write_data;
                reg_last_written_addr <= addr;
            end
        read_data_buff2  <= memory[addr]; // Read operation when enable is high
            read_data_buff1  <= read_data_buff2; // Read operation when enable is high
            read_data <= read_data_buff1; // Read operation when enable is high

        end
    end
 
endmodule





module BRAM_empty_AUTO (
    input wire clk,           // Clock signal 
    input wire [15:0] addr,    // Address input (8 bits)
    input wire we,            // Write enable signal
    input wire [7:0] write_data, // Data input (8 bits)
    input wire enable,        // Enable signal for read and write operations
    output reg [7:0] read_data // Data output (9 bits)
);
  reg [7:0] memory [0:65535]; // 65536x8-bit Block RAM

    reg [7:0] read_data_buff1, read_data_buff2, reg_last_written_data, reg_last_written_addr;
    initial begin
reg_last_written_data <= 8'b0;
reg_last_written_addr <= 8'b0;
read_data_buff1 <= 8'h00;
read_data_buff2 <= 8'h00;
read_data <=   8'h00;


    end

    always @(posedge clk) begin
        if (enable) begin
            if (we) begin
                memory[addr] <= write_data; // Write operation when we and enable are high
                reg_last_written_data <= write_data;
                reg_last_written_addr <= addr;
            end
        read_data_buff2  <= memory[addr]; // Read operation when enable is high
            read_data_buff1  <= read_data_buff2; // Read operation when enable is high
            read_data <= read_data_buff1; // Read operation when enable is high

        end
    end
 
endmodule