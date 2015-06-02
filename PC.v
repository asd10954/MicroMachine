`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:15:15 03/21/2015 
// Design Name: 
// Module Name:    PC 
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
module pcreg(
	input clk,		// 1λ���룬�Ĵ���ʱ���źţ�������ʱΪPC�Ĵ�����ֵ
	input rst,		// 1λ���룬�����źţ��ߵ�ƽʱ��PC�Ĵ�������
						// ע����ena�ź���Чʱ��rstҲ�������üĴ���
	input [31:0] data_in,		// 32λ���룬�������ݽ�������Ĵ����ڲ�
	output reg [31:0] data_out	// 32λ���������ʱʼ�����PC�Ĵ����ڲ��洢��ֵ
	);
	
	always @ (posedge clk or posedge rst) begin
		if(rst)
			data_out <= 0;
		else
			data_out <= data_in;
	end

endmodule
