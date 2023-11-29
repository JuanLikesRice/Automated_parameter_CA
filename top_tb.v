`timescale 1ps / 1ps 
 `default_nettype none

module top_module_tb();

    //Bram write to  
    //reg [7:0] data_address;
    //reg we;
    //reg [8:0] write_data;

    reg clk;
    wire [7:0] LED_test;
    reg  [7:0] SW_test, BTN_test; 
    wire UART_RXD_OUT;

    top_module testy (
    .CLK(clk),
    .SW(SW_test),//[7:0],
    .BTN(BTN_test), //[7:0] 
    .UART_RXD_OUT(UART_RXD_OUT),
    .LED(LED_test) // [7:0]
    );

    always begin
        #2;
        clk = ~clk; // Toggle the clock every 5 time units
        #2; 
        clk = ~clk; // Toggle the clock every 5 time units
    end

//start: ____--__________________--________________ --> INCR address, reads memory from BRAM
//utsrt: ________--__________________--_____________
//clk    --__--__--__--__--__--__--__--__--__--__--
// Testbench stimulus

    initial begin
       //$display("Simulation started");
       $dumpfile("testbench.vcd");
       $dumpvars(0, top_module_tb);
       clk = 0;
       SW_test  = 8'b0;
       BTN_test = 8'b0;
       #2000//000
       //#2000000
       
       //#4000
       /*
       BTN_test[3] = 1'b0; #2 BTN_test[3] = 1'b1;       #3; BTN_test[3] = 1'b0;
       BTN_test[3] = 1'b0; #5 BTN_test[3] = 1'b1;       #5; BTN_test[3] = 1'b0;
       BTN_test[3] = 1'b0; #6 BTN_test[3] = 1'b1;       #37; BTN_test[3] = 1'b0;
       BTN_test[3] = 1'b0; #2 BTN_test[3] = 1'b1;       #9; BTN_test[3] = 1'b0;
       BTN_test[3] = 1'b0; #32 BTN_test[3] = 1'b1;       #3; BTN_test[3] = 1'b0;
       BTN_test[3] = 1'b0; #1 BTN_test[3] = 1'b1;       #1; BTN_test[3] = 1'b0;
       BTN_test[3] = 1'b0; #46 BTN_test[3] = 1'b1;       #5; BTN_test[3] = 1'b0;
       BTN_test[3] = 1'b0; #11 BTN_test[3] = 1'b1;       #7; BTN_test[3] = 1'b0;
       BTN_test[3] = 1'b1;
       */
   
       /*DEBOUSCING*/

       //BTN_test[4] = 1'b1;
   //    #3
/*
       BTN_test[4] = 1'b0; #2 BTN_test[4] = 1'b1;       #3; BTN_test[4] = 1'b0;
       BTN_test[4] = 1'b0; #3 BTN_test[4] = 1'b1;       #3; BTN_test[4] = 1'b0;
       BTN_test[4] = 1'b0; #4 BTN_test[4] = 1'b1;       #3; BTN_test[4] = 1'b0;
       BTN_test[4] = 1'b0; #3 BTN_test[4] = 1'b1;       #3; BTN_test[4] = 1'b0;
       BTN_test[4] = 1'b0; #22 BTN_test[4] = 1'b1;       #3; BTN_test[4] = 1'b0;
       BTN_test[4] = 1'b0; #5 BTN_test[4] = 1'b1;       #3; BTN_test[4] = 1'b0;
       BTN_test[4] = 1'b0; #6 BTN_test[4] = 1'b1;       #3; BTN_test[4] = 1'b0;
       BTN_test[4] = 1'b0; #10 BTN_test[4] = 1'b1;       #3; BTN_test[4] = 1'b0;
       BTN_test[4] = 1'b0; #2 BTN_test[4] = 1'b1;       #3; BTN_test[4] = 1'b0;
        BTN_test[4] = 1'b1;
        #4000
        BTN_test[4] = 1'b0;
       BTN_test[4] = 1'b0; #2 BTN_test[4] = 1'b1;       #3; BTN_test[4] = 1'b0;
       BTN_test[4] = 1'b0; #3 BTN_test[4] = 1'b1;       #3; BTN_test[4] = 1'b0;
       BTN_test[4] = 1'b0; #4 BTN_test[4] = 1'b1;       #3; BTN_test[4] = 1'b0;
       BTN_test[4] = 1'b0; #3 BTN_test[4] = 1'b1;       #3; BTN_test[4] = 1'b0;
       BTN_test[4] = 1'b0; #22 BTN_test[4] = 1'b1;       #3; BTN_test[4] = 1'b0;
       BTN_test[4] = 1'b0; #5 BTN_test[4] = 1'b1;       #3; BTN_test[4] = 1'b0;
       BTN_test[4] = 1'b0; #6 BTN_test[4] = 1'b1;       #3; BTN_test[4] = 1'b0;
       BTN_test[4] = 1'b0; #10 BTN_test[4] = 1'b1;       #3; BTN_test[4] = 1'b0;
       BTN_test[4] = 1'b0; #2 BTN_test[4] = 1'b1;       #3; BTN_test[4] = 1'b0;
       */
       // #35_000
        /*
        BTN_test[4] = 1'b1;
        #100
        BTN_test[4] = 1'b0;
        #15004
       */
        //$display("Simulation finished");
        $finish;
        //$stop; // Stop simulation
    end

