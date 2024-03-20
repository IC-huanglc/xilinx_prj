`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/20 14:46:20
// Design Name: 
// Module Name: ram_model
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


module ram_model(
     input [ 8:0] keywe_b
    ,input [31:0] keydin
    ,input [ 8:0] keyrd
    
    ,output reg [31:0] keyrd_data
    );
    
    reg[31:0] mem[0:8];
    
    integer i;
    
    initial begin
        #10;
        mem[0] = 32'hfedcba90;
        for (i=1; i<9; i=i+1) begin
            mem[i] = mem[i-1] + 1'b1;
        end
    end
    
    always @ (*) begin
        case (keywe_b)
            9'h1fe : mem[0] = keydin;
            9'h1fd : mem[1] = keydin;
            9'h1fb : mem[2] = keydin;
            9'h1f7 : mem[3] = keydin;
            9'h1ef : mem[4] = keydin;
            9'h1df : mem[5] = keydin;
            9'h1bf : mem[6] = keydin;
            9'h17f : mem[7] = keydin;
            9'h0ff : mem[8] = keydin;
            default: begin
                mem[0] = mem[0] ; 
                mem[1] = mem[1] ; 
                mem[2] = mem[2] ; 
                mem[3] = mem[3] ; 
                mem[4] = mem[4] ; 
                mem[5] = mem[5] ; 
                mem[6] = mem[6] ; 
                mem[7] = mem[7] ; 
                mem[8] = mem[8] ; 
            end
        endcase
    end
    
    always @ (*) begin
        casex(keyrd)
        9'bxxxxxxxx1: keyrd_data = mem[0];
        9'bxxxxxxx10: keyrd_data = mem[1];
        9'bxxxxxx100: keyrd_data = mem[2];
        9'bxxxxx1000: keyrd_data = mem[3];
        9'bxxxx10000: keyrd_data = mem[4];
        9'bxxx100000: keyrd_data = mem[5];
        9'bxx1000000: keyrd_data = mem[6];
        9'bx10000000: keyrd_data = mem[7];
        9'b100000000: keyrd_data = mem[8];
        default: ;
        endcase
    end
    
endmodule
