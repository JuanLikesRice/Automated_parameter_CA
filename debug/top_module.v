`timescale 1ps / 1ps
 `default_nettype none

//////////////////////////////////////////////////////////////////////////////////
// Setup for 9600 Baud Rate
// For 9600 baud with 100MHz FPGA clock: 
// CLK count = 5208
//////////////////////////////////////////////////////////////////////////////////

module top_module (
    input  wire CLK,
   // input  wire CPU_RESETN,
    input  wire [7:0] SW,
    input  wire [7:0] BTN,
    output wire UART_RXD_OUT,
    output wire [7:0] LED
    );

wire txd,stat_wr, start_2, start; // sample tick from baud rate generator
wire start_enable;
wire bud9600_gen;
wire pulse2, pulse_start;
wire write_enable_to_report;
wire [2:0] sel_mux;

wire CLK_FPGA;
wire reg_enable_comp; 

wire [7:0] read_data_comp_in;
wire rpt_bt;
reg [7:0] input_word;

//STOP_INSERT_0
wire [63:0] Activated_vector_t0; //This line inserted by AUTO SCRIPT


//wire [127:0] Activated_vector_t0, Activated_vector_t1;
wire [31:0] clk_count, write_address;
wire [7:0] input_word_wire, count_b1, count_b2, count_b3, count_b4, word_report;
wire AND_sig_r;
wire [7:0] out_data;
wire global_rst;
wire uart_reset_button, computation_reset_button;
wire tx_busy; 
wire pulse_started_sig, signal_enable_uart, signal_start_enable_uart;
wire [31:0] signal_data_address_uart_incr;

wire bram_being_used;
wire [7:0] count_b1_read, count_b2_read, count_b3_read, word_report_read;
wire [7:0] data_uart;
wire [7:0] bram_result;
wire [7:0] word_report_bit_out;

//assign computation_reset_button = BTN[3];
assign LED[0] =  write_address[0];
assign LED[1] =  write_address[1];
assign LED[2] =  write_address[2];
assign LED[3] =  write_address[3];
assign LED[4] =  write_address[4];
assign LED[5] =  write_address[5];
assign LED[6] =  computation_reset_button;
assign LED[7] =  uart_reset_button;
assign UART_RXD_OUT = txd;
assign CLK_FPGA = CLK;
assign bram_being_used = signal_enable_uart | reg_enable_comp;
//assign uart_reset_button        = BTN[4];
parameter address_range = 10'h3FF;
assign global_rst = 1'b0;
assign input_word_wire = read_data_comp_in[7:0];

assign sel_mux =      signal_data_address_uart_incr[2:0];


