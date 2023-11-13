`timescale 1ps / 1ps
 `default_nettype none

//////////////////////////////////////////////////////////////////////////////////
// Setup for 9600 Baud Rate
// For 9600 baud with 100MHz FPGA clock: 
// 9600 * 16 = 153,600
// 100 * 10^6 / 153,600 = ~651      (counter limit M)
// log2(651) = 10                   (counter bits N) 
//////////////////////////////////////////////////////////////////////////////////

module top_module_fpga (
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

wire [7:0]  data_address_bram_read;

assign computation_reset_button = BTN[3];

assign LED[0] =  stat_wr;
assign LED[1] =  pulse_started_sig;
assign LED[2] =  uart_reset_button;
assign LED[3] =  computation_reset_button;
assign LED[4] =  UART_RXD_OUT;
assign LED[5] =  txd;
assign LED[6] =  tx_busy;
assign LED[7] =  bud9600_gen;
assign UART_RXD_OUT = txd;

wire [1:0] sel_mux;
parameter buffer_byte = 8'h5F;

assign CLK_FPGA = CLK;
wire CLK_FPGA;
wire reg_enable_comp; 
reg memorey_result_read;
reg reset_all_registers;

wire [7:0] data_address_comp;
reg we;
reg [7:0] write_data;
reg enable;
wire [7:0] read_data_comp_in;
wire rpt_bt;
reg [7:0] input_word;
wire [31:0] Activated_vector_t0, Activated_vector_t1;
wire [31:0] clk_count, write_address;
wire [7:0] input_word_wire, count_b1, count_b2, count_b3, count_b4, word_report;
wire AND_sig_r;




assign input_word_wire = read_data_comp_in[7:0];
assign clk_count = {24'b0,data_address_comp};
wire misc_bit_1;


BRAM BRAM_read_comp (
    .clk(CLK),
    .addr(data_address_comp),
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
    .in_word(input_word_wire),
    .AND_sig_r(AND_sig_r),
    .count_b1(count_b1),
    .count_b2(count_b2),
    .count_b3(count_b3),
    .count_b4(count_b4),
    .word_report(word_report),
    .write_addres(write_address),
    .write_enable_to_report(write_enable_to_report)
);

wire [7:0] out_data, adress_bram_write;
assign adress_bram_write = write_address[7:0];


wire global_rst;
assign global_rst = 1'b0;

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


  mux_16_options #(
    .WIDTH(8)
    ) UART_mux_16 (
    .sel({2'b0,sel_mux}),
    .i0(buffer_byte),
    .i1(count_b1_read[7:0]),
    .i2(buffer_byte),
    .i3(word_report_read[7:0]),
    .i4(8'b00000000),   .i5(8'b00000000),  .i6(8'b00000000),  .i7(8'b00000000),
    .i8(8'b00000000),   .i9(8'b00000000), .i10(8'b00000000), .i11(8'b00000000),
    .i12(8'b00000000), .i13(8'b00000000), .i14(8'b00000000), .i15(8'b00000000),
    .y(data_uart)
    );

parameter address_range = 10'h3FF;
assign data_address_bram_read = signal_data_address_uart_incr[9:2];
assign sel_mux =      signal_data_address_uart_incr[1:0];
wire uart_reset_button, computation_reset_button;
assign uart_reset_button        = BTN[4];
wire tx_busy; 

wire pulse_started_sig, signal_enable_uart, signal_start_enable_uart;
wire [31:0] signal_data_address_uart_incr;

uart_stream_contrl uut (
.bud9600_gen(bud9600_gen),
.uart_reset_button(uart_reset_button),
.tx_busy(tx_busy),
.signal_data_address_uart_incr(signal_data_address_uart_incr),
.signal_enable_uart(signal_enable_uart),
.signal_start_enable_uart(signal_start_enable_uart)
);

wire [7:0] Bram_address_write_read, Bram_address_read, Bram_address_write; 


mux_8_options #(.WIDTH(8)) address_mux (
    .sel({1'b0,reg_enable_comp,signal_enable_uart}),
    .i0(8'h00),
    .i1(data_address_bram_read), //01
    .i2(     adress_bram_write), //10 
    .i3(8'h00),
    .i4(8'h00),
    .i5(8'h00),
    .i6(8'h00),
    .i7(8'h00),
    .y(Bram_address_write_read)
  );

assign bram_being_used = signal_enable_uart | reg_enable_comp;
wire bram_being_used;

BRAM bram_Read_write_count_b1 (
    .clk(CLK_FPGA),
    .addr(Bram_address_write_read),
    .we(reg_enable_comp),
    .write_data(count_b1),
    .enable(bram_being_used),
    .read_data(count_b1_read[7:0])
);

BRAM bram_Read_write_w1 (
    .clk(CLK_FPGA),
    .addr(Bram_address_write_read),
    .we(reg_enable_comp),
    .write_data(word_report),
    .enable(bram_being_used),
    .read_data(word_report_read[7:0])
);
/*

blk_mem_gen_0 bram_Read_write_b1 (
  .clka(CLK_FPGA),    // input wire clka
  .ena(bram_being_used),      // input wire ena
  .wea(reg_enable_comp),      // input wire [0 : 0] wea
  .addra(Bram_address_write_read),  // input wire [9 : 0] addra
  .dina(count_b1),    // input wire [7 : 0] dina
  .douta(count_b1_read[7:0])  // output wire [7 : 0] douta
);

blk_mem_gen_0 bram_Read_write_b2 (
  .clka(CLK_FPGA),    // input wire clka
  .ena(bram_being_used),      // input wire ena
  .wea(reg_enable_comp),      // input wire [0 : 0] wea
  .addra(Bram_address_write_read),  // input wire [9 : 0] addra
  .dina(count_b2),    // input wire [7 : 0] dina
  .douta(count_b2_read[7:0])  // output wire [7 : 0] douta
);
blk_mem_gen_0 bram_Read_write_w1 (
  .clka(CLK_FPGA),    // input wire clka
  .ena(bram_being_used),      // input wire ena
  .wea(reg_enable_comp),      // input wire [0 : 0] wea
  .addra(Bram_address_write_read),  // input wire [9 : 0] addra
  .dina(word_report),    // input wire [7 : 0] dina
  .douta(word_report_read[7:0])  // output wire [7 : 0] douta
);

*/

wire [7:0] count_b1_read, count_b2_read, word_report_read;





uart_state_machine uat_stmch(
    .clk(bud9600_gen),
    .rst(uart_reset_button),
    .start(signal_start_enable_uart),
    .data_in(data_uart[7:0]),
    .busy(tx_busy),
    .tx(txd),
    .stat_wr(stat_wr)
    );

//                     6 OR 5208
bud9600_gen #(.CYCLE_X(5208)) oHz ( CLK,  bud9600_gen); 
wire [7:0] data_uart;
wire [7:0] bram_result;
/*pulse_generator #(
.CYCLE_X(1),
.CYCLE_Y(2),
.CYCLE_Z(16)
) pulse_generator_inst (
.clk(bud9600_gen),
.rst(uart_reset_button),
.pulse1(pulse_start),
.pulse2(pulse2)
);
*/



CA_Processor_32STE_8bitword #(
      .ActivationVector_STE1(256'h0000000000000000000000000000000000000004000000000000000000000000), 
            .STE1_ACTIVATES(32'b00000000000000000000000000000010), 
     .ActivationVector_STE2(256'h0000000000000000000000000000000000000002000000000000000000000000), 
            .STE2_ACTIVATES(32'b00000000000000000000000000000100), 
     .ActivationVector_STE3(256'h0000000000000000000000000000000000100000000000000000000000000000), 
            .STE3_ACTIVATES(32'b00000000000000000000000000000000), 
     .ActivationVector_STE4(256'h0000000000000000000000000000000000000004000000000000000000000000), 
            .STE4_ACTIVATES(32'b00000000000000000000000000010000), 
     .ActivationVector_STE5(256'h0000000000000000000000000000000000000002000000000000000000000000), 
            .STE5_ACTIVATES(32'b00000000000000000000000000100000), 
     .ActivationVector_STE6(256'h0000000000000000000000000000000000040000000000000000000000000000), 
            .STE6_ACTIVATES(32'b00000000000000000000000000000000), 
     .ActivationVector_STE7(256'h0000000000000000000000000000000000000004000000000000000000000000), 
            .STE7_ACTIVATES(32'b00000000000000000000000010000000), 
     .ActivationVector_STE8(256'h0000000000000000000000000000000000000002000000000000000000000000), 
            .STE8_ACTIVATES(32'b00000000000000000000000100000000), 
     .ActivationVector_STE9(256'h0000000000000000000000000000000000040000000000000000000000000000), 
            .STE9_ACTIVATES(32'b00000000000000000000001000000000), 
     .ActivationVector_STE10(256'h0000000000000000000000000000000000100000000000000000000000000000), 
            .STE10_ACTIVATES(32'b00000000000000000000000000000000), 
     .ActivationVector_STE11(256'h0000000000000000000000000000000000000002000000000000000000000000), 
            .STE11_ACTIVATES(32'b00000000000000000000100000000000), 
     .ActivationVector_STE12(256'h0000000000000000000000000000000000040000000000000000000000000000), 
            .STE12_ACTIVATES(32'b00000000000000000000000000000000), 
     .ActivationVector_STE13(256'h0000000000000000000000000000000000000002000000000000000000000000), 
            .STE13_ACTIVATES(32'b00000000000000000010000000000000), 
     .ActivationVector_STE14(256'h0000000000000000000000000000000000100000000000000000000000000000), 
            .STE14_ACTIVATES(32'b00000000000000000000000000000000), 
     .ActivationVector_STE15(256'h0000000000000000000000000000000000000002000000000000000000000000), 
            .STE15_ACTIVATES(32'b00000000000000001000000000000000), 
     .ActivationVector_STE16(256'h0000000000000000000000000000000000040000000000000000000000000000), 
            .STE16_ACTIVATES(32'b00000000000000010000000000000000), 
     .ActivationVector_STE17(256'h0000000000000000000000000000000000100000000000000000000000000000), 
            .STE17_ACTIVATES(32'b00000000000000000000000000000000), 
     .ActivationVector_STE18(256'h0000000000000000000000000000000000000008000000000000000000000000), 
            .STE18_ACTIVATES(32'b00000000000001000000000000000000), 
     .ActivationVector_STE19(256'h0000000000000000000000000000000000000002000000000000000000000000), 
            .STE19_ACTIVATES(32'b00000000000010000000000000000000), 
     .ActivationVector_STE20(256'h0000000000000000000000000000000000040000000000000000000000000000), 
            .STE20_ACTIVATES(32'b00000000000000000000000000000000), 
     .ActivationVector_STE21(256'h0000000000000000000000000000000000000008000000000000000000000000), 
            .STE21_ACTIVATES(32'b00000000001000000000000000000000), 
     .ActivationVector_STE22(256'h0000000000000000000000000000000000000002000000000000000000000000), 
            .STE22_ACTIVATES(32'b00000000010000000000000000000000), 
     .ActivationVector_STE23(256'h0000000000000000000000000000000000100000000000000000000000000000), 
            .STE23_ACTIVATES(32'b00000000000000000000000000000000), 
     .ActivationVector_STE24(256'h0000000000000000000000000000000000000008000000000000000000000000), 
            .STE24_ACTIVATES(32'b00000001000000000000000000000000), 
     .ActivationVector_STE25(256'h0000000000000000000000000000000000000002000000000000000000000000), 
            .STE25_ACTIVATES(32'b00000010000000000000000000000000), 
     .ActivationVector_STE26(256'h0000000000000000000000000000000000040000000000000000000000000000), 
            .STE26_ACTIVATES(32'b00000100000000000000000000000000), 
     .ActivationVector_STE27(256'h0000000000000000000000000000000000100000000000000000000000000000), 
            .STE27_ACTIVATES(32'b00000000000000000000000000000000), 

      .start_vector(32'b00000000100100100101010001001001), 
      .end_vector(  32'b00000100010010010010101000100100) 
) CA_p_v1 ( 
.clk(CLK), 
  .rst(computation_reset_button),
 .input_word(input_word_wire),
 .rpt_bt(rpt_bt),
 .Activated_vector_t0(Activated_vector_t0)
);


/*
blk_mem_gen_0 your_instance_name (
  .clka(CLK),    // input wire clka
  .ena(1'b1),      // input wire ena
  .wea(1'b0),      // input wire [0 : 0] wea
  .addra(data_address),  // input wire [9 : 0] addra
  .dina(8'd0),    // input wire [7 : 0] dina
  .douta(bram_result)  // output wire [7 : 0] douta
);*/


endmodule
