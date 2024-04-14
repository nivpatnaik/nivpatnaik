`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2024 12:59:54
// Design Name: 
// Module Name: wrapper
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


module wrapper(input clk, rst, en, input [7:0] load, output [7:0] count, output [1:0] tcount);
    
    Onehz_gen clk_div(.clk_100MHz(clk), .reset(rst), .clk_1Hz(clk_1Hz));
    counter counter_tst(.reset(rst), .clk(clk_1Hz), .en(en), .load(load), .count(count), .tcount(tcount));
    
    
endmodule