//Bram mem size
wire [15:0] data_address_comp;
assign data_address_bram_read = signal_data_address_uart_incr[18:3];
assign clk_count = {16'b0,data_address_comp};
assign adress_bram_write = write_address[15:0];
wire [15:0]  data_address_bram_read;
wire [15:0] adress_bram_write;
wire [15:0] Bram_address_write_read, Bram_address_read, Bram_address_write; 

mux_8_options #(.WIDTH(16)) address_mux (
    .sel({1'b0,reg_enable_comp,signal_enable_uart}),
    .i0(16'h00),
    .i1(data_address_bram_read), //01
    .i2(     adress_bram_write), //10 
    .i3(16'h00),
    .i4(16'h00),
    .i5(16'h00),
    .i6(16'h00),
    .i7(16'h00),
    .y(Bram_address_write_read)
);

//                     6 OR 5208
bud9600_gen #(.CYCLE_X(5208)) oHz ( CLK,  bud9600_gen); 
debounce debounce_inst_comp (
   .clk_in(CLK_FPGA),
   .rst_in(1'b0),
   .bouncey_in(BTN[3]),
   .wire_clean_out(computation_reset_button)
);
debounce debounce_inst_uart (
   .clk_in(CLK_FPGA),
   .rst_in(1'b0),
   .bouncey_in(BTN[4]),
   .wire_clean_out(uart_reset_button)
);
//assign uart_reset_button        = BTN[4];
//assign computation_reset_button = BTN[3];


BRAM_AUTO BRAM_read_comp (
    .clk(CLK_FPGA),
    .addr({data_address_comp}),
    .we(1'b0),
    .write_data(8'd0),
    .enable(reg_enable_comp),
    .read_data(read_data_comp_in)
);


report_funct u_report_funct (
    .clk(CLK),
    .reset(computation_reset_button),
    .rpt_bt(rpt_bt),
    .clk_count(clk_count),
    .in_word(word_report_bit_out),
    .AND_sig_r(AND_sig_r),
    .count_b1(count_b1),
    .count_b2(count_b2),
    .count_b3(count_b3),
    .count_b4(count_b4),
    .word_report(word_report),
    .write_addres(write_address),
    .write_enable_to_report(write_enable_to_report)
);
COMP_stream_contoller #(
.bram_comp_address_width(    8),
.inv_bram_comp_address_width(24)
) COMP_stream_ctrl (
.CLK_FPGA(CLK_FPGA),
.global_rst(global_rst),
.computation_reset_button(computation_reset_button),
.enable_comp_sig(reg_enable_comp),
.bram_data_address_comp(data_address_comp)
);



parameter buffer_byte_01 = 8'h5B;
parameter buffer_byte_02 = 8'h5C;
parameter buffer_byte_03 = 8'h5D;
parameter buffer_byte_04 = 8'h0A;

mux_16_options #(
.WIDTH(8)
) UART_mux_16 (
.sel({1'b0,sel_mux}),
.i0(buffer_byte_01), .i1(count_b1_read[7:0]),
.i2(buffer_byte_02), .i3(count_b2_read[7:0]),
.i4(count_b3_read),  .i5(buffer_byte_03),  
.i6(word_report_read[7:0]), .i7(Bram_address_write_read[7:0]),
.i8(8'b00000000),   .i9(8'b00000000), .i10(8'b00000000), .i11(8'b00000000),
.i12(8'b00000000), .i13(8'b00000000), .i14(8'b00000000), .i15(8'b00000000),
.y(data_uart)
);
uart_stream_contrl uart_ctrl (
.bud9600_gen(bud9600_gen),
.uart_reset_button(uart_reset_button),
.tx_busy(tx_busy),
.max_write_address(write_address),
.signal_data_address_uart_incr(signal_data_address_uart_incr),
.signal_enable_uart(signal_enable_uart),
.signal_start_enable_uart(signal_start_enable_uart)
);


uart_state_machine uat_stmch(
    .clk(bud9600_gen),
    .rst(uart_reset_button),
    .start(signal_start_enable_uart),
    .data_in(data_uart[7:0]),
    .busy(tx_busy),
    .tx(txd),
    .stat_wr(stat_wr)
    );


wire [23:0] clk_cycle_reported_all;


assign clk_cycle_reported_all = {count_b3,count_b2,count_b1};
always @(posedge CLK_FPGA) begin
       if (bram_being_used) begin
       if (write_enable_to_report) begin
       //$display("address %d Cycle Reported %d word: %d", Bram_address_write_read, count_b1, word_report);
       //$display("%d %d %d", Bram_address_write_read, clk_cycle_reported_all, word_report);
       //$display("    %d     %d     %d ",Bram_address_write_read, clk_cycle_reported_all, word_report);
       $display("match at idx:  %d  ", clk_cycle_reported_all);//-3'd6);

       //$display("Time=%0t: A=%d, B=%d, result=%d", $time, A, B, result);
       end
       end
end

    //$display("Time=%0t: A=%d, B=%d, result=%d", $time, A, B, result);



BRAM_empty_AUTO bram_Read_write_count_b1 (
    .clk(CLK_FPGA),
    .addr(Bram_address_write_read),
    .we(write_enable_to_report),
    .write_data(count_b1),
    .enable(bram_being_used),
    .read_data(count_b1_read[7:0])
);
BRAM_empty_AUTO bram_Read_write_count_b2 (
    .clk(CLK_FPGA),
    .addr(Bram_address_write_read),
    .we(write_enable_to_report),
    .write_data(count_b2),
    .enable(bram_being_used),
    .read_data(count_b2_read[7:0])
);

BRAM_empty_AUTO bram_Read_write_count_b3 (
    .clk(CLK_FPGA),
    .addr(Bram_address_write_read),
    .we(write_enable_to_report),
    .write_data(count_b3),
    .enable(bram_being_used),
    .read_data(count_b3_read[7:0])
);


BRAM_empty_AUTO bram_Read_write_w1 (
    .clk(CLK_FPGA),
    .addr(Bram_address_write_read),
    .we(write_enable_to_report),
    .write_data(word_report),
    .enable(bram_being_used),
    .read_data(word_report_read[7:0])
);



//STOP_INSERT_1
//MODULEHERE

CA_Processor_64STE_8bitword #(
      .ActivationVector_STE1(256'h0000000000000000000000000000000000000000000608000000000000000000), 
            .STE1_ACTIVATES(64'b0000000000000000000000000000000000000000000000000000000000000010), 
     .ActivationVector_STE2(256'h0000000000000000000000000000000000000000004032020000000000000000), 
            .STE2_ACTIVATES(64'b0000000000000000000000000000000000000000000000000000000000000100), 
     .ActivationVector_STE3(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE3_ACTIVATES(64'b0000000000000000000000000000000000000000000000000000000000001000), 
     .ActivationVector_STE4(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE4_ACTIVATES(64'b0000000000000000000000000000000000000000000000000000000000010000), 
     .ActivationVector_STE5(256'h0000000000000000000000000000000000000000005812820000000000000000), 
            .STE5_ACTIVATES(64'b0000000000000000000000000000000000000000000000000000000000100000), 
     .ActivationVector_STE6(256'hfffffffffffffffffffffffffffffffffffffffffd7ebf2fffffffffffffffff), 
            .STE6_ACTIVATES(64'b0000000000000000000000000000000000000000000000000000000001000000), 
     .ActivationVector_STE7(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE7_ACTIVATES(64'b0000000000000000000000000000000000000000000000000000000010000000), 
     .ActivationVector_STE8(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE8_ACTIVATES(64'b0000000000000000000000000000000000000000000000000000000100000000), 
     .ActivationVector_STE9(256'h0000000000000000000000000000000000000000004832020000000000000000), 
            .STE9_ACTIVATES(64'b0000000000000000000000000000000000000000000000000000001000000000), 
     .ActivationVector_STE10(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE10_ACTIVATES(64'b0000000000000000000000000000000000000000000000000000010000000000), 
     .ActivationVector_STE11(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE11_ACTIVATES(64'b0000000000000000000000000000000000000000000000000000100000000000), 
     .ActivationVector_STE12(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE12_ACTIVATES(64'b0000000000000000000000000000000000000000000000000001000000000000), 
     .ActivationVector_STE13(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE13_ACTIVATES(64'b0000000000000000000000000000000000000000000001111110000000000000), 
     .ActivationVector_STE14(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE14_ACTIVATES(64'b0000000000000000000000000000000000000000000001111100000000000000), 
     .ActivationVector_STE15(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE15_ACTIVATES(64'b0000000000000000000000000000000000000000000001111000000000000000), 
     .ActivationVector_STE16(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE16_ACTIVATES(64'b0000000000000000000000000000000000000000000001110000000000000000), 
     .ActivationVector_STE17(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE17_ACTIVATES(64'b0000000000000000000000000000000000000000000001100000000000000000), 
     .ActivationVector_STE18(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE18_ACTIVATES(64'b0000000000000000000000000000000000000000000001000000000000000000), 
     .ActivationVector_STE19(256'h0000000000000000000000000000000000000000004032400000000000000000), 
            .STE19_ACTIVATES(64'b0000000000000000000000000000000000000000000010000000000000000000), 
     .ActivationVector_STE20(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE20_ACTIVATES(64'b0000000000000000000000000000000000000000000100000000000000000000), 
     .ActivationVector_STE21(256'hfffffffffffffffffffffffffffffffffffffffffffeeeffffffffffffffffff), 
            .STE21_ACTIVATES(64'b0000000000000000000000000000000000000000001000000000000000000000), 
     .ActivationVector_STE22(256'h0000000000000000000000000000000000000000005832020000000000000000), 
            .STE22_ACTIVATES(64'b0000000000000000000000000000000000000000010000000000000000000000), 
     .ActivationVector_STE23(256'h00000000000000000000000000000000000000000018128a0000000000000000), 
            .STE23_ACTIVATES(64'b0000000000000000000000000000000000000000100000000000000000000000), 
     .ActivationVector_STE24(256'hfffffffffffffffffffffffffffffffffffffffffffef77fffffffffffffffff), 
            .STE24_ACTIVATES(64'b0000000000000000000000000000000000000001000000000000000000000000), 
     .ActivationVector_STE25(256'hffffffffffffffffffffffffffffffffffffffffffffffbfffffffffffffffff), 
            .STE25_ACTIVATES(64'b0000000000000000000000000000000000000010000000000000000000000000), 
     .ActivationVector_STE26(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE26_ACTIVATES(64'b0000000000000000000000000000000000000100000000000000000000000000), 
     .ActivationVector_STE27(256'h0000000000000000000000000000000000000000000640c20000000000000000), 
            .STE27_ACTIVATES(64'b0000000000000000000000000000000000001000000000000000000000000000), 
     .ActivationVector_STE28(256'h0000000000000000000000000000000000000000024032400000000000000000), 
            .STE28_ACTIVATES(64'b0000000000000000000000000000000000010000000000000000000000000000), 
     .ActivationVector_STE29(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE29_ACTIVATES(64'b0000000000000000000000000000000000100000000000000000000000000000), 
     .ActivationVector_STE30(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE30_ACTIVATES(64'b0000000000000000000000000000000001000000000000000000000000000000), 
     .ActivationVector_STE31(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE31_ACTIVATES(64'b0000000000000000000000000000000010000000000000000000000000000000), 
     .ActivationVector_STE32(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE32_ACTIVATES(64'b0000000000000000000000000000001100000000000000000000000000000000), 
     .ActivationVector_STE33(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE33_ACTIVATES(64'b0000000000000000000000000000001000000000000000000000000000000000), 
     .ActivationVector_STE34(256'h0000000000000000000000000000000000000000020010400000000000000000), 
            .STE34_ACTIVATES(64'b0000000000000000000000000000010000000000000000000000000000000000), 
     .ActivationVector_STE35(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE35_ACTIVATES(64'b0000000000000000000000000000100000000000000000000000000000000000), 
     .ActivationVector_STE36(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE36_ACTIVATES(64'b0000000000000000000000000001000000000000000000000000000000000000), 
     .ActivationVector_STE37(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE37_ACTIVATES(64'b0000000000000000000000000010000000000000000000000000000000000000), 
     .ActivationVector_STE38(256'h0000000000000000000000000000000000000000024002420000000000000000), 
            .STE38_ACTIVATES(64'b0000000000000000000000000100000000000000000000000000000000000000), 
     .ActivationVector_STE39(256'hfffffffffffffffffffffffffffffffffffffffffd7fdeb7ffffffffffffffff), 
            .STE39_ACTIVATES(64'b0000000000000000000000001000000000000000000000000000000000000000), 
     .ActivationVector_STE40(256'hffffffffffffffffffffffffffffffffffffffffffbefd7fffffffffffffffff), 
            .STE40_ACTIVATES(64'b0000000000000000000000010000000000000000000000000000000000000000), 
     .ActivationVector_STE41(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE41_ACTIVATES(64'b0000000000000000000000100000000000000000000000000000000000000000), 
     .ActivationVector_STE42(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE42_ACTIVATES(64'b0000000000000000000001000000000000000000000000000000000000000000), 
     .ActivationVector_STE43(256'h0000000000000000000000000000000000000000000e48b20000000000000000), 
            .STE43_ACTIVATES(64'b0000000000000000000010000000000000000000000000000000000000000000), 
     .ActivationVector_STE44(256'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 
            .STE44_ACTIVATES(64'b0000000000000000000100000000000000000000000000000000000000000000), 
     .ActivationVector_STE45(256'h0000000000000000000000000000000000000000001958020000000000000000), 
            .STE45_ACTIVATES(64'b0000000000000000001000000000000000000000000000000000000000000000), 
     .ActivationVector_STE46(256'h0000000000000000000000000000000000000000000510020000000000000000), 
            .STE46_ACTIVATES(64'b0000000000000000000000000000000000000000000000000000000000000000), 

      .start_vector(64'b0000000000000000000000000000000000000000000000000000000000000001), 
      .end_vector(  64'b0000000000000000001000000000000000000000000000000000000000000000) 
) CA_p_v1 ( 
  .clk(CLK), 
  .rst(computation_reset_button),
  .input_word(input_word_wire),
  .rpt_bt(rpt_bt),
  .Activated_vector_t0(Activated_vector_t0),
  .word_report_bit_out(word_report_bit_out)
);


 








endmodule









