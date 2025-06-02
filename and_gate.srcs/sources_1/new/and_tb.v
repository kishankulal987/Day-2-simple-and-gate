`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2025 20:39:03
// Design Name: 
// Module Name: and_tb
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


module and_tb();
reg a,b;
wire y;
integer i;
and_gate DUT(a,b,y);
initial begin
for(i=0;i<4;i=i+1)
begin
{a,b}=i;
#10;
$monitor("%0t a=%b,b=%b,y=%b",$time,a,b,y);
end
$finish;
end
endmodule
