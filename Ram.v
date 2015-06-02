`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:15:56 03/21/2015 
// Design Name: 
// Module Name:    RAM 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module DataMem (
	input [9:0] addr, // �����ַ��ָ�����ݶ�д�ĵ�ַ
	input [31:0] data_in,
	output [31:0] data_out, // �洢�����������ݣ�ram ����ʱ���������Ӧ��ַ������
	input we,
	input clk
	);

	reg [31:0] tmp [0:1023];
	assign data_out = tmp[addr];
	
	always @(posedge clk) begin
		if(we) begin
			tmp[addr] <= data_in;
		end
	end

endmodule
