`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Setup for 9600 Baud Rate
// For 9600 baud with 100MHz FPGA clock: 
// 9600 * 16 = 153,600
// 100 * 10^6 / 153,600 = ~651      (counter limit M)
// log2(651) = 10                   (counter bits N) 
//////////////////////////////////////////////////////////////////////////////////
module top_module
    #( 
        parameter   DBITS = 8,          // number of data bits in a word
                    SB_TICK = 16,       // number of stop bit / oversampling ticks
                    BR_LIMIT = 651,     // baud rate generator counter limit
                    BR_BITS = 10       // number of baud rate generator counter bits
                        )(
    input  wire CLK,
   // input  wire CPU_RESETN,
    input  wire [7:0] SW,
    input  wire [7:0] BTN,
    output wire UART_RXD_OUT,
    output wire [7:0] LED
    );

bud9600_gen oHz ( CLK,  bud9600_gen); 
one_pulse_x pulse_start (.clk(bud9600_gen),.pulse(start) ); 
one_pulse_x2 pulse_start_2 (.clk(bud9600_gen),.pulse(start_2) ); 

reg pulse_started = 1'b0;
always @ (posedge start ) begin 
    pulse_started = ~pulse_started;
end 
always @ (posedge pulse_started or posedge BTN[4]) begin
        if (BTN[4]) begin
            data_address <= 8'b0; // Reset the register to 0 when reset is active
        end else 
            if (data_address < 8'hFF) begin
                data_address <= data_address + 1; // Increment the register if it's less than 255
            end else begin
                data_address <= 8'b0; // Reset the register to 0 when it reaches 255
            end
end
// Connection Signals
wire tx_busy, txd,stat_wr, start_2, start;                          // sample tick from baud rate generator
//wire rx_done_tick;                  // data word received
//wire tx_done_tick;                  // data transmission complete
assign LED[0] = stat_wr;
assign LED[1] = pulse_started;
assign LED[2] =  BTN[4];
assign LED[3] =  BTN[3];
assign LED[4] =  UART_RXD_OUT;
assign LED[5] =  txd;
assign LED[6] =  tx_busy;
assign LED[7] = bud9600_gen;
assign UART_RXD_OUT = txd;
//x48.72, h? 

reg [7:0] data_address = 8'd0;
wire [7:0] data_uart;

blk_mem_gen_0 your_instance_name (
  .clka(CLK),    // input wire clka
  .ena(1'b1),      // input wire ena
  .wea(1'b0),      // input wire [0 : 0] wea
  .addra(data_address),  // input wire [9 : 0] addra
  .dina(8'd0),    // input wire [7 : 0] dina
  .douta(data_uart)  // output wire [7 : 0] douta
);

uart_state_machine uat_stmch(
    .clk(bud9600_gen),
    .rst(BTN[4]),
    .start(start),
    .data_in(data_uart),
    .busy(tx_busy),
    .tx(txd),
    .stat_wr(stat_wr)
    );
    
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
    reg [20:0] data = 21'b0_00000000_0_1_0_0000000_0; // Data to be transmitted (8 bits data + 1 start bit + 1 stop bit)
    reg [1:0] state = 2'b00;      // State variable, 2 bits wide
    reg [7:0] counter = 8'd0;    // 8-bit counter, change the width as per your requirement
    assign stat_wr = state[0];
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state <= IDLE_STATE;
            counter <= 8'b0;
            busy <= 1'b0;
        end else begin
            case (state)
                IDLE_STATE: begin
                    if (start) begin
                        state <= BUSY_STATE;
                        counter <= 8'b0;
                        tx <= 1'b1;
                        data[8:1] <= data_in;
                        busy <= 1'b1;
                    end else begin
                    tx <= 1'b1;
                    busy <= 1'b0;
                    state <= IDLE_STATE;
                    data[8:1] <= data_in;
                    end

                    // else, stay in IDLE_STATE
                end                
            BUSY_STATE: begin
                
                if (counter < 21'd22) begin
                    tx <= data[counter];
                    state <= BUSY_STATE;
                    busy <= 1'b1;
                end
                else begin
                    state <= IDLE_STATE;
                    tx <= 1'b1;
                    busy <= 1'b0;
                    // Reset the counter and data here if needed
                    counter <= 8'b0;
                    data[8:1] <= 8'b0;
                end
                counter <= counter + 1'b1; // Move counter increment outside of the if statement
            end
            endcase
        end
    end

endmodule



module bud9600_gen(                                            
    input wire clk,          // 100MHz from Nexys            
    output wire clk_1Hz                                      
    );                                                       
    reg [25:0] r_counter = 0;                                
    reg r_clk_1Hz = 0;                                       
    always @(posedge clk) begin       
        if(r_counter == 5208) begin                    
            r_counter <= 0;                                  
            r_clk_1Hz <= ~r_clk_1Hz;                         
        end                                                  
        else                                                 
            r_counter <= r_counter + 1;
           // r_clk_1Hz <= 1'b0;                      
    end                                                                                                         
    assign clk_1Hz = r_clk_1Hz;                               
endmodule                                                    
                                                             

module one_pulse_x(                                            
    input wire clk,          // 100MHz from Nexys            
    output wire pulse                                      
    );                                                       
    reg [27:0] r_counter = 0;                                
    reg r_pulse = 0;                                       
    always @(posedge clk) begin
       if(r_counter > 100) begin 
            r_pulse   <= 1'b1;                   
            r_counter <= 0;                                                        
        end else begin
            r_pulse   <= 1'b0;                                              
            r_counter <= r_counter + 1;     
            end              
    end                                                                            
    assign pulse = r_pulse;                                                               
endmodule    

module one_pulse_x2(                                            
    input wire clk,          // 100MHz from Nexys            
    output wire pulse                                      
    );                                                       
    reg [27:0] r_counter = 0;                                
    reg r_pulse = 0;                                       
    always @(posedge clk) begin
       if(r_counter > 200 ) begin 
            r_pulse   <= 1'b1;                   
            r_counter <= 0;                                                        
        end else begin
            r_pulse   <= 1'b0;                                              
            r_counter <= r_counter + 1;     
            end              
    end                                                                            
    assign pulse = r_pulse;                                                               
endmodule     