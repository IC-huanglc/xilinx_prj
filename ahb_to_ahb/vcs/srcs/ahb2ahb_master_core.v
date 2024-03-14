//----------------------------------------------------------------
//  Copyright (c) 2010-2012 by Ando Ki.
//  All right reserved.
//----------------------------------------------------------------
// AHB Master from synchronous FIFO
//----------------------------------------------------------------
// VERSION: 2012.02.17.
//----------------------------------------------------------------
// Macros and parameters:
//----------------------------------------------------------------
// Note:
//----------------------------------------------------------------
// Signal naming convention:
//    * forward: address and control information comes in
//    * bakward: data information goes out
//    * frd_ : forward and fifo-read
//    * bwr_ : backward and fifo-write
//----------------------------------------------------------------
`timescale 1ns/1ns

module ahb2ahb_master_core
       #(parameter FIFO_AW=5)
(
   //----------------------------------------------------
   // AHB master port
     input   wire        HRESETn
   , input   wire        HCLK
   , output  reg         HBUSREQ
   , input   wire        HGRANT
   , output  reg  [31:0] HADDR
   , output  reg  [ 1:0] HTRANS
   , output  reg         HWRITE
   , output  reg  [2:0]  HSIZE
   , output  reg  [2:0]  HBURST
   , output  reg  [31:0] HWDATA  
   , input   wire [31:0] HRDATA
   , input   wire [ 1:0] HRESP
   , input   wire        HREADY
   //----------------------------------------------------
   // FIFO forward port: address related
   , output  wire             frd_clk
   , output  wire             frd_rdy
   , input   wire             frd_vld
   , input   wire [31:0]      frd_dat
   , input   wire             frd_empty
   , input   wire [FIFO_AW:0] frd_cnt
   //----------------------------------------------------
   // FIFO backward port: data related
   , output  wire             bwr_clk
   , input   wire             bwr_rdy
   , output  reg              bwr_vld
   , output  reg  [31:0]      bwr_dat
   , input   wire             bwr_full
   , input   wire [FIFO_AW:0] bwr_cnt
);
   //----------------------------------------------------
   assign frd_clk   = HCLK;
   assign bwr_clk   = HCLK;
   //----------------------------------------------------
   reg [31:0] T_ADDR;
   reg        T_WRITE;
   reg [ 1:0] T_TRANS;
   reg [ 2:0] T_SIZE;
   reg [ 2:0] T_BURST;
   reg [ 4:0] T_LENG;
   reg [ 4:0] counter;
   reg        frd_rdy_gate;
   reg        frd_rdy_loc;
   // synthesis translate_off
   reg        check_resp=1'b0;
   // synthesis translate_on
   //----------------------------------------------------
   assign frd_rdy = (frd_rdy_gate) ? HREADY : frd_rdy_loc;
   //----------------------------------------------------
   reg [3:0] state;
   localparam STH_IDLE      = 'h0,
              STH_GET_ADDR0 = 'h1,
              STH_GET_ADDR1 = 'h2,
              STH_READ_WAIT = 'h3,
              STH_READ_ARB  = 'h4,
              STH_READ0     = 'h5,
              STH_READ1     = 'h6,
              STH_READ2     = 'h7,
              STH_READ3     = 'h8,
              STH_WRITE_WAIT= 'h9,
              STH_WRITE_ARB = 'hA,
              STH_WRITE0    = 'hB,
              STH_WRITE1    = 'hC,
              STH_WRITE2    = 'hD;
   always @ (posedge HCLK or negedge HRESETn) begin
       if (HRESETn==0) begin
           HBUSREQ  <= #1 1'b0;
           HADDR    <= #1 ~32'h0;
           HTRANS   <= #1 2'h0;
           HWRITE   <= #1 1'b0;
           HSIZE    <= #1 3'h0;
           HBURST   <= #1 3'h0;
           HWDATA   <= #1 32'h0;
           frd_rdy_gate <= #1 1'b0;
           frd_rdy_loc  <= #1 1'b0;
           bwr_vld  <= #1 1'b0;
           bwr_dat  <= #1 32'h0;
           counter  <= #1 'h0;
           T_ADDR   <= #1 23'h0;
           T_WRITE  <= #1 1'b0;
           T_TRANS  <= #1 2'b0;
           T_SIZE   <= #1 3'b0;
           T_BURST  <= #1 3'b0;
           T_LENG   <= #1 5'h0;
           // synthesis translate_off
           check_resp <= #11'b0;
           // synthesis translate_on
           state      <= #1 STH_IDLE;
       end else begin // if (HRESETn==0) begin
           case (state)
           STH_IDLE: begin
                if (frd_vld&(frd_cnt>=2)) begin
                   {T_SIZE,T_BURST,T_TRANS,T_WRITE} <= #1 frd_dat;
                   frd_rdy_loc <= #1 1'b1;
                   state   <= #1 STH_GET_ADDR0;
                end
                // synthesis translate_off
                if (HREADY&&check_resp) begin
                    check_resp <= #1 1'b0;
                    if (HRESP!=2'b00) $display($time,,"%m ERROR non-OK response");
                end
                // synthesis translate_on
                end // STH_IDLE
           STH_GET_ADDR0: begin
                T_LENG <= #1 burst_leng(T_BURST);
                state  <= #1 STH_GET_ADDR1;
                end // STH_IDLE
           STH_GET_ADDR1: begin
                T_ADDR   <= #1 frd_dat;
                HBUSREQ  <= #1 1'b1;
                if (T_WRITE) begin
                    if (frd_cnt>T_LENG) begin
                        // since frd_cnt counts address as well
                        frd_rdy_loc  <= #1 1'b0;
                        state    <= #1 STH_WRITE_ARB;
                    end else begin
                        frd_rdy_loc  <= #1 1'b0;
                        state    <= #1 STH_WRITE_WAIT;
                    end
                end else begin
                    frd_rdy_loc  <= #1 1'b0;
                    if (bwr_rdy&(bwr_cnt>=T_LENG)) begin
                        state    <= #1 STH_READ_ARB;
                    end else begin
                        state   <= #1 STH_READ_WAIT;
                    end
                end
                end // STH_IDLE
           STH_READ_WAIT: begin
                if (bwr_rdy&(bwr_cnt>=T_LENG)) begin
                    state   <= #1 STH_READ_ARB;
                end
                end // STH_READ_WAIT
           STH_READ_ARB: begin
                if (HGRANT&&HREADY) begin
                      HADDR   <= #1 T_ADDR;
                      HWRITE  <= #1 T_WRITE;
                      HTRANS  <= #1 T_TRANS; // should be 2'b10 NON_SEQ
                      HBURST  <= #1 T_BURST;
                      HSIZE   <= #1 T_SIZE;
                      counter <= #1 2;
                      state   <= #1 STH_READ0;
                      // synopsys translate_off
                      `ifdef RIGOR
                      if (T_TRANS!=2'b10) $display($time,,"%m: ERROR HTRANS is not NON_SEQ");
                      `endif
                      // synopsys translate_on
                end
                end // STH_READ_ARB
           STH_READ0: begin
                if (HREADY) begin
                    if (T_LENG>1) begin
                       HADDR   <= #1 get_next_haddr(HADDR,T_BURST);
                       HTRANS  <= #1 2'b11; // SEQ
                       state   <= #1 STH_READ1;
                    end else begin
                       HBUSREQ <= #1 1'b0;
                       HTRANS  <= #1 2'b00; // IDLE
                       state   <= #1 STH_READ2;
                    end
                end
                end // STH_READ0
           STH_READ1: begin
                if (HREADY) begin
                    bwr_vld <= #1 1'b1;
                    bwr_dat <= #1 HRDATA;
                    if (counter>=T_LENG) begin
                       HBUSREQ <= #1 1'b0;
                       HTRANS  <= #1 2'b00; // IDLE
                       state   <= #1 STH_READ2;
                    end else begin
                       HADDR   <= #1 get_next_haddr(HADDR,T_BURST);
                       HTRANS  <= #1 2'b11; // SEQ
                       counter <= #1 counter + 1;
                    end
                    // synthesis translate_off
                    if (HRESP!=2'b00) $display($time,,"%m ERROR non-OK response");
                    // synthesis translate_on
                end else begin
                    bwr_vld <= #1 1'b0;
                end
                end // STH_READ1
           STH_READ2: begin
                if (HREADY) begin
                    bwr_vld <= #1 1'b1;
                    bwr_dat <= #1 HRDATA;
                    state   <= #1 STH_READ3;
                    // synthesis translate_off
                    if (HRESP!=2'b00) $display($time,,"%m ERROR non-OK response");
                    // synthesis translate_on
                end else begin
                    bwr_vld <= #1 1'b0;
                end
                end // STH_READ2
           STH_READ3: begin
                bwr_vld <= #1 1'b0;
                state   <= #1 STH_IDLE;
                // synthesis translate_off
                check_resp <= #1 1'b0;
                // synthesis translate_on
                end // STH_READ3
           STH_WRITE_WAIT: begin
                //if (frd_cnt>T_LENG) begin 2010.01.07.
                if (frd_cnt>=T_LENG) begin
                        // it waits data only
                        frd_rdy_loc  <= #1 1'b0;
                        state    <= #1 STH_WRITE_ARB;
                end
                end // STH_WRITE_WAIT
           STH_WRITE_ARB: begin // A (10)
                frd_rdy_loc  <= #1 1'b0;
                if (HGRANT&&HREADY) begin
                      HADDR   <= #1 T_ADDR;
                      HWRITE  <= #1 T_WRITE;
                      HTRANS  <= #1 T_TRANS; // should be 2'b10 NON_SEQ
                      HBURST  <= #1 T_BURST;
                      HSIZE   <= #1 T_SIZE;
                      counter <= #1 1;
                      frd_rdy_gate <= #1 1'b1;
                      state   <= #1 STH_WRITE0;
                      // synopsys translate_off
                      `ifdef RIGOR
                      if (T_TRANS!=2'b10) $display($time,,"%m: ERROR HTRANS is not NON_SEQ");
                      `endif
                      // synopsys translate_on
                end
                end // STH_READ_ARB
           STH_WRITE0: begin // B (11)
                   if (HREADY) begin
                      HWDATA   <= #1 frd_dat;
                      if (T_LENG>1) begin
                          HADDR    <= #1 get_next_haddr(HADDR,T_BURST);
                          HTRANS   <= #1 2'b11; // NON-SEQ
                          counter  <= #1 counter + 1;
                          state    <= #1 STH_WRITE1;
                      end else begin
                          HBUSREQ  <= #1 1'b0;
                          HTRANS   <= #1 2'b00; // IDLE
                          frd_rdy_gate <= #1 1'b0;
                          state    <= #1 STH_WRITE2;
                      end
                   end
                end // STH_WDATA0
           STH_WRITE1: begin // C (12)
                if (HREADY) begin
                    HWDATA   <= #1 frd_dat;
                    if (counter>=T_LENG) begin
                       HBUSREQ <= #1 1'b0;
                       HTRANS  <= #1 2'b00; // IDLE
                       frd_rdy_gate <= #1 1'b0;
                       state   <= #1 STH_WRITE2;
                    end else begin
                       HADDR   <= #1 get_next_haddr(HADDR,T_BURST);
                       HTRANS  <= #1 2'b11; // SEQ
                       counter <= #1 counter + 1;
                    end
                    // synthesis translate_off
                    if (HRESP!=2'b00) $display($time,,"%m ERROR non-OK response");
                    // synthesis translate_on
                end
                end // STH_WDATA1
           STH_WRITE2: begin // 0xD (13)
                state   <= #1 STH_IDLE;
                // synthesis translate_off
                check_resp <= #1 1'b1;
                // synthesis translate_on
                end // STH_WRITE2
           endcase // state
       end // if (HRESETn==0)
   end // always
   //-----------------------------------------------------
   function [4:0] burst_leng;
        input [2:0] burst;
   begin
        case (burst)
        3'b010, 3'b011:  burst_leng = 5'h04;  // increment & wrap 4
        3'b100, 3'b101:  burst_leng = 5'h08;  // increment & wrap8
        3'b110, 3'b111:  burst_leng = 5'h10;  // increment & wrap16
        default: burst_leng = 5'h01;  // all other
        endcase
   end
   endfunction
   //-----------------------------------------------------
   function [31:0] get_next_haddr;
       input [31:0] haddr;
       input [ 2:0] burst;
       reg   [ 3:0] wrap;
   begin
       wrap = haddr[5:2]+1;
       case (burst)
       3'b010:  get_next_haddr = {haddr[31:4],wrap[1:0],2'b0};  // wrap 4
       3'b100:  get_next_haddr = {haddr[31:5],wrap[2:0],2'b0};  // wrap 8
       3'b110:  get_next_haddr = {haddr[31:6],wrap[3:0],2'b0};  // wrap 16
       default: get_next_haddr = haddr + 4;
       endcase
   end
   endfunction

endmodule

//----------------------------------------------------------------
// Revision History
//
// 2012.02.17.: timescale & include
//              'check_resp' added in order to check HRESP.
// 2010.01.07.: Starting based on ahb2ahb_asm_master_core.v
//              by Ando Ki (adki@dynalith.com)
//----------------------------------------------------------------
