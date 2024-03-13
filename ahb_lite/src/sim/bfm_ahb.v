//--------------------------------------------------------
// Copyright (c) 2013 by Ando Ki.
// All right reserved.
//
// http://www.dynalith.com
// adki@dynalith.com
//--------------------------------------------------------
// bfm_ahb.v
//--------------------------------------------------------
// VERSION = 2013.01.31.
//--------------------------------------------------------
// Macros and parameters
//     START_ADDR:       starting address to test
//     DEPTH_IN_BYTES:   num of bytes to test
//     END_ADDR:
//--------------------------------------------------------
`timescale 1ns/1ns

`include "sim_define.vh"

module bfm_ahb #(parameter START_ADDR=0
                         , DEPTH_IN_BYTES=32'h100
                         , END_ADDR=START_ADDR+DEPTH_IN_BYTES-1)
(
       input   wire        HRESETn
     , input   wire        HCLK
     , output  reg         HBUSREQ
     , input   wire        HGRANT
     , output  reg  [31:0] HADDR
     , output  reg  [3:0]  HPROT
     , output  reg         HLOCK
     , output  reg  [1:0]  HTRANS
     , output  reg         HWRITE
     , output  reg  [2:0]  HSIZE
     , output  reg  [2:0]  HBURST
     , output  reg  [31:0] HWDATA
     , input   wire [31:0] HRDATA
     , input   wire [1:0]  HRESP
     , input   wire        HREADY
     , input   wire        IRQ
);
   //-----------------------------------------------------
   initial begin
       HBUSREQ = 0;
       HADDR   = 0;
       HPROT   = 0;
       HLOCK   = 0;
       HTRANS  = 0;
       HWRITE  = 0;
       HSIZE   = 0;
       HBURST  = 0;
       HWDATA  = 0;
       while  (HRESETn===1'bx) @ (posedge HCLK);
       while  (HRESETn===1'b1) @ (posedge HCLK);
       while  (HRESETn===1'b0) @ (posedge HCLK);
       `ifdef SINGLE_TEST
       $display("begin to SINGLE TEST..., at ", $time);
       $display("======================================");
       repeat (3) @ (posedge HCLK);
       memory_test(START_ADDR, END_ADDR, 1);    
       memory_test(START_ADDR, END_ADDR, 2);
       memory_test(START_ADDR, END_ADDR, 4);
       `endif
       `ifdef BURST_TEST
       $display("begin to BURST TEST..., at ", $time);
       $display("======================================");
       repeat (5) @ (posedge HCLK);
       //memory_test_burst(START_ADDR, END_ADDR, 1);
       //memory_test_burst(START_ADDR, END_ADDR, 2);
       memory_test_burst(START_ADDR, END_ADDR, 4);
       //memory_test_burst(START_ADDR, END_ADDR, 6);
       //memory_test_burst(START_ADDR, END_ADDR, 8);
       //memory_test_burst(START_ADDR, END_ADDR, 10);
       memory_test_burst(START_ADDR, END_ADDR, 16);
       memory_test_burst(START_ADDR, END_ADDR, 32);
       repeat (5) @ (posedge HCLK);
       `endif
       $finish(2);
   end

   //-----------------------------------------------------
   reg [31:0] data_burst[0:1023];
   //-----------------------------------------------------
   // Test scenario comes here.
   task memory_test;
        input [31:0] start;  // start address
        input [31:0] finish; // end address
        input [2:0]  size;   // data size: 1, 2, 4
	//------------------
        integer i, error;
        reg [31:0] data, gen, got;
        reg [31:0] reposit[START_ADDR:END_ADDR];
        begin
            $display("%m: read-after-write test with %d-byte access", size);
            $display("%m: start addr = 0x%0h, finish addr = 0x%0h, added by huanglc", start, finish);
            error = 0;
            gen = $random(7);   $display("%m: after randomize, gen = 0x%0h, added by huanglc", gen);
            
            //this is generate a data, and then align data with address, 
            //and then write/read "size" byte data to/from ram
            for (i=start; i<(finish-size+1); i=i+size) begin
                gen = $random&~32'b0;   $display("%m: after $random&~32'b0, gen = 0x%0h, added by huanglc", gen);
                data = align(i, gen, size);
                ahb_write(i, size, data);
                ahb_read(i, size, got);
                got = align(i, got, size);
                if (got!==data) begin
                   $display("[%10d] %m A:%x D:%x, but %x expected", $time, i, got, data);
                   error = error+1;
                end
            end
            if (error==0)
                   $display("[%10d] %m OK: from %x to %x", $time, start, finish);
            //-------------------------------------------------------------
            $display("%m read-all-after-write-all with %d-byte access", size);
            error = 0;
            gen = $random(1);
            for (i=start; i<(finish-size+1); i=i+size) begin
                gen = {$random} & ~32'b0;
                data = align(i, gen, size);
                reposit[i] = data;
                ahb_write(i, size, data);
            end
            for (i=start; i<(finish-size+1); i=i+size) begin
                data = reposit[i];
                ahb_read(i, size, got);
                got = align(i, got, size);
                if (got!==data) begin
                   $display("[%10d] %m A:%x D:%x, but %x expected", $time, i, got, data);
                   error = error+1;
                end
            end
            if (error==0)
                   $display("[%10d] %m OK: from %x to %x", $time, start, finish);
        end
   endtask

   //-----------------------------------------------------
   task memory_test_burst;
        input [31:0] start; // start address
        input [31:0] finish;   // end address
        input [7:0]  leng;  // burst length
        integer i, j, k, r, error;
        reg [31:0] data, gen, got;
        reg [31:0] reposit[0:1023];
        integer seed;
        begin
          $display("%m: read-all-after-write-all burst test with %d-beat access", leng);
          error = 0;
          seed  = 111;
          gen = $random(seed);
          k = 0;
          if (finish>(start+leng*4)) begin
             for (i=start; i<(finish-(leng*4)+1); i=i+leng*4) begin
                 for (j=0; j<leng; j=j+1) begin
                     data_burst[j] = $random;
                     reposit[j+k*leng] = data_burst[j];
                 end
                 @ (posedge HCLK);
                 ahb_write_burst(i, leng);
                 k = k+1;
             end
             gen = $random(seed);
             k = 0;
             for (i=start; i<(finish-(leng*4)+1); i=i+leng*4) begin
                 @ (posedge HCLK);
                 ahb_read_burst(i, leng);
                 for (j=0; j<leng; j=j+1) begin
                     if (data_burst[j] != reposit[j+k*leng]) begin
                        error = error+1;
                        $display("%m A=%hh D=%hh, but %hh expected",
                                i+j*leng, data_burst[j], reposit[j+k*leng]);
                     end
                 end
                 k = k+1;
                 r = $random&8'h0F;
                 repeat (r) @ (posedge HCLK);
             end
             if (error==0)
                 $display("%m %d-length burst read-after-write OK: from %hh to %hh",
                           leng, start, finish);
          end else begin
              $display("%m %d-length burst read-after-write from %hh to %hh ???",
                           leng, start, finish);
          end
       end
    endtask

   //-----------------------------------------------------
   // As AMBA AHB bus uses non-justified data bus scheme,
   // data should be aligned according to the address.
   function [31:0] align;
            input [ 1:0] addr;
            input [31:0] data;
            input [ 2:0] size; // num of bytes
         begin
            `ifdef BIG_ENDIAN
            case (size)
            1: case (addr[1:0])
               0: align = data&32'hFF00_0000;
               1: align = data&32'h00FF_0000;
               2: align = data&32'h0000_FF00;
               3: align = data&32'h0000_00FF;
               endcase
            2: case (addr[1])
               0: align = data&32'hFFFF_0000;
               1: align = data&32'h0000_FFFF;
               endcase
            4: align = data&32'hFFFF_FFFF;
            default: $display($time,,"%m ERROR %d-byte not supported for size", size);
            endcase
            `else
            case (size)
            1: case (addr[1:0])
               0: align = data&32'h0000_00FF;
               1: align = data&32'h0000_FF00;
               2: align = data&32'h00FF_0000;
               3: align = data&32'hFF00_0000;
               endcase
            2: case (addr[1])
               0: align = data&32'h0000_FFFF;
               1: align = data&32'hFFFF_0000;
               endcase
            4: align = data&32'hFFFF_FFFF;
            default: $display($time,,"%m ERROR %d-byte not supported for size", size);
            endcase
            `endif
         end
   endfunction
   //-----------------------------------------------------
   //`include "bfm_ahb_tasks.v"
`ifndef _BFM_AHB_TASKS_V_
`define _BFM_AHB_TASKS_V_
//--------------------------------------------------------
// Copyright (c) 2013 by Ando Ki.
// All right reserved.
//
// http://www.dynalith.com
// adki@dynalith.com
//--------------------------------------------------------
// bfm_ahb_tasks.h
//--------------------------------------------------------
// VERSION = 2013.01.31.
//--------------------------------------------------------
task ahb_read;
input  [31:0] address;
input  [ 2:0] size;
output [31:0] data;
begin
    @ (posedge HCLK);
    HBUSREQ <= #1 1'b1;
    @ (posedge HCLK);
    while ((HGRANT!==1'b1)||(HREADY!==1'b1)) @ (posedge HCLK);
    HBUSREQ <= #1 1'b0;
    HADDR   <= #1 address;
    HPROT   <= #1 4'b0001; //`HPROT_DATA
    HTRANS  <= #1 2'b10;  //`HTRANS_NONSEQ;
    HBURST  <= #1 3'b000; //`HBURST_SINGLE;
    HWRITE  <= #1 1'b0;   //`HWRITE_READ;
    case (size)
    1:  HSIZE <= #1 3'b000; //`HSIZE_BYTE;
    2:  HSIZE <= #1 3'b001; //`HSIZE_HWORD;
    4:  HSIZE <= #1 3'b010; //`HSIZE_WORD;
    default: $display($time,, "ERROR: unsupported transfer size: %d-byte", size);
    endcase
    @ (posedge HCLK);
    while (HREADY!==1'b1) @ (posedge HCLK);
    `ifndef LOW_POWER
    HADDR  <= #1 32'b0;
    HPROT  <= #1 4'b0000; //`HPROT_OPCODE
    HBURST <= #1 3'b0;
    HWRITE <= #1 1'b0;
    HSIZE  <= #1 3'b0;
    `endif
    HTRANS <= #1 2'b0;
    @ (posedge HCLK);
    while (HREADY===0) @ (posedge HCLK);
    data = HRDATA; // must be blocking
    if (HRESP!=2'b00) //if (HRESP!=`HRESP_OKAY)
        $display($time,, "ERROR: non OK response for read");
    @ (posedge HCLK);
end
endtask

//-----------------------------------------------------
task ahb_write;
input  [31:0] address;
input  [ 2:0] size;
input  [31:0] data;
begin
    @ (posedge HCLK);
    HBUSREQ <= #1 1;
    @ (posedge HCLK);
    while ((HGRANT!==1'b1)||(HREADY!==1'b1)) @ (posedge HCLK);
    HBUSREQ <= #1 1'b0;
    HADDR   <= #1 address;
    HPROT   <= #1 4'b0001; //`HPROT_DATA
    HTRANS  <= #1 2'b10;  //`HTRANS_NONSEQ;
    HBURST  <= #1 3'b000; //`HBURST_SINGLE;
    HWRITE  <= #1 1'b1;   //`HWRITE_WRITE;
    case (size)
    1:  HSIZE <= #1 3'b000; //`HSIZE_BYTE;
    2:  HSIZE <= #1 3'b001; //`HSIZE_HWORD;
    4:  HSIZE <= #1 3'b010; //`HSIZE_WORD;
    default: $display($time,, "ERROR: unsupported transfer size: %d-byte", size);
    endcase
    @ (posedge HCLK);
    while (HREADY!==1) @ (posedge HCLK);
    `ifndef LOW_POWER
    HADDR  <= #1 32'b0;
    HPROT  <= #1 4'b0000; //`HPROT_OPCODE
    HBURST <= #1 3'b0;
    HWRITE <= #1 1'b0;
    HSIZE  <= #1 3'b0;
    `endif
    HWDATA <= #1 data;
    HTRANS <= #1 2'b0;
    @ (posedge HCLK);
    while (HREADY===0) @ (posedge HCLK);
    if (HRESP!=2'b00) //if (HRESP!=`HRESP_OKAY)
         $display($time,, "ERROR: non OK response write");
    `ifndef LOW_POWER
    HWDATA <= #1 0;
    `endif
    @ (posedge HCLK);
end
endtask

//-------------------------------------------------------------
task ahb_read_burst;
     input  [31:0] addr;
     input  [31:0] leng;
     integer       i;
     begin
         @ (posedge HCLK);
         HBUSREQ <= #1 1'b1;
         @ (posedge HCLK);
         while ((HGRANT!==1'b1)||(HREADY!==1'b1)) @ (posedge HCLK);
         HADDR  <= #1 addr;
         HTRANS <= #1 2'b10; //`HTRANS_NONSEQ;
         if (leng==4)       HBURST <= #1 3'b011; //`HBURST_INCR4;
         else if (leng==8)  HBURST <= #1 3'b101; //`HBURST_INCR8;
         else if (leng==16) HBURST <= #1 3'b111; //`HBURST_INCR16;
         else               HBURST <= #1 3'b001; //`HBURST_INCR;
         HWRITE <= #1 1'b0; //`HWRITE_READ;
         HSIZE  <= #1 3'b010; //`HSIZE_WORD;
         @ (posedge HCLK);
         while (HREADY==1'b0) @ (posedge HCLK);
         for (i=0; i<leng-1; i=i+1) begin
             HADDR  <= #1 addr+(i+1)*4;
             HTRANS <= #1 2'b11; //`HTRANS_SEQ;
             @ (posedge HCLK);
             while (HREADY==1'b0) @ (posedge HCLK);
             data_burst[i%1024] = HRDATA; // must be blocking
         end
         //HSEL   <= #1 0;
         HADDR  <= #1 0;
         HTRANS <= #1 0;
         HBURST <= #1 0;
         HWRITE <= #1 0;
         HSIZE  <= #1 0;
         HBUSREQ <= #1 1'b0;
         @ (posedge HCLK);
         while (HREADY==0) @ (posedge HCLK);
         data_burst[i%1024] = HRDATA; // must be blocking
         if (HRESP!=2'b00) begin //`HRESP_OKAY
$display($time,, "ERROR: non OK response for read");
            end
`ifdef DEBUG
$display($time,, "INFO: read(%x, %d, %x)", address, size, data);
`endif
         @ (posedge HCLK);
     end
endtask

//-------------------------------------------------------------
task ahb_write_burst;
     input  [31:0] addr;
     input  [31:0] leng;
     integer       i;
     begin
         @ (posedge HCLK);
         HBUSREQ <= #1 1'b1;
         @ (posedge HCLK);
         while ((HGRANT!==1'b1)||(HREADY!==1'b1)) @ (posedge HCLK);
         HADDR  <= #1 addr;
         HTRANS <= #1 2'b10; //`HTRANS_NONSEQ;
         if (leng==4)       HBURST <= #1 3'b011; //`HBURST_INCR4;
         else if (leng==8)  HBURST <= #1 3'b101; //`HBURST_INCR8;
         else if (leng==16) HBURST <= #1 3'b111; //`HBURST_INCR16;
         else               HBURST <= #1 3'b001; //`HBURST_INCR;
         HWRITE <= #1 1'b1; //`HWRITE_WRITE;
         HSIZE  <= #1 3'b010; //`HSIZE_WORD;
         for (i=0; i<leng-1; i=i+1) begin
             @ (posedge HCLK);
             while (HREADY==1'b0) @ (posedge HCLK);
             HWDATA <= #1 data_burst[i%1024];
             HADDR  <= #1 addr+(i+1)*4;
             HTRANS <= #1 2'b11; //`HTRANS_SEQ;
             while (HREADY==1'b0) @ (posedge HCLK);
         end
         @ (posedge HCLK);
         while (HREADY==0) @ (posedge HCLK);
         HWDATA <= #1 data_burst[i%1024];
         //HSEL   <= #1 0;
         HADDR  <= #1 0;
         HTRANS <= #1 0;
         HBURST <= #1 0;
         HWRITE <= #1 0;
         HSIZE  <= #1 0;
         HBUSREQ <= #1 1'b0;
         @ (posedge HCLK);
         while (HREADY==0) @ (posedge HCLK);
         if (HRESP!=2'b00) begin //`HRESP_OKAY
$display($time,, "ERROR: non OK response write");
         end
`ifdef DEBUG
$display($time,, "INFO: write(%x, %d, %x)", addr, size, data);
`endif
         HWDATA <= #1 0;
         @ (posedge HCLK);
     end
endtask
//--------------------------------------------------------
// Revision history
//
// 2013.01.31: Started by Ando Ki (adki@dynalith.com)
//--------------------------------------------------------
`endif

   //-----------------------------------------------------
endmodule
//--------------------------------------------------------
// Revision history
//
// 2013.01.31: Started by Ando Ki (adki@dynalith.com)
//--------------------------------------------------------
