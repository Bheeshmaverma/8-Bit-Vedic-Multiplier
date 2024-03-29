`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Designer Name: Bheeshma Verma
// Create Date: 02.03.2024 17:20:47
// Module Name: ved_8x8_tb
// Project Name: Designing of test bench for 8x8 Vedic Multiplier using Verilog
// Target Devices: Artix-7 Nexys 4 DDR FPGA Board
//////////////////////////////////////////////////////////////////////////////////


module ved_8x8_tb();
  
  reg [7:0] a,b;
  wire [15:0] result;
  
  ved_8x8 dut(a,b,result);
  
  initial begin
    a = 8'h00;
    b = 8'h00;
  end
  
  initial begin
    $display("Display: a = %d, b = %d, result = %d", a,b,result);
    $monitor($time, "a = %d, b = %d, result = %d", a,b,result);
    
    a = 5; b = 6;
    #5 a = 6; b = 7;
    #5 a = 9; b = 7;
    #5 a = 15; b = 15;
    #5 a = 30; b = 30;
    #5 a = 25; b = 25;
    #5 a = 255; b = 250;
    #5 a = 255; b = 254;
    #5 a = 255; b = 255;
    #10 $finish;
  end
  
endmodule
