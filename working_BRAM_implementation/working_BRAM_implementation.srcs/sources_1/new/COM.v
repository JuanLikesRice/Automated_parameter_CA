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
    parameter max_cyc = 25'd12_499_999;//25'd100
   // parameter max_cyc = 25'd100;

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


memory[0] <=  8'h62;
memory[1] <=  8'h61;
memory[2] <=  8'h72;
memory[3] <=  8'h74;
memory[4] <=  8'h74;
memory[5] <=  8'h62;
memory[6] <=  8'h61;
memory[7] <=  8'h72;
memory[8] <=  8'h74;
memory[9] <=  8'h78;
memory[10] <=  8'h61;
memory[11] <=  8'h74;
memory[12] <=  8'h6b;
memory[13] <=  8'h73;
memory[14] <=  8'h68;
memory[15] <=  8'h63;
memory[16] <=  8'h66;
memory[17] <=  8'h69;
memory[18] <=  8'h77;
memory[19] <=  8'h68;
memory[20] <=  8'h61;
memory[21] <=  8'h74;
memory[22] <=  8'h61;
memory[23] <=  8'h6e;
memory[24] <=  8'h61;
memory[25] <=  8'h62;
memory[26] <=  8'h61;
memory[27] <=  8'h63;
memory[28] <=  8'h61;
memory[29] <=  8'h74;
memory[30] <=  8'h61;
memory[31] <=  8'h62;
memory[32] <=  8'h61;
memory[33] <=  8'h72;
memory[34] <=  8'h63;
memory[35] <=  8'h61;
memory[36] <=  8'h68;
memory[37] <=  8'h64;
memory[38] <=  8'h75;
memory[39] <=  8'h63;
memory[40] <=  8'h74;
memory[41] <=  8'h61;
memory[42] <=  8'h64;
memory[43] <=  8'h61;
memory[44] <=  8'h61;
memory[45] <=  8'h63;
memory[46] <=  8'h61;
memory[47] <=  8'h72;
memory[48] <=  8'h63;
memory[49] <=  8'h74;
memory[50] <=  8'h72;
memory[51] <=  8'h63;
memory[52] <=  8'h61;
memory[53] <=  8'h74;
memory[54] <=  8'h72;
memory[55] <=  8'h63;
memory[56] <=  8'h61;
memory[57] <=  8'h74;
memory[58] <=  8'h63;
memory[59] <=  8'h62;
memory[60] <=  8'h61;
memory[61] <=  8'h74;
memory[62] <=  8'h62;
memory[63] <=  8'h72;
memory[64] <=  8'h63;
memory[65] <=  8'h61;
memory[66] <=  8'h72;
memory[67] <=  8'h62;
memory[68] <=  8'h78;
memory[69] <=  8'h74;
memory[70] <=  8'h61;
memory[71] <=  8'h72;
memory[72] <=  8'h64;
memory[73] <=  8'h66;
memory[74] <=  8'h73;
memory[75] <=  8'h67;
memory[76] <=  8'h76;
memory[77] <=  8'h68;
memory[78] <=  8'h62;
memory[79] <=  8'h6b;
memory[80] <=  8'h6a;
memory[81] <=  8'h6e;
memory[82] <=  8'h6d;
memory[83] <=  8'h62;
memory[84] <=  8'h76;
memory[85] <=  8'h78;
memory[86] <=  8'h63;
memory[87] <=  8'h73;
memory[88] <=  8'h66;
memory[89] <=  8'h72;
memory[90] <=  8'h74;
memory[91] <=  8'h79;
memory[92] <=  8'h75;
memory[93] <=  8'h6a;
memory[94] <=  8'h6e;
memory[95] <=  8'h62;
memory[96] <=  8'h76;
memory[97] <=  8'h63;
memory[98] <=  8'h64;
memory[99] <=  8'h74;
memory[100] <=  8'h79;
memory[101] <=  8'h75;
memory[102] <=  8'h69;
memory[103] <=  8'h6b;
memory[104] <=  8'h6d;
memory[105] <=  8'h6e;
memory[106] <=  8'h62;
memory[107] <=  8'h76;
memory[108] <=  8'h63;
memory[109] <=  8'h78;
memory[110] <=  8'h73;
memory[111] <=  8'h64;
memory[112] <=  8'h72;
memory[113] <=  8'h74;
memory[114] <=  8'h79;
memory[115] <=  8'h75;
memory[116] <=  8'h69;
memory[117] <=  8'h6b;
memory[118] <=  8'h6d;
memory[119] <=  8'h6e;
memory[120] <=  8'h62;
memory[121] <=  8'h76;
memory[122] <=  8'h63;
memory[123] <=  8'h73;
memory[124] <=  8'h77;
memory[125] <=  8'h33;
memory[126] <=  8'h34;
memory[127] <=  8'h35;
memory[128] <=  8'h36;
memory[129] <=  8'h37;
memory[130] <=  8'h38;
memory[131] <=  8'h69;
memory[132] <=  8'h6b;
memory[133] <=  8'h6d;
memory[134] <=  8'h6e;
memory[135] <=  8'h62;
memory[136] <=  8'h76;
memory[137] <=  8'h63;
memory[138] <=  8'h64;
memory[139] <=  8'h65;
memory[140] <=  8'h72;
memory[141] <=  8'h36;
memory[142] <=  8'h37;
memory[143] <=  8'h38;
memory[144] <=  8'h69;
memory[145] <=  8'h6f;
memory[146] <=  8'h6b;
memory[147] <=  8'h6a;
memory[148] <=  8'h6e;
memory[149] <=  8'h62;
memory[150] <=  8'h76;
memory[151] <=  8'h63;
memory[152] <=  8'h64;
memory[153] <=  8'h72;
memory[154] <=  8'h74;
memory[155] <=  8'h79;
memory[156] <=  8'h75;
memory[157] <=  8'h73;
memory[158] <=  8'h6a;
memory[159] <=  8'h63;
memory[160] <=  8'h6e;
memory[161] <=  8'h62;
memory[162] <=  8'h64;
memory[163] <=  8'h66;
memory[164] <=  8'h73;
memory[165] <=  8'h74;
memory[166] <=  8'h79;
memory[167] <=  8'h75;
memory[168] <=  8'h61;
memory[169] <=  8'h69;
memory[170] <=  8'h6b;
memory[171] <=  8'h78;
memory[172] <=  8'h6d;
memory[173] <=  8'h6e;
memory[174] <=  8'h73;
memory[175] <=  8'h6a;
memory[176] <=  8'h6f;
memory[177] <=  8'h64;
memory[178] <=  8'h6c;
memory[179] <=  8'h63;
memory[180] <=  8'h78;
memory[181] <=  8'h2c;
memory[182] <=  8'h6d;
memory[183] <=  8'h73;
memory[184] <=  8'h6b;
memory[185] <=  8'h64;
memory[186] <=  8'h6c;
memory[187] <=  8'h70;
memory[188] <=  8'h5b;
memory[189] <=  8'h3b;
memory[190] <=  8'h73;
memory[191] <=  8'h6c;
memory[192] <=  8'h64;
memory[193] <=  8'h70;
memory[194] <=  8'h76;
memory[195] <=  8'h63;
memory[196] <=  8'h5b;
memory[197] <=  8'h78;
memory[198] <=  8'h76;
memory[199] <=  8'h63;
memory[200] <=  8'h5b;
memory[201] <=  8'h78;
memory[202] <=  8'h70;
memory[203] <=  8'h6f;
memory[204] <=  8'h20;
memory[205] <=  8'h62;
memory[206] <=  8'h61;
memory[207] <=  8'h72;
memory[208] <=  8'h74;
memory[209] <=  8'h74;
memory[210] <=  8'h62;
memory[211] <=  8'h61;
memory[212] <=  8'h72;
memory[213] <=  8'h74;
memory[214] <=  8'h78;
memory[215] <=  8'h61;
memory[216] <=  8'h74;
memory[217] <=  8'h6b;
memory[218] <=  8'h73;
memory[219] <=  8'h68;
memory[220] <=  8'h63;
memory[221] <=  8'h66;
memory[222] <=  8'h69;
memory[223] <=  8'h77;
memory[224] <=  8'h68;
memory[225] <=  8'h61;
memory[226] <=  8'h69;
memory[227] <=  8'h6a;
memory[228] <=  8'h78;
memory[229] <=  8'h5d;
memory[230] <=  8'h65;
memory[231] <=  8'h6b;
memory[232] <=  8'h6f;
memory[233] <=  8'h39;
memory[234] <=  8'h64;
memory[235] <=  8'h75;
memory[236] <=  8'h38;
memory[237] <=  8'h79;
memory[238] <=  8'h20;
memory[239] <=  8'h37;
memory[240] <=  8'h63;
memory[241] <=  8'h67;
memory[242] <=  8'h78;
memory[243] <=  8'h63;
memory[244] <=  8'h75;
memory[245] <=  8'h68;
memory[246] <=  8'h69;
memory[247] <=  8'h6a;
memory[248] <=  8'h77;
memory[249] <=  8'h69;
memory[250] <=  8'h64;
memory[251] <=  8'h66;
memory[252] <=  8'h68;
memory[253] <=  8'h75;
memory[254] <=  8'h76;
memory[255] <=  8'h64;



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

