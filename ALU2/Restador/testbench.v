`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:04:59 03/26/2020
// Design Name:   sumado
// Module Name:   C:/Users/ivano/Desktop/Sergio Todo/Arquitectura/sumador/sumado/testbench.v
// Project Name:  sumado
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sumado
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench;

  // Inputs
  reg [3:0] xi;
  reg [3:0] yi;

  // Outputs
  wire co;
  wire [3:0] zi;

  // Instantiate the Unit Under Test (UUT)
  Restador uut (   .xi(xi),  .yi(yi),   .co(co),  .zi(zi));

  initial begin
  // Initialize Inputs
    xi=0;
    for (yi = 0; yi < 16; yi = yi + 1) begin
      if (yi==0)
        xi=xi+1;
      #5 $display("el valor de %d - %d = %d", xi,yi,zi) ;
    end
  end      

endmodule

