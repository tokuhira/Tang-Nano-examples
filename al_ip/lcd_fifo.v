/************************************************************\
 **  Copyright (c) 2011-2021 Anlogic, Inc.
 **  All Right Reserved.
\************************************************************/
/************************************************************\
 ** Log	:	This file is generated by Anlogic IP Generator.
 ** File	:	C:/fpga/hellogd/al_ip/lcd_fifo.v
 ** Date	:	2019 09 26
 ** TD version	:	4.5.12562
\************************************************************/

`timescale 1ns / 1ps

module LCD_FIFO (
	rst,
	di, clkw, we,
	do, clkr, re,
	empty_flag, aempty_flag,
	full_flag, afull_flag 
);

	input rst;
	input [19:0] di;
	input clkw, we;
	input clkr,re;

	output [19:0] do;
	output empty_flag, aempty_flag;
	output full_flag, afull_flag;

EG_LOGIC_FIFO #(
 	.DATA_WIDTH_W(20),
	.DATA_WIDTH_R(20),
	.DATA_DEPTH_W(1024),
	.DATA_DEPTH_R(1024),
	.ENDIAN("BIG"),
	.RESETMODE("ASYNC"),
	.E(0),
	.F(1024),
	.ASYNC_RESET_RELEASE("SYNC"),
	.AE(32),
	.AF(992))
logic_fifo(
	.rst(rst),
	.di(di),
	.clkw(clkw),
	.we(we),
	.csw(3'b111),
	.do(do),
	.clkr(clkr),
	.re(re),
	.csr(3'b111),
	.ore(1'b0),
	.empty_flag(empty_flag),
	.aempty_flag(aempty_flag),
	.full_flag(full_flag),
	.afull_flag(afull_flag)

);

endmodule