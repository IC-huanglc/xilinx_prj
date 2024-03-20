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
    reg clk;
    reg rstn;

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
    
    initial 
        clk = 0;

    always #5 clk = ~clk;

    initial begin 
        rstn = 0;
        repeat(10) @(posedge clk);
        rstn = 1;
    end
   
   reg [9:0] cnt;
    always @ (posedge clk or negedge rstn) begin
        if(~rstn)
            cnt <= 0;
        else
            cnt <= cnt + 1'b1;
    end
   
    reg [3:0] cnt2;
    always @ (posedge clk or negedge rstn) begin
        if(~rstn)
            cnt2 <= 0;
        else if(cnt >= 20 && cnt[0])
            cnt2 <= cnt2 + 1;
    end


    reg [8:0] keywe_bn;
    always @ (posedge clk or negedge rstn) begin
        if(~rstn)
            keywe_bn <= 0;
        else if (cnt >= 20 && cnt[0])
            keywe_bn[cnt2] <= 1'b1;
        else
            keywe_bn <= 0;
    end

    always @ (posedge clk or negedge rstn) begin
        if(~rstn)
            keywe_b <= 'h1ff;
        else
            keywe_b <= ~keywe_bn;
    end

    always @ (posedge clk or negedge rstn) begin
        if(~rstn)
            keydin <= 0;
        else
            keydin <= cnt;
    end


    always @ (posedge clk or negedge rstn) begin
        if(~rstn)
            keyrd <= 0;
        else if (cnt == 60)
            keyrd <= 1'b1;
        else if (cnt >= 50)
            keyrd <= {keyrd[7:0], keyrd[8]};
        else
            keyrd <= 0;
    end

    initial begin
         
        wait (cnt == 1023);
          
        $finish(2);
    end

    initial begin
       $fsdbAutoSwitchDumpfile(10000, "tb_latch.fsdb", 100, "wave_file.log");
       $fsdbDumpvars(0, tb_latch);
       $fsdbDumpMDA();

    end
endmodule
