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


module uart_stream_contrl (
input  wire bud9600_gen,
input  wire uart_reset_button,
input  wire tx_busy,
output wire [31:0] signal_data_address_uart_incr,
output wire signal_enable_uart,
output wire signal_start_enable_uart
);
 

parameter address_range = 10'h3FF;
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

module COMP_stream_contoller #(
    parameter bram_comp_address_width     = 8,
    parameter inv_bram_comp_address_width = 24,
    parameter address_range_param_read    = 8'd255                         
    )   (
input  wire CLK_FPGA,
input  wire global_rst,
input  wire computation_reset_button,
output wire enable_comp_sig,
output wire [bram_comp_address_width-1:0] bram_data_address_comp
);
//reg [bram_comp_address_width-1:0] bram_data_address_comp;
reg [bram_comp_address_width-1:0] bram_data_address_comp_reg;
reg reg_enable_comp_reg;
initial begin 
bram_data_address_comp_reg <= 32'd0;
reg_enable_comp_reg        <=  1'b0;
end

always @ (posedge CLK_FPGA or posedge computation_reset_button) begin

    if (global_rst) begin
    bram_data_address_comp_reg <= 32'd0;
    reg_enable_comp_reg        <=  1'b0;
    end else if (computation_reset_button) begin
        reg_enable_comp_reg <= 1'b1;        // this means that this state is busy and bram should only write to BRAM
        bram_data_address_comp_reg <= 8'b0; // Reset the register to 0 when reset is active
    end else 
    if (bram_data_address_comp_reg < address_range_param_read) begin
        reg_enable_comp_reg <= 1'b1;
        bram_data_address_comp_reg <= bram_data_address_comp_reg + 1; // Increment the register if it's less than 255
    end else begin
        reg_enable_comp_reg <= 1'b0;
        //bram_data_address_comp_reg <= 8'b0; // Reset the register to 0 when it reaches 255
    end
end

assign bram_data_address_comp = bram_data_address_comp_reg;
assign enable_comp_sig        = reg_enable_comp_reg;

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
    reg [7:0]  intermediate_reg;
    reg write_enable_r;
    //wire write_enable;

    initial begin 
    write_addres_r <= 32'd0;
    count_b1_r <= 8'b0;
    count_b2_r <= 8'b0;
    count_b3_r <= 8'b0;
    count_b4_r <= 8'b0;
    word_report_r <= 8'b0;
    intermediate_reg <= 8'd0; 
    write_enable_r <= 1'b0;
    end

    always @(posedge reset or posedge ~clk) begin
    intermediate_reg <= in_word;

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
    word_report_r <= intermediate_reg; 
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

module BRAM (
    input wire clk,           // Clock signal
    input wire [7:0] addr,    // Address input (8 bits)
    input wire we,            // Write enable signal
    input wire [7:0] write_data, // Data input (9 bits)
    input wire enable,        // Enable signal for read and write operations
    output reg [7:0] read_data // Data output (9 bits)
);
    reg [7:0] memory [0:255]; // 256x9-bit Block RAM
    reg [7:0] read_data_buff1, read_data_buff2, reg_last_written_data, reg_last_written_addr;

    // Initialize the memory with initial values (hard-coded)
    initial begin