endmodule

/*
blk_mem_gen_0 your_instance_name (
  .clka(CLK),    // input wire clka
  .ena(1'b1),      // input wire ena
  .wea(1'b0),      // input wire [0 : 0] wea
  .addra(data_address),  // input wire [9 : 0] addra
  .dina(8'd0),    // input wire [7 : 0] dina
  .douta(bram_result)  // output wire [7 : 0] douta
);
*/
/*
module top_module;

    reg clk, rst;
    wire rpt_bt;
    reg [7:0] input_word;
   wire [31:0] Activated_vector_t0;


CA_Processor_32STE_8bitword #(
      .ActivationVector_STE1(256'h0000000000000000000000000000000000000002000000000000000000000000), 
            .STE1_ACTIVATES(32'b00000000000000000000000010000100), 
     .ActivationVector_STE2(256'h0000000000000000000000000000000000000002000000000000000000000000), 
            .STE2_ACTIVATES(32'b00000000000000000000000010000100), 
     .ActivationVector_STE3(256'h0000000000000000000000000000000000040000000000000000000000000000), 
            .STE3_ACTIVATES(32'b00000000000000000000000000001000), 
     .ActivationVector_STE4(256'h0000000000000000000000000000000000100000000000000000000000000000), 
            .STE4_ACTIVATES(32'b00000000000000000000000000000000), 
     .ActivationVector_STE5(256'h0000000000000000000000000000000000000004000000000000000000000000), 
            .STE5_ACTIVATES(32'b00000000000000000000000000100000), 
     .ActivationVector_STE6(256'h0000000000000000000000000000000000000002000000000000000000000000), 
            .STE6_ACTIVATES(32'b00000000000000000000000010000100), 
     .ActivationVector_STE7(256'h0000000000000000000000000000000000000008000000000000000000000000), 
            .STE7_ACTIVATES(32'b00000000000000000000000000100000), 
     .ActivationVector_STE8(256'h0000000000000000000000000000000000100000000000000000000000000000), 
            .STE8_ACTIVATES(32'b00000000000000000000000000000000), 

      .start_vector(32'b00000000000000000000000001010001), 
      .end_vector(  32'b00000000000000000000000010001100) ) CA_p_v1 ( 
.clk(clk), 
  .rst(rst),
 .input_word(input_word),
 .rpt_bt(rpt_bt),
 .Activated_vector_t0(Activated_vector_t0)
);



CA_Processor_8STE_8bitword #(
      .ActivationVector_STE1(256'h0000000000000000000000000000000000000002000000020000000000000000), 
            .STE1_ACTIVATES(8'b10000100), 
     .ActivationVector_STE2(256'h0000000000000000000000000000000000000002000000020000000000000000), 
            .STE2_ACTIVATES(8'b10000100), 
     .ActivationVector_STE3(256'h0000000000000000000000000000000000040000000400000000000000000000), 
            .STE3_ACTIVATES(8'b00001000), 
     .ActivationVector_STE4(256'h0000000000000000000000000000000000100000001000000000000000000000), 
            .STE4_ACTIVATES(8'b00000000), 
     .ActivationVector_STE5(256'h0000000000000000000000000000000000000004000000040000000000000000), 
            .STE5_ACTIVATES(8'b00100000), 
     .ActivationVector_STE6(256'h0000000000000000000000000000000000000002000000020000000000000000), 
            .STE6_ACTIVATES(8'b10000100), 
     .ActivationVector_STE7(256'h0000000000000000000000000000000000000008000000080000000000000000), 
            .STE7_ACTIVATES(8'b00100000), 
     .ActivationVector_STE8(256'h0000000000000000000000000000000000100000001000000000000000000000), 
            .STE8_ACTIVATES(8'b00000000), 
      .start_vector(8'b01010001), 
      .end_vector(  8'b10001100) 
) CA_p_v1 ( 
.clk(clk), 
  .rst(rst),
 .input_word(input_word),
 .rpt_bt(rpt_bt),
 .Activated_vector_t0(Activated_vector_t0)
);



reg clk, rst;
wire rpt_bt;
reg [7:0] input_word;
wire [31:0] Activated_vector_t0;

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
.clk(clk), 
  .rst(rst),
 .input_word(input_word),
 .rpt_bt(rpt_bt),
 .Activated_vector_t0(Activated_vector_t0)
);


// parameter N = 8; // Number of cycles in the buffer
//    parameter M = 8; // Width of the input data
// Instantiate the Buffer module

wire [7:0] buffered_data;

Buffer #(.N(1), .M(8)) buffer_inst (
       .clk(clk),
       .input_data(input_word),
       .enable(1'b1),
       .reset(rst),
       .output_data(buffered_data)
);

always begin
    #5; 
    clk = ~clk; // Toggle the clock every 5 time units
    #5
    clk = ~clk;
    //$display("Time=%0t: A=%d, B=%d, result=%d", $time, A, B, result);
    //#3;  // Toggle the clock every 5 time units
    //$display("Time=%0t: A=%d, B=%d, result=%d", $time, A, B, result);
    //#2;
  //  clk = ~clk;
end

initial begin
    // Initialize simulation
    $display("Simulation started");
    $dumpfile("testbench.vcd");
    $dumpvars(0, top_module);
    clk = 0;
    rst = 1;
    input_word = 8'h00;
    #10;
    #10;
    #12;
// ----------------------------------------------------------------


rst = 0;

//Automated Tb STARTS Here
input_word = 8'd98; // b, hex 62
#10; 
input_word = 8'd97; // a, hex 61
#10; 
//input_word = 8'd114; // r, hex 72
//#10; 
//input_word = 8'd116; // t, hex 74
//#10; 
input_word = 8'd116; // t, hex 74
#10; 
input_word = 8'd98; // b, hex 62
#10; 
input_word = 8'd97; // a, hex 61
#10; 
input_word = 8'd114; // r, hex 72
#10; 
input_word = 8'd116; // t, hex 74
#10; 
input_word = 8'd120; // x, hex 78
#10; 
input_word = 8'd97; // a, hex 61
#10; 
input_word = 8'd116; // t, hex 74
#10; 
input_word = 8'd107; // k, hex 6b
#10; 
input_word = 8'd115; // s, hex 73
#10; 
input_word = 8'd104; // h, hex 68
#10; 
input_word = 8'd99; // c, hex 63
#10; 
input_word = 8'd102; // f, hex 66
#10; 
input_word = 8'd105; // i, hex 69
#10; 
input_word = 8'd119; // w, hex 77
#10; 
input_word = 8'd104; // h, hex 68
#10; 
input_word = 8'd97; // a, hex 61
#10; 
input_word = 8'd116; // t, hex 74
#10; 
input_word = 8'd97; // a, hex 61
#10; 
input_word = 8'd110; // n, hex 6e
#10; 
input_word = 8'd97; // a, hex 61
#10; 
input_word = 8'd98; // b, hex 62
#10; 
input_word = 8'd97; // a, hex 61
#10; 
input_word = 8'd99; // c, hex 63
#10; 
input_word = 8'd97; // a, hex 61
#10; 
input_word = 8'd116; // t, hex 74
#10; 
input_word = 8'd97; // a, hex 61
#10; 
input_word = 8'd98; // b, hex 62
#10; 
input_word = 8'd97; // a, hex 61
#10; 
input_word = 8'd114; // r, hex 72
#10; 
input_word = 8'd99; // c, hex 63
#10; 
input_word = 8'd97; // a, hex 61
#10; 
input_word = 8'd104; // h, hex 68
#10; 
input_word = 8'd100; // d, hex 64
#10; 
input_word = 8'd117; // u, hex 75
#10; 
input_word = 8'd99; // c, hex 63
#10; 
input_word = 8'd116; // t, hex 74
#10; 
input_word = 8'd97; // a, hex 61
#10; 
input_word = 8'd100; // d, hex 64
#10; 
input_word = 8'd97; // a, hex 61
#10; 
input_word = 8'd97; // a, hex 61
#10; 
input_word = 8'd99; // c, hex 63
#10; 
input_word = 8'd97; // a, hex 61
#10; 
input_word = 8'd114; // r, hex 72
#10; 
input_word = 8'd99; // c, hex 63
#10; 
input_word = 8'd116; // t, hex 74
#10; 
input_word = 8'd114; // r, hex 72
#10; 
input_word = 8'd99; // c, hex 63
#10; 
input_word = 8'd97; // a, hex 61
#10; 
input_word = 8'd116; // t, hex 74
#10; 
input_word = 8'd114; // r, hex 72
#10; 
input_word = 8'd99; // c, hex 63
#10; 
input_word = 8'd97; // a, hex 61
#10; 
input_word = 8'd116; // t, hex 74
#10; 
input_word = 8'd99; // c, hex 63
#10; 
input_word = 8'd98; // b, hex 62
#10; 
input_word = 8'd97; // a, hex 61
#10; 
input_word = 8'd116; // t, hex 74
#10; 
input_word = 8'd98; // b, hex 62
#10; 
input_word = 8'd114; // r, hex 72
#10; 
input_word = 8'd99; // c, hex 63
#10; 
input_word = 8'd97; // a, hex 61
#10; 
input_word = 8'd116; // t, hex 74
#10; 
input_word = 8'd114; // r, hex 72
#10; 
input_word = 8'd110; // n, hex 6e
#10; 
input_word = 8'd98; // b, hex 62
#10; 
input_word = 8'd97; // a, hex 61
#10; 
input_word = 8'd99; // c, hex 63
#10; 
input_word = 8'd97; // a, hex 61
#10; 
input_word = 8'd116; // t, hex 74
#10; 
input_word = 8'd121; // y, hex 79
#10; 
input_word = 8'd115; // s, hex 73
#10; 
input_word = 8'd110; // n, hex 6e
#10; 
input_word = 8'd99; // c, hex 63
#10; 
input_word = 8'd116; // t, hex 74
#10; 
input_word = 8'd97; // a, hex 61
#10; 
input_word = 8'd110; // n, hex 6e
#10; 
input_word = 8'd98; // b, hex 62
#10; 
input_word = 8'd97; // a, hex 61
#10; 
input_word = 8'd99; // c, hex 63
#10; 
input_word = 8'd114; // r, hex 72
#10; 
input_word = 8'd110; // n, hex 6e
#10; 
input_word = 8'd116; // t, hex 74
#10; 
input_word = 8'd97; // a, hex 61
#10; 
input_word = 8'd98; // b, hex 62
#10; 
input_word = 8'd116; // t, hex 74
#10; 
input_word = 8'd110; // n, hex 6e
#10; 
input_word = 8'd97; // a, hex 61
#10; 
input_word = 8'd114; // r, hex 72
#10; 
input_word = 8'd98; // b, hex 62
#10; 
input_word = 8'd120; // x, hex 78
#10; 
input_word = 8'd116; // t, hex 74
#10; 
input_word = 8'd97; // a, hex 61
#10; 
input_word = 8'd114; // r, hex 72
#10; 
//Automated Tb ENDS Here



input_word = 8'd0;
#10; 
input_word = 8'd0;
#10;
#10;




// ----------------------------------------------------------------

    $display("Simulation finished");
    $finish;
end

endmodule

module Buffer (
    input wire clk,       // Clock signal
    input wire [M-1:0] input_data, // M-bit input data
    input wire enable,    // Enable signal
    input wire reset,     // Reset signal (active high)
    output wire [M-1:0] output_data // M-bit output data
);
    parameter N = 8; // Number of cycles in the buffer
    parameter M = 8; // Width of the input data

    reg [M-1:0] buffer [0:N-1]; // M-bit wide buffer with N cycles

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            for (integer i = 0; i < N; i = i + 1) begin
                buffer[i] <= {M{1'b0}}; // Reset all elements in the buffer to 0
            end
        end else if (enable) begin
            for (integer i = N-1; i > 0; i = i - 1) begin
                buffer[i] <= buffer[i-1]; // Shift data in the buffer
            end
            buffer[0] <= input_data; // Load input data into the first position of the buffer
        end
    end

    assign output_data = buffer[N-1]; // Output the data from the last cycle of the buffer

endmodule
*/