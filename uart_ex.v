`timescale 1ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2023 08:01:10 PM
// Design Name: 
// Module Name: COM
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module debounce(
    input  wire         clk_in,     // Clock input
    input  wire         rst_in,     // Reset input
    input  wire         bouncey_in, // Raw input to the system
    output wire         wire_clean_out    // Debounced output
);

   reg [24:0] count; // Counter for debounce (25 bits for a 100 MHz clock)
   reg old, clean_out;
   assign wire_clean_out = clean_out;
   // parameter max_cyc = 25'd12_499_999;//25'd100
    parameter max_cyc = 25'd100;

initial begin 
    count <= 25'b0;
    old <= 1'b0;
    clean_out <= 1'b0;
end

   always @(posedge clk_in or posedge rst_in) begin
        if (rst_in) begin
            count <= 25'b0;
            old <= 1'b0;
            clean_out <= 1'b0;
        end else begin
            if (bouncey_in == old) begin
                if (count < max_cyc) begin
                    count <= count + 1;
                end
            end else begin
                count <= 25'b0;
            end

            if (count == max_cyc) begin
                clean_out <= bouncey_in;
            end

            old <= bouncey_in;
        end
   end

endmodule


module uart_stream_contrl (
input  wire bud9600_gen,
input  wire uart_reset_button,
input  wire tx_busy,
input wire [31:0] max_write_address,
output wire [31:0] signal_data_address_uart_incr,
output wire signal_enable_uart,
output wire signal_start_enable_uart
);
 
wire [31:0] address_range, address_range_1;
assign address_range_1 = max_write_address +  32'd2;
assign address_range = address_range_1 << 3;
reg signal_enable_uart_r, signal_start_enable_uart_r;
reg [31:0] signal_data_address_uart_incr_r;

initial begin 
signal_data_address_uart_incr_r  <= 32'd0;
signal_enable_uart_r             <=  1'b0;  
signal_start_enable_uart_r       <=  1'b0;
end


always @ (posedge bud9600_gen or posedge uart_reset_button ) begin
    if (uart_reset_button) begin
        signal_enable_uart_r            <= 1'b1;
        signal_data_address_uart_incr_r <= 32'b0;        // signal_start_enable_uart_r <= 1'b1;       //   $display("reset uart_reset_button");
    end else if (signal_enable_uart_r == 1'b1) begin 
    if  (~tx_busy) begin 
        if (signal_start_enable_uart_r == 0) begin
            signal_start_enable_uart_r <=  ~signal_start_enable_uart_r;  
        end else begin 
        if (signal_data_address_uart_incr_r < address_range) begin
        signal_data_address_uart_incr_r <= signal_data_address_uart_incr_r + 1;
        end else begin 
            signal_start_enable_uart_r <= 1'b0;
            signal_enable_uart_r       <= 1'b0;
        end 
        end 
    if  (tx_busy) begin   
        signal_enable_uart_r       <= 1'b0;
        signal_start_enable_uart_r <= 1'b0;
    end
    end else 
        signal_start_enable_uart_r <= 1'b0;
    end
end

assign signal_data_address_uart_incr = signal_data_address_uart_incr_r;
assign signal_enable_uart            = signal_enable_uart_r;
assign signal_start_enable_uart      = signal_start_enable_uart_r;

endmodule



module mux_16_options #(
  parameter WIDTH = 8
)(
  input wire [3:0] sel,
  input wire [WIDTH-1:0] i0, i1, i2, i3, i4, i5, i6, i7,
  input wire [WIDTH-1:0] i8, i9, i10, i11, i12, i13, i14, i15,
  output wire [WIDTH-1:0] y
);
  assign y =    (sel == 4'b0000) ? i0 :
                (sel == 4'b0001) ? i1 :
                (sel == 4'b0010) ? i2 :
                (sel == 4'b0011) ? i3 :
                (sel == 4'b0100) ? i4 :
                (sel == 4'b0101) ? i5 :
                (sel == 4'b0110) ? i6 :
                (sel == 4'b0111) ? i7 :
                (sel == 4'b1000) ? i8 :
                (sel == 4'b1001) ? i9 :
                (sel == 4'b1010) ? i10 :
                (sel == 4'b1011) ? i11 :
                (sel == 4'b1100) ? i12 :
                (sel == 4'b1101) ? i13 :
                (sel == 4'b1110) ? i14 :
                (sel == 4'b1111) ? i15 : {WIDTH{1'b0}};
endmodule



module mux_8_options #(
  parameter WIDTH = 8
)(

input wire [2:0] sel,
  input  wire [WIDTH-1:0] i0, i1, i2, i3, i4, i5, i6, i7,
  output wire [WIDTH-1:0] y
);

  assign y = (sel == 3'b000) ? i0 :
            (sel == 3'b001) ? i1 :
            (sel == 3'b010) ? i2 :
            (sel == 3'b011) ? i3 :
            (sel == 3'b100) ? i4 :
            (sel == 3'b101) ? i5 :
            (sel == 3'b110) ? i6 :
            (sel == 3'b111) ? i7 : {WIDTH{1'b0}};

endmodule


module report_funct (
    input wire clk,
    input wire reset,
    input wire rpt_bt,
    input wire [31:0] clk_count,
    input wire [7:0] in_word,
    output wire AND_sig_r,
    output wire [7:0] count_b1,
    output wire [7:0] count_b2,
    output wire [7:0] count_b3,
    output wire [7:0] count_b4,
    output wire [7:0] word_report,
    output wire [31:0] write_addres,
    output wire write_enable_to_report
    );
    //wire write_enable_to_report;
    assign AND_sig_r = clk & rpt_bt;
   
    reg [7:0] count_b1_r;
    reg [7:0] count_b2_r;
    reg [7:0] count_b3_r;
    reg [7:0] count_b4_r;
    reg [7:0] word_report_r;
    reg [31:0] write_addres_r;
   // reg [7:0]  intermediate_reg;
    reg write_enable_r;
    //wire write_enable;

    initial begin 
    write_addres_r <= 32'd0;
    count_b1_r <= 8'b0;
    count_b2_r <= 8'b0;
    count_b3_r <= 8'b0;
    count_b4_r <= 8'b0;
    word_report_r <= 8'b0;
   // intermediate_reg <= 8'd0; 
    write_enable_r <= 1'b0;
    end

    always @(posedge reset or posedge ~clk) begin
    //intermediate_reg <= in_word;

    if (reset == 1'b1) begin 
    write_addres_r <= 32'd0;
    count_b1_r <= 8'b0;
    count_b2_r <= 8'b0;
    count_b3_r <= 8'b0;
    count_b4_r <= 8'b0;
    word_report_r <= 8'b0;
    write_enable_r <= 1'b0;
    //$display("reset write_addres_r %d Time %t:",write_addres_r,$time );
    end

    else if (rpt_bt == 1'b1) begin
    write_addres_r <= write_addres + 32'd1;
    count_b1_r <= clk_count[7:0];
    count_b2_r <= clk_count[15:8];
    count_b3_r <= clk_count[23:16];
    count_b4_r <= clk_count[31:24];
    word_report_r <= in_word; 
    write_enable_r <= 1'b1;
    end else begin 
    write_enable_r <= 1'b0;
    end
    end
    assign write_addres = write_addres_r;
    assign count_b1     = count_b1_r;
    assign count_b2     = count_b2_r;
    assign count_b3     = count_b3_r;
    assign count_b4     = count_b4_r;
    assign word_report  = word_report_r;
    assign write_enable_to_report = write_enable_r; 
endmodule




module uart_state_machine (
    input wire clk,      // Clock signal
    input wire rst,      // Reset signal
    input wire start,    // Start signal
    input wire [7:0] data_in,
    output reg busy,      // Busy signal output
    output reg tx,  // UART transmit pin
    output wire stat_wr
);
    // Parameters
    parameter IDLE_STATE = 2'b00;
    parameter BUSY_STATE = 2'b01;
    reg [11:0] data; // Data to be transmitted (8 bits data + 1 start bit + 1 stop bit)
    reg [1:0] state;      // State variable, 2 bits wide
    reg [7:0] counter;    // 8-bit counter, change the width as per your requirement
    assign stat_wr = state[0];
    wire [7:0] word_sending_out;
    initial    begin
    tx      <= 1'b1;
    busy    <= 1'b0;
    counter <= 8'd0;
    state   <= IDLE_STATE;
    data    <= 12'b11_1_00000000_0;
    end 
    assign word_sending_out = data[8:1];
    always @(posedge clk or posedge rst) begin
        if (rst) begin
        tx      <= 1'b1;
        busy    <= 1'b0;
        counter <= 8'd0;
        state   <= IDLE_STATE;
        data    <= 12'b11_1_00000000_0;
        end else begin
            case (state)
                IDLE_STATE: begin
                    if (start) begin
                        state <= BUSY_STATE;
                        counter <= 8'b0;
                        tx <= 1'b1;
                        busy <= 1'b1;
                        data[8:1] <= data_in;
                    end else begin
                    tx <= 1'b1;
                    busy <= 1'b0;
                    state <= IDLE_STATE;
                    data[8:1] <= data_in;
                    end
                end                
            BUSY_STATE: begin
                
                if (counter < 8'd10) begin
                    tx <= data[counter];
                    state <= BUSY_STATE;
                    busy <= 1'b1;
                end
                else begin
                    state <= IDLE_STATE;
                    tx <= 1'b1;
                    busy <= 1'b0;
                    counter <= 8'b0;
                    data[8:1] <= 8'h00;
                end
                counter <= counter + 1'b1; // Move counter increment outside of the if statement
            end
            endcase
        end
    end

endmodule



module bud9600_gen #(
    parameter CYCLE_X = 5208
    )(                                            
    input wire clk,          // 100MHz from Nexys            
    output wire clk_1Hz                                      
    );                                                       
    reg [25:0] r_counter = 0;                                
    reg r_clk_1Hz = 0;                                       
    always @(posedge clk) begin       
        if(r_counter == CYCLE_X) begin  //5208   6               
            r_counter <= 0;                                  
            r_clk_1Hz <= ~r_clk_1Hz;                         
        end                                                  
        else                                                 
            r_counter <= r_counter + 1;
           // r_clk_1Hz <= 1'b0;                      
    end                                                                                                         
    assign clk_1Hz = r_clk_1Hz;                               
endmodule                                                    
module pulse_generator #(
    parameter CYCLE_X = 10, 
    parameter CYCLE_Y = 15, 
    parameter CYCLE_Z = 50

 ) (
    input wire clk,  // Input clock
    input wire rst,
    output reg pulse1,  // First pulse output
    output reg pulse2   // Second pulse output
);
    reg [6:0] count;
    
    always @(posedge clk) begin
        if (rst) begin
            count <= 0;
            pulse1 <= 0;
            pulse2 <= 0;
        end else if (count == CYCLE_Z - 1) begin
            count <= 0;
        end else begin
            count <= count + 1'b1;
        end
        if (count == CYCLE_X - 1) begin
            pulse1 <= 1'b1;
        end else begin
            pulse1 <= 1'b0;
        end
        if (count == CYCLE_Y - 1) begin
            pulse2 <= 1'b1;
        end else begin
            pulse2 <= 1'b0;
        end
    end
endmodule

module COMP_stream_contoller #(
    parameter bram_comp_address_width     = 8,
    parameter inv_bram_comp_address_width = 24,
    parameter address_range_param_read    = 16'd65535                         
    )   (
input  wire CLK_FPGA,
input  wire global_rst,
input  wire computation_reset_button,
output wire enable_comp_sig,
output wire [15:0] bram_data_address_comp
);
//reg [bram_comp_address_width-1:0] bram_data_address_comp;
reg [31:0] bram_data_address_comp_reg;
reg reg_enable_comp_reg;
initial begin 
bram_data_address_comp_reg <= 32'd0;
reg_enable_comp_reg        <=  1'b0;
end

always @ (posedge CLK_FPGA or posedge computation_reset_button) begin

   if (computation_reset_button) begin
        reg_enable_comp_reg <= 1'b1;        // this means that this state is busy and bram should only write to BRAM
        bram_data_address_comp_reg <= 32'd0; // Reset the register to 0 when reset is active
    end else 
    if (bram_data_address_comp_reg < address_range_param_read) begin
        reg_enable_comp_reg <= 1'b1;
        bram_data_address_comp_reg <= bram_data_address_comp_reg + 1; // Increment the register if it's less than 255
    end else begin
        reg_enable_comp_reg <= 1'b0;
        //bram_data_address_comp_reg <= 8'b0; // Reset the register to 0 when it reaches 255
    end
end

assign bram_data_address_comp = bram_data_address_comp_reg[15:0];
assign enable_comp_sig        = reg_enable_comp_reg;

endmodule