reg_last_written_data <= 8'b0;
reg_last_written_addr <= 8'b0;
memory[0] <=  9'h062;
memory[1] <=  9'h061;
memory[2] <=  9'h072;
memory[3] <=  9'h074;
memory[4] <=  9'h074;
memory[5] <=  9'h062;
memory[6] <=  9'h061;
memory[7] <=  9'h072;
memory[8] <=  9'h074;
memory[9] <=  9'h078;
memory[10] <=  9'h061;
memory[11] <=  9'h074;
memory[12] <=  9'h06b;
memory[13] <=  9'h073;
memory[14] <=  9'h068;
memory[15] <=  9'h063;
memory[16] <=  9'h066;
memory[17] <=  9'h069;
memory[18] <=  9'h077;
memory[19] <=  9'h068;
memory[20] <=  9'h061;
memory[21] <=  9'h074;
memory[22] <=  9'h061;
memory[23] <=  9'h06e;
memory[24] <=  9'h061;
memory[25] <=  9'h062;
memory[26] <=  9'h061;
memory[27] <=  9'h063;
memory[28] <=  9'h061;
memory[29] <=  9'h074;
memory[30] <=  9'h061;
memory[31] <=  9'h062;
memory[32] <=  9'h061;
memory[33] <=  9'h072;
memory[34] <=  9'h063;
memory[35] <=  9'h061;
memory[36] <=  9'h068;
memory[37] <=  9'h064;
memory[38] <=  9'h075;
memory[39] <=  9'h063;
memory[40] <=  9'h074;
memory[41] <=  9'h061;
memory[42] <=  9'h064;
memory[43] <=  9'h061;
memory[44] <=  9'h061;
memory[45] <=  9'h063;
memory[46] <=  9'h061;
memory[47] <=  9'h072;
memory[48] <=  9'h063;
memory[49] <=  9'h074;
memory[50] <=  9'h072;
memory[51] <=  9'h063;
memory[52] <=  9'h061;
memory[53] <=  9'h074;
memory[54] <=  9'h072;
memory[55] <=  9'h063;
memory[56] <=  9'h061;
memory[57] <=  9'h074;
memory[58] <=  9'h063;
memory[59] <=  9'h062;
memory[60] <=  9'h061;
memory[61] <=  9'h074;
memory[62] <=  9'h062;
memory[63] <=  9'h072;
memory[64] <=  9'h063;
memory[65] <=  9'h061;
memory[66] <=  9'h074;
memory[67] <=  9'h072;
memory[68] <=  9'h06e;
memory[69] <=  9'h062;
memory[70] <=  9'h061;
memory[71] <=  9'h063;
memory[72] <=  9'h061;
memory[73] <=  9'h074;
memory[74] <=  9'h079;
memory[75] <=  9'h073;
memory[76] <=  9'h06e;
memory[77] <=  9'h063;
memory[78] <=  9'h074;
memory[79] <=  9'h061;
memory[80] <=  9'h06e;
memory[81] <=  9'h062;
memory[82] <=  9'h061;
memory[83] <=  9'h063;
memory[84] <=  9'h072;
memory[85] <=  9'h06e;
memory[86] <=  9'h074;
memory[87] <=  9'h061;
memory[88] <=  9'h062;
memory[89] <=  9'h074;
memory[90] <=  9'h06e;
memory[91] <=  9'h061;
memory[92] <=  9'h072;
memory[93] <=  9'h062;
memory[94] <=  9'h078;
memory[95] <=  9'h074;
memory[96] <=  9'h061;
memory[97] <=  9'h072;
memory[98] <=  9'h000;
memory[99] <=  9'h000;
memory[100] <=  9'h000;
memory[101] <=  9'h000;
memory[102] <=  9'h000;
memory[103] <=  9'h000;
memory[104] <=  9'h000;
memory[105] <=  9'h000;
memory[106] <=  9'h000;
memory[107] <=  9'h000;
memory[108] <=  9'h000;
memory[109] <=  9'h000;
memory[110] <=  9'h000;
memory[111] <=  9'h000;
memory[112] <=  9'h000;
memory[113] <=  9'h000;
memory[114] <=  9'h000;
memory[115] <=  9'h000;
memory[116] <=  9'h000;
memory[117] <=  9'h000;
memory[118] <=  9'h000;
memory[119] <=  9'h000;
memory[120] <=  9'h000;
memory[121] <=  9'h000;
memory[122] <=  9'h000;
memory[123] <=  9'h000;
memory[124] <=  9'h000;
memory[125] <=  9'h000;
memory[126] <=  9'h000;
memory[127] <=  9'h000;
memory[128] <=  9'h000;
memory[129] <=  9'h000;
memory[130] <=  9'h000;
memory[131] <=  9'h000;
memory[132] <=  9'h000;
memory[133] <=  9'h000;
memory[134] <=  9'h000;
memory[135] <=  9'h000;
memory[136] <=  9'h000;
memory[137] <=  9'h000;
memory[138] <=  9'h000;
memory[139] <=  9'h000;
memory[140] <=  9'h000;
memory[141] <=  9'h000;
memory[142] <=  9'h000;
memory[143] <=  9'h000;
memory[144] <=  9'h000;
memory[145] <=  9'h000;
memory[146] <=  9'h000;
memory[147] <=  9'h000;
memory[148] <=  9'h000;
memory[149] <=  9'h000;
memory[150] <=  9'h000;
memory[151] <=  9'h000;
memory[152] <=  9'h000;
memory[153] <=  9'h000;
memory[154] <=  9'h000;
memory[155] <=  9'h000;
memory[156] <=  9'h000;
memory[157] <=  9'h000;
memory[158] <=  9'h000;
memory[159] <=  9'h000;
memory[160] <=  9'h000;
memory[161] <=  9'h000;
memory[162] <=  9'h000;
memory[163] <=  9'h000;
memory[164] <=  9'h000;
memory[165] <=  9'h000;
memory[166] <=  9'h000;
memory[167] <=  9'h000;
memory[168] <=  9'h000;
memory[169] <=  9'h000;
memory[170] <=  9'h000;
memory[171] <=  9'h000;
memory[172] <=  9'h000;
memory[173] <=  9'h000;
memory[174] <=  9'h000;
memory[175] <=  9'h000;
memory[176] <=  9'h000;
memory[177] <=  9'h000;
memory[178] <=  9'h000;
memory[179] <=  9'h000;
memory[180] <=  9'h000;
memory[181] <=  9'h000;
memory[182] <=  9'h000;
memory[183] <=  9'h000;
memory[184] <=  9'h000;
memory[185] <=  9'h000;
memory[186] <=  9'h000;
memory[187] <=  9'h000;
memory[188] <=  9'h000;
memory[189] <=  9'h000;
memory[190] <=  9'h000;
memory[191] <=  9'h000;
memory[192] <=  9'h000;
memory[193] <=  9'h000;
memory[194] <=  9'h000;
memory[195] <=  9'h000;
memory[196] <=  9'h000;
memory[197] <=  9'h000;
memory[198] <=  9'h000;
memory[199] <=  9'h000;
memory[200] <=  9'h000;
memory[201] <=  9'h000;
memory[202] <=  9'h000;
memory[203] <=  9'h000;
memory[204] <=  9'h000;
memory[205] <=  9'h000;
memory[206] <=  9'h000;
memory[207] <=  9'h000;
memory[208] <=  9'h000;
memory[209] <=  9'h000;
memory[210] <=  9'h000;
memory[211] <=  9'h000;
memory[212] <=  9'h000;
memory[213] <=  9'h000;
memory[214] <=  9'h000;
memory[215] <=  9'h000;
memory[216] <=  9'h000;
memory[217] <=  9'h000;
memory[218] <=  9'h000;
memory[219] <=  9'h000;
memory[220] <=  9'h000;
memory[221] <=  9'h000;
memory[222] <=  9'h000;
memory[223] <=  9'h000;
memory[224] <=  9'h000;
memory[225] <=  9'h000;
memory[226] <=  9'h000;
memory[227] <=  9'h000;
memory[228] <=  9'h000;
memory[229] <=  9'h000;
memory[230] <=  9'h000;
memory[231] <=  9'h000;
memory[232] <=  9'h000;
memory[233] <=  9'h000;
memory[234] <=  9'h000;
memory[235] <=  9'h000;
memory[236] <=  9'h000;
memory[237] <=  9'h000;
memory[238] <=  9'h000;
memory[239] <=  9'h000;
memory[240] <=  9'h000;
memory[241] <=  9'h000;
memory[242] <=  9'h000;
memory[243] <=  9'h000;
memory[244] <=  9'h000;
memory[245] <=  9'h000;
memory[246] <=  9'h000;
memory[247] <=  9'h000;
memory[248] <=  9'h000;
memory[249] <=  9'h000;
memory[250] <=  9'h000;
memory[251] <=  9'h000;
memory[252] <=  9'h000;
memory[253] <=  9'h000;
memory[254] <=  9'h000;
memory[255] <=  9'h0AA;
read_data_buff1 <= 9'h000;
read_data_buff2 <= 9'h000;
read_data <=   9'h000;

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

