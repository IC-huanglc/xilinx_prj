`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/20 14:56:34
// Design Name: 
// Module Name: tb_latch
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


module tb_latch();
    reg [ 8:0] keywe_b  ;
    reg [31:0] keydin   ;
    reg [ 8:0] keyrd    ;
    
    wire [31:0] keyrd_data;
    
    
        ram_model u_dut(
            .keywe_b(keywe_b),
            .keydin(keydin),
            .keyrd(keyrd),
            .keyrd_data(keyrd_data)
        );
    
    
    
    initial begin
        keywe_b = 9'h1ff;
        keydin  = 0;
        keyrd   = 0;
        
        #10000;
        
        #100; keywe_b = 9'h1fe; keydin = 32'h1;
        #100; keywe_b = 9'h1fd; keydin = 32'h2;
        #100; keywe_b = 9'h1fb; keydin = 32'h3;
        #100; keywe_b = 9'h1f7; keydin = 32'h4;
        #100; keywe_b = 9'h1ef; keydin = 32'h5;
        #100; keywe_b = 9'h1df; keydin = 32'h6;
        #100; keywe_b = 9'h1bf; keydin = 32'h7;
        #100; keywe_b = 9'h17f; keydin = 32'h8;
        #100; keywe_b = 9'h0ff; keydin = 32'h9;
        
        #10000;
        #100; keyrd = 1'b1;
        repeat (8) begin
            #100; keyrd = keyrd << 1;
        end
        
        $finish(2);
    end
endmodule
