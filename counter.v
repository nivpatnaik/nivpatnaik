`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 04.02.2024 17:22:53
// Design Name: Counter display
// Module Name: counter
// Target Devices: Artix 7 Part XC7A35T, Package CPG236, Speed Grade -1
//////////////////////////////////////////////////////////////////////////////////


module counter(input reset, clk, en, input [7:0] load, output reg[7:0] count, reg[1:0] tcount);
    //tcount <= 1'b0;
    always @(posedge clk)
        begin 
            if (reset)
                begin
                    count <= 0;
                    tcount <=0;
                end
             else if (en)
                count <= load; 
                
             else
                count <=count+1;  
             if (count == 10'd 40)      
                begin
                    tcount = 1'b1; 
             end    
             else 
                    tcount = 1'b0; 
           end 
    
endmodule
